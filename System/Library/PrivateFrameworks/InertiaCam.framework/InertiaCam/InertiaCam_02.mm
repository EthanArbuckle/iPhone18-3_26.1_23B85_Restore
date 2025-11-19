void sub_254B49D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B49D84(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_254B49F70(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 72 * a2;
  }
}

void sub_254B49DC8(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_254B4A1B8(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_254B49E04(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_254B32E20();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_254B4A320(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_254B4A5E0(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_254B3FDE0(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  sub_254B3FE94(&v20, v5);
}

void sub_254B49F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B49F70(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_254B32E20();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_254B36B70(a1, v9);
    }

    v11 = 72 * v6;
    v12 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void *sub_254B4A114(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B36B20(result, a2);
  }

  return result;
}

void sub_254B4A19C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B4A1B8(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_254B32E20();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_254B36A4C(a1, v10);
    }

    v14 = 24 * v7;
    v15 = 3 * a2;
    v16 = 24 * v7 + 24 * a2;
    v17 = 8 * v15;
    v18 = 24 * v7;
    do
    {
      v19 = *a3;
      *(v18 + 16) = *(a3 + 2);
      *v18 = v19;
      v18 += 24;
      v17 -= 24;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v14 - v20;
    memcpy((v14 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t sub_254B4A320(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_254B36CA4(&v2, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B4A3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B4A3DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_254B4A480(&v18, &v16, &v14, &v13);
}

void sub_254B4A480(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_254B4A510(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_254B4A510(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *sub_254B4A5E0@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void sub_254B4A714(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_254B32E20();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_254B35448(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_254B4A7F4(uint64_t a1, int a2, int a3, char a4, int a5, __n128 *a6, __n128 *a7, __n128 *a8)
{
  *(a1 + 72) = a2;
  *(a1 + 76) = a3;
  *(a1 + 100) = a4;
  *(a1 + 96) = a5;
  sub_254B35110(a1 + 24, a6);
  sub_254B35110(a1, a7);
  sub_254B35110(a1 + 48, a8);
  sub_254B4A954((a1 + 24));
  sub_254B4AA28(a1);
  sub_254B4AAFC((a1 + 48));
  v11 = *a1;
  *(a1 + 80) = *(a1 + 24);
  *(a1 + 88) = v11;
  *(a1 + 104) = *(a1 + 48);
}

_OWORD *sub_254B4A880(_OWORD *a1, int a2, int a3, char a4, int a5, __n128 *a6, uint64_t a7, uint64_t a8)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v14 = *a6;
  v15 = a6[1].n128_u64[0];
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  a6->n128_u64[0] = 0;
  *v12 = *a7;
  v13 = *(a7 + 16);
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *a7 = 0;
  *__p = *a8;
  v11 = *(a8 + 16);
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *a8 = 0;
  sub_254B4A7F4(a1, a2, a3, a4, a5, &v14, v12, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (v14.n128_u64[0])
  {
    v14.n128_u64[1] = v14.n128_u64[0];
    operator delete(v14.n128_u64[0]);
  }

  return a1;
}

void sub_254B4A954(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_254B35448(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_254B4AA28(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_254B3383C(a1, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = 4 * (v4 >> 2);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_254B4AAFC(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_254B35448(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_254B4ABD0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v43 = *(a2 + 64);
  v4 = *(a2 + 48);
  *&v41[16] = *(a2 + 32);
  v42 = v4;
  v5 = *(a2 + 16);
  v40 = *a2;
  *v41 = v5;
  v6 = vdupq_lane_s64(v43, 0);
  do
  {
    *(&v40 + v3) = vdivq_f64(*(&v40 + v3), v6);
    v3 += 16;
  }

  while (v3 != 64);
  v7 = *v41;
  v8 = *&v41[24];
  *a1 = *v41;
  *(a1 + 8) = v8;
  v9 = v40;
  v10 = *&v41[8];
  v11 = v42;
  *(a1 + 48) = v42;
  v38 = vsubq_f64(v9, vmulq_n_f64(v11, v7));
  v39 = vsubq_f64(v10, vmulq_n_f64(v11, v8));
  *&v8 = v39.f64[0] * v39.f64[0] + v38.f64[0] * v38.f64[0];
  v12 = sqrtf(*&v8);
  if (v38.f64[0] >= 0.0)
  {
    v12 = -v12;
  }

  v13 = v38.f64[0] - v12;
  v14 = v39.f64[0] * v39.f64[0] + v13 * v13;
  v15 = sqrtf(v14);
  v16 = v13 / v15;
  v17 = v39.f64[0] / v15;
  v18 = v16 * -2.0 * v16 + 1.0;
  v19 = v17 * (v16 * -2.0);
  v20 = v17 * -2.0 * v17 + 1.0;
  v21 = v18 * v38.f64[0] + 0.0 + v19 * v39.f64[0];
  v22 = v18 * v38.f64[1] + 0.0 + v19 * v39.f64[1];
  v34 = v21;
  v35 = v22;
  v23 = v19 * v38.f64[0] + 0.0 + v20 * v39.f64[0];
  v24 = v19 * v38.f64[1] + 0.0 + v20 * v39.f64[1];
  v36 = v23;
  v37 = v24;
  if (v21 >= 0.0)
  {
    v25 = v19;
  }

  else
  {
    v18 = -v18;
    v25 = -v19;
    v21 = -v21;
    v22 = -v22;
    v34 = v21;
    v35 = v22;
  }

  if (v24 < 0.0)
  {
    v19 = -v19;
    v20 = -v20;
    v23 = -v23;
    v24 = -v24;
    v36 = v23;
    v37 = v24;
  }

  v26 = 0;
  v44 = v18 * v21 + 0.0 + v19 * v23;
  v45 = v18 * v22 + 0.0 + v19 * v24;
  v46 = v25 * v21 + 0.0 + v20 * v23;
  v47 = v25 * v22 + 0.0 + v20 * v24;
  do
  {
    v27 = (v38.f64[v26] - *(&v44 + v26 * 8)) / (v38.f64[v26] + 1.0);
    if (v27 < 0.0)
    {
      v27 = -v27;
    }

    if (v27 > 0.001)
    {
      printf("warning: QR err = %f\n", v27);
    }

    ++v26;
  }

  while (v26 != 4);
  v28 = atan2(v25, v18);
  v29 = 0;
  v30 = v21 * v24 - v22 * v23;
  *&v31 = sqrtf(v30);
  *(a1 + 16) = v28;
  *(a1 + 24) = *&v31;
  v32 = vdupq_lane_s64(v31, 0);
  do
  {
    *(&v44 + v29) = vdivq_f64(*(&v34 + v29), v32);
    v29 += 16;
  }

  while (v29 != 32);
  v33 = v45 / v44;
  *(a1 + 32) = v44;
  *(a1 + 40) = v33;
}

__n128 sub_254B4AE74(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  return result;
}

__n128 sub_254B4AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 *a6)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  result = *a6;
  *(a1 + 56) = a6[1].n128_u64[0];
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_254B4AEB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_254B53710(v3, v2);
    }

    else
    {
      sub_254B6F128(v2);
    }
  }

  return a1;
}

uint64_t sub_254B4AEFC(uint64_t a1)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 2;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *a1 = dispatch_semaphore_create(2);
  pthread_mutex_init((a1 + 8), 0);
  return a1;
}

void sub_254B4AF54(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B4AF78(uint64_t a1)
{
  sub_254B4AFC8(a1);
  dispatch_release(*a1);
  pthread_mutex_destroy((a1 + 8));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_254B4AFC8(uint64_t a1)
{
  pthread_mutex_lock((a1 + 8));
  for (i = *(a1 + 80); i != *(a1 + 72); i = *(a1 + 80))
  {
    v3 = *(i - 8);
    if (v3)
    {
      v4 = sub_254B4AEB0(v3);
      MEMORY[0x259C24E00](v4, 0x1020C40A6EEA1E9);
      i = *(a1 + 80);
    }

    *(a1 + 80) = i - 8;
    dispatch_semaphore_signal(*a1);
  }

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t sub_254B4B060(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  *a1 = &unk_286700A80;
  v12 = a1 + 40;
  sub_254B3F88C(a1 + 8, a3);
  sub_254B3F924(v12, a3 + 32);
  *(a1 + 104) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = a2;
  *(a1 + 88) = a5;
  *(a1 + 96) = a6;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 118) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  if (a4)
  {
    if ((*(*a2 + 16))(a2))
    {
      v13 = "LP; ";
    }

    else
    {
      v13 = "QP; ";
    }

    sub_254B47EE0(MEMORY[0x277D82678], v13, 4);
    v14 = sub_254B47EE0(MEMORY[0x277D82678], "n = ", 4);
    v15 = MEMORY[0x259C24D10](v14, *(*(a1 + 80) + 16));
    v16 = sub_254B47EE0(v15, ", m = ", 6);
    v17 = MEMORY[0x259C24D10](v16, *(*(a1 + 80) + 8));
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v25);
    std::ostream::put();
    std::ostream::flush();
    v19 = sub_254B47EE0(MEMORY[0x277D82678], "regularization: d1 = ", 21);
    v20 = MEMORY[0x259C24CE0](v19, *(a1 + 88));
    v21 = sub_254B47EE0(v20, " d2 = ", 6);
    v22 = MEMORY[0x259C24CE0](v21, *(a1 + 96));
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v25);
    std::ostream::put();
    std::ostream::flush();
  }

  return a1;
}

void sub_254B4B2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v14 = *(v10 + 176);
  if (v14)
  {
    *(v10 + 184) = v14;
    operator delete(v14);
  }

  sub_254B47DE0(v12, 0);
  sub_254B36250(v11);
  sub_254B362D0(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_254B4B338(uint64_t a1)
{
  *a1 = &unk_286700A80;
  v2 = *(a1 + 128);
  v6[0] = *(a1 + 112);
  v6[1] = v2;
  v3 = *(a1 + 160);
  v6[2] = *(a1 + 144);
  v6[3] = v3;
  _SparseDestroyOpaqueSymbolic(v6);
  v4 = *(a1 + 176);
  if (v4)
  {
    *(a1 + 184) = v4;
    operator delete(v4);
  }

  sub_254B47DE0((a1 + 104), 0);
  sub_254B36250(a1 + 40);
  sub_254B362D0(a1 + 8);
  return a1;
}

void sub_254B4B3CC(uint64_t a1)
{
  sub_254B4B338(a1);

  JUMPOUT(0x259C24E00);
}

void sub_254B4B47C(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v2 = *(*(a1 + 80) + 16);
  memset(&v5[3], 0, 24);
  if (v2 << 32)
  {
    if (v2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_254B32E20();
  }

  sub_254B3F9BC(v5, v2);
  sub_254B5BE98(*(a1 + 80), v5, &v4);
}

void sub_254B4BC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v40 = *(v38 - 216);
  if (v40)
  {
    *(v38 - 208) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 192);
  if (v41)
  {
    *(v38 - 184) = v41;
    operator delete(v41);
  }

  v42 = *(v38 - 160);
  if (v42)
  {
    sub_254B4186C(v42);
  }

  v43 = *(v38 - 152);
  if (v43)
  {
    *(v38 - 144) = v43;
    operator delete(v43);
  }

  sub_254B4E200((v38 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_254B4BD74(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) == 1)
  {
    v2 = sub_254B47EE0(MEMORY[0x277D82678], "Preparing Symbolic Factorization", 32);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(v15, MEMORY[0x277D82680]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(v15);
    std::ostream::put();
    std::ostream::flush();
  }

  v4 = *(a1 + 96) == 0.0;
  memset(&v14, 0, sizeof(v14));
  v5 = *(a1 + 104);
  v6 = *(v5 + 88);
  *v15 = *(v5 + 72);
  *&v15[16] = v6;
  *&v15[32] = *(v5 + 104);
  v7 = sub_254B62428(v15);
  sub_254B4E270(v7, v4, &v14);
  v8 = *(*(a1 + 104) + 88);
  *&Matrix.rowCount = *(*(a1 + 104) + 72);
  *&Matrix.rowIndices = v8;
  options = v14;
  if (Matrix.columnCount <= 0)
  {
    if (!options.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254B88414();
      }

      goto LABEL_21;
    }

    strcpy(v15, ".structure.columnCount must be greater than 0.\n");
    memset(&v15[48], 0, 208);
    (options.reportError)(v15);
  }

  else
  {
    if ((~*&Matrix.attributes & 0xC) == 0)
    {
      if (Matrix.rowCount == Matrix.columnCount)
      {
        _SparseSymbolicFactorSymmetric(v15, SparseFactorizationLDLTUnpivoted, &Matrix, &options);
        goto LABEL_23;
      }

      if (options.reportError)
      {
        memset(&v15[75], 0, 181);
        strcpy(v15, "Matrix supposed to be symmetric (Hermitian), but rowCount != columnCount.\n");
        (options.reportError)(v15);
        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254B8849C();
      }

LABEL_21:
      _SparseTrap();
      goto LABEL_22;
    }

    if (!options.reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254B88458();
      }

      goto LABEL_21;
    }

    memset(&v15[60], 0, 196);
    strcpy(v15, "Requested symmetric factorization of non-symmetric matrix.\n");
    (options.reportError)(v15);
  }

LABEL_22:
  memset(v15, 0, 64);
  *v15 = -4;
LABEL_23:
  v9 = *&v15[16];
  *(a1 + 112) = *v15;
  *(a1 + 128) = v9;
  v10 = *&v15[48];
  *(a1 + 144) = *&v15[32];
  *(a1 + 160) = v10;
  if (!*(a1 + 112))
  {
    return 0;
  }

  printf("Symbolic factorization failed (status = %d).\n", *(a1 + 112));
  return 0xFFFFFFFFLL;
}

void sub_254B4C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFAbsoluteTimeGetCurrent();
  if (a3)
  {
    *a3 = 0;
    *(a3 + 80) = 0x7FF0000000000000;
    *(a3 + 88) = 0;
    *(a3 + 16) = *(a3 + 8);
    *(a3 + 40) = *(a3 + 32);
    *(a3 + 64) = *(a3 + 56);
    if ((*(**(a1 + 80) + 24))(*(a1 + 80)))
    {
      v5 = *(a1 + 80);
      if (*(v5 + 8))
      {
        v6 = *(v5 + 16) == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        if (*(a1 + 64))
        {
          sub_254B4EADC(a1 + 40, 0.0);
        }

        v7 = *(a1 + 32);
        if (!v7 || !(*(*v7 + 48))(v7))
        {
          sub_254B4B404(a1);
        }

        if (*(a1 + 72) == 1)
        {
          puts("Canceled IPOpt.");
        }

        v8 = 2;
        goto LABEL_16;
      }
    }

    else
    {
      puts("Constant Hessian is required for this implementation.");
    }

    v8 = 3;
LABEL_16:
    *a3 = v8;
  }
}

void sub_254B4CBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  std::locale::~locale((v30 - 160));
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void sub_254B4CC8C(uint64_t a1, void *a2, void *a3, double **a4, const void **a5, const double **a6, double **a7)
{
  v14 = *(a1 + 80);
  v16 = v14[1];
  v15 = v14[2];
  sub_254B5BDEC(v14, a5, v25);
  sub_254B35394(v24, v16);
  sub_254B61F14(*(*(*(a1 + 80) + 40) + 112), a5, v24, CblasNoTrans);
  sub_254B35394(__p, v15);
  sub_254B61F14(*(*(*(a1 + 80) + 40) + 112), a6, __p, CblasTrans);
  sub_254B39D6C(a2, v15);
  sub_254B620EC(a2);
  sub_254B62084(a2, v25);
  sub_254B6204C(a2, __p, 1.0);
  sub_254B6204C(a2, a7, 1.0);
  sub_254B6204C(a2, a5, -(*(a1 + 88) * *(a1 + 88)));
  sub_254B39D6C(a3, v16);
  sub_254B620EC(a3);
  sub_254B6204C(a3, v24, 1.0);
  sub_254B62084(a3, (*(*(a1 + 80) + 40) + 128));
  sub_254B6204C(a3, a6, *(a1 + 96) * *(a1 + 96));
  sub_254B39D6C(a4, v15);
  if (v15)
  {
    v17 = *a5;
    v18 = *a7;
    v19 = *a4;
    do
    {
      v20 = *v17++;
      v21 = v20;
      v22 = *v18++;
      *v19++ = v21 * v22;
      --v15;
    }

    while (v15);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }
}

void sub_254B4CE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B4CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double **a5)
{
  v9 = *a4;
  v10 = *(a4 + 8) - *a4;
  if (v10)
  {
    v11 = v10 >> 3;
    v12 = *a5;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (*v9 >= 0.0 && *v12 >= 0.0)
    {
      ++v12;
      ++v9;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_254B6200C(a2);
    sub_254B5BFD0(*(a1 + 80), __p);
    sub_254B6200C(__p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_254B6200C(a3);
    sub_254B6200C(*(*(a1 + 80) + 40) + 128);
    fabs(sub_254B61F90(a4, a5));
    sub_254B5BD50(*(a1 + 80), a4);
  }
}

void sub_254B4CFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B4CFEC(uint64_t a1, double **a2, void **a3, uint64_t *a4, uint64_t *a5, double **a6, uint64_t *a7, uint64_t *a8, double a9, uint64_t *a10)
{
  v18 = *a8;
  v19 = a8[1] - *a8;
  if (v19)
  {
    v20 = v19 >> 3;
    v21 = *a10;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v22 = 6;
    while (*v21 > 0.0 && *v18 > 0.0)
    {
      ++v21;
      ++v18;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *(a1 + 208) = 0;
    v23 = sub_254B4D898(a1, a8, a10);
    v24 = sub_254B4DA74(a1, a2, a3, a4, a8, a10, a5, a6, a7);
    v25 = v24;
    v26 = 4 * (v24 != 0);
    if (v23)
    {
      v26 = 6;
    }

    v49 = v26;
    v27 = sub_254B4DCE8(v24, a8, a2);
    v29 = sub_254B4DCE8(v28, a10, a4);
    v31 = sub_254B4DDD8(v27, v29, v30, a8, a10, a2, a4);
    sub_254B35394(__p, *(*(a1 + 80) + 16));
    v32 = *(*(a1 + 80) + 16);
    if (v32)
    {
      v33 = *a7;
      v34 = *a2;
      v35 = *a4;
      v36 = __p[0];
      do
      {
        v37 = *v33++;
        v38 = v37;
        v39 = *v34++;
        v40 = v39;
        v41 = *v35++;
        *v36++ = v38 + v40 * v41 + -v31 * a9;
        --v32;
      }

      while (v32);
    }

    *(a1 + 208) = 1;
    v42 = sub_254B4DA74(a1, a2, a3, a4, a8, a10, a5, a6, __p);
    if (v42)
    {
      v43 = (v23 | v25) == 0;
    }

    else
    {
      v43 = 0;
    }

    if (v43)
    {
      v22 = 4;
    }

    else
    {
      v22 = v49;
    }

    v44 = sub_254B4DCE8(v42, a8, a2);
    v46 = sub_254B4DCE8(v45, a10, a4);
    sub_254B620BC(a2, v44 * 0.99);
    v47 = v46 * 0.99;
    sub_254B620BC(a3, v47);
    sub_254B620BC(a4, v47);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v22;
}

void sub_254B4D260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B4D280(uint64_t a1, uint64_t a2, double a3, uint64_t a4, double **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254B4CEA4(a1, a6, a7, a2, a5);
  v16 = v15;
  v17 = *a2;
  v18 = *(a2 + 8) - *a2;
  if (v18)
  {
    v19 = v18 >> 3;
    v20 = *a5;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v21 = 1;
    do
    {
      if (*v17 < 0.0 || *v20 < 0.0)
      {
        v21 = 0;
      }

      ++v20;
      ++v17;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = 1;
  }

  if (*(a1 + 72))
  {
    v22 = sub_254B47EE0(MEMORY[0x277D82678], "checking optimality conditions:", 31);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v24 = sub_254B47EE0(MEMORY[0x277D82678], "feasibility:", 12);
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v26 = sub_254B47EE0(MEMORY[0x277D82678], "x > 0 and z > 0? ", 17);
    v27 = MEMORY[0x259C24CD0](v26, v21 & 1);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v29 = sub_254B47EE0(MEMORY[0x277D82678], "total constraint violation = ", 29);
    v30 = MEMORY[0x259C24CE0](v29, v16);
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v31 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v32 = sub_254B47EE0(MEMORY[0x277D82678], "rx: (-Qx + A^Ty + z = c) ", 25);
    v33 = sub_254B6200C(a6);
    v34 = MEMORY[0x259C24CE0](v32, v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v36 = sub_254B47EE0(MEMORY[0x277D82678], "ry: (Ax = b) = ", 15);
    v37 = sub_254B6200C(a7);
    v38 = MEMORY[0x259C24CE0](v36, v37);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v40 = sub_254B47EE0(MEMORY[0x277D82678], "rz: (x.*z) = ", 13);
    v41 = sub_254B6200C(a8);
    v42 = MEMORY[0x259C24CE0](v40, v41);
    std::ios_base::getloc((v42 + *(*v42 - 24)));
    v43 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    v44 = sub_254B47EE0(MEMORY[0x277D82678], "objective value:", 16);
    v45 = sub_254B5BD50(*(a1 + 80), a2);
    v46 = MEMORY[0x259C24CE0](v44, v45);
    std::ios_base::getloc((v46 + *(*v46 - 24)));
    v47 = std::locale::use_facet(&v49, MEMORY[0x277D82680]);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
  }

  return (v16 > a3) | ((v21 & 1) == 0);
}

uint64_t sub_254B4D898(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 80);
  v8 = v6[1];
  v7 = v6[2];
  if (!(*(*v6 + 24))(v6))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (*(**(a1 + 80) + 40))(*(a1 + 80));
  *&v23[0] = 0;
  sub_254B3F9BC(v26, v8 + v7);
  if (v7)
  {
    v10 = 0;
    v11 = *v9;
    v12 = (v9[1] - *v9) >> 3;
    v13 = *a3;
    v14 = *a2;
    v15 = 1;
    v16 = v26[0];
    do
    {
      if (v12 <= v10)
      {
        sub_254B32C08();
      }

      v16[v10] = -(*(v11 + 8 * v10) + *(v13 + 8 * v10) / *(v14 + 8 * v10) + *(a1 + 88) * *(a1 + 88));
      v10 = v15;
      v17 = v7 > v15++;
    }

    while (v17);
  }

  if (v8)
  {
    v18 = (v26[0] + 8 * v7);
    v19 = 1;
    do
    {
      *v18++ = *(a1 + 96) * *(a1 + 96);
      v17 = v8 > v19++;
    }

    while (v17);
  }

  *&v23[0] = 0;
  sub_254B3F9BC(__p, v8 + v7);
  v20 = *(a1 + 104);
  v21 = *(v20 + 88);
  v23[0] = *(v20 + 72);
  v23[1] = v21;
  v24 = *(v20 + 104);
  sub_254B62430(v23, __p, v26);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return 0;
}

void sub_254B4DA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B4DA74(uint64_t a1, void **a2, void **a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, double **a8, uint64_t *a9)
{
  v16 = *(a1 + 80);
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  sub_254B35394(&v58, (a5[1] - *a5) >> 3);
  v19 = v58;
  if (v59 != v58)
  {
    v20 = 0;
    v21 = (v59 - v58) >> 3;
    v22 = *a7;
    v23 = *a9;
    v24 = *a5;
    do
    {
      v19[v20] = *(v22 + 8 * v20) - *(v23 + 8 * v20) / *(v24 + 8 * v20);
      ++v20;
    }

    while (v21 > v20);
  }

  sub_254B35394(v57, v18 + v17);
  if (v17)
  {
    v25 = v58;
    v26 = v57[0];
    v27 = v17;
    do
    {
      v28 = *v25++;
      *v26++ = -v28;
      --v27;
    }

    while (v27);
  }

  if (v18)
  {
    v29 = *a8;
    v30 = (v57[0] + 8 * v17);
    v31 = v18;
    do
    {
      v32 = *v29++;
      *v30++ = -v32;
      --v31;
    }

    while (v31);
  }

  *&v54[0] = 0;
  sub_254B3F9BC(__p, v18 + v17);
  v33 = *(a1 + 104);
  v34 = *(v33 + 88);
  v54[0] = *(v33 + 72);
  v54[1] = v34;
  v55 = *(v33 + 104);
  v35 = sub_254B4DF24(a1, __p, v54, v57);
  if (v17)
  {
    v36 = __p[0];
    v37 = *a2;
    v38 = v17;
    do
    {
      v39 = *v36++;
      *v37++ = v39;
      --v38;
    }

    while (v38);
  }

  if (v18)
  {
    v40 = (__p[0] + 8 * v17);
    v41 = *a3;
    do
    {
      v42 = *v40++;
      *v41++ = v42;
      --v18;
    }

    while (v18);
  }

  v43 = *a4;
  v44 = a4[1];
  v45 = v44 - *a4;
  if (v44 != *a4)
  {
    v46 = 0;
    v47 = v45 >> 3;
    v48 = *a9;
    v49 = *a6;
    v50 = *a2;
    v51 = *a5;
    do
    {
      *(v43 + 8 * v46) = -(*(v48 + 8 * v46) + *(v49 + 8 * v46) * *&v50[v46]) / *(v51 + 8 * v46);
      ++v46;
    }

    while (v47 > v46);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return v35;
}

void sub_254B4DC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_254B4DCE8(uint64_t a1, double **a2, double **a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = v5 - *a2;
  sub_254B3F9BC(__p, v7);
  v8 = __p[0];
  if (v5 != v6)
  {
    v9 = *a3;
    v10 = *a2;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    v12 = __p[0];
    v13 = v11;
    do
    {
      v14 = -*v10;
      if (*v9 <= v14)
      {
        *v12 = v14 / *v9;
      }

      ++v9;
      ++v10;
      ++v12;
      --v13;
    }

    while (v13);
    v15 = 1.0;
    v16 = v8;
    do
    {
      v17 = *v16++;
      v18 = v17;
      if (v17 < v15)
      {
        v15 = v18;
      }

      --v11;
    }

    while (v11);
    goto LABEL_15;
  }

  v15 = 1.0;
  if (__p[0])
  {
LABEL_15:
    __p[1] = v8;
    operator delete(v8);
  }

  return v15;
}

double sub_254B4DDD8(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double **a6, double **a7)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_254B35A88(&v20, *a4, a4[1], (a4[1] - *a4) >> 3);
  sub_254B6204C(&v20, a6, a1);
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_254B35A88(&__p, *a5, a5[1], (a5[1] - *a5) >> 3);
  sub_254B6204C(&__p, a7, a2);
  v13 = sub_254B61F90(&v20, &__p);
  v14 = sub_254B61F90(a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v15 = v13 / v14;
  if (v13 / v14 < 0.0)
  {
    v15 = 0.0;
  }

  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  return v15 * (v15 * v15);
}

void sub_254B4DEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B4DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    v7 = *(a3 + 16);
    v21[0] = *a3;
    v21[1] = v7;
    v22 = *(a3 + 32);
    sub_254B4E3BC(a1, v21, &toFree);
    v8 = *&toFree.userFactorStorage;
    v9 = *&toFree.solveWorkspaceRequiredStatic;
    v10 = *&toFree.symbolicFactorization.workspaceSize_Float;
    *(a1 + 264) = *&toFree.symbolicFactorization.factorSize_Float;
    *(a1 + 280) = v8;
    *(a1 + 296) = v9;
    v11 = *&toFree.symbolicFactorization.columnCount;
    *(a1 + 216) = *&toFree.status;
    *(a1 + 232) = v11;
    *(a1 + 312) = v24;
    *(a1 + 248) = v10;
  }

  v24 = *(a1 + 312);
  v12 = *(a1 + 232);
  *&toFree.status = *(a1 + 216);
  *&toFree.symbolicFactorization.columnCount = v12;
  v13 = *(a1 + 264);
  v14 = *(a1 + 280);
  *&toFree.symbolicFactorization.workspaceSize_Float = *(a1 + 248);
  *&toFree.symbolicFactorization.factorSize_Float = v13;
  v15 = *(a1 + 296);
  *&toFree.userFactorStorage = v14;
  *&toFree.solveWorkspaceRequiredStatic = v15;
  v16 = sub_254B4E71C(a1, a2, &toFree, a4);
  if (*(a1 + 208) == 1)
  {
    v17 = *(a1 + 296);
    *&toFree.userFactorStorage = *(a1 + 280);
    *&toFree.solveWorkspaceRequiredStatic = v17;
    v24 = *(a1 + 312);
    v18 = *(a1 + 232);
    *&toFree.status = *(a1 + 216);
    *&toFree.symbolicFactorization.columnCount = v18;
    v19 = *(a1 + 264);
    *&toFree.symbolicFactorization.workspaceSize_Float = *(a1 + 248);
    *&toFree.symbolicFactorization.factorSize_Float = v19;
    _SparseDestroyOpaqueNumeric_Double(&toFree);
  }

  return v16;
}

void sub_254B4E028(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_254B32E20();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_254B32F20();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *sub_254B4E130(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_254B35448(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B4E1D0(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_254B4EB30(a1, a2 - v3, a3);
  }
}

void **sub_254B4E200(void **a1)
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

void sub_254B4E270(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = unk_286700F70;
  *a3 = xmmword_286700F60;
  *(a3 + 16) = v4;
  *(a3 + 32) = xmmword_286700F80;
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
    sub_254B47D10(&__p, a1);
    v6 = __p;
    if (a1)
    {
      v7 = 0;
      v8 = vdupq_n_s64(a1 - 1);
      v9 = xmmword_254B8B0E0;
      v10 = xmmword_254B8AAC0;
      v11 = __p + 8;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v8, v10));
        if (vuzp1_s16(v13, *v8.i8).u8[0])
        {
          *(v11 - 2) = v7;
        }

        if (vuzp1_s16(v13, *&v8).i8[2])
        {
          *(v11 - 1) = v7 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
        {
          *v11 = v7 + 2;
          v11[1] = v7 + 3;
        }

        v7 += 4;
        v9 = vaddq_s64(v9, v12);
        v10 = vaddq_s64(v10, v12);
        v11 += 4;
      }

      while (((a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v7);
      *(a3 + 4) = 1;
      *(a3 + 8) = v6;
    }

    else
    {
      *(a3 + 4) = 1;
      *(a3 + 8) = v6;
      if (!v6)
      {
        return;
      }
    }

    v15 = v6;
    operator delete(v6);
  }
}

void sub_254B4E3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B4E3BC(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = a1[8];
  *factor = a1[7];
  *&factor[16] = v4;
  v5 = a1[10];
  *&factor[32] = a1[9];
  *&factor[48] = v5;
  v6 = *(a2 + 16);
  *&Matrix.structure.rowCount = *a2;
  *&Matrix.structure.rowIndices = v6;
  Matrix.data = *(a2 + 32);
  options = *ymmword_254B8B230;
  if (*factor || !*&factor[24])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254B88678();
    }

    goto LABEL_16;
  }

  _SparseGetOptionsFromSymbolicFactor(&v18, factor);
  reportError = v18.reportError;
  if (*&Matrix.structure.rowCount != *&factor[4] || *(&Matrix.structure.blockSize + 2) != factor[16] || ((*&factor[12] ^ *&Matrix.structure.attributes) & 1) != 0)
  {
    if (v18.reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "%s does not match that used for symbolic factorization stored in %s.\n", "Matrix", "symbolicFactor");
      (reportError)(&v18);
LABEL_17:
      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v14 = -4;
LABEL_18:
      *a3 = v14;
      *(a3 + 8) = v14;
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254B884E0();
    }

LABEL_16:
    _SparseTrap();
    goto LABEL_17;
  }

  malloc = v18.malloc;
  free = v18.free;
  v10 = (v18.malloc)(*&factor[56]);
  if (!v10)
  {
    if (reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "Failed to allocate factor storage of size %ld bytes.");
LABEL_23:
      (reportError)(&v18);
LABEL_31:
      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v14 = -3;
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254B885F8();
    }

LABEL_30:
    _SparseTrap();
    goto LABEL_31;
  }

  v11 = v10;
  v12 = (malloc)(*&factor[40]);
  if (!v12)
  {
    (free)(v11);
    if (reportError)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      snprintf(&v18, 0x100uLL, "Failed to allocate workspace of size %ld bytes.");
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254B88578();
    }

    goto LABEL_30;
  }

  v13 = v12;
  if (factor[17] - 80 >= 4)
  {
    if (factor[17] - 40 > 1)
    {
      _SparseNumericFactorSymmetric_Double(a3, factor, &Matrix, &options, v11, v12);
    }

    else
    {
      _SparseNumericFactorQR_Double(a3, factor, &Matrix, &options, v11, v12);
    }
  }

  else
  {
    _SparseNumericFactorLU_Double();
  }

  *(a3 + 72) = 0;
  (free)(v13);
}

uint64_t sub_254B4E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = v7 - *a2;
  if (v7 != *a2)
  {
    v10 = v9 >> 3;
    if ((v9 >> 3) <= 1)
    {
      v10 = 1;
    }

    bzero(v8, 8 * v10);
  }

  if (!*a3)
  {
    v14 = *a4;
    v15 = *(a4 + 8);
    v16 = *(a3 + 80);
    *&Factored.userFactorStorage = *(a3 + 64);
    *&Factored.solveWorkspaceRequiredStatic = v16;
    v27 = *(a3 + 96);
    v17 = *(a3 + 16);
    *&Factored.status = *a3;
    *&Factored.symbolicFactorization.columnCount = v17;
    v18 = *(a3 + 48);
    *&Factored.symbolicFactorization.workspaceSize_Float = *(a3 + 32);
    *&Factored.symbolicFactorization.factorSize_Float = v18;
    if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254B888DC();
      }

      goto LABEL_14;
    }

    _SparseGetOptionsFromSymbolicFactor(&v30, &Factored.symbolicFactorization);
    reportError = v30.reportError;
    if (Factored.symbolicFactorization.status || !Factored.symbolicFactorization.workspaceSize_Float || Factored.status || !Factored.solveWorkspaceRequiredStatic)
    {
      if (!v30.reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_254B88858();
        }

        goto LABEL_14;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s does not hold a completed matrix factorization.\n");
    }

    else
    {
      if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
      {
        v20 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v20 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if ((*&Factored.attributes ^ *&Factored.symbolicFactorization.attributes))
      {
        v21 = Factored.symbolicFactorization.rowCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      else
      {
        v21 = Factored.symbolicFactorization.columnCount * LOBYTE(Factored.symbolicFactorization.factorization);
      }

      if (BYTE1(Factored.symbolicFactorization.factorization) == 40)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      if (v21 == (v9 >> 3))
      {
        if (v22 == ((v15 - v14) >> 3))
        {
          free = v30.free;
          RHS.rowCount = (v15 - v14) >> 3;
          RHS.columnCount = 1;
          *&RHS.attributes = 0;
          RHS.data = v14;
          RHS.columnStride = RHS.rowCount;
          *&Soln.attributes = 0;
          Soln.data = v8;
          Soln.rowCount = v9 >> 3;
          Soln.columnCount = 1;
          Soln.columnStride = Soln.rowCount;
          v24 = (v30.malloc)(v27 + Factored.solveWorkspaceRequiredPerRHS);
          if (v24)
          {
            v25 = v24;
            _SparseSolveOpaque_Double(&Factored, &RHS, &Soln, v24);
            (free)(v25);
            return 0;
          }

          if (reportError)
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            memset(&v30, 0, sizeof(v30));
            snprintf(&v30, 0x100uLL, "Failed to allocate workspace of size %ld for SparseSolve().\n");
            goto LABEL_42;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_254B887DC();
          }

LABEL_14:
          _SparseTrap();
          return 0;
        }

        if (!v30.reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_254B8874C();
          }

          goto LABEL_14;
        }
      }

      else if (!v30.reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_254B886BC();
        }

        goto LABEL_14;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(&v30, 0, sizeof(v30));
      snprintf(&v30, 0x100uLL, "%s (size %dx1) does not match dimensions of matrix factorization %s (%d x %d).\n");
    }

LABEL_42:
    (reportError)(&v30);
    return 0;
  }

  printf("Numeric factorization failed (status = %d).\n", *a3);
  v11 = *(a2 + 8) - *a2;
  if (v11)
  {
    v12 = v11 >> 3;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a2, 8 * v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_254B4EADC(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_254B33AE8();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_254B4EB30(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_254B8AAC0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_254B32E20();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_254B35448(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_254B8AAC0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

intptr_t sub_254B4ED50(intptr_t result)
{
  v1 = atomic_load((result + 2));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    do
    {
      v3 = *(v2 + 16);
      v4 = dispatch_time(0, 1000000);
      result = dispatch_semaphore_wait(v3, v4);
      if (!result)
      {
        atomic_store(1u, (v2 + 2));
      }

      v5 = atomic_load((v2 + 2));
    }

    while ((v5 & 1) == 0);
  }

  return result;
}

void sub_254B4EDC0(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  dispatch_group_create();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v3 = (*(*a2 + 24))(a2);
    v4 = dispatch_queue_create(v3, 0);
    v5 = (*(*a2 + 32))(a2);
    v6 = dispatch_semaphore_create(v5);
    sub_254B4F6CC(v7, v4, v6, a2);
    sub_254B4F594(&v8, v7);
    dispatch_release(v4);
    dispatch_release(v6);
    sub_254B4F76C(v7);
    a2 = (*(*a2 + 16))(a2);
  }

  while (a2);
  dispatch_queue_create("com.apple.stage_state", 0);
  dispatch_semaphore_create(0);
  memset(&v7[12], 0, 24);
  if (0x8E38E38E38E38E39 * ((v9 - v8) >> 3) != 1)
  {
    operator new();
  }

  operator new();
}

void sub_254B4F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v46 = *v44;
  if (*v44)
  {
    *(v44 + 8) = v46;
    operator delete(v46);
  }

  a29 = &a44;
  sub_254B4FEB0(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_254B4F594(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_254B4FF70(a1, a2);
  }

  else
  {
    result = sub_254B500B4(v3, a2) + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_254B4F608(uint64_t a1, uint64_t a2, dispatch_time_t timeout)
{
  if (dispatch_semaphore_wait(*(a1 + 32), timeout))
  {
    return 0;
  }

  v5 = atomic_load(*(a1 + 24));
  if (v5)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    return 0;
  }

  v7 = *(a1 + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = sub_254B4FCE8;
  v9[3] = &unk_2797A9AD8;
  v9[4] = a1;
  v9[5] = a2;
  dispatch_sync(v7, v9);
  v8 = *(a1 + 16);
  if (v8)
  {
    dispatch_semaphore_signal(v8);
  }

  return 1;
}

void *sub_254B4F6CC(void *a1, dispatch_object_t object, dispatch_object_t a3, uint64_t a4)
{
  *a1 = &unk_2867006F8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = object;
  a1[5] = a3;
  a1[6] = a4;
  if (object)
  {
    dispatch_retain(object);
    a3 = a1[5];
  }

  if (a3)
  {
    dispatch_retain(a3);
  }

  return a1;
}

void sub_254B4F734(uint64_t a1)
{
  sub_254B4F76C(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B4F76C(uint64_t a1)
{
  *a1 = &unk_2867006F8;
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = (a1 + 8);
  sub_254B4F7DC(&v5);
  return a1;
}

void sub_254B4F7DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_254B4F830(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_254B4F830(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *sub_254B4F89C(void *a1, dispatch_object_t object, dispatch_object_t a3, dispatch_object_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_2867007F0;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a7;
  if (a4)
  {
    dispatch_retain(a4);
  }

  *a1 = &unk_286700638;
  a1[4] = object;
  a1[5] = a3;
  a1[6] = a6;
  if (object)
  {
    dispatch_retain(object);
    a3 = a1[5];
  }

  if (a3)
  {
    dispatch_retain(a3);
  }

  return a1;
}

void sub_254B4F940(void *a1)
{
  sub_254B4FBC4(a1);

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B4F978(unsigned __int8 **a1, uint64_t a2)
{
  do
  {
    v4 = dispatch_time(0, 10000000);
    result = (*(*a1 + 4))(a1, a2, v4);
    if (result)
    {
      break;
    }

    v6 = atomic_load(a1[3]);
  }

  while ((v6 & 1) == 0);
  return result;
}

uint64_t sub_254B4F9EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_semaphore_signal(v1);
  }

  return 1;
}

void *sub_254B4FA1C(void *a1, uint64_t a2, dispatch_object_t object, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a1 + 10;
  a1[4] = 0;
  *a1 = &unk_286700638;
  v7 = a1 + 7;
  a1[5] = object;
  a1[6] = a1 + 7;
  if (object)
  {
    dispatch_retain(object);
  }

  *a1 = &unk_286700670;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  *(v7 + 24) = 0;
  a1[11] = a4;
  a1[12] = a2;
  return a1;
}

void *sub_254B4FAB8(uint64_t a1)
{
  *a1 = &unk_286700670;
  v3 = (a1 + 56);
  sub_254B4F7DC(&v3);
  return sub_254B4FBC4(a1);
}

uint64_t sub_254B4FB14(uint64_t a1)
{
  *a1 = &unk_286700670;
  v4 = (a1 + 56);
  sub_254B4F7DC(&v4);
  v2 = sub_254B4FBC4(a1);
  return MEMORY[0x259C24E00](v2, 0x10A1C4096DEAEF2);
}

uint64_t sub_254B4FB84(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    atomic_store(1u, *(a1 + 88));
  }

  return (*(**(a1 + 96) + 16))();
}

void *sub_254B4FBC4(void *a1)
{
  *a1 = &unk_286700638;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  *a1 = &unk_2867007F0;
  v4 = a1[1];
  if (v4)
  {
    dispatch_release(v4);
  }

  return a1;
}

uint64_t sub_254B4FC44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_2867007F0;
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);
  if (v4)
  {
    dispatch_retain(v4);
  }

  *a1 = &unk_286700638;
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  if (!v5)
  {
    v7 = v6;
    if (!v6)
    {
      return a1;
    }

    goto LABEL_5;
  }

  dispatch_retain(v5);
  v7 = *(a1 + 40);
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

  return a1;
}

uint64_t sub_254B4FCE8(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(*(result + 32) + 48);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v6 = *v2;
    v7 = v4 - *v2;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_254B32E20();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v15[4] = *(*(result + 32) + 48);
    if (v12)
    {
      sub_254B33108(v2, v12);
    }

    *(8 * v8) = v1;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    v13 = *v2;
    *v2 = 0;
    v15[0] = v13;
    v15[1] = v13;
    v2[1] = v5;
    v15[2] = v13;
    v14 = v2[2];
    v2[2] = 0;
    v15[3] = v14;
    result = sub_254B4FE04(v15);
  }

  else
  {
    *v4 = v1;
    v5 = (v4 + 8);
  }

  v2[1] = v5;
  return result;
}

void sub_254B4FDEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_254B88928(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B4FE04(uint64_t a1)
{
  sub_254B4FE3C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_254B4FE3C(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_254B4FEB0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 72;
      v7 = v4 - 72;
      v8 = v4 - 72;
      do
      {
        v9 = *v8;
        v8 -= 72;
        (*v9)(v7);
        v6 -= 72;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_254B4FF70(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_254B32E20();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_254B50144(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_254B500B4(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  sub_254B501A0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_254B50240(&v13);
  return v12;
}

void sub_254B500A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B50240(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B500B4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2867006F8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = v3;
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  if (!v3)
  {
    v6 = v4;
    if (!v4)
    {
      return a1;
    }

    goto LABEL_3;
  }

  dispatch_retain(v3);
  v6 = *(a1 + 40);
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

  return a1;
}

void sub_254B50144(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_254B32F20();
}

void sub_254B501A0(uint64_t a1, uint64_t a2, void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_254B500B4(a4, v7);
      v7 += 72;
      a4 = v8 + 72;
    }

    while (v7 != a3);
    if (v6 != a3)
    {
      v9 = v6;
      v10 = v6;
      do
      {
        v11 = *v10;
        v10 += 9;
        (*v11)(v6);
        v9 += 9;
        v6 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t sub_254B50240(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_254B502AC(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *sub_254B502FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  sub_254B50364((v3 + 40));
  *(v3 + 40) = *(v2 + 8);
  *(v3 + 56) = *(v2 + 24);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v4 = (*(a1 + 40) + 8);

  return sub_254B4F830(v4);
}

void sub_254B50364(void **a1)
{
  if (*a1)
  {
    sub_254B4F830(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_254B503A4(uint64_t a1)
{
  v2 = atomic_load(*(a1 + 32));
  if ((v2 & 1) != 0 || (v3 = atomic_load(*(a1 + 40))) != 0)
  {
    (*(**(a1 + 64) + 24))(*(a1 + 64));
  }

  else if (((*(**(a1 + 48) + 48))(*(a1 + 48), *(a1 + 56), *(a1 + 64)) & 1) == 0)
  {
    atomic_fetch_add(*(a1 + 40), 1u);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 72);

  dispatch_group_leave(v5);
}

uint64_t sub_254B50484(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  while (v2 != v3)
  {
    result = (*(**(v1 + 56) + 24))(*(v1 + 56));
    v2 += 8;
  }

  return result;
}

BOOL sub_254B504E8(int **a1, int a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    return 0;
  }

  v6 = *v4;
  v7 = a3 - *v4;
  if (a3 >= *v4)
  {
    v8 = *(v5 - 6) < a3;
    if (*(v5 - 6) < a3)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  if (a4 < v6 || *(v5 - 6) < a4 || v8)
  {
    return 0;
  }

  if (v7 > a4 - v6)
  {
    return 1;
  }

  v10 = a2;
  v11 = v7 + v6 - a4;
  v12 = &v4[6 * v7 + 4];
  do
  {
    result = *v12 >= v10 && *(v12 - 1) <= v10;
    v13 = !result || v11++ == 0;
    v12 += 3;
  }

  while (!v13);
  return result;
}

double sub_254B50594(int **a1, double *a2)
{
  v3 = *a2 - 1;
  if (sub_254B504E8(a1, v3, a2[1], (a2[3] + a2[1] + -1.0)))
  {
    *a2 = v3;
    result = a2[2] + 1.0;
    a2[2] = result;
  }

  return result;
}

BOOL sub_254B50600(int **a1, double *a2)
{
  v3 = a2[2];
  result = sub_254B504E8(a1, (*a2 + v3) + 1, a2[1], (a2[3] + a2[1] + -1.0));
  if (result)
  {
    a2[2] = v3 + 1.0;
  }

  return result;
}

uint64_t sub_254B50668(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == *a1)
  {
    return 0;
  }

  v4 = a2[1];
  if (*v2 >= v4)
  {
    return 0;
  }

  v5 = v4 - 1;
  if (*(v3 - 24) < v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = &v2[6 * (v5 - *v2)];
  if (v7[1] > v6 || v7[2] < (a2[2] + v6 + -1.0))
  {
    return 0;
  }

  a2[1] = v5;
  a2[3] = a2[3] + 1.0;
  return 1;
}

uint64_t sub_254B50708(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == *a1)
  {
    return 0;
  }

  v4 = a2[3];
  v5 = (a2[1] + v4 + -1.0);
  if (v5 + 1 < *v2)
  {
    return 0;
  }

  if (*(v3 - 24) <= v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = &v2[6 * (v5 + 1 - *v2)];
  if (v7[1] > v6 || v7[2] < (a2[2] + v6 + -1.0))
  {
    return 0;
  }

  a2[3] = v4 + 1.0;
  return 1;
}

void sub_254B507A4(int **a1, __int128 *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  sub_254B50594(a1, &v7);
  if (v5)
  {
    if (sub_254B50600(a1, &v7))
    {
      v6 = v8;
      *a2 = v7;
      a2[1] = v6;
    }
  }
}

uint64_t sub_254B50800(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  result = sub_254B50668(a1, &v7);
  if (result)
  {
    result = sub_254B50708(a1, &v7);
    if (result)
    {
      v6 = v8;
      *a2 = v7;
      a2[1] = v6;
      return 1;
    }
  }

  return result;
}

BOOL sub_254B5085C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == *a1)
  {
    return 0;
  }

  if (SHIDWORD(a2) < *v2)
  {
    return 0;
  }

  if (*(v3 - 24) < SHIDWORD(a2))
  {
    return 0;
  }

  v4 = &v2[6 * (HIDWORD(a2) - *v2)];
  return v4[1] <= a2 && v4[2] >= a2;
}

uint64_t sub_254B508B4(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  LODWORD(result) = 0;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  if (v9 <= 1)
  {
    v9 = 1;
  }

  v10 = (v3 + 16);
  do
  {
    v11 = (*v10 - *(v10 - 1) + 1.0);
    v12 = result < v11;
    if (result <= v11)
    {
      result = v11;
    }

    else
    {
      result = result;
    }

    if (v12)
    {
      v7 = v6;
    }

    ++v6;
    v10 += 3;
  }

  while (v9 != v6);
  v13 = v3 + 24 * v7;
  *a2 = *v13;
  *a3 = *(v13 + 8);
  return result;
}

BOOL sub_254B50940(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == *a1)
  {
    return 0;
  }

  v5 = a2[1];
  v6 = v5;
  v7 = *v2;
  if (v5 < *v2)
  {
    return 0;
  }

  v8 = *(v3 - 24);
  if (v8 < v6)
  {
    return 0;
  }

  v9 = *a2;
  v10 = &v2[6 * (v6 - *v2)];
  if (*(v10 + 1) > v9)
  {
    return 0;
  }

  v11 = (*a2 + a2[2] + -1.0);
  if (*(v10 + 2) < v11)
  {
    return 0;
  }

  v12 = (v5 + a2[3] + -1.0);
  if (v12 < v7 || v8 < v12)
  {
    return 0;
  }

  v14 = &v2[6 * (v12 - v7)];
  if (*(v14 + 1) > v9 || *(v14 + 2) < v11 || !sub_254B504E8(a1, v9, v6, v12))
  {
    return 0;
  }

  return sub_254B504E8(a1, v11, v6, v12);
}

uint64_t sub_254B50A60(float64x2_t *a1, uint64_t a2, char a3, float a4, __n128 a5)
{
  v8 = 0;
  v10 = *a1;
  v9 = a1[1];
  __asm { FMOV            V3.2S, #1.0 }

  v16.i32[0] = _D3.i32[0];
  *&v16.i32[1] = 1.0 / a4;
  *_D3.i32 = a4;
  v103 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a4 > 1.0), 0x1FuLL)), v16, _D3);
  v17 = vadd_f32(v103, v103);
  a5.n128_u64[0] = 0x4300000043000000;
  do
  {
    v106 = a5;
    v108 = vcvtq_f64_f32(vmul_n_f32(v17, a5.n128_f32[0]));
    v110 = vcvtq_f64_f32(vmul_n_f32(v103, a5.n128_f32[0]));
    v18 = v8;
    v19 = v9;
    v20 = v10;
    do
    {
      v8 = v18;
      v112 = v19;
      v116 = v20;
      v118 = vaddq_f64(v19, v108);
      v120 = vsubq_f64(v20, v110);
      v21 = vcvt_f32_f64(v120);
      v22 = vcvt_f32_f64(vaddq_f64(v118, vcvtq_f64_f32(v21)));
      v23 = vrndm_f32(v21);
      v122 = v23.f32[0];
      v123 = v23.f32[1];
      v124 = vcvtq_f64_f32(vsub_f32(vrndp_f32(v22), v23));
      v24 = sub_254B50940(a2, &v122);
      v19 = v118;
      v20 = v120;
      v18 = 1;
    }

    while (v24);
    a5 = v106;
    a5.n128_f32[0] = v106.n128_f32[0] * 0.5;
    v9 = v112;
    v10 = v116;
  }

  while ((v106.n128_f32[0] * 0.5) > 0.25);
  v25 = v112.f64[1];
  v26 = v116.f64[1];
  if (a3)
  {
    v111 = v112.f64[1];
    v107 = v112.f64[0];
    v109 = v116.f64[1];
    v97 = v116.f64[0];
    LOBYTE(v27) = v8;
  }

  else
  {
    v28 = v103.f32[0];
    v29 = v103.f32[1];
    v119 = v103.f32[0];
    v121 = v103.f32[1];
    while (1)
    {
      v30 = v10.f64[0];
      v109 = v26;
      v107 = v9.f64[0];
      v111 = v25;
      v117 = v10.f64[0] - v28;
      v31 = v26 - v29;
      v32 = v9.f64[0] + v28;
      v33 = v25 + v29;
      v34 = v117;
      v104 = v34;
      v35 = v32 + v34;
      v36 = v31;
      v113 = v36;
      v37 = v33 + v36;
      v38 = floorf(v34);
      v39 = floorf(v36);
      v122 = v38;
      v123 = v39;
      v40 = (ceilf(v37) - v39);
      v124.f64[0] = (ceilf(v35) - v38);
      v124.f64[1] = v40;
      v41 = sub_254B50940(a2, &v122);
      v42 = v41;
      v43 = v31 - v121;
      v44 = v31 - v121;
      v45 = v44;
      v46 = v33 + v121 + v44;
      v47 = floorf(v44);
      v48 = v47;
      v49 = (ceilf(v46) - v47);
      v50 = v30;
      v51 = v50;
      v52 = floorf(v50);
      v53 = v52;
      if (v41)
      {
        v53 = v38;
        v54 = v38;
      }

      else
      {
        v54 = v52;
      }

      if (v41)
      {
        v55 = v104;
      }

      else
      {
        v55 = v51;
      }

      if (!v41)
      {
        v49 = v40;
        v48 = v39;
        v47 = v39;
      }

      v101 = v47;
      v56 = v113;
      if (v41)
      {
        v56 = v45;
        v57 = v33 + v121;
      }

      else
      {
        v57 = v33;
      }

      if (v41)
      {
        v58 = v32 + v119;
      }

      else
      {
        v58 = v32;
      }

      if (!v41)
      {
        v43 = v31;
      }

      v114 = v43;
      v59 = v111;
      if (v41)
      {
        v59 = v33;
      }

      v99 = v59;
      v100 = v56;
      v60 = v107;
      if (v41)
      {
        v60 = v32;
      }

      v97 = v30;
      v98 = v60;
      if (!v41)
      {
        v31 = v109;
      }

      v61 = v117;
      if (!v41)
      {
        v61 = v30;
      }

      v105 = v61;
      if (v41)
      {
        LODWORD(v8) = 1;
      }

      v62 = v58 + v55;
      v122 = v53;
      v123 = v48;
      v63 = v48;
      v64 = (ceilf(v62) - v54);
      v124.f64[0] = v64;
      v124.f64[1] = v49;
      v65 = sub_254B50940(a2, &v122);
      v66 = v58 + v119 + v55;
      v67 = (ceilf(v66) - v54);
      v68 = v31;
      v69 = v68;
      v70 = floorf(v68);
      if (v65)
      {
        v71 = v63;
      }

      else
      {
        v71 = v70;
      }

      if (v65)
      {
        v72 = v101;
      }

      else
      {
        v72 = v70;
      }

      if (v65)
      {
        v73 = v100;
      }

      else
      {
        v73 = v69;
      }

      if (v65)
      {
        v74 = v57 + v121;
      }

      else
      {
        v67 = v64;
        v74 = v57;
      }

      if (v65)
      {
        v75 = v58 + v119;
      }

      else
      {
        v75 = v58;
      }

      if (!v65)
      {
        v57 = v99;
        v58 = v98;
      }

      v76 = v114;
      if (!v65)
      {
        v76 = v31;
      }

      v102 = v76;
      if (v65)
      {
        LODWORD(v8) = 1;
        v77 = 1;
      }

      else
      {
        v77 = v42;
      }

      v78 = v74 + v73;
      v123 = v71;
      v124.f64[0] = v67;
      v79 = (ceilf(v78) - v72);
      v124.f64[1] = v79;
      v80 = sub_254B50940(a2, &v122);
      v81 = v74 + v121 + v73;
      v82 = (ceilf(v81) - v72);
      if (v80)
      {
        v25 = v74 + v121;
      }

      else
      {
        v82 = v79;
        v25 = v74;
      }

      if (v80)
      {
        v83 = v75 + v119;
      }

      else
      {
        v83 = v75;
      }

      if (v80)
      {
        v84 = v74;
      }

      else
      {
        v84 = v57;
      }

      if (v80)
      {
        v85 = v75;
      }

      else
      {
        v85 = v58;
      }

      v28 = v119;
      if (v80)
      {
        v27 = 1;
      }

      else
      {
        v27 = v8;
      }

      if (v80)
      {
        v77 = 1;
      }

      v115 = v83;
      v86 = v105 - v119;
      v87 = v83 + v86;
      v88 = floorf(v86);
      v122 = v88;
      v123 = v71;
      v124.f64[0] = (ceilf(v87) - v88);
      v124.f64[1] = v82;
      v89 = sub_254B50940(a2, &v122);
      v26 = v102;
      v9.f64[0] = v115;
      v10.f64[0] = v105 - v119;
      v29 = v121;
      LODWORD(v8) = 1;
      if (!v89)
      {
        v25 = v84;
        v9.f64[0] = v85;
        v10.f64[0] = v105;
        LODWORD(v8) = v27;
        if ((v77 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  if (v27)
  {
    v90 = v97;
    v91 = v107 + v90;
    v92 = v109;
    v93 = v111 + v92;
    v94 = floorf(v90);
    v95 = floorf(v92);
    a1->f64[0] = v94;
    a1->f64[1] = v95;
    a1[1].f64[0] = (ceilf(v91) - v94);
    a1[1].f64[1] = (ceilf(v93) - v95);
  }

  return v27 & 1;
}

uint64_t sub_254B50F3C(uint64_t a1, uint64_t *a2, float a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v29 = 0u;
  v30 = 0u;
  if (sub_254B5085C(a2, a5))
  {
    v13.n128_f64[0] = SHIDWORD(a5);
    v29.f64[0] = a5;
    v29.f64[1] = SHIDWORD(a5);
    v30 = 0uLL;
    v14 = 1;
  }

  else
  {
    v14 = a7 ^ 1;
    if (((a7 ^ 1) & 1) == 0)
    {
      puts("Warning: unable to satisfy centered-crop requirement: center pixel invalid");
    }

    v28 = 0;
    v15 = sub_254B508B4(a2, &v28 + 1, &v28);
    if (!v15)
    {
      goto LABEL_29;
    }

    v13.n128_f64[0] = SHIDWORD(v28);
    v29.f64[0] = (v28 + (v15 >> 1));
    v29.f64[1] = SHIDWORD(v28);
    v30 = 0uLL;
  }

  sub_254B50A60(&v29, a2, a7, a3, v13);
  if ((a6 & 1) == 0)
  {
    if (a7)
    {
      LOBYTE(v16) = 1;
      LOBYTE(v17) = 1;
      while (1)
      {
        if (v16)
        {
          sub_254B507A4(a2, &v29);
          v16 = v18;
          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v16 = 0;
          if (v17)
          {
LABEL_14:
            v17 = sub_254B50800(a2, &v29);
            goto LABEL_15;
          }
        }

        v17 = 0;
LABEL_15:
        if (((v16 | v17) & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    do
    {
      if (v19)
      {
        sub_254B50594(a2, v29.f64);
        v19 = v23;
        if (v20)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v19 = 0;
        if (v20)
        {
LABEL_20:
          v20 = sub_254B50600(a2, v29.f64);
          if (v21)
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }
      }

      v20 = 0;
      if (v21)
      {
LABEL_21:
        v21 = sub_254B50668(a2, v29.f64);
        if (v22)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

LABEL_25:
      v21 = 0;
      if (v22)
      {
LABEL_22:
        v24 = sub_254B50708(a2, v29.f64);
        goto LABEL_27;
      }

LABEL_26:
      v24 = 0;
LABEL_27:
      v22 = v24 | (v19 | v20 | v21) ^ 1;
    }

    while ((((v19 | v20) | v21) & 1) != 0 || (v24 & 1) != 0);
  }

LABEL_29:
  v25 = v30;
  *a1 = v29;
  *(a1 + 16) = v25;
  v26 = *&v30 >= 2.0;
  if (*(&v30 + 1) < 2.0)
  {
    v26 = 0;
  }

  return v14 & v26;
}

uint64_t sub_254B51138(float *a1, float *a2, float a3, float a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a1;
  v7 = a1[1];
  v8 = a2[2];
  v9 = a1[2];
  v10 = ((v5 * v7) + (*a2 * *a1)) + (v8 * v9);
  if (v10 < 0.0)
  {
    return 0;
  }

  result = 0;
  v12 = a2[6];
  v13 = a2[7];
  v14 = a2[8];
  v15 = ((v7 * v13) + (v12 * v6)) + (v14 * v9);
  if (v10 <= (v15 * a3))
  {
    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    v19 = ((v7 * v17) + (v16 * v6)) + (v18 * v9);
    v20 = v15 * a4;
    if (v19 >= 0.0 && v19 <= v20)
    {
      v22 = v6 + 1.0;
      v23 = v8 + ((v5 * v7) + (v4 * (v6 + 1.0)));
      if (v23 < 0.0)
      {
        return 0;
      }

      result = 0;
      v24 = v14 + ((v7 * v13) + (v12 * v22));
      if (v23 <= (v24 * a3))
      {
        v25 = v18 + ((v7 * v17) + (v16 * v22));
        v26 = v24 * a4;
        if (v25 >= 0.0 && v25 <= v26)
        {
          v28 = v7 + 1.0;
          v29 = v8 + ((v5 * v28) + (v4 * v6));
          v30 = v14 + ((v28 * v13) + (v12 * v6));
          v31 = v30 * a3;
          if (v29 >= 0.0 && v29 <= v31)
          {
            v33 = v18 + ((v28 * v17) + (v16 * v6));
            v34 = v30 * a4;
            if (v33 >= 0.0 && v33 <= v34)
            {
              return 1;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_254B51248(uint64_t result, uint64_t a2, double *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3[7];
  v4 = a3[8];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = v5 * v4 - v3 * v6;
  v10 = *a3;
  v9 = a3[1];
  v12 = a3[2];
  v11 = a3[3];
  v13 = v3 * v12 - v9 * v4;
  v31 = v8;
  v32 = v13;
  v14 = v9 * v6 - v5 * v12;
  v33 = v14;
  v15 = v13 * v11 + v10 * v8 + v7 * v14;
  if (fabs(v15) >= 2.22044605e-16)
  {
    v31 = v8 / v15;
    v32 = v13 / v15;
    v33 = v14 / v15;
    v34 = (v7 * v6 - v11 * v4) / v15;
    v35 = (v10 * v4 - v7 * v12) / v15;
    v36 = (v11 * v12 - v10 * v6) / v15;
    v37 = (v11 * v3 - v7 * v5) / v15;
    v38 = (v7 * v9 - v10 * v3) / v15;
    v39 = (v10 * v5 - v11 * v9) / v15;
  }

  for (i = 0; i != 9; ++i)
  {
    v17 = *(&v31 + i);
    v30[i] = v17;
  }

  v29[2] = 1.0;
  v18 = *result;
  v19 = *(result + 8);
  if (*result != v19)
  {
    v20 = a2;
    v21 = SHIDWORD(a2);
    do
    {
      v29[1] = *v18;
      v22 = *(v18 + 16);
      v23 = *(v18 + 8);
      v24 = v23;
      if (v22 >= v23)
      {
        v29[0] = v23;
        result = sub_254B51138(v29, v30, v20, v21);
        if ((result & 1) == 0)
        {
          v25 = v23 + 1;
          do
          {
            v24 = v25;
            if (v22 < v25)
            {
              break;
            }

            v29[0] = v25;
            result = sub_254B51138(v29, v30, v20, v21);
            ++v25;
          }

          while (!result);
        }
      }

      *(v18 + 8) = v24;
      if (v22 > v24)
      {
        v26 = v22;
        v27 = v26;
        if (v24 <= v26)
        {
          v29[0] = v26;
          result = sub_254B51138(v29, v30, v20, v21);
          if ((result & 1) == 0)
          {
            v28 = v26 - 1;
            do
            {
              v27 = v28;
              if (v24 > v28)
              {
                break;
              }

              v29[0] = v28;
              result = sub_254B51138(v29, v30, v20, v21);
              --v28;
            }

            while (!result);
          }
        }

        *(v18 + 16) = v27;
      }

      v18 += 24;
    }

    while (v18 != v19);
  }

  return result;
}

float64x2_t sub_254B514A4(uint64_t a1, float64_t ***a2, float64x2_t *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v23[0] = 0x3FF0000000000000;
  v24 = xmmword_254B8AAE0;
  *&v23[1] = a1;
  v25 = a1;
  v26 = SHIDWORD(a1);
  v27 = xmmword_254B8AAD0;
  v28 = SHIDWORD(a1);
  v29 = 0x3FF0000000000000;
  v3 = *a2;
  v4 = a2[1];
  v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (*a2 == v4)
  {
    v16 = 0x7F0000007FLL;
  }

  else
  {
    v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v10 = 4;
      v11 = v23;
      do
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v11 += 3;
        v9.f64[1] = (*v3)[4];
        v9.f64[0] = (*v3)[1];
        v8.f64[1] = (*v3)[3];
        v8.f64[0] = **v3;
        v7.f64[1] = (*v3)[5];
        v7.f64[0] = (*v3)[2];
        v15 = vdivq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v9, v13), v8, v12), v7, v14), vdupq_lane_s64(COERCE__INT64(v13 * (*v3)[7] + (*v3)[6] * v12 + (*v3)[8] * v14), 0));
        v5 = vbslq_s8(vcgtq_f64(v5, v15), v15, v5);
        v6 = vbslq_s8(vcgtq_f64(v15, v6), v15, v6);
        --v10;
      }

      while (v10);
      ++v3;
    }

    while (v3 != v4);
    v16 = vcvt_f32_f64(v6);
  }

  result = vrndmq_f64(v5);
  __asm { FMOV            V2.2D, #1.0 }

  *a3 = result;
  a3[1] = vaddq_f64(vsubq_f64(vcvtq_f64_f32(vrndp_f32(v16)), result), _Q2);
  return result;
}

void sub_254B51604(void *a1, uint64_t a2, void *a3, double *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  a1[1] = *a1;
  if (a3)
  {
    v48[0] = 0x3FF0000000000000;
    *&v48[1] = a2;
    v49 = xmmword_254B8AAE0;
    v50 = a2;
    v51 = SHIDWORD(a2);
    v52 = xmmword_254B8AAD0;
    v53 = SHIDWORD(a2);
    v54 = 0x3FF0000000000000;
    v5 = a3[1];
    v6 = v5 - *a3;
    if (v5 == *a3)
    {
      v11 = -1.79769313e308;
      v12 = 1.79769313e308;
      v9 = 1.79769313e308;
      v10 = -1.79769313e308;
    }

    else
    {
      v7 = 0;
      v8 = v6 >> 3;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = 1.79769313e308;
      v10 = -1.79769313e308;
      v11 = -1.79769313e308;
      v12 = 1.79769313e308;
      do
      {
        v13 = *(*a3 + 8 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v18 = v13[4];
        v19 = v13[5];
        v20 = v13[6];
        v21 = v13[7];
        v22 = 1.79769313e308;
        v23 = -1.79769313e308;
        v24 = v13[8];
        v25 = 4;
        v26 = v48;
        v27 = -1.79769313e308;
        v28 = 1.79769313e308;
        do
        {
          v29 = *(v26 - 2);
          v30 = *(v26 - 1);
          v31 = *v26;
          v26 += 3;
          v32 = v15 * v30 + v14 * v29 + v16 * v31;
          v33 = v30 * v18 + v17 * v29;
          v34 = v30 * v21 + v20 * v29 + v24 * v31;
          v35 = v32 / v34;
          v36 = (v33 + v19 * v31) / v34;
          if (v35 < v22)
          {
            v22 = v35;
          }

          if (v23 < v35)
          {
            v23 = v35;
          }

          if (v36 < v28)
          {
            v28 = v36;
          }

          if (v27 < v36)
          {
            v27 = v36;
          }

          --v25;
        }

        while (v25);
        if (v11 < v22)
        {
          v11 = v22;
        }

        if (v23 < v9)
        {
          v9 = v23;
        }

        if (v10 < v28)
        {
          v10 = v28;
        }

        if (v27 < v12)
        {
          v12 = v27;
        }

        ++v7;
      }

      while (v7 != v8);
    }

    if (v9 < v11)
    {
      v9 = v11;
    }

    if (v12 < v10)
    {
      v12 = v10;
    }

    v37 = v10;
    v38 = vcvtms_s32_f32(v37);
    v39 = v12;
    v40 = v11;
    v41 = vcvtms_s32_f32(v40);
    v42 = v9;
    v43 = vcvtps_s32_f32(v42);
    v44 = v41;
    *a4 = v41;
    a4[1] = v38;
    v45 = vcvtps_s32_f32(v39) - v38;
    a4[2] = (v43 - v41);
    a4[3] = v45;
    sub_254B51860(a1, v45 + 1);
    v46 = *a1;
    v47 = a1[1];
    if (*a1 != v47)
    {
      do
      {
        *v46 = v38;
        *(v46 + 8) = v44;
        *(v46 + 16) = v43;
        v46 += 24;
        ++v38;
      }

      while (v46 != v47);
    }
  }
}

void sub_254B51860(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_254B51EB4(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_254B5189C(void *a1, uint64_t a2, double *a3, uint64_t *a4)
{
  sub_254B51604(a1, a2, a4, a3);
  v7 = *a4;
  if (a4[1] != *a4)
  {
    v8 = 0;
    do
    {
      sub_254B51248(a1, a2, *(v7 + 8 * v8++));
      v7 = *a4;
    }

    while (v8 < (a4[1] - *a4) >> 3);
  }
}

BOOL sub_254B5190C(uint64_t a1)
{
  v29 = *MEMORY[0x277CBF3A0];
  v2 = *(a1 + 160);
  if (v2 == -1.0 || v2 <= 0.0)
  {
    v2 = *(a1 + 4) / *(a1 + 8);
  }

  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v4 = *(MEMORY[0x277CBF3A0] + 24);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  if (v5 != v6)
  {
    v7 = (1.0 / v2);
    v25 = v7;
    do
    {
      v9 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (v9 <= v8)
      {
        v10 = *v5;
        *&v26 = *(v5 + 8);
        *(&v26 + 1) = v10;
        v11 = v8 - v9 + 1.0;
        v12 = round(v11 * v7);
        v27 = v11;
        v28 = v12;
        v24 = v10;
        if (sub_254B50940(a1 + 96, &v26))
        {
          v13 = v11;
          v14 = v12;
          if (v11 > v3)
          {
LABEL_9:
            v29 = v26;
            v3 = v13;
            v4 = v14;
          }
        }

        else
        {
          v13 = v11 + -1.0;
          v14 = round((v11 + -1.0) * v7);
          v27 = v11 + -1.0;
          v28 = v14;
          if (v11 + -1.0 > v3)
          {
            v23 = v4;
            v4 = v14;
            v16 = v11 + -1.0;
            if (sub_254B50940(a1 + 96, &v26))
            {
LABEL_19:
              v29 = v26;
              v3 = v16;
            }

            else
            {
              while (1)
              {
                v16 = v16 + -1.0;
                v4 = round(v16 * v25);
                v27 = v16;
                v28 = v4;
                if (v16 <= v3)
                {
                  break;
                }

                if (sub_254B50940(a1 + 96, &v26))
                {
                  goto LABEL_19;
                }
              }

              v4 = v23;
            }
          }

          v20 = v9 + 1.0;
          *&v26 = v9 + 1.0;
          *(&v26 + 1) = v24;
          v27 = v11 + -1.0;
          while (1)
          {
            v28 = v14;
            if (v13 <= v3)
            {
              break;
            }

            if (sub_254B50940(a1 + 96, &v26))
            {
              goto LABEL_9;
            }

            v20 = v20 + 1.0;
            v13 = v13 + -1.0;
            *&v26 = v20;
            v27 = v13;
            v14 = round(v13 * v25);
          }
        }

        v27 = v11;
        v28 = v12;
        v15 = v24;
        *&v26 = v9;
        *(&v26 + 1) = v24 - v12;
        if (sub_254B50940(a1 + 96, &v26))
        {
          v7 = v25;
          if (v11 > v3)
          {
LABEL_12:
            v29 = v26;
            v3 = v11;
            v4 = v12;
          }
        }

        else
        {
          v11 = v11 + -1.0;
          v7 = v25;
          v12 = round(v11 * v25);
          v27 = v11;
          v28 = v12;
          *(&v26 + 1) = v24 - v12;
          if (v11 > v3)
          {
            v17 = v12;
            v18 = v11;
            if (sub_254B50940(a1 + 96, &v26))
            {
LABEL_24:
              v29 = v26;
              v3 = v18;
              v19 = v17;
              v7 = v25;
              v15 = v24;
              v4 = v19;
            }

            else
            {
              while (1)
              {
                v18 = v18 + -1.0;
                v17 = round(v18 * v25);
                v27 = v18;
                v28 = v17;
                if (v18 <= v3)
                {
                  break;
                }

                if (sub_254B50940(a1 + 96, &v26))
                {
                  goto LABEL_24;
                }
              }

              v7 = v25;
              v15 = v24;
            }
          }

          v21 = v9 + 1.0;
          v27 = v11;
          v28 = v12;
          *&v26 = v21;
          *(&v26 + 1) = v24 - v12;
          while (v11 > v3)
          {
            if (sub_254B50940(a1 + 96, &v26))
            {
              goto LABEL_12;
            }

            v21 = v21 + 1.0;
            v11 = v11 + -1.0;
            v12 = round(v11 * v7);
            v27 = v11;
            v28 = v12;
            *&v26 = v21;
            *(&v26 + 1) = v15 - v12;
          }
        }
      }

      v5 += 24;
    }

    while (v5 != v6);
  }

  *(a1 + 24) = v29;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  v30.origin.x = *(a1 + 24);
  v30.origin.y = *(a1 + 32);
  v30.size.width = v3;
  v30.size.height = v4;
  return !CGRectIsEmpty(v30);
}

uint64_t sub_254B51C50(uint64_t a1)
{
  if (*(a1 + 1) == 1)
  {
    sub_254B514A4(*(a1 + 4), *(a1 + 88), (a1 + 56));
  }

  sub_254B5189C((a1 + 96), *(a1 + 4), (a1 + 120), *(a1 + 88));
  v3 = *(a1 + 160);
  if (v3 == -1.0 || v3 <= 0.0)
  {
    v3 = *(a1 + 4) / *(a1 + 8);
  }

  v4 = *(a1 + 154);
  v5 = v4 | *(a1 + 155);
  if (v4 != 1 || (*(a1 + 155) & 1) != 0)
  {
    goto LABEL_11;
  }

  if (*(a1 + 156) != 1)
  {
    v5 = 0;
LABEL_11:
    *a1 = sub_254B50F3C(v8, (a1 + 96), v3, v2, *(a1 + 12), v4, v5 & 1);
    v6 = v8[1];
    *(a1 + 24) = v8[0];
    *(a1 + 40) = v6;
    goto LABEL_12;
  }

  *a1 = sub_254B5190C(a1);
LABEL_12:
  *(a1 + 152) = 1;
  return 1;
}

uint64_t sub_254B51D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 == 1)
  {
    v3 = *(a1 + 56);
    *(a2 + 16) = *(a1 + 72);
LABEL_10:
    *a2 = v3;
    return v2 & 1;
  }

  if (*a1 != 1)
  {
    LOBYTE(v2) = 0;
    v3 = 0uLL;
    *(a2 + 16) = 0u;
    goto LABEL_10;
  }

  v4.f64[0] = *(a1 + 40);
  if (*(a1 + 153) == 1)
  {
    v4.f64[1] = *(a1 + 48);
    v5 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(v4)));
    v6.i64[0] = (v5.i32[0] & 0xFFFFFFFE);
    v6.i64[1] = (v5.i32[1] & 0xFFFFFFFE);
    v4 = vcvtq_f64_s64(v6);
    *(a1 + 40) = v4;
  }

  if (v4.f64[0] >= 2.0 && *(a1 + 48) >= 2.0)
  {
    *a1 = 1;
    v10 = *(a1 + 40);
    *a2 = *(a1 + 24);
    *(a2 + 16) = v10;
    LOBYTE(v2) = *a1;
  }

  else
  {
    LOBYTE(v2) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    v7 = *(a1 + 4);
    v8.i64[0] = v7;
    v8.i64[1] = SHIDWORD(v7);
    *(a2 + 16) = vcvtq_f64_s64(v8);
    *a1 = 0;
  }

  return v2 & 1;
}

double sub_254B51E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  v3 = MEMORY[0x277CBF3A0];
  v5 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  *(a1 + 24) = *MEMORY[0x277CBF3A0];
  *(a1 + 40) = v4;
  *(a1 + 56) = v5;
  *(a1 + 72) = *(v3 + 16);
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v6 = *(MEMORY[0x277CBF398] + 16);
  *(a1 + 120) = *MEMORY[0x277CBF398];
  *(a1 + 136) = v6;
  *&result = 65792;
  *(a1 + 152) = 65792;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1082130432;
  *(a1 + 12) = a2 / 2;
  *(a1 + 16) = SHIDWORD(a2) / 2;
  return result;
}

uint64_t sub_254B51E80(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_254B51EB4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_254B32E20();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254B52028(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_254B52028(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_254B32F20();
}

void sub_254B52080(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v60 = 0;
  v61 = 0;
  v62 = 0;
  sub_254B52554(&v60, (*(a2 + 8) - *a2) >> 3);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v6 - *a2;
  if (v6 != *a2)
  {
    v8 = 0;
    v9 = v61;
    do
    {
      if (v9 >= v62)
      {
        v10 = v60;
        v11 = (v9 - v60);
        v12 = v9 - v60 + 1;
        if (v12 < 0)
        {
          sub_254B32E20();
        }

        v13 = v62 - v60;
        if (2 * (v62 - v60) > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          operator new();
        }

        v15 = v9 - v60;
        *v11 = 0;
        v9 = v11 + 1;
        memcpy(0, v10, v15);
        v60 = 0;
        v61 = v11 + 1;
        v62 = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        *v9++ = 0;
      }

      v61 = v9;
      ++v8;
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = v6 - *a2;
    }

    while (v8 < v7 >> 3);
  }

  v16 = v7 >> 3;
  if (v6 != v5)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = v18;
      v20 = *(v60 + v18++);
      if (!v20 && v18 < (v6 - v5) >> 3)
      {
        v21 = (v6 - v5) >> 3;
        v22 = *(v5 + 8 * v19 + 4) + 4.0;
        v23 = v17;
        v24 = v18;
        do
        {
          v25 = *(v5 + v23 + 12);
          if (v25 > v22)
          {
            break;
          }

          if (!*(v60 + v24))
          {
            if (v21 <= v19)
            {
              sub_254B32C08();
            }

            v26 = (v5 + 8 * v19);
            v27 = *v26 - *(v5 + v23 + 8);
            if ((((v26[1] - v25) * (v26[1] - v25)) + (v27 * v27)) < 16.0)
            {
              v28 = (a3[1] - *a3) >> 2;
              if (v28 <= v19 || v28 <= v24)
              {
                sub_254B32C08();
              }

              if (*(*a3 + 4 * v19) < *(*a3 + 4 * v24))
              {
                *(v60 + v19) = 1;
                v5 = *a2;
                v6 = *(a2 + 8);
                break;
              }

              *(v60 + v24) = 1;
              v5 = *a2;
              v6 = *(a2 + 8);
            }
          }

          ++v24;
          v21 = (v6 - v5) >> 3;
          v23 += 8;
        }

        while (v24 < v21);
      }

      v17 += 8;
    }

    while (v18 < (v6 - v5) >> 3);
    v16 = (v6 - v5) >> 3;
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  sub_254B52674(&v57, v5, v6, v16);
  __p = 0;
  v55 = 0;
  v56 = 0;
  sub_254B526F0(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a2 + 8) = *a2;
  a3[1] = *a3;
  v31 = v57;
  v30 = v58;
  if (v58 != v57)
  {
    v32 = 0;
    do
    {
      if (!*(v60 + v32))
      {
        v34 = *(a2 + 8);
        v33 = *(a2 + 16);
        if (v34 >= v33)
        {
          v36 = (v34 - *a2) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_254B32E20();
          }

          v37 = v33 - *a2;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_254B35448(a2, v39);
          }

          v40 = (8 * v36);
          *v40 = v31[v32];
          v35 = 8 * v36 + 8;
          v41 = *(a2 + 8) - *a2;
          v42 = v40 - v41;
          memcpy(v40 - v41, *a2, v41);
          v43 = *a2;
          *a2 = v42;
          *(a2 + 8) = v35;
          *(a2 + 16) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v34 = v31[v32];
          v35 = (v34 + 1);
        }

        *(a2 + 8) = v35;
        v45 = a3[1];
        v44 = a3[2];
        if (v45 >= v44)
        {
          v47 = *a3;
          v48 = v45 - *a3;
          v49 = (v48 >> 2) + 1;
          if (v49 >> 62)
          {
            sub_254B32E20();
          }

          v50 = v44 - v47;
          if (v50 >> 1 > v49)
          {
            v49 = v50 >> 1;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v51 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          if (v51)
          {
            sub_254B3383C(a3, v51);
          }

          v52 = (4 * (v48 >> 2));
          *v52 = *(__p + v32);
          v46 = v52 + 1;
          memcpy(0, v47, v48);
          v53 = *a3;
          *a3 = 0;
          a3[1] = v46;
          a3[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v45 = *(__p + v32);
          v46 = v45 + 1;
        }

        a3[1] = v46;
        v31 = v57;
        v30 = v58;
      }

      ++v32;
    }

    while (v32 < v30 - v31);
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
    v31 = v57;
  }

  if (v31)
  {
    v58 = v31;
    operator delete(v31);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }
}

void sub_254B524F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B52554(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254B32E20();
  }

  return result;
}

uint64_t sub_254B5261C(uint64_t result)
{
  *result = &unk_286700970;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_254B52674(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B3540C(result, a4);
  }

  return result;
}

void sub_254B526D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B526F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B33800(result, a4);
  }

  return result;
}

void sub_254B52750(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_254B5276C(uint64_t *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 0x40000000;
  v41 = sub_254B52BF0;
  v42 = &unk_2797A9B60;
  v43 = xmmword_254B8B310;
  sub_254B52F70(v39, 9uLL);
  for (i = 0; i != 216; i += 24)
  {
    sub_254B39D6C((v39[0] + i), 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
  }

  sub_254B47E68(v38, 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
  sub_254B47E68(&v36, 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4) - 1);
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3 + 304 * v4;
      v6 = *(v5 + 112);
      v7 = v38[0];
      *(v38[0] + v4) = v6;
      if (v4)
      {
        *(v36 + v4 - 1) = v6 - v7[v4 - 1];
      }

      sub_254B484C4(&__p, v5);
      sub_254B48548(&v46, &__p);
      v8 = 0;
      v9 = v39[0];
      do
      {
        v10 = *v9;
        v9 += 3;
        *(v10 + 8 * v4) = *&(&v46)[v8] * *&qword_254B8B320[v8];
        ++v8;
      }

      while (v8 != 9);
      ++v4;
      v3 = *a1;
    }

    while (0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4) > v4);
  }

  std::__sort<std::__less<long long,long long> &,long long *>();
  v11 = *(v36 + (((v37 - v36) >> 1) & 0xFFFFFFFFFFFFFFF8));
  sub_254B35394(&__p, 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
  if (v45 - __p >= 1)
  {
    bzero(__p, v45 - __p);
  }

  for (j = 0; j != 9; ++j)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v13 = (v39[0] + 24 * j);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    sub_254B52C24(v13, &v33, 1);
    sub_254B52C24(v13, &v46, 0);
    v14 = v33;
    v15 = v34;
    v16 = v46;
    v17 = v34 - v33;
    if (v34 == v33)
    {
      if (!v46)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v18 = v17 >> 3;
      if ((v17 >> 3) <= 1)
      {
        v18 = 1;
      }

      v19 = v46;
      do
      {
        v20 = *v19++;
        *v14 = (*v14 + v20) * 0.5;
        ++v14;
        --v18;
      }

      while (v18);
    }

    v47 = v16;
    operator delete(v16);
    v14 = v33;
    v15 = v34;
LABEL_21:
    if (v15 == v14)
    {
      if (!v14)
      {
        continue;
      }
    }

    else
    {
      v21 = v15 - v14;
      v22 = __p;
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v23 = v14;
      do
      {
        v24 = *v23++;
        *v22 = *v22 + v24 * v24;
        ++v22;
        --v21;
      }

      while (v21);
    }

    v34 = v14;
    operator delete(v14);
  }

  v25 = 1.0;
  if (v45 == __p)
  {
    v29 = -1.0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = (v45 - __p) >> 3;
    if (v28 <= 1)
    {
      v28 = 1;
    }

    v29 = -1.0;
    do
    {
      if (*(__p + v26) > v29)
      {
        v29 = *(__p + v26);
        v27 = v26;
      }

      ++v26;
    }

    while (v28 != v26);
    if (v27)
    {
      v25 = v11 / (*(v38[0] + v27) - *(v38[0] + v27 - 1));
    }
  }

  v30 = log(v25 * (v29 * v25));
  v31 = v41(v40, v30);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  v46 = v39;
  sub_254B35B8C(&v46);
  return v31;
}

void sub_254B52B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  *(v29 - 160) = &a19;
  sub_254B35B8C((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_254B52C24(void *a1, void *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  sub_254B39D6C(a2, (a1[1] - *a1) >> 3);
  if (a3)
  {
    v6 = &v37;
    v7 = &v36;
    v8 = &v35;
    v9 = v38;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 0x40000000;
    v38[2] = sub_254B52ED4;
    v38[3] = &unk_2797A9B80;
    v38[4] = v5;
    v27 = v34;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 0x40000000;
    v10 = &unk_2867002F0;
    v11 = &unk_2797A9BA0;
    v12 = sub_254B52EEC;
    v13 = v4;
  }

  else
  {
    v10 = v28;
    v6 = &v31;
    v7 = &v30;
    v8 = &v29;
    v9 = v33;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v33[2] = sub_254B52F10;
    v33[3] = &unk_2797A9BE0;
    v33[4] = v5;
    v27 = v32;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = sub_254B52F38;
    v32[3] = &unk_2797A9C00;
    v32[4] = v4;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 0x40000000;
    v11 = &unk_2797A9C20;
    v12 = sub_254B52F58;
    v13 = v5;
  }

  *v8 = v12;
  *v7 = v11;
  *v6 = v13;
  if (v5[1] != *v5)
  {
    v14 = 0;
    do
    {
      v15 = v5;
      v16 = v4;
      v17 = 0;
      v18 = 0.0;
      v19 = 1;
      do
      {
        v20 = v17;
        v21 = v19;
        v22 = dbl_254B8B368[v17];
        v23 = (v14 - v17);
        v24 = (v9[2])(v9, v23);
        v19 = 0;
        v18 = v18 + v22 * v24;
        v17 = 1;
      }

      while ((v21 & 1) != 0);
      v25 = dbl_254B8B378[v20];
      v26 = v18 - v25 * (v27[2])(v27, v23);
      v4 = v16;
      *(*v16 + 8 * (v10[2])(v10, v14++)) = v26;
      v5 = v15;
    }

    while (v14 < (v15[1] - *v15) >> 3);
  }
}

double sub_254B52ED4(uint64_t a1, int a2)
{
  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = -a2;
  }

  return *(**(a1 + 32) + 8 * v2);
}

double sub_254B52EEC(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0.0;
  }

  else
  {
    return *(**(a1 + 32) + 8 * a2);
  }
}

double sub_254B52F10(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = v2 + 8 * ~a2;
  v4 = v2 + 8 * a2 - 8;
  if (a2 >= 0)
  {
    v4 = v3;
  }

  return *v4;
}

double sub_254B52F38(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0.0;
  }

  else
  {
    return *(*(*(a1 + 32) + 8) + 8 * ~a2);
  }
}

void *sub_254B52F70(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B35930(result, a2);
  }

  return result;
}

void *sub_254B53014(void *result, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v5 = 0;
  v6 = (a2 + 3);
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v6;
    do
    {
      v8 |= (*(*result + result[3] * (*(v9 - 2) + (a5 + 0.5)) + (*(v9 - 3) + (a4 + 0.5))) < *(*result + result[3] * (*v9 + (a5 + 0.5)) + (*(v9 - 1) + (a4 + 0.5)))) << v7++;
      v9 += 4;
    }

    while (v7 != 8);
    *(a3 + v5++) = v8;
    v6 += 32;
  }

  while (v5 != 32);
  return result;
}

void sub_254B530B4(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_254B531E4(a3, a2[2]);
  if (a2[2])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*a2 + v6);
      v9 = *v8;
      v10 = v8[1];
      bzero(v13, 0x20uLL);
      v11 = v9 < 15.0 || v10 < 15.0;
      if (!v11 && v9 <= (a1[1] - 16) && v10 <= (a1[2] - 16))
      {
        sub_254B53014(a1, &inertiaCamMetalLibEnd, v13, v9, v10);
      }

      v12[0] = v13[0];
      v12[1] = v13[1];
      sub_254B53258(a3, v12);
      ++v7;
      v6 += 8;
    }

    while (a2[2] > v7);
  }
}

uint64_t sub_254B531E4(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254B32C7C(exception, "reserve");
    __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
  }

  return result;
}

__n128 sub_254B53258(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 >= a1[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254B32C7C(exception, "_count");
    __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
  }

  v3 = (*a1 + 32 * v2);
  result = *a2;
  v5 = *(a2 + 16);
  *v3 = *a2;
  v3[1] = v5;
  ++a1[2];
  return result;
}

uint64_t sub_254B533E4(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x259C24E00);
  }

  return result;
}

void *sub_254B53400(void *result, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v5 = 0;
  v6 = *result + result[3] * (a5 + 0.5) + (a4 + 0.5);
  v7 = (a2 + 12);
  do
  {
    v8 = 0;
    v9 = 4;
    v10 = v7;
    do
    {
      v8 = (4 * v8) | (2 * (*(v6 + *(v10 - 1)) < *(v6 + *v10)));
      if (*(v6 + v10[1]) < *(v6 + v10[2]))
      {
        ++v8;
      }

      v10 += 4;
      --v9;
    }

    while (v9);
    *(a3 + v5++) = v8;
    v7 += 16;
  }

  while (v5 != 32);
  return result;
}

void sub_254B5348C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_254B531E4(a4, a3[2]);
  if (a3[2])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*a3 + v8);
      v11 = *v10;
      v12 = v10[1];
      bzero(v15, 0x20uLL);
      v13 = v11 < 15.0 || v12 < 15.0;
      if (!v13 && v11 <= (a1[1] - 16) && v12 <= (a1[2] - 16))
      {
        sub_254B53400(a1, a2, v15, v11, v12);
      }

      v14[0] = v15[0];
      v14[1] = v15[1];
      sub_254B53258(a4, v14);
      ++v9;
      v8 += 8;
    }

    while (a3[2] > v9);
  }
}

uint64_t sub_254B535B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  pthread_mutex_init((a1 + 56), 0);
  return a1;
}

void sub_254B535FC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B53620(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 40);
    if (v2 == *(a1 + 32))
    {
      break;
    }

    v3 = *(v2 - 8);
    *(a1 + 40) = v2 - 8;
    sub_254B6F128(v3);
  }

  pthread_mutex_destroy((a1 + 56));
  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  return a1;
}

void **sub_254B53684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && !*(a1 + 8))
  {
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
  }

  pthread_mutex_lock((a1 + 56));
  v4 = *(a1 + 40);
  if (v4 == *(a1 + 32))
  {
    pthread_mutex_unlock((a1 + 56));
  }

  else
  {
    v5 = *(v4 - 8);
    *(a1 + 40) = v4 - 8;
    pthread_mutex_unlock((a1 + 56));
    if (v5)
    {
      return v5;
    }
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);

  return sub_254B6F160(v7, v8, v9);
}

uint64_t sub_254B53710(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = (v5 - v4) >> 3;
  if (v6 >= *a1)
  {
    sub_254B6F128(a2);
  }

  else
  {
    v7 = *(a1 + 48);
    if (v5 >= v7)
    {
      if ((v6 + 1) >> 61)
      {
        sub_254B32E20();
      }

      v9 = v7 - v4;
      v10 = v9 >> 2;
      if (v9 >> 2 <= v6 + 1)
      {
        v10 = v6 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        sub_254B33108(a1 + 32, v11);
      }

      *(8 * v6) = a2;
      v8 = 8 * v6 + 8;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40) - v12;
      v14 = (8 * v6 - v13);
      memcpy(v14, v12, v13);
      v15 = *(a1 + 32);
      *(a1 + 32) = v14;
      *(a1 + 40) = v8;
      *(a1 + 48) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    *(a1 + 40) = v8;
  }

  return pthread_mutex_unlock((a1 + 56));
}

void sub_254B53814(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    *a3 = v6;
    a3[1] = v5;
    a3[2] = a1[2];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = *a2;
    sub_254B54600(a3, v6);
    v23 = *(a3[1] - 192);
    v9 = v6 + 304;
    if (v6 + 304 != a1[1])
    {
      v10 = a2 + 1;
      do
      {
        v11 = v9;
        lhs = *(v6 + 416);
        rhs = v23;
        CMTimeSubtract(&v22, &lhs, &rhs);
        if (v8 == v10 || v8[4] != 0x86BCA1AF286BCA1BLL * ((a3[1] - *a3) >> 4))
        {
          v16 = v8;
        }

        else
        {
          v12 = v8[11];
          v13 = v8[12];
          while (v12 != v13)
          {
            v14 = a3[1];
            if (v14 >= a3[2])
            {
              v15 = sub_254B54AE8(a3, v11);
            }

            else
            {
              sub_254B54A00(a3, v11);
              v15 = v14 + 304;
            }

            a3[1] = v15;
            sub_254B546E8(&v22, v12, &v23, v11, v15 - 304, &lhs);
            v23 = lhs;
            ++v12;
          }

          v17 = v8[1];
          if (v17)
          {
            do
            {
              v16 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v16 = v8[2];
              v18 = *v16 == v8;
              v8 = v16;
            }

            while (!v18);
          }
        }

        sub_254B54600(a3, v11);
        rhs = *(v6 + 416);
        v19 = v23;
        CMTimeSubtract(&lhs, &rhs, &v19);
        rhs = v22;
        if (CMTimeCompare(&lhs, &rhs))
        {
          sub_254B546E8(&v22, (v6 + 416), &v23, a3[1] - 304, a3[1] - 304, &lhs);
        }

        v23 = *(a3[1] - 192);
        v9 = v11 + 304;
        v8 = v16;
        v6 = v11;
      }

      while (v11 + 304 != a1[1]);
    }
  }
}

void sub_254B53A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_254B36F30(va);
  _Unwind_Resume(a1);
}

void sub_254B53AA8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v16 = 0;
  v17 = 0;
  __p = 0;
  if (v8 != v9)
  {
    sub_254B36E70(&__p, 0x86BCA1AF286BCA1BLL * ((v9 - v8) >> 4));
    v10 = *a1;
    v11 = a1[1];
    while (v10 != v11)
    {
      sub_254B544F8(&__p, (v10 + 112));
      v10 += 304;
    }
  }

  sub_254B53C28(&__p, a2, a4);
  memset(v12, 0, sizeof(v12));
  sub_254B36FD4(v12, *a1, a1[1], 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4));
  sub_254B53814(v12, a4, &v13);
  sub_254B37230(a3);
  *a3 = v13;
  a3[2] = v14;
  v14 = 0;
  v13 = 0uLL;
  v18 = &v13;
  sub_254B36F30(&v18);
  v18 = v12;
  sub_254B36F30(&v18);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_254B53BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B53C28(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > 1)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    sub_254B36984(&__p, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3));
    if (v26 == __p)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    sub_254B54CC8(__p, v26, v6, 1);
    v7 = __p;
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    v8 = *a1;
    if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) >= 2)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        if (v7 == v26)
        {
          break;
        }

        v11 = (v8 + 24 * v10);
        v12 = (v11 - 24);
        do
        {
          v13 = *&v7->value;
          time1.epoch = v7->epoch;
          *&time1.value = v13;
          v14 = *v12;
          time2.epoch = *(v11 - 1);
          *&time2.value = v14;
          if (CMTimeCompare(&time1, &time2) > 0)
          {
            break;
          }

          ++v7;
        }

        while (v7 != v26);
        if (v7 == v26)
        {
          break;
        }

        v15 = *&v7->value;
        time1.epoch = v7->epoch;
        *&time1.value = v15;
        v16 = *v11;
        time2.epoch = *(v11 + 2);
        *&time2.value = v16;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v22 = v9 + v10;
          time1.value = &v22;
          v17 = sub_254B39410(a3, &v22);
          v18 = *v12;
          v17[7] = *(v11 - 1);
          *(v17 + 5) = v18;
          v19 = *v11;
          v17[10] = *(v11 + 2);
          *(v17 + 4) = v19;
          while (v7 != v26)
          {
            v20 = *&v7->value;
            time1.epoch = v7->epoch;
            *&time1.value = v20;
            time2 = *(v17 + 5);
            if (CMTimeCompare(&time1, &time2) < 1)
            {
              break;
            }

            v21 = *&v7->value;
            time1.epoch = v7->epoch;
            *&time1.value = v21;
            time2 = *(v17 + 8);
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
              break;
            }

            sub_254B544F8((v17 + 11), &v7->value);
            ++v7;
          }

          v9 -= 0x5555555555555555 * ((v17[12] - v17[11]) >> 3);
        }

        ++v10;
        v8 = *a1;
      }

      while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
      v7 = __p;
    }

    if (v7)
    {
      v26 = v7;
      operator delete(v7);
    }
  }

  else
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }
}

void sub_254B53EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B53F1C(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>, double a4@<D0>)
{
  v5 = a1[1] - *a1;
  if (v5 == a2[1] - *a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_254B4E130(a3, v5 >> 3);
    v9 = *a1;
    if (a1[1] != *a1)
    {
      v10 = 0;
      v11 = a3[1];
      do
      {
        v12 = *(v9 + 8 * v10) + a4 * (*(*a2 + 8 * v10) - *(v9 + 8 * v10));
        v13 = a3[2];
        if (v11 >= v13)
        {
          v14 = *a3;
          v15 = v11 - *a3;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            sub_254B32E20();
          }

          v18 = v13 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_254B35448(a3, v19);
          }

          *(8 * v16) = v12;
          v11 = (8 * v16 + 8);
          memcpy(0, v14, v15);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v11;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11++ = v12;
        }

        a3[1] = v11;
        ++v10;
        v9 = *a1;
      }

      while (v10 < (a1[1] - *a1) >> 3);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_254B54094(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_254B540B8@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = result;
  v6 = *result;
  v7 = result[1];
  if (*result == v7)
  {
    *a4 = v6;
    a4[1] = v7;
    a4[2] = result[2];
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v11 = a2 + 1;
    v10 = *a2;
    if (*a2 == a2 + 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = v10[1];
        v14 = v10;
        if (v13)
        {
          do
          {
            v15 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v16 = *v15 == v14;
            v14 = v15;
          }

          while (!v16);
        }

        v12 -= 0x5555555555555555 * ((v10[12] - v10[11]) >> 3);
        v10 = v15;
      }

      while (v15 != v11);
    }

    sub_254B56238(a4, v12 - 0x5555555555555555 * ((v7 - v6) >> 3));
    v17 = *a2;
    v18 = *v4;
    result = sub_254B562F4(a4, *v4);
    while (1)
    {
      v18 += 24;
      if (v18 == v4[1])
      {
        break;
      }

      if (v17 == v11 || (v19 = a4[1] - *a4, v17[4] != 0xAAAAAAAAAAAAAAABLL * (v19 >> 3)))
      {
        v25 = v17;
      }

      else
      {
        v20 = v17[11];
        v21 = v17[12];
        while (v20 != v21)
        {
          v22 = *v20;
          lhs.epoch = *(v20 + 2);
          *&lhs.value = v22;
          rhs = *(v17 + 5);
          CMTimeSubtract(&v29, &lhs, &rhs);
          lhs = *(v17 + 8);
          v27 = *(v17 + 5);
          CMTimeSubtract(&rhs, &lhs, &v27);
          lhs = v29;
          Seconds = CMTimeGetSeconds(&lhs);
          lhs = rhs;
          v24 = CMTimeGetSeconds(&lhs);
          sub_254B56434(a3, *a4 + v19 - 24, v18, Seconds / v24);
          sub_254B562F4(a4, &lhs);
          if (lhs.value)
          {
            *&lhs.timescale = lhs.value;
            operator delete(lhs.value);
          }

          v20 = (v20 + 24);
        }

        v26 = v17[1];
        if (v26)
        {
          do
          {
            v25 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v25 = v17[2];
            v16 = *v25 == v17;
            v17 = v25;
          }

          while (!v16);
        }
      }

      result = sub_254B562F4(a4, v18);
      v17 = v25;
    }
  }

  return result;
}

uint64_t sub_254B5438C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v15[4] = *MEMORY[0x277D85DE8];
  sub_254B53C28(a1, a3, a5);
  v15[0] = &unk_286700498;
  v15[1] = sub_254B53F1C;
  v15[3] = v15;
  v9 = *a2;
  v10 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_254B56488(v14, v15);
  sub_254B540B8(&v9, a5, v14, &v11);
  sub_254B40694(a4);
  *a4 = v11;
  a4[2] = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_254B35B8C(&v13);
  sub_254B561B8(v14);
  v13 = &v9;
  sub_254B35B8C(&v13);
  return sub_254B561B8(v15);
}

void sub_254B544B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, char a18)
{
  sub_254B561B8(&a18);
  a17 = &a9;
  sub_254B35B8C(&a17);
  sub_254B561B8(v19 - 72);
  sub_254B393AC(v18, *(v18 + 8));
  _Unwind_Resume(a1);
}

void sub_254B544F8(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_254B32E20();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_254B36A4C(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_254B54600(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_254B54824(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 60) = *(a2 + 60);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 16) = v4;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = 0;
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 96) = *(a2 + 96);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    v7 = *(a2 + 136);
    v8 = *(a2 + 152);
    v9 = *(a2 + 168);
    *(v3 + 120) = *(a2 + 120);
    *(v3 + 168) = v9;
    *(v3 + 152) = v8;
    *(v3 + 136) = v7;
    v10 = *(a2 + 200);
    v11 = *(a2 + 216);
    v12 = *(a2 + 232);
    *(v3 + 184) = *(a2 + 184);
    *(v3 + 232) = v12;
    *(v3 + 216) = v11;
    *(v3 + 200) = v10;
    v13 = *(a2 + 264);
    v14 = *(a2 + 280);
    v15 = *(a2 + 293);
    *(v3 + 248) = *(a2 + 248);
    *(v3 + 293) = v15;
    *(v3 + 264) = v13;
    *(v3 + 280) = v14;
    *(v3 + 104) = *(a2 + 104);
    result = v3 + 304;
  }

  a1[1] = result;
  return result;
}

void sub_254B546E8(CMTime *a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  lhs = *a2;
  v15 = *a3;
  CMTimeSubtract(&v16, &lhs, &v15);
  lhs = v16;
  Seconds = CMTimeGetSeconds(&lhs);
  lhs = *a1;
  v12 = Seconds / CMTimeGetSeconds(&lhs);
  sub_254B48B98(&lhs, a4);
  for (i = 0; i != 72; i += 8)
  {
    *(&lhs.value + i) = v12 * *(&lhs.value + i);
  }

  sub_254B48C38(a5, &lhs.value);
  v14 = *&a2->value;
  *(a5 + 128) = a2->epoch;
  *(a5 + 112) = v14;
  *a6 = *&a2->value;
  *(a6 + 16) = a2->epoch;
}

uint64_t sub_254B54824(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xD79435E50D7943)
  {
    sub_254B32E20();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v6 = 0xD79435E50D7943;
  }

  else
  {
    v6 = v3;
  }

  v29 = a1;
  if (v6)
  {
    sub_254B34578(a1, v6);
  }

  v7 = 304 * v2;
  v26 = 0;
  v27 = v7;
  *(&v28 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  *(v7 + 120) = *(a2 + 120);
  *(v7 + 168) = v13;
  *(v7 + 152) = v12;
  *(v7 + 136) = v11;
  v14 = *(a2 + 200);
  v15 = *(a2 + 216);
  v16 = *(a2 + 232);
  *(v7 + 184) = *(a2 + 184);
  *(v7 + 232) = v16;
  *(v7 + 216) = v15;
  *(v7 + 200) = v14;
  v17 = *(a2 + 264);
  v18 = *(a2 + 280);
  v19 = *(a2 + 293);
  *(v7 + 248) = *(a2 + 248);
  *(v7 + 293) = v19;
  *(v7 + 264) = v17;
  *(v7 + 280) = v18;
  *(v7 + 104) = *(a2 + 104);
  *&v28 = 304 * v2 + 304;
  v20 = a1[1];
  v21 = 304 * v2 + *a1 - v20;
  sub_254B345D4(a1, *a1, v20, v21);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  v25 = v28;
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  sub_254B34798(&v26);
  return v25;
}

void sub_254B549EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

__n128 sub_254B54A00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *v4 = *a2;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 80) = 0;
  sub_254B331F8(v4 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 6);
  *(v4 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(v4 + 168) = *(a2 + 168);
  *(v4 + 152) = v10;
  *(v4 + 136) = v9;
  *(v4 + 120) = v8;
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  *(v4 + 232) = *(a2 + 232);
  *(v4 + 216) = v13;
  *(v4 + 200) = v12;
  *(v4 + 184) = v11;
  result = *(a2 + 248);
  v15 = *(a2 + 264);
  v16 = *(a2 + 280);
  *(v4 + 293) = *(a2 + 293);
  *(v4 + 264) = v15;
  *(v4 + 280) = v16;
  *(v4 + 248) = result;
  *(a1 + 8) = v4 + 304;
  return result;
}

uint64_t sub_254B54AE8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xD79435E50D7943)
  {
    sub_254B32E20();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v6 = 0xD79435E50D7943;
  }

  else
  {
    v6 = v3;
  }

  v29 = a1;
  if (v6)
  {
    sub_254B34578(a1, v6);
  }

  v7 = 304 * v2;
  v26 = 0;
  v27 = v7;
  v28 = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  sub_254B331F8(v7 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 6);
  *(v7 + 104) = *(a2 + 104);
  v11 = *(a2 + 120);
  v12 = *(a2 + 136);
  v13 = *(a2 + 152);
  *(v7 + 168) = *(a2 + 168);
  *(v7 + 152) = v13;
  *(v7 + 136) = v12;
  *(v7 + 120) = v11;
  v14 = *(a2 + 184);
  v15 = *(a2 + 200);
  v16 = *(a2 + 216);
  *(v7 + 232) = *(a2 + 232);
  *(v7 + 216) = v16;
  *(v7 + 200) = v15;
  *(v7 + 184) = v14;
  v17 = *(a2 + 248);
  v18 = *(a2 + 264);
  v19 = *(a2 + 280);
  *(v7 + 293) = *(a2 + 293);
  *(v7 + 264) = v18;
  *(v7 + 280) = v19;
  *(v7 + 248) = v17;
  *&v28 = v28 + 304;
  v20 = a1[1];
  v21 = v27 + *a1 - v20;
  sub_254B345D4(a1, *a1, v20, v21);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  v25 = v28;
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  sub_254B34798(&v26);
  return v25;
}

void sub_254B54CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

void sub_254B54CC8(CMTime *a1, CMTime *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = a2 - 1;
    v138 = a2 - 2;
    v139 = a2;
    v9 = a2 - 3;
    v10 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = a2 - v10;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                sub_254B55950(a1, a1 + 1, v8);
                return;
              case 4:
                sub_254B55950(a1, a1 + 1, a1 + 2);
                v69 = *&a2[-1].value;
                time1.epoch = a2[-1].epoch;
                *&time1.value = v69;
                time2 = a1[2];
                if (CMTimeCompare(&time1, &time2) < 0)
                {
                  time1 = a1[2];
                  v70 = *&time1.value;
                  epoch = time1.epoch;
                  v72 = v8->epoch;
                  *&a1[2].value = *&v8->value;
                  a1[2].epoch = v72;
                  v8->epoch = epoch;
                  *&v8->value = v70;
                  time1 = a1[2];
                  time2 = a1[1];
                  if (CMTimeCompare(&time1, &time2) < 0)
                  {
                    v73 = a1[1].epoch;
                    v74 = *&a1[1].value;
                    *&a1[1].value = *&a1[2].value;
                    v75 = a1[2].epoch;
                    a1[1].epoch = v75;
                    *&a1[2].value = v74;
                    a1[2].epoch = v73;
                    *&time1.value = *&a1[1].value;
                    time1.epoch = v75;
                    v76 = *&a1->value;
                    time2.epoch = a1->epoch;
                    *&time2.value = v76;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      v77 = *&a1->value;
                      time1.epoch = a1->epoch;
                      *&time1.value = v77;
                      *&a1->value = *&a1[1].value;
                      a1->epoch = a1[1].epoch;
                      a1[1] = time1;
                    }
                  }
                }

                return;
              case 5:
                sub_254B55B18(a1, a1 + 1, a1 + 2, a1 + 3, v8);
                return;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              v64 = *&a2[-1].value;
              time1.epoch = a2[-1].epoch;
              *&time1.value = v64;
              v65 = *&a1->value;
              time2.epoch = a1->epoch;
              *&time2.value = v65;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                v66 = *&a1->value;
                time1.epoch = a1->epoch;
                *&time1.value = v66;
                v67 = *&v8->value;
                a1->epoch = v8->epoch;
                *&a1->value = v67;
                v68 = *&time1.value;
                v8->epoch = time1.epoch;
                *&v8->value = v68;
              }

              return;
            }
          }

          if (v11 <= 575)
          {
            v78 = a1 + 1;
            v79 = a1 == a2 || v78 == a2;
            v80 = v79;
            if (a4)
            {
              if ((v80 & 1) == 0)
              {
                v81 = 0;
                v82 = a1;
                do
                {
                  v83 = v82;
                  v82 = v78;
                  v84 = *&v78->value;
                  time1.epoch = v78->epoch;
                  *&time1.value = v84;
                  v85 = *&v83->value;
                  time2.epoch = v83->epoch;
                  *&time2.value = v85;
                  if (CMTimeCompare(&time1, &time2) < 0)
                  {
                    v144.epoch = v82->epoch;
                    *&v144.value = *&v82->value;
                    v86 = v81;
                    while (1)
                    {
                      v87 = a1 + v86;
                      *(v87 + 24) = *(&a1->value + v86);
                      *(v87 + 5) = *(&a1->epoch + v86);
                      if (!v86)
                      {
                        break;
                      }

                      time1 = v144;
                      v88 = *(v87 - 24);
                      time2.epoch = *(v87 - 1);
                      *&time2.value = v88;
                      v86 -= 24;
                      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                      {
                        v89 = &a1[1] + v86;
                        goto LABEL_83;
                      }
                    }

                    v89 = a1;
LABEL_83:
                    *(v89 + 16) = v144.epoch;
                    *v89 = *&v144.value;
                    a2 = v139;
                  }

                  v78 = v82 + 1;
                  v81 += 24;
                }

                while (&v82[1] != a2);
              }
            }

            else if ((v80 & 1) == 0)
            {
              do
              {
                v131 = a1;
                a1 = v78;
                v132 = *&v78->value;
                time1.epoch = v78->epoch;
                *&time1.value = v132;
                v133 = *&v131->value;
                time2.epoch = v131->epoch;
                *&time2.value = v133;
                if (CMTimeCompare(&time1, &time2) < 0)
                {
                  v147.epoch = a1->epoch;
                  *&v147.value = *&a1->value;
                  v134 = a1;
                  do
                  {
                    v135 = v134 - 1;
                    *&v134->value = *&v134[-1].value;
                    v134->epoch = v134[-1].epoch;
                    time1 = v147;
                    v136 = *&v134[-2].value;
                    time2.epoch = v134[-2].epoch;
                    *&time2.value = v136;
                    v137 = CMTimeCompare(&time1, &time2);
                    v134 = v135;
                  }

                  while (v137 < 0);
                  v135->epoch = v147.epoch;
                  *&v135->value = *&v147.value;
                  a2 = v139;
                }

                v78 = a1 + 1;
              }

              while (&a1[1] != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v90 = v13 >> 1;
              v91 = v13 >> 1;
              do
              {
                v92 = v91;
                if (v90 >= v91)
                {
                  v93 = (2 * v91) | 1;
                  v94 = &a1[v93];
                  if (2 * v91 + 2 < v12)
                  {
                    v95 = *&v94->value;
                    time1.epoch = v94->epoch;
                    *&time1.value = v95;
                    v96 = *&v94[1].value;
                    time2.epoch = v94[1].epoch;
                    *&time2.value = v96;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      ++v94;
                      v93 = 2 * v92 + 2;
                    }
                  }

                  v97 = &a1[v92];
                  v98 = *&v94->value;
                  time1.epoch = v94->epoch;
                  *&time1.value = v98;
                  v99 = *&v97->value;
                  time2.epoch = v97->epoch;
                  *&time2.value = v99;
                  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                  {
                    v145.epoch = v97->epoch;
                    *&v145.value = *&v97->value;
                    do
                    {
                      v100 = v94;
                      v101 = *&v94->value;
                      v97->epoch = v94->epoch;
                      *&v97->value = v101;
                      if (v90 < v93)
                      {
                        break;
                      }

                      v102 = (2 * v93) | 1;
                      v94 = &a1[v102];
                      v103 = 2 * v93 + 2;
                      if (v103 < v12)
                      {
                        v104 = *&v94->value;
                        time1.epoch = v94->epoch;
                        *&time1.value = v104;
                        v105 = *&v94[1].value;
                        time2.epoch = v94[1].epoch;
                        *&time2.value = v105;
                        if (CMTimeCompare(&time1, &time2) < 0)
                        {
                          ++v94;
                          v102 = v103;
                        }
                      }

                      v106 = *&v94->value;
                      time1.epoch = v94->epoch;
                      *&time1.value = v106;
                      time2 = v145;
                      v97 = v100;
                      v93 = v102;
                    }

                    while ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0);
                    v100->epoch = v145.epoch;
                    *&v100->value = *&v145.value;
                  }
                }

                v91 = v92 - 1;
              }

              while (v92);
              v107 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              v108 = v139;
              do
              {
                v109 = 0;
                v141 = a1->epoch;
                v140 = *&a1->value;
                v110 = a1;
                do
                {
                  v111 = &v110[v109];
                  v112 = v111 + 1;
                  v113 = (2 * v109) | 1;
                  v114 = 2 * v109 + 2;
                  if (v114 < v107)
                  {
                    v115 = v111 + 2;
                    v116 = *&v112->value;
                    time1.epoch = v111[1].epoch;
                    *&time1.value = v116;
                    v117 = *&v111[2].value;
                    time2.epoch = v111[2].epoch;
                    *&time2.value = v117;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      v112 = v115;
                      v113 = v114;
                    }
                  }

                  v118 = *&v112->value;
                  v110->epoch = v112->epoch;
                  *&v110->value = v118;
                  v110 = v112;
                  v109 = v113;
                }

                while (v113 <= ((v107 - 2) >> 1));
                v119 = v108 - 1;
                if (v112 == v119)
                {
                  v121 = v119;
                  v112->epoch = v141;
                  *&v112->value = v140;
                }

                else
                {
                  v120 = *&v119->value;
                  v112->epoch = v119->epoch;
                  *&v112->value = v120;
                  v119->epoch = v141;
                  v121 = v119;
                  *&v119->value = v140;
                  v122 = v112 - a1 + 24;
                  if (v122 >= 25)
                  {
                    v123 = (-2 - 0x5555555555555555 * (v122 >> 3)) >> 1;
                    v124 = &a1[v123];
                    v125 = *&v124->value;
                    time1.epoch = v124->epoch;
                    *&time1.value = v125;
                    v126 = *&v112->value;
                    time2.epoch = v112->epoch;
                    *&time2.value = v126;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      v146.epoch = v112->epoch;
                      *&v146.value = *&v112->value;
                      do
                      {
                        v127 = v124;
                        v128 = *&v124->value;
                        v112->epoch = v124->epoch;
                        *&v112->value = v128;
                        if (!v123)
                        {
                          break;
                        }

                        v123 = (v123 - 1) >> 1;
                        v124 = &a1[v123];
                        v129 = *&v124->value;
                        time1.epoch = v124->epoch;
                        *&time1.value = v129;
                        time2 = v146;
                        v112 = v127;
                      }

                      while (CMTimeCompare(&time1, &time2) < 0);
                      v127->epoch = v146.epoch;
                      *&v127->value = *&v146.value;
                    }
                  }
                }

                v130 = v107-- <= 2;
                v108 = v121;
              }

              while (!v130);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = &a1[v12 >> 1];
          if (v11 < 0xC01)
          {
            sub_254B55950(v15, a1, v8);
          }

          else
          {
            sub_254B55950(a1, v15, v8);
            v16 = v14;
            sub_254B55950(a1 + 1, &a1[v16 - 1], v138);
            sub_254B55950(a1 + 2, &a1[v16 + 1], v9);
            sub_254B55950(&a1[v16 - 1], v15, &a1[v16 + 1]);
            v17 = *&a1->value;
            time1.epoch = a1->epoch;
            *&time1.value = v17;
            v18 = v15->epoch;
            *&a1->value = *&v15->value;
            a1->epoch = v18;
            v19 = *&time1.value;
            v15->epoch = time1.epoch;
            *&v15->value = v19;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v20 = *&a1[-1].value;
          time1.epoch = a1[-1].epoch;
          *&time1.value = v20;
          v21 = *&a1->value;
          time2.epoch = a1->epoch;
          *&time2.value = v21;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            break;
          }

          v143.epoch = a1->epoch;
          *&v143.value = *&a1->value;
          v44 = *&a1->value;
          time1.epoch = v143.epoch;
          *&time1.value = v44;
          v45 = *&v8->value;
          time2.epoch = v8->epoch;
          *&time2.value = v45;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v49 = a1;
            a2 = v139;
            do
            {
              v10 = v49 + 1;
              time1 = v143;
              time2 = v49[1];
              v50 = CMTimeCompare(&time1, &time2);
              v49 = v10;
            }

            while ((v50 & 0x80000000) == 0);
          }

          else
          {
            v46 = a1 + 1;
            a2 = v139;
            do
            {
              v10 = v46;
              if (v46 >= v139)
              {
                break;
              }

              time1 = v143;
              v47 = *&v46->value;
              time2.epoch = v46->epoch;
              *&time2.value = v47;
              v48 = CMTimeCompare(&time1, &time2);
              v46 = v10 + 1;
            }

            while ((v48 & 0x80000000) == 0);
          }

          v51 = a2;
          if (v10 < a2)
          {
            v52 = a2;
            do
            {
              v51 = v52 - 1;
              time1 = v143;
              v53 = *&v52[-1].value;
              time2.epoch = v52[-1].epoch;
              *&time2.value = v53;
              v54 = CMTimeCompare(&time1, &time2);
              v52 = v51;
            }

            while (v54 < 0);
          }

          while (v10 < v51)
          {
            v55 = *&v10->value;
            time1.epoch = v10->epoch;
            *&time1.value = v55;
            v56 = *&v51->value;
            v10->epoch = v51->epoch;
            *&v10->value = v56;
            v57 = *&time1.value;
            v51->epoch = time1.epoch;
            *&v51->value = v57;
            do
            {
              v58 = *&v10[1].value;
              v59 = v10[1].epoch;
              ++v10;
              time1 = v143;
              *&time2.value = v58;
              time2.epoch = v59;
            }

            while ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0);
            do
            {
              time1 = v143;
              v60 = *&v51[-1].value;
              v61 = v51[-1].epoch;
              --v51;
              time2.epoch = v61;
              *&time2.value = v60;
            }

            while (CMTimeCompare(&time1, &time2) < 0);
          }

          v62 = v10 - 1;
          if (&v10[-1] != a1)
          {
            v63 = *&v62->value;
            a1->epoch = v10[-1].epoch;
            *&a1->value = v63;
          }

          a4 = 0;
          v10[-1].epoch = v143.epoch;
          *&v62->value = *&v143.value;
        }

        v22 = 0;
        v142.epoch = a1->epoch;
        *&v142.value = *&a1->value;
        do
        {
          v23 = *&a1[v22 + 1].value;
          time1.epoch = a1[v22 + 1].epoch;
          *&time1.value = v23;
          time2 = v142;
          ++v22;
        }

        while (CMTimeCompare(&time1, &time2) < 0);
        v24 = &a1[v22];
        v25 = v139;
        v79 = v22 == 1;
        a2 = v139;
        if (v79)
        {
          v29 = v139;
          while (v24 < v29)
          {
            v26 = v29 - 1;
            v30 = *&v29[-1].value;
            time1.epoch = v29[-1].epoch;
            *&time1.value = v30;
            time2 = v142;
            v31 = CMTimeCompare(&time1, &time2);
            v29 = v26;
            if (v31 < 0)
            {
              goto LABEL_26;
            }
          }

          v26 = v29;
        }

        else
        {
          do
          {
            v26 = v25 - 1;
            v27 = *&v25[-1].value;
            time1.epoch = v25[-1].epoch;
            *&time1.value = v27;
            time2 = v142;
            v28 = CMTimeCompare(&time1, &time2);
            v25 = v26;
          }

          while ((v28 & 0x80000000) == 0);
        }

LABEL_26:
        if (v24 >= v26)
        {
          v41 = v24 - 1;
        }

        else
        {
          v32 = v24;
          v33 = v26;
          do
          {
            v34 = *&v32->value;
            time1.epoch = v32->epoch;
            *&time1.value = v34;
            v35 = *&v33->value;
            v32->epoch = v33->epoch;
            *&v32->value = v35;
            v36 = *&time1.value;
            v33->epoch = time1.epoch;
            *&v33->value = v36;
            do
            {
              v37 = *&v32[1].value;
              v38 = v32[1].epoch;
              ++v32;
              *&time1.value = v37;
              time1.epoch = v38;
              time2 = v142;
            }

            while (CMTimeCompare(&time1, &time2) < 0);
            do
            {
              v39 = *&v33[-1].value;
              v40 = v33[-1].epoch;
              --v33;
              time1.epoch = v40;
              *&time1.value = v39;
              time2 = v142;
            }

            while ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0);
          }

          while (v32 < v33);
          v41 = v32 - 1;
        }

        if (v41 != a1)
        {
          v42 = *&v41->value;
          a1->epoch = v41->epoch;
          *&a1->value = v42;
        }

        v41->epoch = v142.epoch;
        *&v41->value = *&v142.value;
        if (v24 >= v26)
        {
          break;
        }

LABEL_39:
        sub_254B54CC8(a1, v41, a3, a4 & 1);
        a4 = 0;
        v10 = v41 + 1;
      }

      v43 = sub_254B55D94(a1, v41);
      v10 = v41 + 1;
      if (sub_254B55D94(v41 + 1, v139))
      {
        break;
      }

      if (!v43)
      {
        goto LABEL_39;
      }
    }

    a2 = v41;
    if (!v43)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_254B55950(CMTime *a1, CMTime *a2, CMTime *a3)
{
  time1 = *a2;
  time2 = *a1;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *a3;
    time2 = *a2;
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      epoch = a1->epoch;
      v17 = *&a1->value;
      v19 = a3->epoch;
      *&a1->value = *&a3->value;
      a1->epoch = v19;
    }

    else
    {
      v13 = a1->epoch;
      v14 = *&a1->value;
      v15 = a2->epoch;
      *&a1->value = *&a2->value;
      a1->epoch = v15;
      *&a2->value = v14;
      a2->epoch = v13;
      time1 = *a3;
      time2 = *a2;
      result = CMTimeCompare(&time1, &time2);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      epoch = a2->epoch;
      v17 = *&a2->value;
      v18 = a3->epoch;
      *&a2->value = *&a3->value;
      a2->epoch = v18;
    }

    *&a3->value = v17;
    a3->epoch = epoch;
  }

  else
  {
    time1 = *a3;
    time2 = *a2;
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      v7 = a2->epoch;
      v8 = *&a2->value;
      v9 = a3->epoch;
      *&a2->value = *&a3->value;
      a2->epoch = v9;
      *&a3->value = v8;
      a3->epoch = v7;
      time1 = *a2;
      time2 = *a1;
      result = CMTimeCompare(&time1, &time2);
      if ((result & 0x80000000) != 0)
      {
        v10 = a1->epoch;
        v11 = *&a1->value;
        v12 = a2->epoch;
        *&a1->value = *&a2->value;
        a1->epoch = v12;
        *&a2->value = v11;
        a2->epoch = v10;
      }
    }
  }

  return result;
}

__n128 sub_254B55B18(CMTime *a1, CMTime *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  sub_254B55950(a1, a2, a3);
  time1 = *a4;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    epoch = a3->epoch;
    v11 = *&a3->value;
    v12 = a4->epoch;
    *&a3->value = *&a4->value;
    a3->epoch = v12;
    *&a4->value = v11;
    a4->epoch = epoch;
    time1 = *a3;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v13 = a2->epoch;
      v14 = *&a2->value;
      v15 = a3->epoch;
      *&a2->value = *&a3->value;
      a2->epoch = v15;
      *&a3->value = v14;
      a3->epoch = v13;
      time1 = *a2;
      time2 = *a1;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v16 = a1->epoch;
        v17 = *&a1->value;
        v18 = a2->epoch;
        *&a1->value = *&a2->value;
        a1->epoch = v18;
        *&a2->value = v17;
        a2->epoch = v16;
      }
    }
  }

  time1 = *a5;
  time2 = *a4;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v20 = a4->epoch;
    v21 = *&a4->value;
    v22 = a5->epoch;
    *&a4->value = *&a5->value;
    a4->epoch = v22;
    *&a5->value = v21;
    a5->epoch = v20;
    time1 = *a4;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v23 = a3->epoch;
      v24 = *&a3->value;
      v25 = a4->epoch;
      *&a3->value = *&a4->value;
      a3->epoch = v25;
      *&a4->value = v24;
      a4->epoch = v23;
      time1 = *a3;
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v26 = a2->epoch;
        v27 = *&a2->value;
        v28 = a3->epoch;
        *&a2->value = *&a3->value;
        a2->epoch = v28;
        *&a3->value = v27;
        a3->epoch = v26;
        time1 = *a2;
        time2 = *a1;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v29 = a1->epoch;
          result = *&a1->value;
          v30 = a2->epoch;
          *&a1->value = *&a2->value;
          a1->epoch = v30;
          *&a2->value = result;
          a2->epoch = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_254B55D94(CMTime *a1, CMTime *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_254B55950(a1, a1 + 1, a2 - 1);
        break;
      case 4:
        sub_254B55950(a1, a1 + 1, a1 + 2);
        time1 = a2[-1];
        time2 = a1[2];
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v17 = a2 - 1;
          epoch = a1[2].epoch;
          v19 = *&a1[2].value;
          v20 = a2[-1].epoch;
          *&a1[2].value = *&a2[-1].value;
          a1[2].epoch = v20;
          *&v17->value = v19;
          v17->epoch = epoch;
          time1 = a1[2];
          time2 = a1[1];
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v21 = a1[1].epoch;
            v22 = *&a1[1].value;
            *&a1[1].value = *&a1[2].value;
            v23 = a1[2].epoch;
            a1[1].epoch = v23;
            *&a1[2].value = v22;
            a1[2].epoch = v21;
            *&time1.value = *&a1[1].value;
            time1.epoch = v23;
            time2 = *a1;
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              v24 = a1->epoch;
              v25 = *&a1->value;
              *&a1->value = *&a1[1].value;
              a1->epoch = a1[1].epoch;
              *&a1[1].value = v25;
              a1[1].epoch = v24;
            }
          }
        }

        return 1;
      case 5:
        sub_254B55B18(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    time1 = a2[-1];
    time2 = *a1;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v5 = a2 - 1;
      v6 = a1->epoch;
      v7 = *&a1->value;
      v8 = a2[-1].epoch;
      *&a1->value = *&a2[-1].value;
      a1->epoch = v8;
      *&v5->value = v7;
      v5->epoch = v6;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 2;
  sub_254B55950(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    time1 = *v10;
    v13 = *&v9->value;
    time2.epoch = v9->epoch;
    *&time2.value = v13;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *&v27.value = *&v10->value;
      v27.epoch = v10->epoch;
      v14 = v11;
      while (1)
      {
        v15 = a1 + v14;
        *(v15 + 72) = *(&a1[2].value + v14);
        *(v15 + 11) = *(&a1[2].epoch + v14);
        if (v14 == -48)
        {
          break;
        }

        time1 = v27;
        time2 = *(v15 + 1);
        v14 -= 24;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          v16 = &a1[3] + v14;
          goto LABEL_19;
        }
      }

      v16 = a1;
LABEL_19:
      *v16 = *&v27.value;
      *(v16 + 16) = v27.epoch;
      if (++v12 == 8)
      {
        return &v10[1] == a2;
      }
    }

    v9 = v10;
    v11 += 24;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_254B5612C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286700498;
  a2[1] = v2;
  return result;
}

uint64_t sub_254B5616C(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254B561B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_254B56238(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_254B3597C(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

uint64_t sub_254B562F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_254B32E20();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_254B3597C(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_254B41168(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t sub_254B56434(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_254B33AE8();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t sub_254B56488(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_254B56520(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_254B36108(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void *sub_254B565C0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_254B36208(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void *sub_254B56660(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  if (a5)
  {
    v7 = 0;
    v8 = ceilf((a6 - a3) / a4) + a3;
    v9 = v8;
    v10 = (ceilf((a7 - a3) / a5) + a3);
    v11 = v10 - a3;
    do
    {
      if (a4)
      {
        v12 = 0;
        v13 = v7 * v11 + v10;
        if (v13 >= a7)
        {
          v13 = a7;
        }

        v14 = a4;
        do
        {
          v15 = v9 + v12;
          if (v9 + v12 >= a6)
          {
            v15 = a6;
          }

          *result = v12;
          result[1] = v15;
          result[2] = v7 * v11;
          result[3] = v13;
          result += 4;
          v12 += v8 - a3;
          --v14;
        }

        while (v14);
      }

      ++v7;
    }

    while (v7 != a5);
  }

  return result;
}

uint64_t sub_254B56798()
{
  v0 = open("/dev/random", 0);
  if (v0 < 0)
  {
    perror("/dev/random");
    return 0;
  }

  else
  {
    v1 = v0;
    v3 = 0;
    read(v0, &v3, 8uLL);
    close(v1);
    return v3;
  }
}

void *sub_254B56808(void *a1)
{
  *a1 = &unk_286700510;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x259C24E00](v2, 0x1000C4000313F17);
  }

  return a1;
}

void sub_254B56864(void *a1)
{
  *a1 = &unk_286700510;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x259C24E00](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x259C24E00);
}

unint64_t sub_254B568E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == a2)
  {
    return a2;
  }

  v4 = a3 - a2 + 1;
  v5 = *(a1 + 8);
  v6 = 0x5851F42D4C957F2DLL * *v5 + 1;
  *v5 = v6;
  if (v4 >= 0x100000001)
  {
    v7 = 0x5851F42D4C957F2DLL * v6 + 1;
    *v5 = v7;
    result = v6 & 0xFFFFFFFF00000000 | HIDWORD(v7);
    return result % v4 + a2;
  }

  result = HIDWORD(v6);
  if (a3 - a2 != -1)
  {
    return result % v4 + a2;
  }

  return result;
}

float sub_254B5694C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 0x5851F42D4C957F2DLL * *v1 + 1;
  *v1 = v2;
  return vcvts_n_f32_u32(HIDWORD(v2), 0x20uLL);
}

void sub_254B569C0(uint64_t a1, char **a2, void *a3)
{
  a3[1] = *a3;
  sub_254B47D10(a3, (a2[1] - *a2) >> 2);
  v6 = *(a1 + 288);
  v7 = *a2;
  v8 = a2[1];
  if (v6)
  {
    v9 = v8 - v7;
    if (v9)
    {
      v10 = v9 >> 2;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = *a3;
      do
      {
        v12 = *v7;
        v7 += 4;
        *v11++ = *(v6 + 48 * v12 + 40);
        --v10;
      }

      while (v10);
    }

    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  }

  else if (v8 != v7)
  {
    v13 = (v8 - v7) >> 2;
    v14 = *a3;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(v14, 4 * v13);
  }
}

BOOL sub_254B56AA4(uint64_t a1, float32x2_t *a2)
{
  v2 = 0;
  v3 = 1;
  while ((v3 & *a2) != 0)
  {
    ++v2;
    v3 *= 2;
    if (v2 == 4)
    {
      goto LABEL_6;
    }
  }

  if (!v2)
  {
    return 1;
  }

LABEL_6:
  v4 = a2 + 1;
  v5 = 0;
  v6 = v2;
  do
  {
    v7 = *v4++;
    v5 = vadd_f32(v5, v7);
    --v6;
  }

  while (v6);
  v8 = sqrtf(v2);
  return sqrtf(COERCE_FLOAT(vmul_f32(v5, v5).i32[1]) + (v5.f32[0] * v5.f32[0])) <= (((*(a1 + 232) * 0.33333) * v8) + ((*(a1 + 232) * 0.33333) * v8));
}

void sub_254B56B34(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v2;
  v11 = *(a2 + 32);
  v3.i32[0] = 1.0;
  if (*(a1 + 40))
  {
    v4 = *(a1 + 44);
    if (v4)
    {
      v8.i32[0] = *(a1 + 40);
      v8.i32[1] = v4;
      sub_254B56C24(v10, &v8, v9, v3);
      v5 = 0;
      v6.i64[0] = 0;
      do
      {
        v7 = fabsf(v9[v5] + -1.5708);
        if (v7 > *v6.i32)
        {
          *v6.i32 = v7;
        }

        ++v5;
      }

      while (v5 != 4);
      *v6.i32 = (*v6.i32 * 10.0) + 1.0;
      sub_254B56DA4(v10, &v8, v6);
    }
  }
}

void sub_254B56C24(float *a1, int32x2_t *a2, float *a3, int32x4_t a4)
{
  v5 = 0;
  v31 = *MEMORY[0x277D85DE8];
  *a4.i8 = vcvt_f32_s32(*a2);
  v6 = vtrn1q_s32(0, vdupq_lane_s32(*a4.i8, 0));
  v7 = vzip1q_s32(a4, a4);
  v7.i64[0] = 0;
  __asm { FMOV            V21.4S, #1.0 }

  v12 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7, a1[1]), v6, *a1), v32.val[2], a1[2]);
  v13 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7, a1[4]), v6, a1[3]), v32.val[2], a1[5]);
  v14 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7, a1[7]), v6, a1[6]), v32.val[2], a1[8]);
  v32.val[0] = vdivq_f32(v12, v14);
  v32.val[1] = vdivq_f32(v13, v14);
  v15 = v30;
  vst3q_f32(v15, v32);
  v16 = *&v30[6];
  v17 = *&v30[9];
  v18 = -1;
  v19 = *v30;
  v20 = *&v30[3];
  do
  {
    if (v18 >= 2)
    {
      v21 = v16;
    }

    else
    {
      v21 = v19;
    }

    v22 = *&v30[v5];
    v24 = v21 - v22;
    if (v18 >= 2)
    {
      v25 = v20;
    }

    else
    {
      v25 = v17;
    }

    v26 = v25 - v22;
    if (v18 >= 2)
    {
      v27 = 7;
    }

    else
    {
      v27 = 1;
    }

    v28 = *&v30[v27];
    if (v18 >= 2)
    {
      v29 = 4;
    }

    else
    {
      v29 = 10;
    }

    v23 = *&v30[v5 + 1];
    *a3++ = acosf((((v28 - v23) * (*&v30[v29] - v23)) + (v24 * v26)) / (sqrtf(((v28 - v23) * (v28 - v23)) + (v24 * v24)) * sqrtf(((*&v30[v29] - v23) * (*&v30[v29] - v23)) + (v26 * v26))));
    ++v18;
    v5 += 3;
  }

  while (v5 != 12);
}

float sub_254B56DA4(float *a1, int32x2_t *a2, int32x4_t a3)
{
  v3 = 0;
  v28 = *MEMORY[0x277D85DE8];
  *a3.i8 = vcvt_f32_s32(*a2);
  v4 = vzip1q_s32(a3, a3);
  v4.i64[0] = 0;
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v6 = vbslq_s8(v5, 0, v4);
  v7 = vtrn1q_s32(0, vdupq_lane_s32(*a3.i8, 0));
  v8 = a1[6];
  v9 = a1[5];
  v10 = *a1;
  v11 = vmulq_n_f32(v4, a1[1]);
  v12 = vmulq_n_f32(v4, a1[4]);
  v13 = vmulq_n_f32(v4, a1[7]);
  __asm { FMOV            V21.4S, #1.0 }

  v18 = vaddq_f32(vmlaq_f32(v6, 0, v7), v29.val[2]);
  v29.val[0] = vdivq_f32(vaddq_f32(v7, v6), v18);
  v29.val[1] = vdivq_f32(vaddq_f32(vmlaq_f32(v4, 0, v7), 0), v18);
  v19 = v27;
  vst3q_f32(v19, v29);
  v20 = vmlaq_n_f32(vmlaq_n_f32(v13, v7, v8), v29.val[2], a1[8]);
  v29.val[0] = vdivq_f32(vmlaq_n_f32(vmlaq_n_f32(v11, v7, v10), v29.val[2], a1[2]), v20);
  v29.val[1] = vdivq_f32(vmlaq_n_f32(vmlaq_n_f32(v12, v7, a1[3]), v29.val[2], v9), v20);
  v21 = v26;
  vst3q_f32(v21, v29);
  v22 = 0.0;
  do
  {
    v23 = *&v26[v3];
    v24 = (*&v27[v3 + 4] - *&v26[v3 + 4]) * (*&v27[v3 + 4] - *&v26[v3 + 4]);
    if ((v24 + ((*&v27[v3] - v23) * (*&v27[v3] - v23))) > v22)
    {
      v22 = v24 + ((*&v27[v3] - v23) * (*&v27[v3] - v23));
    }

    v3 += 12;
  }

  while (v3 != 48);
  return sqrtf(v22);
}

void sub_254B56EC0(uint64_t a1)
{
  sub_254B47D10((a1 + 80), *(a1 + 48));
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = 0;
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = v2 + 1;
      __asm { FMOV            V8.2S, #1.0 }

      v13 = *(a1 + 80);
      do
      {
        v14 = &v2[6 * v4];
        v15 = *(v14 + 20);
        v16 = *v14;
        v17 = 1.0;
        v18 = _D8;
        if (v15)
        {
          if (v15 >= 0x40)
          {
            v19 = 64;
          }

          else
          {
            v19 = v15;
          }

          if (v19 <= 1)
          {
            v19 = 1;
          }

          v20 = 0.0;
          v21 = 1000.0;
          v22 = 0.0;
          v23 = v16;
          do
          {
            if (v23)
            {
              v20 = v21 + v20;
            }

            else
            {
              v22 = v21 + v22;
            }

            v23 >>= 1;
            v21 = v21 * 0.25;
            --v19;
          }

          while (v19);
          if (v22 >= 0.000001)
          {
            v24 = v22;
          }

          else
          {
            v24 = 0.000001;
          }

          if (v20 < 0.000001)
          {
            v20 = 0.000001;
          }

          v17 = v20 / v24;
          if (v15 <= 0)
          {
            v18 = _D8;
LABEL_28:
            v17 = v17 / (sqrtf(COERCE_FLOAT(vmul_f32(v18, v18).i32[1]) + (v18.f32[0] * v18.f32[0])) + 0.25);
            goto LABEL_29;
          }

          if (v15 >= 4)
          {
            v25 = 4;
          }

          else
          {
            v25 = v15;
          }

          v26 = 0;
          v27 = v25;
          v28 = v7;
          do
          {
            v29 = *v28++;
            v30 = vabs_f32(v29);
            v26 = vadd_f32(v26, v30);
            --v27;
          }

          while (v27);
          v30.f32[0] = v25;
          v18 = vdiv_f32(v26, vdup_lane_s32(v30, 0));
        }

        if (v15)
        {
          goto LABEL_28;
        }

LABEL_29:
        if (((v15 > 0) & v16) == 0)
        {
          v31 = *(v5 + 8 * v4) - *(v6 + 8 * v4);
          v17 = v17 / (sqrtf(sqrtf(((*(v5 + ((8 * v4) | 4)) - *(v6 + ((8 * v4) | 4))) * (*(v5 + ((8 * v4) | 4)) - *(v6 + ((8 * v4) | 4)))) + (v31 * v31))) + 1.0);
        }

        if (v2[6 * v4 + 5].i16[1])
        {
          v17 = v17 / v2[6 * v4 + 5].i16[1];
        }

        if (v17 <= 0.00000011921)
        {
          v17 = 0.00000011921;
        }

        v32 = logf(v17 + 1.0);
        if (v32 <= 0.00000011921)
        {
          v32 = 0.00000011921;
        }

        *(v13 + 4 * v4++) = v32;
        v7 += 6;
      }

      while (v4 != v3);
    }
  }

  else
  {
    v33 = *(a1 + 48);
    if (v33)
    {
      v34 = *(a1 + 80);

      memset_pattern16(v34, &unk_254B8B4F0, 4 * v33);
    }
  }
}

void sub_254B57124(uint64_t a1, char **a2, const void **a3)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v7 = *(a1 + 288);
    a3[1] = *a3;
    sub_254B47D40(a3, (a2[1] - v3) >> 2);
    __p = 0;
    v21 = 0;
    v22 = 0;
    sub_254B569C0(a1, a2, &__p);
    v8 = (v21 - __p) >> 2;
    LODWORD(v9) = (v8 * 0.35);
    if (v9 <= 50)
    {
      v9 = 50;
    }

    else
    {
      v9 = v9;
    }

    if (v8 >= v9)
    {
      v10 = v8 - v9;
    }

    else
    {
      v10 = 0;
    }

    if (v8 <= v10)
    {
      v10 = v8 - 1;
    }

    v11 = *a2;
    v12 = a2[1];
    if (v7)
    {
      if (v12 != v11)
      {
        v13 = 0;
        v14 = *(__p + v10);
        v15 = 1;
        do
        {
          v19 = *&v11[4 * v13];
          v16 = (v7 + 48 * v19);
          if (v14 <= v16[5].i16[0] && sub_254B56AA4(a1, v16))
          {
            sub_254B3A90C(a3, &v19);
            v11 = *a2;
            v12 = a2[1];
          }

          v13 = v15++;
        }

        while (v13 < (v12 - v11) >> 2);
      }
    }

    else if (v12 != v11)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = *&v11[4 * v17];
        sub_254B3A90C(a3, &v19);
        v17 = v18;
        v11 = *a2;
        ++v18;
      }

      while (v17 < (a2[1] - *a2) >> 2);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_254B572B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B572D8(double *a1, unint64_t *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_254B574A4(&v14, 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 4));
  v6 = *a2;
  if (*a2 < a2[1])
  {
    v7 = v15;
    do
    {
      if (v7 >= v16)
      {
        v8 = (v7 - v14) >> 3;
        if ((v8 + 1) >> 61)
        {
          sub_254B32E20();
        }

        v9 = (v16 - v14) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v16 - v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          sub_254B5968C(&v14, v10);
        }

        *(8 * v8) = v6;
        v7 = (8 * v8 + 8);
        v11 = (8 * v8 - (v15 - v14));
        memcpy(v11, v14, v15 - v14);
        v12 = v14;
        v14 = v11;
        v15 = v7;
        v16 = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v7 = v6;
        v7 += 8;
      }

      v15 = v7;
      v6 += 304;
    }

    while (v6 < a2[1]);
  }

  sub_254B51E00(v13, *a1 | (a1[1] << 32), &v14);
  v13[1] = 1;
  sub_254B51C50(v13);
  sub_254B51D38(v13, a3);
  sub_254B51E80(v13);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_254B5746C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B574A4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_254B5968C(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

id sub_254B57544(void *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_254B57870;
    v38 = sub_254B57880;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_254B57870;
    v32 = sub_254B57880;
    v33 = 0;
    v9 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    [v9 lock];
    [v9 unlockWithCondition:1];
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:@"tracks"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_254B57888;
    v18[3] = &unk_2797A9C48;
    v24 = a4;
    v19 = v7;
    v22 = &v34;
    v11 = a2[1];
    v25 = *a2;
    v26 = v11;
    v27 = a2[2];
    v20 = v8;
    v23 = &v28;
    v12 = v9;
    v21 = v12;
    [v19 loadValuesAsynchronouslyForKeys:v10 completionHandler:v18];

    [v12 lockWhenCondition:2];
    [v12 unlockWithCondition:0];
    v13 = v35[5];
    if (v13)
    {
      v14 = [v13 localizedDescription];
      NSLog(&stru_2867023D0.isa, v14);

      v15 = [v35[5] localizedRecoverySuggestion];
      NSLog(&stru_2867023D0.isa, v15);
    }

    v16 = v29[5];

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_254B577D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v36 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_254B57870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254B57888(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndex:0];
    v4 = v3;
    if (v3)
    {
      [v3 preferredTransform];
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
    }

    v9 = *(a1 + 72);
    v10 = v54;
    v11 = v56;
    v9[1] = v55;
    v9[2] = v11;
    *v9 = v10;
    [v4 naturalSize];
    width = v12;
    height = v14;
    [v4 formatDescriptions];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v16 = v51 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v17)
    {
      v18 = *v51;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          if (CMFormatDescriptionGetMediaType(v20) == 1986618469)
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions(v20);
            width = Dimensions.width;
            height = Dimensions.height;
            goto LABEL_16;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v22 = objc_alloc(MEMORY[0x277CE6410]);
    v23 = *(a1 + 32);
    v49 = 0;
    v24 = [v22 initWithAsset:v23 error:&v49];
    v25 = v49;
    v26 = v49;
    v27 = v26;
    v48 = v24;
    if (v26)
    {
      v28 = [v26 localizedDescription];
      v29 = v28;
      NSLog(&cfstr_ErrorCreatingM.isa, [v28 UTF8String]);

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v25);
    }

    if ((*(a1 + 92) & 1) != 0 && (*(a1 + 116) & 1) != 0 && !*(a1 + 120) && (*(a1 + 104) & 0x8000000000000000) == 0 && !*(*(*(a1 + 56) + 8) + 40))
    {
      v45 = *(a1 + 96);
      v54 = *(a1 + 80);
      v55 = v45;
      v56 = *(a1 + 112);
      [v24 setTimeRange:&v54];
    }

    v30 = MEMORY[0x277CBEAC0];
    v31 = *(a1 + 40);
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:rint(width)];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:rint(height)];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
    v35 = [v30 dictionaryWithObjectsAndKeys:{v31, *MEMORY[0x277CC4E30], v32, *MEMORY[0x277CC4EC8], v33, *MEMORY[0x277CC4DD8], v34, *MEMORY[0x277CC4D60], MEMORY[0x277CBEC38], *MEMORY[0x277CC4E08], 0}];

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v36 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v4 outputSettings:v35];
      [v48 addOutput:v36];

      v37 = [v48 error];
      v38 = *(*(a1 + 56) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      if (*(*(*(a1 + 56) + 8) + 40) || ([v48 startReading], objc_msgSend(v48, "error"), v40 = objc_claimAutoreleasedReturnValue(), v41 = *(*(a1 + 56) + 8), v42 = *(v41 + 40), *(v41 + 40) = v40, v42, *(*(*(a1 + 56) + 8) + 40)))
      {
        v43 = *(*(a1 + 64) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = 0;
      }

      else
      {
        v46 = *(*(a1 + 64) + 8);
        v47 = v48;
        v44 = *(v46 + 40);
        *(v46 + 40) = v47;
      }
    }

    v8 = v4;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"InertiaCamVideoUtilDomain" code:-1 userInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = 0;
  }

  [*(a1 + 48) lock];
  [*(a1 + 48) unlockWithCondition:2];
}

void ICDebugExpWriteVideoWithHomographies(uint64_t a1)
{
  v188 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  v140 = *(a1 + 8);
  v131 = [*a1 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v184[0] = 0x3FF0000000000000;
  memset(&v184[1], 0, 24);
  v184[4] = 0x3FF0000000000000;
  memset(&v184[5], 0, 24);
  v184[8] = 0x3FF0000000000000;
  sub_254B34980(v170, 0, v184);
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1111970369];
  v183 = v1;
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];

  v2 = *a1;
  v3 = *(a1 + 40);
  *&v179.a = *(a1 + 24);
  *&v179.c = v3;
  *&v179.tx = *(a1 + 56);
  v157 = sub_254B57544(v2, &v179, v132, &v169);
  v4 = [v131 objectAtIndex:0];
  v5 = *(v140 + 72);
  v167 = *(v140 + 56);
  v168 = v5;
  v149 = *(&v5 + 1);
  v150 = *&v5;
  v144 = *(MEMORY[0x277CBF3A0] + 8);
  v145 = *MEMORY[0x277CBF3A0];
  v142 = *(MEMORY[0x277CBF3A0] + 24);
  v143 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(a1 + 75);
  v130 = v4;
  [v4 naturalSize];
  v8 = v7;
  v10 = v9;
  v166[0] = v7;
  v166[1] = v9;
  if (v6)
  {
    sub_254B572D8(v166, (v140 + 24), &v167);
    v144 = *(v140 + 64);
    v145 = *(v140 + 56);
    v142 = *(v140 + 80);
    v143 = *(v140 + 72);
  }

  if (*(&v168 + 1) > 1920.0 || *&v168 > 1920.0)
  {
    if (*&v168 >= *(&v168 + 1))
    {
      v11 = *&v168;
    }

    else
    {
      v11 = *(&v168 + 1);
    }

    v12 = v11;
    v13 = (1920.0 / v12);
    v149 = *(&v168 + 1) * v13;
    v150 = *&v168 * v13;
  }

  v15 = v149;
  v14 = v150;
  if (*(a1 + 72) == 1)
  {
    v167 = 0uLL;
    v14 = v8;
    v15 = v10;
    *&v168 = v8;
    *(&v168 + 1) = v10;
  }

  memset(&v165, 0, sizeof(v165));
  v179 = v169;
  CGAffineTransformInvert(&v165, &v179);
  if (v165.tx != 0.0)
  {
    v16 = -v14;
    if (v165.tx > 0.0)
    {
      v16 = v14;
    }

    v165.tx = v16;
  }

  if (v165.ty != 0.0)
  {
    v17 = -v15;
    if (v165.ty > 0.0)
    {
      v17 = v15;
    }

    v165.ty = v17;
  }

  *&v164.duration.value = *&v165.a;
  *&v164.duration.epoch = *&v165.c;
  *&v164.presentationTimeStamp.timescale = *&v165.tx;
  CGAffineTransformInvert(&v179, &v164);
  v169 = v179;
  if ((*(a1 + 36) & 1) == 0 || (*(a1 + 60) & 1) == 0 || *(a1 + 64) || (*(a1 + 48) & 0x8000000000000000) != 0)
  {
    v18 = v130;
    if (!v130)
    {
LABEL_27:
      memset(&v179, 0, sizeof(v179));
      goto LABEL_28;
    }
  }

  else
  {
    v18 = v157;
    if (!v157)
    {
      goto LABEL_27;
    }
  }

  [v18 timeRange];
LABEL_28:
  v173 = v179;
  *&v164.duration.value = *&v179.a;
  v164.duration.epoch = *&v179.c;
  rhs.origin = *&v179.d;
  rhs.size.width = v179.ty;
  CMTimeAdd(&v179, &v164.duration, &rhs);
  *&v174.value = *&v179.a;
  v174.epoch = *&v179.c;
  v146 = objc_opt_respondsToSelector();
  if (v146)
  {
    v19 = *(a1 + 88);
    *&v164.duration.value = *&v173.a;
    v164.duration.epoch = *&v173.c;
    v179 = v173;
    *&v20 = sub_254B591D0(&v164.duration, &v179);
    [v19 ICReportProgress:v20];
  }

  v179.a = 1.0;
  memset(&v179.b, 0, 24);
  v179.tx = 1.0;
  v179.ty = 0.0;
  v181 = 0;
  v180 = 0;
  v182 = 0x3FF0000000000000;
  v138 = *(a1 + 16);
  if (!v138)
  {
    v21 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v22 = [v21 objectAtIndex:0];
    v23 = MEMORY[0x277CCACA8];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v25 = [v23 stringWithFormat:@"%.0f.%@", v24 * 1000.0, @"mov"];
    v138 = [v22 stringByAppendingPathComponent:v25];
  }

  v26 = [VideoFrameWriterQueue alloc];
  v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v138];
  *&v164.duration.value = *&v169.a;
  *&v164.duration.epoch = *&v169.c;
  *&v164.presentationTimeStamp.timescale = *&v169.tx;
  rhs.origin = *&v173.a;
  rhs.size.width = v173.c;
  keys = v174;
  v162 = [(VideoFrameWriterQueue *)v26 initWithOutputURL:v27 forMovieDimensions:&v164 outputTransform:&rhs startTime:&keys endTime:v14, v15];

  [(VideoFrameWriterQueue *)v162 StartWatchingForFrames];
  v156 = objc_alloc_init(CIHomographyResampler);
  v158 = 0;
  v139 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v136 = *MEMORY[0x277CC4838];
  v135 = *MEMORY[0x277CC49C0];
  v133 = *MEMORY[0x277CC4A10];
  v134 = *MEMORY[0x277CC49E0];
  do
  {
    context = objc_autoreleasePoolPush();
    v28 = v157;
    if ([v28 status] != 1)
    {

LABEL_46:
      [v28 status];
      v37 = 1;
      goto LABEL_111;
    }

    v29 = [v28 outputs];
    v30 = [v29 objectAtIndex:0];

    sbuf = [v30 copyNextSampleBuffer];
    v31 = [v28 error];
    v32 = v31;
    if (v31)
    {
      NSLog(&cfstr_ReaderErrorD.isa, [v31 code]);
      NSLog(&cfstr_Description.isa, v32);
    }

    if (!sbuf)
    {
      goto LABEL_46;
    }

    CMSampleBufferGetSampleTimingInfo(sbuf, 0, &v164);
    if ((*(a1 + 72) & 1) != 0 || (v33 = *(v140 + 24), v34 = v139, v139 >= 0x86BCA1AF286BCA1BLL * ((*(v140 + 32) - v33) >> 4)))
    {
      v36 = v170;
    }

    else
    {
      v35 = v33 + 304 * v139;
      if (*(v35 + 104) == v158)
      {
        v36 = v35;
      }

      else
      {
        v36 = v170;
      }

      if (*(v35 + 104) == v158)
      {
        v34 = v139 + 1;
      }

      v139 = v34;
    }

    for (i = 0; i != 72; i += 8)
    {
      *(&v179.a + i) = *&v36[i];
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    v40 = *(&v167 + 1);
    v152 = v168;
    cf = v167;
    v151 = *(&v168 + 1);
    [(ImageHomographyResampler *)v156 setHomographyMatrix:&v179];
    if (*(a1 + 73) == 1)
    {
      CVPixelBufferLockBaseAddress(ImageBuffer, 0);
      PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
      if (PixelFormatType == 32)
      {
        v42 = 16386;
      }

      else
      {
        v42 = 2;
      }

      if (PixelFormatType == 1111970369)
      {
        v43 = 8194;
      }

      else
      {
        v43 = v42;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(ImageBuffer);
      CleanRect = CVImageBufferGetCleanRect(ImageBuffer);
      x = CleanRect.origin.x;
      y = CleanRect.origin.y;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      BaseAddress = CVPixelBufferGetBaseAddress(ImageBuffer);
      v51 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, v43);
      CGColorSpaceRelease(DeviceRGB);
      CGContextSaveGState(v51);
      CGContextTranslateCTM(v51, x, -y);
      v52 = CVPixelBufferGetHeight(ImageBuffer);
      CGContextTranslateCTM(v51, 0.0, v52);
      CGContextScaleCTM(v51, 1.0, -1.0);
      v53 = *(v36 + 10);
      if (*(v36 + 11) != v53)
      {
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = v53 + (v54 << 6);
          v57 = *(v56 + 16);
          if (v57)
          {
            v58 = 0;
            v59 = *(v56 + 16);
            do
            {
              ++v58;
              v60 = v59;
              v59 >>= 1;
            }

            while ((v60 & 2) != 0);
          }

          else
          {
            v58 = 0;
          }

          if (v58 >= 0xF)
          {
            v61 = 15;
          }

          else
          {
            v61 = v58;
          }

          v63 = *v56;
          v62 = *(v56 + 4);
          v64 = *(v56 + 8);
          v65 = *(v56 + 12);
          v66 = *(v56 + 56);
          if (v57)
          {
            if ((v57 & 2) != 0 || v66 < 2)
            {
              v69 = 1.0;
              v68 = 0.0;
              CGContextSetRGBStrokeColor(v51, 0.0, 1.0, 0.0, 1.0);
              v67 = 0.0;
            }

            else
            {
              v69 = 1.0;
              v68 = 0.0;
              CGContextSetRGBStrokeColor(v51, 0.0, 1.0, 1.0, 1.0);
              v67 = 1.0;
            }
          }

          else if ((v57 & 2) != 0 && v66 >= 2)
          {
            v67 = 0.0;
            v68 = 1.0;
            CGContextSetRGBStrokeColor(v51, 1.0, 1.0, 0.0, 1.0);
            v69 = 1.0;
          }

          else
          {
            v69 = 0.0;
            v68 = 1.0;
            CGContextSetRGBStrokeColor(v51, 1.0, 0.0, 0.0, 1.0);
            v67 = 0.0;
          }

          CGContextSetRGBFillColor(v51, v68, v69, v67, 1.0);
          v70 = vcvts_n_f32_u32(v61 + 2, 1uLL);
          v190.origin.x = v63 - v70;
          v190.origin.y = v62 - v70;
          v190.size.width = (v61 + 2);
          v190.size.height = v190.size.width;
          CGContextFillEllipseInRect(v51, v190);
          CGContextBeginPath(v51);
          CGContextMoveToPoint(v51, v63, v62);
          CGContextAddLineToPoint(v51, v64, v65);
          CGContextStrokePath(v51);
          v53 = *(v36 + 10);
          v54 = ++v55;
        }

        while (v55 < ((*(v36 + 11) - v53) >> 6));
      }

      CGContextRestoreGState(v51);
      CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
      CGContextRelease(v51);
    }

    v71 = *(a1 + 80);
    if (v71)
    {
      v72 = [v71 objectForKeyedSubscript:IC_C_L1_SALIENT_RECTS];
      v73 = v72 == 0;

      if (v73)
      {
        p_rhs = 0;
        p_y = 8;
        p_size = 16;
        p_height = 24;
      }

      else
      {
        v74 = [*(a1 + 80) objectForKeyedSubscript:IC_C_L1_SALIENT_RECTS];
        v75 = [v74 objectAtIndexedSubscript:v158];
        CGRectMakeWithDictionaryRepresentation(v75, &rhs);

        p_rhs = &rhs;
        p_height = &rhs.size.height;
        p_size = &rhs.size;
        p_y = &rhs.origin.y;
      }

      v78 = [*(a1 + 80) objectForKeyedSubscript:IC_C_L1_CENTER_TARGETS];
      v79 = v78 == 0;

      if (v79)
      {
        v82 = 0;
        v83 = 8;
      }

      else
      {
        v80 = [*(a1 + 80) objectForKeyedSubscript:IC_C_L1_CENTER_TARGETS];
        v81 = [v80 objectAtIndexedSubscript:v158];
        CGPointMakeWithDictionaryRepresentation(v81, &rhs.origin);

        v82 = &rhs;
        v83 = &rhs.origin.y;
      }

      v141 = v83;
      CVPixelBufferLockBaseAddress(ImageBuffer, 0);
      v84 = CVPixelBufferGetBytesPerRow(ImageBuffer);
      v85 = CVPixelBufferGetWidth(ImageBuffer);
      v86 = CVPixelBufferGetHeight(ImageBuffer);
      v191 = CVImageBufferGetCleanRect(ImageBuffer);
      v87 = v191.origin.x;
      v88 = v191.origin.y;
      v89 = CGColorSpaceCreateDeviceRGB();
      v90 = CVPixelBufferGetBaseAddress(ImageBuffer);
      v91 = CGBitmapContextCreate(v90, v85, v86, 8uLL, v84, v89, 0x4002u);
      CGColorSpaceRelease(v89);
      CGContextSaveGState(v91);
      CGContextTranslateCTM(v91, v87, -v88);
      v92 = CVPixelBufferGetHeight(ImageBuffer);
      CGContextTranslateCTM(v91, 0.0, v92);
      CGContextScaleCTM(v91, 1.0, -1.0);
      CGContextSetRGBStrokeColor(v91, 0.0, 1.0, 0.0, 1.0);
      CGContextSetRGBFillColor(v91, 0.0, -1.0, 0.5, 0.5);
      if (p_rhs)
      {
        CGContextSetLineWidth(v91, 3.0);
        v192.origin.x = p_rhs->origin.x;
        v192.origin.y = *p_y;
        v192.size.width = *p_size;
        v192.size.height = *p_height;
        CGContextStrokeRect(v91, v192);
        v193.origin.x = p_rhs->origin.x;
        v193.origin.y = *p_y;
        v193.size.width = *p_size;
        v193.size.height = *p_height;
        CGContextFillRect(v91, v193);
      }

      if (v82)
      {
        v93 = v82->origin.x;
        v94 = *v141;
        CGContextSetRGBFillColor(v91, 0.0, 1.0, 0.0, 1.0);
        v194.origin.y = v94 + -12.5;
        v194.origin.x = v93 + -12.5;
        v194.size.width = 25.0;
        v194.size.height = 25.0;
        CGContextFillEllipseInRect(v91, v194);
      }

      CGContextRestoreGState(v91);
      CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
      CGContextRelease(v91);
    }

    [(CIHomographyResampler *)v156 setHightlightRect:v145, v144, v143, v142];
    v95 = [(CIHomographyResampler *)v156 ResampleCVPixels:ImageBuffer clipToRect:*&cf outputSize:v40, *&v152, v151, v150, v149];
    if (*(a1 + 74) == 1)
    {
      v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d %6.4f ", v158, *(v36 + 42)];
      v97 = v96;
      v98 = v36[75];
      if (v98)
      {
        v99 = [v96 stringByAppendingString:@"A"];

        v98 = v36[75];
        v97 = v99;
      }

      if ((v98 & 2) != 0)
      {
        v100 = [v97 stringByAppendingString:@"I"];

        v98 = v36[75];
        v97 = v100;
      }

      if ((v98 & 4) != 0)
      {
        v101 = [v97 stringByAppendingString:@"C"];

        v98 = v36[75];
        v97 = v101;
      }

      if ((v98 & 8) != 0)
      {
        v102 = [v97 stringByAppendingString:@"T"];

        v97 = v102;
      }

      if (v36[73])
      {
        v103 = 0.7;
      }

      else
      {
        v103 = 0.0;
      }

      v104 = v97;
      CVPixelBufferLockBaseAddress(v95, 0);
      v105 = CVPixelBufferGetPixelFormatType(v95);
      if (v105 == 32)
      {
        v106 = 16386;
      }

      else
      {
        v106 = 2;
      }

      if (v105 == 1111970369)
      {
        v107 = 8194;
      }

      else
      {
        v107 = v106;
      }

      v108 = CVPixelBufferGetBytesPerRow(v95);
      v109 = CVPixelBufferGetWidth(v95);
      v110 = CVPixelBufferGetHeight(v95);
      v195 = CVImageBufferGetCleanRect(v95);
      v111 = v195.origin.x;
      v112 = v195.origin.y;
      v113 = CGColorSpaceCreateDeviceRGB();
      v114 = CVPixelBufferGetBaseAddress(v95);
      v115 = CGBitmapContextCreate(v114, v109, v110, 8uLL, v108, v113, v107);
      CGColorSpaceRelease(v113);
      CGContextSaveGState(v115);
      v153 = CTFontDescriptorCreateWithNameAndSize(@"Courier", 11.0);
      cfa = CTFontCreateWithFontDescriptor(v153, 0.0, 0);
      rhs = *ymmword_254B8B518;
      ColorSpace = CGBitmapContextGetColorSpace(v115);
      v117 = CGColorCreate(ColorSpace, &rhs.origin.x);
      valuePtr = 1071225242;
      v118 = CFNumberCreate(allocator, kCFNumberFloat32Type, &valuePtr);
      v175 = -1073741824;
      v119 = CFNumberCreate(allocator, kCFNumberFloat32Type, &v175);
      keys.value = v136;
      *&keys.timescale = v135;
      keys.epoch = v134;
      v187 = v133;
      values[0] = cfa;
      values[1] = v117;
      values[2] = v118;
      values[3] = v119;
      v120 = CFDictionaryCreate(allocator, &keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v121 = CFAttributedStringCreate(allocator, v104, v120);
      v122 = CTLineCreateWithAttributedString(v121);
      ImageBounds = CTLineGetImageBounds(v122, v115);
      v123 = ImageBounds.size.width;
      v124 = ImageBounds.size.height;
      CGContextSetRGBFillColor(v115, v103, 0.0, 0.0, 1.0);
      v197.size.width = v123 + 12.0;
      v197.size.height = v124 + 12.0;
      v197.origin.x = v111;
      v197.origin.y = v112;
      CGContextFillRect(v115, v197);
      CGContextSetTextPosition(v115, v111 + 6.0, v112 + 6.0);
      CTLineDraw(v122, v115);
      CFRelease(v122);
      CFRelease(v121);
      CFRelease(v118);
      CFRelease(v119);
      CFRelease(v120);
      CFRelease(v117);
      CFRelease(cfa);
      CFRelease(v153);
      CGContextRestoreGState(v115);
      CVPixelBufferUnlockBaseAddress(v95, 0);
      CGContextRelease(v115);
    }

    v125 = objc_alloc_init(VideoFrameWriterElement);
    [(VideoFrameWriterElement *)v125 setPixelBuffer:v95];
    rhs.origin = *&v164.presentationTimeStamp.value;
    *&rhs.size.width = v164.presentationTimeStamp.epoch;
    [(VideoFrameWriterElement *)v125 setFrameTime:&rhs];
    [(VideoFrameWriterElement *)v125 setFrameNumber:v158];
    [(VideoFrameWriterQueue *)v162 AddAFrame:v125];
    CFRelease(sbuf);
    if (v146)
    {
      v126 = *(a1 + 88);
      keys = v164.presentationTimeStamp;
      rhs = *&v173.a;
      v178 = *&v173.tx;
      *&v127 = sub_254B591D0(&keys, &rhs);
      [v126 ICReportProgress:v127];
    }

    v37 = 0;
    ++v158;
LABEL_111:
    objc_autoreleasePoolPop(context);
    [(VideoFrameWriterQueue *)v162 DrainIfAbove:16 downTo:2];
  }

  while ((v37 & 1) == 0 && [(VideoFrameWriterQueue *)v162 writeSuccess]);
  if (![(VideoFrameWriterQueue *)v162 WaitForFinish])
  {
    puts("Error writing movie file.");
    if (v138)
    {
      v128 = [MEMORY[0x277CCAA00] defaultManager];
      v163 = 0;
      [v128 removeItemAtPath:v138 error:&v163];
      v129 = v163;

      if (v129)
      {
        NSLog(&cfstr_DeleteMovieErr.isa);
        NSLog(&stru_2867023D0.isa, v129);
      }
    }
  }

  if (__p)
  {
    v172 = __p;
    operator delete(__p);
  }
}