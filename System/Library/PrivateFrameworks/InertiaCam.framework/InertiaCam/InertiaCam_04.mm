void sub_254B6A2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 112);
  if (v16)
  {
    *(v14 - 104) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

double sub_254B6A308(double *a1, double *a2, double *a3, double *a4)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *a4;
  v8 = a4[1];
  v9 = sub_254B6A38C(*a1, a1[1], *a3, v6, *a4, v8);
  v10 = sub_254B6A38C(*a2, a2[1], v5, v6, v7, v8);
  if (v10 >= v9)
  {
    return v9;
  }

  return v10;
}

double sub_254B6A38C(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  v7 = a6 - a4;
  v8 = v7 * v7 + v6 * v6;
  if (v8 == 0.0 || (v9 = ((a2 - a4) * v7 + (a1 - a3) * v6) / v8, v9 < 0.0))
  {
    a6 = a4;
    a5 = a3;
  }

  else if (v9 <= 1.0)
  {
    a5 = a3 + v9 * v6;
    a6 = a4 + v9 * v7;
  }

  return sqrt((a2 - a6) * (a2 - a6) + (a1 - a5) * (a1 - a5));
}

void sub_254B6A3F8(float *a1, float *a2, float *a3, unint64_t a4, double *a5, double a6, double a7, double a8, double a9)
{
  v9 = a4;
  v72 = *MEMORY[0x277D85DE8];
  v14 = a5[7];
  v13 = a5[8];
  v15 = a5[4];
  v16 = a5[5];
  v17 = a5[6];
  v18 = v15 * v13 - v14 * v16;
  v20 = *a5;
  v19 = a5[1];
  v22 = a5[2];
  v21 = a5[3];
  v23 = v14 * v22 - v19 * v13;
  v24 = v19 * v16 - v15 * v22;
  v25 = v23 * v21 + *a5 * v18 + v17 * v24;
  v26 = fabs(v25);
  v27 = 2.22044605e-16;
  if (v26 >= 2.22044605e-16)
  {
    v18 = v18 / v25;
    v23 = v23 / v25;
    v24 = v24 / v25;
    v27 = (v17 * v16 - v21 * v13) / v25;
    v26 = (v21 * v14 - v17 * v15) / v25;
    v13 = (v20 * v13 - v17 * v22) / v25;
    v16 = (v21 * v22 - v20 * v16) / v25;
    v14 = (v17 * v19 - v20 * v14) / v25;
    v15 = (v20 * v15 - v21 * v19) / v25;
  }

  v28 = 0;
  *v62 = a6;
  *&v62[1] = a7;
  v62[2] = 0x3FF0000000000000;
  v63 = a6 + a8 + -1.0;
  v64 = a7;
  v65 = 0x3FF0000000000000;
  v66 = v63;
  v67 = a7 + a9 + -1.0;
  v68 = 0x3FF0000000000000;
  v69 = a6;
  v70 = v67;
  v29 = vdupq_lane_s64(*&v18, 0);
  v30 = vdupq_lane_s64(*&v24, 0);
  v31 = vdupq_lane_s64(*&v27, 0);
  v32 = vdupq_lane_s64(*&v16, 0);
  v33 = vdupq_lane_s64(*&v26, 0);
  v71 = 0x3FF0000000000000;
  v34 = vdupq_lane_s64(*&v15, 0);
  __asm { FMOV            V19.2D, #1.0 }

  do
  {
    v40 = &v62[v28];
    v73 = vld3q_f64(v40);
    v41 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v73.val[1], v14), v73.val[0], v33), v73.val[2], v34);
    v42 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v73.val[1], v23), v73.val[0], v29), v73.val[2], v30), v41);
    v43 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v73.val[1], v13), v73.val[0], v31), v73.val[2], v32), v41);
    v44 = &v58[v28];
    vst3q_f64(v44, *(&_Q19 - 2));
    v28 += 6;
  }

  while (v28 != 12);
  v45 = HIDWORD(a4);
  v46 = sub_254B6A308(v58, v59, v60, v61) + 1.0;
  v47 = sub_254B6A308(v58, v61, v59, v60) + 1.0;
  v48 = v46 / v45;
  *a3 = v48;
  *a2 = v47 / v9;
  v49 = v58[0];
  v50 = v58[1];
  v51 = v59[0];
  v52 = v59[1];
  v53 = v60[0];
  v54 = v60[1];
  v55 = v61[0];
  v56 = v61[1];
  v57 = ((((((v51 - v49) * (v54 - v52)) - ((v53 - v51) * (v52 - v50))) + ((v55 - v53) * (v50 - v56))) - ((v49 - v55) * (v56 - v54))) * 0.5) / (v45 * v9);
  *a1 = sqrtf(v57);
}

void sub_254B6A6A4(float *a1, float *a2, float *a3, unint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *a1 = 1.0;
  *a2 = 1.0;
  *a3 = 1.0;
  v9 = *a5;
  v10 = *(a5 + 8) - *a5;
  if (v10)
  {
    v22 = 0;
    v21 = 0.0;
    v19 = 0x86BCA1AF286BCA1BLL * (v10 >> 4);
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    do
    {
      sub_254B6A3F8(&v22 + 1, &v22, &v21, a4, v9, a6, a7, a8, a9);
      if (*(&v22 + 1) < *a1)
      {
        *a1 = *(&v22 + 1);
      }

      if (*&v22 < *a2)
      {
        *a2 = v22;
      }

      if (v21 < *a3)
      {
        *a3 = v21;
      }

      v9 += 38;
      --v20;
    }

    while (v20);
  }
}

void sub_254B6AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_254B6B7F8(&a27, 0);
  sub_254B417EC(&a35);
  (*(*v35 + 8))(v35);
  _Unwind_Resume(a1);
}

uint64_t sub_254B6B1A4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8 && *(v7 + 304 * a6 + 104) <= a5)
  {
    v10 = *(v7 + 304 * a7 + 104);
    v11 = 0x86BCA1AF286BCA1BLL * (v8 >> 4) <= a7 || v10 < a5;
    if (!v11 && sub_254B5E950(a2, a3, a6, a7) != 0.0)
    {
      sub_254B6B00C(a1, a2, a3, a4, a5, 0, 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 4) - 1);
    }
  }

  return 0;
}

uint64_t sub_254B6B3C8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        sub_254B36CA4(a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

void *sub_254B6B460(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      sub_254B36B20(v6, v11);
    }

    sub_254B32E20();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t sub_254B6B5D4(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void *sub_254B6B644(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_254B3F88C(v4, a2);
  sub_254B37CC4(v4, a1);
  sub_254B362D0(v4);
  return a1;
}

void *sub_254B6B6B8(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_254B3F924(v4, a2);
  sub_254B38140(v4, a1);
  sub_254B36250(v4);
  return a1;
}

void *sub_254B6B72C(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_254B36B70(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void *sub_254B6B7F8(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[10];
    if (v3)
    {
      v2[11] = v3;
      operator delete(v3);
    }

    v4 = v2[7];
    if (v4)
    {
      v2[8] = v4;
      operator delete(v4);
    }

    v5 = v2[4];
    if (v5)
    {
      v2[5] = v5;
      operator delete(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      v2[2] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x259C24E00);
  }

  return result;
}

uint64_t sub_254B6B890(uint64_t *a1)
{
  v1 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0xD79435E50D7943)
  {
    sub_254B32E20();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v4 = 0xD79435E50D7943;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    sub_254B34578(a1, v4);
  }

  v11 = 0;
  v12 = 304 * v1;
  sub_254B34980(304 * v1, 0, 0);
  v13 = 304 * v1 + 304;
  v5 = a1[1];
  v6 = 304 * v1 + *a1 - v5;
  sub_254B345D4(a1, *a1, v5, v12 + *a1 - v5);
  v7 = *a1;
  *a1 = v6;
  v8 = a1[2];
  v10 = v13;
  *(a1 + 1) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  sub_254B34798(&v11);
  return v10;
}

void sub_254B6B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B6B9D0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_254B35A88(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_254B6BA24(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_254B32E20();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_254B3597C(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_254B35A88(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_254B41168(&v14);
  return v8;
}

void sub_254B6BB40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B41168(va);
  _Unwind_Resume(a1);
}

__n128 sub_254B6BB54(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 0xD79435E50D79436 * ((v4 - *a1) >> 4);
      }

      sub_254B34578(a1[4], v21);
    }

    v8 = (0x86BCA1AF286BCA1BLL * (v7 >> 4) + 1) / -2;
    v5 = v6 - 304 * ((0x86BCA1AF286BCA1BLL * (v7 >> 4) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        *v5 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 32);
        v11 = *(v6 + 48);
        *(v5 + 60) = *(v6 + 60);
        *(v5 + 32) = v10;
        *(v5 + 48) = v11;
        *(v5 + 16) = v9;
        sub_254B35110(v5 + 80, (v6 + 80));
        *(v5 + 104) = *(v6 + 104);
        v12 = *(v6 + 120);
        v13 = *(v6 + 136);
        v14 = *(v6 + 152);
        *(v5 + 168) = *(v6 + 168);
        *(v5 + 152) = v14;
        *(v5 + 136) = v13;
        *(v5 + 120) = v12;
        v15 = *(v6 + 184);
        v16 = *(v6 + 200);
        v17 = *(v6 + 216);
        *(v5 + 232) = *(v6 + 232);
        *(v5 + 216) = v17;
        *(v5 + 200) = v16;
        *(v5 + 184) = v15;
        v18 = *(v6 + 248);
        v19 = *(v6 + 264);
        v20 = *(v6 + 280);
        *(v5 + 293) = *(v6 + 293);
        *(v5 + 264) = v19;
        *(v5 + 280) = v20;
        *(v5 + 248) = v18;
        v6 += 304;
        v5 += 304;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 304 * v8;
    a1[2] = v5;
  }

  *v5 = *a2;
  v22 = *(a2 + 16);
  v23 = *(a2 + 32);
  v24 = *(a2 + 48);
  *(v5 + 60) = *(a2 + 60);
  *(v5 + 32) = v23;
  *(v5 + 48) = v24;
  *(v5 + 16) = v22;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 80) = 0;
  sub_254B331F8(v5 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 6);
  *(v5 + 104) = *(a2 + 104);
  v25 = *(a2 + 120);
  v26 = *(a2 + 136);
  v27 = *(a2 + 152);
  *(v5 + 168) = *(a2 + 168);
  *(v5 + 152) = v27;
  *(v5 + 136) = v26;
  *(v5 + 120) = v25;
  v28 = *(a2 + 184);
  v29 = *(a2 + 200);
  v30 = *(a2 + 216);
  *(v5 + 232) = *(a2 + 232);
  *(v5 + 216) = v30;
  *(v5 + 200) = v29;
  *(v5 + 184) = v28;
  result = *(a2 + 248);
  v32 = *(a2 + 264);
  v33 = *(a2 + 280);
  *(v5 + 293) = *(a2 + 293);
  *(v5 + 264) = v32;
  *(v5 + 280) = v33;
  *(v5 + 248) = result;
  a1[2] += 304;
  return result;
}

uint64_t sub_254B6BE90(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xD79435E50D7943)
  {
    sub_254B32E20();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v7 = 0xD79435E50D7943;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_254B34578(a1, v7);
  }

  v14 = 0;
  v15 = 304 * v3;
  v16 = 304 * v3;
  sub_254B34980(304 * v3, *a2, a3);
  *&v16 = 304 * v3 + 304;
  v8 = a1[1];
  v9 = 304 * v3 + *a1 - v8;
  sub_254B345D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_254B34798(&v14);
  return v13;
}

void sub_254B6BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B6BFE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B360CC(result, a4);
  }

  return result;
}

void sub_254B6C038(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6C054(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_254B6C0D4(void *a1)
{
  *a1 = &unk_2867003E8;
  sub_254B37270((a1 + 2));
  return a1;
}

void sub_254B6C118(void *a1)
{
  *a1 = &unk_2867003E8;
  sub_254B37270((a1 + 2));

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B6C200(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_2867003E8;
  a2[1] = v4;
  result = sub_254B384E4((a2 + 2), a1 + 16);
  a2[6] = *(a1 + 48);
  return result;
}

void sub_254B6C260(void *a1)
{
  sub_254B37270(a1 + 16);

  operator delete(a1);
}

void sub_254B6C29C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  sub_254B697C4(*(*(a1 + 8) + 256), *(a1 + 48), *a3 + v4, *(*(a1 + 8) + 264), *(*(a1 + 8) + 268), v4, __p);
  if (v5)
  {
    v6 = 0;
    v7 = 24 * v4;
    do
    {
      sub_254B6C3C0(a1 + 16, __p[0] + v6);
      v7 += 24;
      v6 += 72;
      --v5;
    }

    while (v5);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_254B6C358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6C374(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700B30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254B6C3C0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_254B33AE8();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_254B6C414(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_254B6C66C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_254B32E0C(a1);
}

void *sub_254B6C678(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_254B361CC(v6, v10);
    }

    sub_254B32E20();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_254B6C7A4(void *a1)
{
  *a1 = &unk_2866FFF20;
  sub_254B37270((a1 + 2));
  return a1;
}

void sub_254B6C7E8(void *a1)
{
  *a1 = &unk_2866FFF20;
  sub_254B37270((a1 + 2));

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B6C8D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_2866FFF20;
  a2[1] = v4;
  result = sub_254B384E4((a2 + 2), a1 + 16);
  a2[6] = *(a1 + 48);
  return result;
}

void sub_254B6C930(void *a1)
{
  sub_254B37270(a1 + 16);

  operator delete(a1);
}

void sub_254B6C96C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  sub_254B697C4(*(*(a1 + 8) + 256), *(a1 + 48), *a3 + v4, *(*(a1 + 8) + 264), *(*(a1 + 8) + 268), v4, __p);
  if (v5)
  {
    v6 = 0;
    v7 = 24 * v4;
    do
    {
      sub_254B6C3C0(a1 + 16, __p[0] + v6);
      v7 += 24;
      v6 += 72;
      --v5;
    }

    while (v5);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_254B6CA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6CA44(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700120))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_254B6CA90(uint64_t a1, uint64_t a2, int a3, int a4, int a5, float a6, float a7)
{
  v65 = a5;
  LODWORD(v69) = a3;
  v67 = a2;
  v72 = *MEMORY[0x277D85DE8];
  v70 = (2 * a4);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v64[-v12];
  MEMORY[0x28223BE20](v11);
  v16 = &v64[-v15];
  v17 = -v14;
  if ((v14 & 0x80000000) == 0)
  {
    LODWORD(v18) = 0;
    v19 = 1.0 / (a4 * a4);
    LODWORD(v71) = v70 + 1;
    v20 = -v14;
    do
    {
      v21 = expf(v19 * -(v20 * v20));
      v18 = v18;
      v22 = v71;
      v23 = v17;
      do
      {
        v24 = v18++;
        *&v16[4 * v24] = v21 * expf(v19 * -(v23 * v23));
        ++v23;
        --v22;
      }

      while (v22);
      v25 = v20++ == a4;
    }

    while (!v25);
  }

  v26 = v65;
  if (v69 >= 1)
  {
    v27 = 0;
    v28 = a6 * a6;
    v66 = v69;
    v29 = v70 + 1;
    v30 = v70;
    v31 = v30 * 4 + 4;
    v32 = v70 + 2;
    v71 = &v13[v30 + 5 + v32];
    v33 = v32 * 4 + 4;
    v70 = &v13[v30];
    do
    {
      v34 = 0;
      v35 = (v67 + 8 * v27);
      v36 = *v35;
      v37 = v35[1];
      v68 = v35;
      v69 = v27;
      do
      {
        sub_254B6CE1C(a1, a4 + 1, v13, v36, v37);
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        if ((a4 & 0x80000000) == 0)
        {
          v44 = v70;
          v45 = v71;
          v46 = v13;
          v47 = v16;
          v48 = v17;
          do
          {
            v49 = 0;
            v50 = v48;
            do
            {
              v51 = (*(v44 + 4 * v49 + 20) - *(v44 + 4 * v49 + 12)) * 0.5;
              v52 = (*(v45 + 4 * v49) - v46[v49 + 1]) * 0.5;
              v53 = *&v47[4 * v49];
              v54 = (v51 * v51) * v53;
              v55 = v53 * (v51 * v52);
              v56 = v53 * (v52 * v52);
              v43 = v43 + v54;
              v42 = v42 + v55;
              v39 = v39 + v56;
              v57 = (v17 + v49);
              v40 = v40 + ((v55 * v50) + (v54 * v57));
              v41 = v41 + ((v56 * v50) + (v55 * v57));
              ++v49;
            }

            while (v29 != v49);
            v47 += v31;
            v45 += v33;
            v46 = (v46 + v33);
            v44 += v33;
            v25 = v48++ == a4;
          }

          while (!v25);
        }

        v58 = (v43 * v39) - (v42 * v42);
        v59 = 0.0;
        v60 = 0.0;
        if (v58 != 0.0)
        {
          v59 = v39 * (1.0 / v58);
          v38 = (1.0 / v58) * -v42;
          v60 = v43 * (1.0 / v58);
        }

        v61 = (v41 * v38) + (v59 * v40);
        v62 = (v41 * v60) + (v38 * v40);
        v36 = v36 + v61;
        v37 = v37 + v62;
        ++v34;
      }

      while (v34 != v26 && ((v62 * v62) + (v61 * v61)) >= v28);
      v63 = v68;
      if (vabds_f32(v36, *v68) < a7 && vabds_f32(v37, v68[1]) < a7)
      {
        *v68 = v36;
        v63[1] = v37;
      }

      v27 = v69 + 1;
    }

    while (v69 + 1 != v66);
  }
}

uint64_t sub_254B6CE1C(uint64_t result, int a2, float *a3, float a4, float a5)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v9 = truncf(a5);
  v10 = a2;
  v11 = truncf(a4) == a4 && v9 == a5;
  v13 = !v11 || v10 > a4 || v10 > a5;
  if (v13 || (v10 + a4) >= *(result + 8) || (v10 + a5) >= *(result + 16))
  {
    if (v10 > a4 || (v10 <= a5 ? (v14 = ((v10 + a4) + 1.0) > (*(result + 8) - 1)) : (v14 = 1), v14 || ((v10 + a5) + 1.0) > (*(result + 16) - 1)))
    {
      if ((a2 & 0x80000000) == 0)
      {
        v16 = *(result + 16);
        v15 = *(result + 24);
        v17 = *result;
        v18 = *(result + 8);
        v19 = *(result + 32);
        v20 = v18 - 1;
        v21 = v18 - 1;
        v22 = v16 - 1;
        v23 = v16 - 1;
        v24 = -a2;
        do
        {
          v25 = v24 + a5;
          if (v25 < 0.0)
          {
            v25 = 0.0;
          }

          v26 = v25;
          v27 = v25 + 1;
          if (v22 >= v27)
          {
            v28 = v26 + 1;
          }

          else
          {
            v28 = v23;
          }

          if (v22 >= v26 || v22 >= v27)
          {
            v30 = v25;
          }

          else
          {
            v30 = v23;
          }

          v31 = v25 - v26;
          v32 = v17 + v15 * v30;
          v33 = v17 + v15 * v28;
          v34 = (2 * a2) | 1;
          v35 = -a2;
          do
          {
            v36 = v35 + a4;
            if (v36 < 0.0)
            {
              v36 = 0.0;
            }

            v37 = v36;
            v38 = v36 + 1;
            if (v20 >= v38)
            {
              v39 = v37 + 1;
            }

            else
            {
              v39 = v21;
            }

            if (v20 < v37 && v20 < v38)
            {
              v37 = v21;
            }

            v41 = v19 * v37;
            v42 = v19 * v39;
            LOBYTE(v5) = *(v32 + v41);
            LOBYTE(v6) = *(v32 + v42);
            v6 = LODWORD(v6);
            LOBYTE(v7) = *(v33 + v41);
            v5 = LODWORD(v5);
            v7 = LODWORD(v7);
            LOBYTE(v8) = *(v33 + v42);
            *a3++ = (((((1.0 - v31) * (v36 - v36)) * v6) + (v5 * ((1.0 - v31) * (1.0 - (v36 - v36))))) + (v7 * (v31 * (1.0 - (v36 - v36))))) + (v8 * (v31 * (v36 - v36)));
            ++v35;
            --v34;
          }

          while (v34);
          result = (v24 + 1);
          v11 = v24++ == a2;
        }

        while (!v11);
      }
    }

    else
    {
      result = MEMORY[0x28223BE20]();
      v56 = v75 - v55;
      if ((v49 & 0x80000000) == 0)
      {
        v57 = v53 - floorf(v53);
        v58 = v54 - v49;
        v59 = v53 - v49;
        v60 = v59;
        v61 = v52 + v58;
        v62 = *result;
        v63 = *(result + 24);
        v64 = v51 & ~(v51 >> 31) | 1u;
        v65 = v58;
        v66 = v63 * v65 + v59 + *result + 1;
        v67 = v56;
        do
        {
          LOBYTE(v59) = *(v62 + v65 * v63 + v60);
          v59 = LODWORD(v59);
          result = v66;
          v68 = v51 & ~(v51 >> 31) | 1u;
          do
          {
            v69 = *result++;
            *v67++ = (v57 * v69) + ((1.0 - v57) * v59);
            v59 = v69;
            --v68;
          }

          while (v68);
          ++v65;
          v66 += v63;
        }

        while (v65 < v61);
        v70 = 0;
        v71 = v54 - floorf(v54);
        v72 = 4 * v51 + 4;
        do
        {
          ++v70;
          v73 = v56;
          v74 = v64;
          do
          {
            *v50++ = (v71 * *(v73 + v72)) + (*v73 * (1.0 - v71));
            ++v73;
            --v74;
          }

          while (v74);
          v56 = (v56 + v72);
        }

        while (v70 != v64);
      }
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
    v43 = -a2;
    v44 = *(result + 24);
    v45 = *result + v44 * (a5 - a2) + a4 - a2;
    do
    {
      v46 = v45;
      v47 = (2 * a2) | 1;
      do
      {
        v48 = *v46++;
        *a3++ = v48;
        --v47;
      }

      while (v47);
      ++v43;
      v45 += v44;
    }

    while (a2 + 1 != v43);
  }

  return result;
}

void sub_254B6D1E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_286700820;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v7 = 8;
  if (a2)
  {
    v7 = a2;
  }

  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = xmmword_254B8BD60;
  *(a1 + 168) = 4;
  sub_254B56804(a1 + 184);
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1061997773;
  *(a1 + 240) = 0;
  if (a4)
  {
    v8 = [[MetalRANSACDispatcher alloc] initWithMaxCorrespondences:a3];
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;

    if (!*(a1 + 16))
    {
      NSLog(&cfstr_ErrorCreatingR.isa);
    }
  }

  sub_254B5A190();
}

void sub_254B6D304(_Unwind_Exception *a1)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    *(v1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 80);
  if (v4)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254B6D358(uint64_t a1)
{
  *a1 = &unk_286700820;
  sub_254B6D3F0(a1);
  v2 = *(a1 + 200);
  if (v2)
  {
    sub_254B5A31C(v2);
    *(a1 + 200) = 0;
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  sub_254B56808((a1 + 184));
  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    *(a1 + 88) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_254B6D3F0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_254B5AB78(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_254B5AB78(v3);
    *(a1 + 136) = 0;
  }
}

BOOL sub_254B6D430(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  if (a4 >= 4)
  {
    sub_254B5697C(a1 + 184, 0);
    ++*(a1 + 8);
    *(a1 + 48) = a4;
    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
    (*(*a1 + 8))(a1);
    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
    __asm { FMOV            V0.2S, #1.0 }

    *(a1 + 172) = _D0;
    sub_254B59FC8(__p, (2 * *(a1 + 236)));
    if (*(a1 + 24) == 1)
    {
      v15 = sub_254B5A728(*(a1 + 32));
      *(a1 + 128) = v15;
      sub_254B5A7F8(v15, *(a1 + 56), *(a1 + 48));
      v16 = *(a1 + 236);
      if (v16)
      {
        v17 = *(a1 + 56);
        v18 = *(a1 + 240);
        v19 = __p[0] + 4;
        do
        {
          v20 = *v18++;
          *(v19 - 1) = *(v17 + 4 * (2 * v20));
          *v19 = *(v17 + 4 * ((2 * v20) | 1u));
          v19 += 2;
          --v16;
        }

        while (v16);
        v21 = sub_254B5A728(*(a1 + 32));
        *(a1 + 136) = v21;
        sub_254B5A7F8(v21, __p[0], *(a1 + 236));
      }
    }

    sub_254B6D5D0(a1);
    sub_254B6D6AC(a1, v22);
    for (i = 248; i != 284; i += 4)
    {
      *a5++ = *(a1 + i);
    }

    sub_254B6D3F0(a1);
    --*(a1 + 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return a4 > 3;
}

void sub_254B6D5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6D5D0(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 144);
  *(a1 + 148) = v2;
  sub_254B6DD98((a1 + 208), v2);
  result = MEMORY[0x28223BE20](v3);
  v6 = (v9 - ((v5 + 15) & 0x7FFFFFFF0));
  if (*(a1 + 148))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = sub_254B6D820(a1, a1 + 184, v6, *(a1 + 168), *(a1 + 208) + v7);
      ++v8;
      v7 += 36;
    }

    while (v8 < *(a1 + 148));
  }

  return result;
}

void sub_254B6D6AC(uint64_t a1, double a2)
{
  if (*(a1 + 16))
  {
    v3 = sub_254B6DDDC(a1, a2);
  }

  else
  {
    v3 = sub_254B6DEF4(a1);
  }

  v4 = *(a1 + 208) + 36 * v3;
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *(a1 + 248) = *v4;
  *(a1 + 264) = v6;
  *(a1 + 280) = v5;
  sub_254B6E858(v12, *(a1 + 48));
  v11 = 0;
  sub_254B47D10(v12, *(a1 + 48));
  sub_254B6E0C8(a1, (a1 + 248), &v11, v12[0]);
  v7 = v11;
  sub_254B47D10(v12, v11);
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    __p = 0;
    (*(*a1 + 16))(a1, v12, &__p);
    sub_254B61A34(*(a1 + 200), *(a1 + 56), *(a1 + 64), 0, __p, (v9 - __p) >> 2, 1, a1 + 248, *(a1 + 40), *(a1 + 44));
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_254B6D7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6D820(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5)
{
  if (!*(a1 + 164))
  {
LABEL_28:
    result = 0;
    *a5 = xmmword_254B8B900;
    *(a5 + 16) = xmmword_254B8B900;
    *(a5 + 32) = 1065353216;
    return result;
  }

  v10 = 0;
  v25 = a4;
  while (1)
  {
    if (*(a1 + 236) <= (4 * *(a1 + 168)) || v10 >= *(a1 + 160))
    {
      if (*(a1 + 24) == 1 && v10 < *(a1 + 156))
      {
        v11 = *(a1 + 128);
        goto LABEL_11;
      }

      v12 = *(a1 + 48);
      if (v12 >= a4)
      {
        sub_254B6E858(&__p, v12);
        if (*(a1 + 48))
        {
          v13 = 0;
          v14 = __p;
          do
          {
            v14[v13] = v13;
            ++v13;
          }

          while (v13 < *(a1 + 48));
        }

        if (a4)
        {
          v15 = v27;
          v16 = v25;
          v17 = a3;
          do
          {
            v18 = sub_254B568E0(a2, 0, ((v15 - __p) >> 2) - 1);
            v19 = v27;
            v20 = __p + 4 * v18;
            *v17 = *v20;
            v21 = v19 - (v20 + 1);
            if (v19 != (v20 + 1))
            {
              memmove(v20, v20 + 1, v19 - (v20 + 1));
            }

            v15 = v20 + v21;
            v27 = v20 + v21;
            ++v17;
            --v16;
          }

          while (v16);
        }

        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      if (v10 >= *(a1 + 152) && (*(a1 + 24) & 1) != 0)
      {
        v11 = *(a1 + 136);
LABEL_11:
        sub_254B5ABDC(v11, a2, a4, a3);
        goto LABEL_26;
      }

      if (a4)
      {
        v22 = v25;
        v23 = a3;
        do
        {
          *v23++ = *(*(a1 + 240) + 4 * sub_254B568E0(a2, 0, (*(a1 + 236) - 1)));
          --v22;
        }

        while (v22);
      }
    }

LABEL_26:
    if (sub_254B6DA48(a1, v10, a4, a3, a5))
    {
      return 1;
    }

    if (++v10 >= *(a1 + 164))
    {
      goto LABEL_28;
    }
  }
}

void sub_254B6DA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_254B6DA48(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  if (a3)
  {
    v8 = 0;
    v9 = 1;
    v10 = 1;
    while (2)
    {
      v11 = &a4[v9];
      v12 = a3 - v9;
      v13 = v8;
      while (1)
      {
        v8 = v13 + 1;
        if (v13 + 1 < a3)
        {
          break;
        }

LABEL_8:
        ++v9;
        ++v11;
        --v12;
        v13 = v8;
        if (v8 == a3)
        {
          if ((v10 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_13;
        }
      }

      v14 = a4[v13];
      v15 = v12;
      v16 = v11;
      while (1)
      {
        v17 = *v16++;
        if (v14 == v17)
        {
          break;
        }

        if (!--v15)
        {
          goto LABEL_8;
        }
      }

      v10 = 0;
      v18 = 0;
      ++v9;
      if (v8 != a3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v19 = *(a1 + 56);
    v20 = a4[1];
    v21 = (2 * *a4);
    v22 = *(v19 + 4 * v21);
    v23 = (2 * *a4) | 1u;
    v24 = *(v19 + 4 * v23);
    v25 = (2 * v20);
    v26 = *(v19 + 4 * v25);
    v27 = (2 * v20) | 1u;
    v28 = *(v19 + 4 * v27);
    v29 = a4[2];
    v30 = (2 * v29);
    v31 = *(v19 + 4 * v30);
    v32 = (2 * v29) | 1u;
    v33 = *(v19 + 4 * v32);
    v34 = (v22 * v28) - (v24 * v26);
    if (fabsf(v34 + (((v26 - v22) * v33) + ((v24 - v28) * v31))) < 0.00000011921)
    {
      return 0;
    }

    v35 = a4[3];
    v36 = (2 * v35);
    v37 = *(v19 + 4 * v36);
    v38 = (2 * v35) | 1u;
    v39 = *(v19 + 4 * v38);
    if (fabsf(v34 + (((v26 - v22) * v39) + ((v24 - v28) * v37))) < 0.00000011921)
    {
      return 0;
    }

    if (fabsf(((v31 * -v24) + (v22 * v33)) + (((v31 - v22) * v39) + ((v24 - v33) * v37))) < 0.00000011921)
    {
      return 0;
    }

    if (fabsf(((v26 * v33) - (v28 * v31)) + (((v31 - v26) * v39) + ((v28 - v33) * v37))) < 0.00000011921)
    {
      return 0;
    }

    v40 = *(a1 + 64);
    v41 = *(v40 + 4 * v21);
    v42 = *(v40 + 4 * v23);
    v43 = *(v40 + 4 * v25);
    v44 = *(v40 + 4 * v27);
    v45 = *(v40 + 4 * v30);
    v46 = *(v40 + 4 * v32);
    v47 = (v41 * v44) - (v42 * v43);
    if (fabsf(v47 + (((v43 - v41) * v46) + ((v42 - v44) * v45))) < 0.00000011921)
    {
      return 0;
    }

    v48 = *(v40 + 4 * v36);
    v49 = *(v40 + 4 * v38);
    if (fabsf(v47 + (((v43 - v41) * v49) + ((v42 - v44) * v48))) < 0.00000011921)
    {
      return 0;
    }

    if (fabsf(((v45 * -v42) + (v41 * v46)) + (((v45 - v41) * v49) + ((v42 - v46) * v48))) < 0.00000011921)
    {
      return 0;
    }

    if (fabsf(((v43 * v46) - (v44 * v45)) + (((v45 - v43) * v49) + ((v44 - v46) * v48))) < 0.00000011921)
    {
      return 0;
    }

    if (!sub_254B61A34(*(a1 + 200), v19, v40, 0, a4, a3, 0, a5, *(a1 + 40), *(a1 + 44)))
    {
      return 0;
    }

    v50 = 0;
    v51 = (a5 + 32);
    v52 = vld1q_dup_f32(v51);
    do
    {
      *(a5 + v50) = vdivq_f32(*(a5 + v50), v52);
      v50 += 16;
    }

    while (v50 != 32);
    *(a5 + 32) = 1065353216;
    if (vabds_f32(1.0, (*a5 * *(a5 + 16)) - (*(a5 + 4) * *(a5 + 12))) <= (1.0 - powf(0.98, (a2 + 1))))
    {
      v53 = 0;
      do
      {
        v18 = (*(a5 + v53) & 0x7FFFFFFFu) < 0x7F800000;
        if ((*(a5 + v53) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          break;
        }

        v54 = v53 == 32;
        v53 += 4;
      }

      while (!v54);
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

void sub_254B6DD98(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_254B6E8D0(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 36 * a2;
  }
}

uint64_t sub_254B6DDDC(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 232);
  [*(a1 + 16) setInlierLimit:a2];
  LODWORD(v3) = *(a1 + 40);
  LODWORD(v4) = *(a1 + 44);
  [*(a1 + 16) setFrameSize:{v3, v4}];
  sub_254B59FC8(&v11, 0x8E38E38E38E38E39 * ((*(a1 + 216) - *(a1 + 208)) >> 2));
  [*(a1 + 16) performRansacOnData:*(a1 + 48) firstPointSet:*(a1 + 56) secondPointSet:*(a1 + 64) pointWeights:*(a1 + 80) homographies:v11 numHomographies:? homScores:?];
  v5 = v12 - v11;
  if (v5 < 2)
  {
    v9 = 0;
  }

  else
  {
    v6 = *v11;
    v7 = 0.0;
    for (i = 1; i != v5; ++i)
    {
      if (v11[i] > v6)
      {
        v6 = v11[i];
        v7 = i;
      }
    }

    v9 = v7;
  }

  v12 = v11;
  operator delete(v11);
  return v9;
}

void sub_254B6DED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B6DEF4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 148);
  if (v2 < 0x64)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 / 0x64;
  }

  v4 = v2 / v3;
  v5 = MEMORY[0x28223BE20](a1);
  v7 = (block - ((v6 + 15) & 0x3FFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = block - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (block - v11);
  v13 = qos_class_self();
  v14 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], v13, 0);
  v15 = dispatch_queue_create("RANSAC score queue", v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254B6E280;
  block[3] = &unk_2797A9CA8;
  v24 = v4;
  v25 = v3;
  block[4] = a1;
  block[5] = v12;
  block[6] = v7;
  block[7] = v10;
  dispatch_apply(v3, v15, block);
  v16 = *v12;
  if (v3 >= 2)
  {
    v18 = *v7;
    v17 = v7 + 1;
    v19 = v18;
    v20 = v12 + 1;
    v21 = v3 - 1;
    do
    {
      if (*v17 > v19)
      {
        v16 = *v20;
        v19 = *v17;
      }

      ++v20;
      ++v17;
      --v21;
    }

    while (v21);
  }

  return v16;
}

uint64_t sub_254B6E0C8(uint64_t result, float *a2, unsigned int *a3, uint64_t a4)
{
  v8 = a2[7];
  v7 = a2[8];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = (v9 * v7) - (v8 * v10);
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = (v8 * v15) - (v13 * v7);
  v18 = (v13 * v10) - (v9 * v15);
  v19 = ((v17 * v16) + (*a2 * v12)) + (v11 * v18);
  v20 = fabsf(v19);
  v21 = 2.2204e-16;
  if (v20 >= 2.2204e-16)
  {
    v12 = v12 / v19;
    v17 = v17 / v19;
    v18 = v18 / v19;
    v21 = ((v11 * v10) - (v16 * v7)) / v19;
    v20 = ((v16 * v8) - (v11 * v9)) / v19;
    v4 = ((v14 * v7) - (v11 * v15)) / v19;
    v5 = ((v16 * v15) - (v14 * v10)) / v19;
    v6 = ((v11 * v13) - (v14 * v8)) / v19;
    v19 = ((v14 * v9) - (v16 * v13)) / v19;
  }

  v22 = *(result + 48);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = *(result + 232) * *(result + 232);
    v26 = *(result + 172) * (v25 * *(result + 172));
    v27 = *(result + 176) * (v25 * *(result + 176));
    v28 = *(result + 56);
    v29 = *(result + 64);
    v30 = 1;
    do
    {
      v31 = *(v28 + 4 * (v30 - 1));
      v32 = *(v28 + 4 * v30);
      v33 = *(v29 + 4 * (v30 - 1));
      v34 = *(v29 + 4 * v30);
      v35 = 1.0 / (v19 + ((v6 * v34) + (v20 * v33)));
      v36 = (v18 + ((v17 * v34) + (v12 * v33))) * v35;
      v37 = ((v31 - v36) * (v31 - v36)) + ((v32 - ((v5 + ((v4 * v34) + (v21 * v33))) * v35)) * (v32 - ((v5 + ((v4 * v34) + (v21 * v33))) * v35)));
      v38 = 1.0 / (v7 + ((v8 * v32) + (v11 * v31)));
      v39 = v34 - ((v10 + ((v9 * v32) + (v16 * v31))) * v38);
      v40 = v33 - ((v15 + ((v13 * v32) + (v14 * v31))) * v38);
      v41 = (v40 * v40) + (v39 * v39);
      if (v37 < v26 && v41 < v27)
      {
        *(a4 + 4 * v24++) = v23;
        v22 = *(result + 48);
      }

      ++v23;
      v30 += 2;
    }

    while (v23 < v22);
  }

  else
  {
    v24 = 0;
  }

  *a3 = v24;
  return result;
}

uint64_t sub_254B6E280(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v13 = v12 * a2;
  if (*(a1 + 68) - 1 == a2)
  {
    v14 = *(v11 + 148);
  }

  else
  {
    v14 = v12 + v13;
  }

  result = sub_254B6E2E8(v11, v13, v14 - 1, (*(a1 + 48) + 4 * a2), (*(a1 + 56) + 4 * a2), a3, a4, a5, a6, a7, a8, a9);
  *(*(a1 + 40) + 4 * a2) = result;
  return result;
}

uint64_t sub_254B6E2E8(uint64_t a1, int a2, int a3, float *a4, int *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (a2 <= a3)
  {
    v17 = a2;
    v15 = 0;
    LODWORD(v14) = 0;
    v19 = a3 + 1;
    v20 = 36 * a2;
    v16 = -3.4028e38;
    do
    {
      v24 = 0;
      v21 = *(a1 + 208);
      sub_254B6E40C(a1, v21 + v20, &v24, a6, a7, a8, a9, a10, a11, a12);
      *&a6 = v22 * (**a1)(a1, v21 + v20);
      if (*&a6 <= v16)
      {
        v14 = v14;
      }

      else
      {
        v14 = v17;
      }

      if (*&a6 > v16)
      {
        v15 = v24;
        v16 = *&a6;
      }

      v20 += 36;
      ++v17;
    }

    while (v19 != v17);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = -3.4028e38;
  }

  *a4 = v16;
  *a5 = v15;
  return v14;
}

uint64_t sub_254B6E40C(uint64_t result, uint64_t a2, int *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = *(a2 + 28);
  LODWORD(a5) = *(a2 + 32);
  v21 = *(a2 + 16);
  LODWORD(a7) = *(a2 + 20);
  LODWORD(a9) = *(a2 + 24);
  *&a10 = (v21 * *&a5) - (v20 * *&a7);
  v10.i32[0] = *a2;
  v22 = *(a2 + 4);
  v11.i32[0] = *(a2 + 8);
  v12.i32[0] = *(a2 + 12);
  v23 = (v20 * *v11.i32) - (v22 * *&a5);
  *v13.i32 = (v22 * *&a7) - (v21 * *v11.i32);
  *v19.i32 = ((v23 * *v12.i32) + (*a2 * *&a10)) + (*&a9 * *v13.i32);
  *v14.i32 = fabsf(*v19.i32);
  v15.i32[0] = 629145600;
  if (*v14.i32 >= 2.2204e-16)
  {
    *&a10 = *&a10 / *v19.i32;
    v23 = v23 / *v19.i32;
    *v13.i32 = *v13.i32 / *v19.i32;
    *v15.i32 = ((*&a9 * *&a7) - (*v12.i32 * *&a5)) / *v19.i32;
    *v14.i32 = ((*v12.i32 * v20) - (*&a9 * v21)) / *v19.i32;
    v16 = ((*v10.i32 * *&a5) - (*&a9 * *v11.i32)) / *v19.i32;
    *v17.i32 = ((*v12.i32 * *v11.i32) - (*v10.i32 * *&a7)) / *v19.i32;
    v18 = ((*&a9 * v22) - (*v10.i32 * v20)) / *v19.i32;
    *v19.i32 = ((*v10.i32 * v21) - (*v12.i32 * v22)) / *v19.i32;
  }

  v24 = *(result + 232) * *(result + 232);
  v25 = *(result + 56);
  v26 = 0.0;
  if ((v25 & 0xF) != 0 || (v27 = *(result + 64), (v27 & 0xF) != 0))
  {
    LODWORD(v28) = 0;
    v29 = 0;
  }

  else
  {
    v46 = *(result + 48);
    if (v46 >= 4)
    {
      v49 = *(result + 80);
      v50 = v46 >> 2;
      v81 = vdupq_lane_s32(*&a9, 0);
      v80 = vdupq_lane_s32(*&a5, 0);
      v79 = vdupq_lane_s32(v10, 0);
      v78 = vdupq_lane_s32(v11, 0);
      v77 = vdupq_lane_s32(v12, 0);
      v76 = vdupq_lane_s32(*&a7, 0);
      v75 = vdupq_lane_s32(v14, 0);
      v74 = vdupq_lane_s32(v19, 0);
      v51 = v25 + 1;
      v52 = v27 + 1;
      v73 = vdupq_lane_s32(*&a10, 0);
      v72 = vdupq_lane_s32(v13, 0);
      v48 = 0uLL;
      v71 = vdupq_lane_s32(v15, 0);
      v47 = 0uLL;
      v53 = vdupq_lane_s32(v17, 0);
      do
      {
        v54 = v51[-1];
        v55 = vuzp1q_s32(v54, *v51);
        v56 = vuzp2q_s32(v54, *v51);
        v57 = v52[-1];
        v58 = vuzp1q_s32(v57, *v52);
        v59 = vuzp2q_s32(v57, *v52);
        v60 = vaddq_f32(v80, vmlaq_f32(vmulq_n_f32(v56, v20), v55, v81));
        v61 = vmlaq_f32(vmulq_n_f32(v59, v18), v58, v75);
        v62 = vmlaq_f32(vmulq_n_f32(v59, v23), v58, v73);
        v63 = vmlsq_f32(vaddq_f32(v78, vmlaq_f32(vmulq_n_f32(v56, v22), v55, v79)), v60, v58);
        v64 = vmlaq_f32(vmulq_n_f32(v59, v16), v58, v71);
        v65 = vmlsq_f32(vaddq_f32(v76, vmlaq_f32(vmulq_n_f32(v56, v21), v55, v77)), v60, v59);
        v66 = vaddq_f32(v74, v61);
        v67 = vmlsq_f32(vaddq_f32(v72, v62), v66, v55);
        v68 = vmlsq_f32(vaddq_f32(v53, v64), v66, v56);
        v69 = *v49++;
        v70 = vandq_s8(vcgeq_f32(vmulq_f32(v66, vmulq_n_f32(v66, v24)), vmlaq_f32(vmulq_f32(v68, v68), v67, v67)), vcgeq_f32(vmulq_f32(v60, vmulq_n_f32(v60, v24)), vmlaq_f32(vmulq_f32(v65, v65), v63, v63)));
        v47 = vaddq_f32(v47, vandq_s8(v69, v70));
        v48 = vsubq_s32(v48, v70);
        v51 += 2;
        v52 += 2;
        --v50;
      }

      while (v50);
      LODWORD(v28) = v46 & 0xFFFFFFFC;
    }

    else
    {
      LODWORD(v28) = 0;
      v47 = 0uLL;
      v48 = 0uLL;
    }

    v26 = v47.f32[3] + (v47.f32[2] + vaddv_f32(*v47.f32));
    v29 = vaddvq_s32(v48);
  }

  v30 = *(result + 48);
  if (v28 < v30)
  {
    v31 = *(result + 64);
    v32 = 2 * v28;
    v28 = v28;
    do
    {
      v33 = *&v25->i32[v32];
      v34 = *&v25->i32[v32 + 1];
      v35 = *&a5 + ((v20 * v34) + (*&a9 * v33));
      v36 = *(v31 + 4 * v32);
      v37 = (*v11.i32 + ((v22 * v34) + (*v10.i32 * v33))) - (v36 * v35);
      v38 = *(v31 + 4 * (v32 + 1));
      v39 = (*&a7 + ((v21 * v34) + (*v12.i32 * v33))) - (v38 * v35);
      v45 = ((v39 * v39) + (v37 * v37)) <= (v35 * (v24 * v35));
      v40 = *v19.i32 + ((v18 * v38) + (*v14.i32 * v36));
      v41 = (*v13.i32 + ((v23 * v38) + (*&a10 * v36))) - (v33 * v40);
      v42 = (*v17.i32 + ((v16 * v38) + (*v15.i32 * v36))) - (v34 * v40);
      v43 = v40 * (v24 * v40);
      v44 = (v42 * v42) + (v41 * v41);
      v45 = v45 && v44 <= v43;
      if (v45)
      {
        ++v29;
        v26 = v26 + *(*(result + 80) + 4 * v28);
      }

      ++v28;
      v32 += 2;
    }

    while (v30 != v28);
  }

  if (a3)
  {
    *a3 = v29;
  }

  return result;
}

void *sub_254B6E784(int a1, char **a2, char **a3)
{
  if (a3 != a2)
  {
    return sub_254B6EAD0(a3, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

void sub_254B6E7AC(uint64_t a1, int16x4_t a2)
{
  if (*(a1 + 72))
  {
    sub_254B47D10((a1 + 80), *(a1 + 48));
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 80);
      do
      {
        v6 = *v4++;
        *v5++ = v6;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    *(a1 + 88) = *(a1 + 80);
    v7 = *(a1 + 48);
    v8 = 1065353216;
    sub_254B6E828((a1 + 80), v7, &v8, a2);
  }
}

void sub_254B6E828(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_254B6EBFC(a1, a2 - v4, a3, a4);
  }
}

void *sub_254B6E858(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B33800(result, a2);
  }

  return result;
}

void sub_254B6E8B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B6E8D0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      sub_254B32E20();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_254B6EA74(a1, v9);
    }

    v11 = 36 * v6;
    v12 = 36 * ((36 * a2 - 36) / 0x24) + 36;
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

void sub_254B6EA74(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  sub_254B32F20();
}

void *sub_254B6EAD0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_254B33800(v6, v10);
    }

    sub_254B32E20();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_254B6EBFC(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_254B8AAC0)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_254B8B0E0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_254B32E20();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_254B3383C(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_254B8AAC0)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_254B8B0E0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void sub_254B6EE44(void **a1, size_t a2, size_t a3, void *a4)
{
  if (a4 == 1)
  {

    sub_254B6EEEC(a1, a2, a3);
  }

  else
  {
    v8 = (a4 * a2 + 15) & 0xFFFFFFFFFFFFFFF0;
    *a1 = malloc_type_calloc(1uLL, v8 * a3, 0x100004077774924uLL);
    a1[1] = a2;
    a1[2] = a3;
    a1[3] = v8;
    a1[4] = a4;
    a1[5] = 0;
  }
}

double sub_254B6EEEC(uint64_t a1, size_t a2, size_t a3)
{
  if ((a2 & 3) != 0)
  {
    v6 = 875704422;
  }

  else
  {
    v6 = 1278226488;
  }

  pixelBufferOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 16;
  v11 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D60], v11);
  CFRelease(v11);
  v12 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E08], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E20], v12);
  valuePtr = 4096;
  v13 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E38], v13);
  CFRelease(v13);
  values = 0;
  v14 = CFDictionaryCreate(v7, &values, &values, 0, v8, v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v14);
  CFRelease(v14);
  v15 = CVPixelBufferCreate(v7, a2, a3, v6, Mutable, &pixelBufferOut);
  CFRelease(Mutable);
  if (!v15)
  {
    *(a1 + 24) = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
    *(a1 + 48) = pixelBufferOut;
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *&result = 1;
  *(a1 + 32) = xmmword_254B8BD90;
  return result;
}

void sub_254B6F0EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CVPixelBufferRelease(v2);
  }

  else
  {
    free(*a1);
  }

  *a1 = 0;
}

void sub_254B6F128(void *a1)
{
  sub_254B6F0EC(a1);

  free(a1);
}

void **sub_254B6F160(size_t a1, size_t a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x103004000EA119AuLL);
  v7 = v6;
  if (v6)
  {
    sub_254B6EE44(v6, a1, a2, a3);
  }

  return v7;
}

void *sub_254B6F1CC(__CVBuffer *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x103004000EA119AuLL);
  if (v2)
  {
    CleanRect = CVImageBufferGetCleanRect(a1);
    x = CleanRect.origin.x;
    y = CleanRect.origin.y;
    height = CleanRect.size.height;
    width = CleanRect.size.width;
    v7 = CleanRect.size.height;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    v2[1] = width;
    v2[2] = v7;
    v2[3] = BytesPerRowOfPlane;
    v2[4] = 1;
    v2[5] = (x + (CVPixelBufferGetHeightOfPlane(a1, 0) - (y + height)) * BytesPerRowOfPlane);
    v2[6] = a1;
    CVPixelBufferRetain(a1);
  }

  return v2;
}

void *sub_254B6F900(uint64_t a1)
{
  result = sub_254B84898(a1);
  *result = &unk_2867006A8;
  return result;
}

void sub_254B6F938()
{
  j_nullsub_2();

  JUMPOUT(0x259C24E00);
}

uint64_t sub_254B6F970(uint64_t result, uint64_t *a2, int a3, uint64_t a4, const void **a5)
{
  v5 = a2[2] - 4;
  if (v5 >= 5)
  {
    v10 = a2[3];
    v11 = -3 * v10;
    v12 = 2 - 2 * v10;
    v13 = -3 * v10 + 1;
    v14 = 3 - v10;
    v15 = v10 + 3;
    v16 = 2 * v10 + 2;
    v17 = 3 * v10;
    v18 = 3 * v10 + 1;
    v19 = 3 * v10 - 1;
    v20 = 2 * v10 - 2;
    v21 = v10 - 3;
    v22 = -3 - v10;
    v23 = (2 * v10) ^ 0xFFFFFFFFFFFFFFFELL;
    v24 = -3 * v10 - 1;
    v25 = *a2;
    v26 = a2[1] - 4;
    v27 = 4;
    v915 = a4;
    v916 = a5;
    v931 = result;
    v929 = -3 * v10;
    v930 = v5;
    v927 = v13;
    v928 = v12;
    v925 = v10 + 3;
    v926 = 3 - v10;
    v923 = 3 * v10;
    v924 = v16;
    v921 = v19;
    v922 = v18;
    v919 = v10 - 3;
    v920 = v20;
    v917 = v23;
    v918 = -3 - v10;
    v932 = v24;
    while (v26 < 5)
    {
LABEL_2376:
      if (++v27 == v5)
      {
        return result;
      }
    }

    v28 = v27;
    v29 = 4;
    while (1)
    {
      v30 = (v25 + v29 + a2[3] * v27);
      v31 = *v30;
      v32 = v31 - a3;
      v33 = v31 + a3;
      v34 = v30[3];
      if (v32 <= v34)
      {
        if (v33 >= v34)
        {
          v54 = *(v30 - 3);
          if (v32 > v54)
          {
            if (v32 <= v30[v22] || v32 <= v30[v21])
            {
              goto LABEL_1843;
            }

            v55 = v30[v19];
            if (v32 <= v55)
            {
              v192 = v30[v12];
              if (v33 >= v55)
              {
                if (v32 <= v192 || v32 <= v30[v11] || v32 <= v30[v23] || v32 <= v30[v13])
                {
                  goto LABEL_1843;
                }

                if (v32 <= v30[v14])
                {
                  v42 = v30[v20];
                  goto LABEL_1404;
                }

LABEL_1814:
                v91 = v30[v24];
                goto LABEL_1815;
              }

              if (v32 <= v192 || v32 <= v30[v11])
              {
                goto LABEL_1843;
              }

              v193 = v30[v14];
              if (v32 <= v193)
              {
                v569 = v30[v20];
                if (v33 >= v193)
                {
                  if (v32 <= v569 || v32 <= v30[v23])
                  {
                    goto LABEL_1843;
                  }
                }

                else if (v32 <= v569 || v32 <= v30[v23])
                {
                  goto LABEL_1843;
                }
              }

              else if (v32 <= v30[v23])
              {
                goto LABEL_1843;
              }
            }

            else
            {
              v56 = v30[v23];
              if (v32 <= v56)
              {
                v273 = v30[v15];
                if (v33 >= v56)
                {
                  if (v32 <= v273 || v32 <= v30[v16] || v32 <= v30[v20])
                  {
                    goto LABEL_1843;
                  }
                }

                else if (v32 <= v273 || v32 <= v30[v16] || v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                v279 = v30[v18];
                goto LABEL_1613;
              }

              v57 = v30[v11];
              if (v32 <= v57)
              {
                v350 = v30[v18];
                if (v33 < v57)
                {
                  if (v32 <= v350)
                  {
                    goto LABEL_1843;
                  }

                  v351 = v30[v16];
                  if (v32 <= v351)
                  {
                    v650 = v30[v24];
                    if (v33 >= v351)
                    {
                      if (v32 <= v650)
                      {
                        goto LABEL_1843;
                      }
                    }

                    else if (v32 <= v650)
                    {
                      goto LABEL_1843;
                    }
                  }

                  v279 = v30[v20];
                  goto LABEL_1613;
                }

                if (v32 <= v350 || v32 <= v30[v20] || v32 <= v30[v16] && v32 <= v30[v24])
                {
                  goto LABEL_1843;
                }

LABEL_1614:
                v91 = v30[v17];
                goto LABEL_1815;
              }

              v58 = v30[v20];
              if (v32 > v58)
              {
                if (v32 > v30[v17])
                {
                  if (v32 > v30[v24])
                  {
                    goto LABEL_1816;
                  }

                  if (v32 <= v30[v16])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1443;
                }

                v42 = v30[v13];
LABEL_1404:
                if (v32 <= v42)
                {
                  goto LABEL_1843;
                }

                goto LABEL_1814;
              }

              v476 = v30[v14];
              if (v33 >= v58)
              {
                if (v32 <= v476 || v32 <= v30[v12])
                {
                  goto LABEL_1843;
                }
              }

              else if (v32 <= v476 || v32 <= v30[v12])
              {
                goto LABEL_1843;
              }
            }

            if (v32 <= v30[v13])
            {
              goto LABEL_1843;
            }

            goto LABEL_1814;
          }

          if (v33 >= v54)
          {
            goto LABEL_1843;
          }

          v69 = v30[v22];
          v70 = v32 > v69 || v33 >= v69;
          if (v70)
          {
            goto LABEL_1843;
          }

          v71 = v30[v21];
          if (v32 > v71 || v33 >= v71)
          {
            goto LABEL_1843;
          }

          v73 = v30[v19];
          if (v32 > v73)
          {
            v74 = v30[v12];
            if (v32 > v74 || v33 >= v74)
            {
              goto LABEL_1843;
            }

            v76 = v30[v24];
            if (v32 > v76 || v33 >= v76)
            {
              goto LABEL_1843;
            }

            v78 = v30[v13];
            if (v32 > v78 || v33 >= v78)
            {
              goto LABEL_1843;
            }

            v80 = v30[v14];
            if (v32 <= v80)
            {
              if (v33 >= v80)
              {
                v744 = v30[v20];
                if (v32 > v744 || v33 >= v744)
                {
                  goto LABEL_1843;
                }

                v746 = v30[v23];
                if (v32 > v746 || v33 >= v746)
                {
                  goto LABEL_1843;
                }
              }

              else
              {
                v642 = v30[v23];
                if (v32 > v642 || v33 >= v642)
                {
                  goto LABEL_1843;
                }
              }
            }

            else
            {
              v81 = v30[v20];
              if (v32 > v81 || v33 >= v81)
              {
                goto LABEL_1843;
              }

              v83 = v30[v23];
              if (v32 > v83 || v33 >= v83)
              {
                goto LABEL_1843;
              }
            }

            v221 = v30[v11];
            goto LABEL_2153;
          }

          if (v33 >= v73)
          {
            v420 = v30[v12];
            if (v32 > v420 || v33 >= v420)
            {
              goto LABEL_1843;
            }

            v422 = v30[v11];
            if (v32 > v422 || v33 >= v422)
            {
              goto LABEL_1843;
            }

            v424 = v30[v23];
            if (v32 > v424 || v33 >= v424)
            {
              goto LABEL_1843;
            }

            v426 = v30[v13];
            if (v32 > v426 || v33 >= v426)
            {
              goto LABEL_1843;
            }

            v428 = v30[v24];
            if (v32 > v428 || v33 >= v428)
            {
              goto LABEL_1843;
            }

            v430 = v30[v14];
            if (v32 <= v430)
            {
              if (v33 < v430)
              {
                goto LABEL_1816;
              }

              v221 = v30[v20];
              goto LABEL_2231;
            }

            v221 = v30[v20];
LABEL_2153:
            if (v32 > v221)
            {
              goto LABEL_1843;
            }

LABEL_2154:
            if (v33 < v221)
            {
              goto LABEL_1816;
            }

            goto LABEL_1843;
          }

          v280 = v30[v23];
          if (v32 > v280)
          {
            v281 = v30[v15];
            if (v32 > v281 || v33 >= v281)
            {
              goto LABEL_1843;
            }

            v283 = v30[v16];
            if (v32 > v283 || v33 >= v283)
            {
              goto LABEL_1843;
            }

            v285 = v30[v20];
            if (v32 > v285 || v33 >= v285)
            {
              goto LABEL_1843;
            }

            v287 = v30[v18];
            if (v32 > v287 || v33 >= v287)
            {
              goto LABEL_1843;
            }

LABEL_639:
            v221 = v30[v17];
            goto LABEL_2153;
          }

          if (v33 >= v280)
          {
            v618 = v30[v15];
            if (v32 > v618 || v33 >= v618)
            {
              goto LABEL_1843;
            }

            v620 = v30[v16];
            if (v32 > v620 || v33 >= v620)
            {
              goto LABEL_1843;
            }

            v622 = v30[v20];
            if (v32 > v622 || v33 >= v622)
            {
              goto LABEL_1843;
            }

            v624 = v30[v18];
            if (v32 > v624 || v33 >= v624)
            {
              goto LABEL_1843;
            }

            goto LABEL_2039;
          }

          v516 = v30[v11];
          if (v32 > v516)
          {
            v517 = v30[v18];
            if (v32 > v517 || v33 >= v517)
            {
              goto LABEL_1843;
            }

            v519 = v30[v16];
            if (v32 <= v519)
            {
              if (v33 >= v519)
              {
                v824 = v30[v24];
                if (v32 > v824)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v824)
                {
                  goto LABEL_1843;
                }

                v825 = v30[v20];
                if (v32 > v825 || v33 >= v825)
                {
                  goto LABEL_1843;
                }
              }

              else
              {
                v786 = v30[v20];
                if (v32 > v786 || v33 >= v786)
                {
                  goto LABEL_1843;
                }
              }
            }

            else
            {
              v520 = v30[v24];
              if (v32 > v520 || v33 >= v520)
              {
                goto LABEL_1843;
              }

              v522 = v30[v20];
              if (v32 > v522 || v33 >= v522)
              {
                goto LABEL_1843;
              }
            }

            goto LABEL_639;
          }

          if (v33 >= v516)
          {
            v766 = v30[v18];
            if (v32 > v766 || v33 >= v766)
            {
              goto LABEL_1843;
            }

            v768 = v30[v20];
            if (v32 > v768 || v33 >= v768)
            {
              goto LABEL_1843;
            }

            v770 = v30[v17];
            if (v32 > v770 || v33 >= v770)
            {
              goto LABEL_1843;
            }

            v771 = v30[v16];
            if (v32 <= v771)
            {
              if (v33 < v771)
              {
                goto LABEL_1816;
              }

              goto LABEL_2230;
            }

LABEL_2005:
            v221 = v30[v24];
            goto LABEL_2153;
          }

          v668 = v30[v20];
          if (v32 > v668)
          {
            v669 = v30[v14];
            if (v32 > v669 || v33 >= v669)
            {
              goto LABEL_1843;
            }

            v671 = v30[v12];
            if (v32 > v671)
            {
              goto LABEL_1843;
            }

            if (v33 >= v671)
            {
              goto LABEL_1843;
            }

            v672 = v30[v13];
            if (v32 > v672 || v33 >= v672)
            {
              goto LABEL_1843;
            }

            goto LABEL_2005;
          }

          if (v33 >= v668)
          {
            v828 = v30[v14];
            if (v32 > v828)
            {
              goto LABEL_1843;
            }

            if (v33 >= v828)
            {
              goto LABEL_1843;
            }

            v829 = v30[v12];
            if (v32 > v829)
            {
              goto LABEL_1843;
            }

            if (v33 >= v829)
            {
              goto LABEL_1843;
            }

            v830 = v30[v13];
            if (v32 > v830 || v33 >= v830)
            {
              goto LABEL_1843;
            }

            goto LABEL_2230;
          }

          v792 = v30[v17];
          if (v32 > v792)
          {
            v793 = v30[v13];
            if (v32 > v793 || v33 >= v793)
            {
              goto LABEL_1843;
            }

            goto LABEL_2005;
          }

          if (v33 >= v792)
          {
            v874 = v30[v13];
            if (v32 > v874 || v33 >= v874)
            {
              goto LABEL_1843;
            }

LABEL_2230:
            v221 = v30[v24];
LABEL_2231:
            if (v32 > v221)
            {
              goto LABEL_1843;
            }

            goto LABEL_2154;
          }

          v851 = v30[v24];
          if (v32 > v851)
          {
            v852 = v30[v16];
            if (v32 > v852 || v33 >= v852)
            {
              goto LABEL_1843;
            }

            v221 = v30[v18];
            goto LABEL_2153;
          }

          if (v33 < v851)
          {
            goto LABEL_1816;
          }

          v885 = v30[v16];
          if (v32 <= v885 && v33 < v885)
          {
            v221 = v30[v18];
            goto LABEL_2231;
          }
        }

        else
        {
          v43 = v30[v11];
          if (v32 > v43)
          {
            v44 = v30[v20];
            if (v32 <= v44)
            {
              if (v33 >= v44)
              {
                v156 = v30[v13];
                if (v32 > v156)
                {
                  if (v32 <= v30[v14] || v32 <= v30[v21] || v32 <= *(v30 - 3) || v32 <= v30[v12])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_301;
                }

                if (v33 >= v156)
                {
                  goto LABEL_1843;
                }

                v249 = v30[v19];
                if (v32 > v249 || v33 >= v249)
                {
                  goto LABEL_1843;
                }

                v251 = v30[v16];
                if (v32 > v251 || v33 >= v251)
                {
                  goto LABEL_1843;
                }

                v253 = v30[v12];
                if (v32 > v253 || v33 >= v253)
                {
                  goto LABEL_1843;
                }

                v255 = v30[v18];
                if (v32 > v255 || v33 >= v255)
                {
                  goto LABEL_1843;
                }

                v257 = v30[v14];
                if (v32 > v257 || v33 >= v257)
                {
                  goto LABEL_1843;
                }

                v107 = v30[v15];
LABEL_552:
                if (v32 > v107 || v33 >= v107)
                {
                  goto LABEL_1843;
                }

                goto LABEL_1916;
              }

              v85 = v30[v18];
              if (v32 > v85)
              {
                if (v32 <= v30[v14] || v32 <= v30[v21] || v32 <= *(v30 - 3) || v32 <= v30[v23])
                {
                  goto LABEL_1843;
                }

                v86 = v30[v12];
                goto LABEL_772;
              }

              if (v33 >= v85)
              {
                if (v32 <= v30[v21] || v32 <= v30[v14] || v32 <= *(v30 - 3))
                {
                  goto LABEL_1843;
                }

                v331 = v30[v12];
LABEL_770:
                if (v32 <= v331)
                {
                  goto LABEL_1843;
                }

                v86 = v30[v23];
LABEL_772:
                if (v32 <= v86)
                {
                  goto LABEL_1843;
                }

                v332 = v30[v22];
LABEL_1004:
                if (v32 <= v332)
                {
                  goto LABEL_1843;
                }

                v141 = v30[v24];
                goto LABEL_1146;
              }

              v199 = v30[v19];
              if (v32 > v199)
              {
                if (v32 <= v30[v14] || v32 <= v30[v21] || v32 <= v30[v12] || v32 <= *(v30 - 3) || v32 <= v30[v23])
                {
                  goto LABEL_1843;
                }

                v157 = v30[v13];
                goto LABEL_302;
              }

              if (v33 >= v199)
              {
                if (v32 <= v30[v14] || v32 <= v30[v21] || v32 <= *(v30 - 3) || v32 <= v30[v12] || v32 <= v30[v23])
                {
                  goto LABEL_1843;
                }

                v547 = v30[v22];
                goto LABEL_1811;
              }

              v393 = *(v30 - 3);
              if (v32 <= v393)
              {
                if (v33 >= v393)
                {
                  v693 = v30[v14];
                  if (v32 > v693 || v33 >= v693)
                  {
                    goto LABEL_1843;
                  }

                  v695 = v30[v15];
                  if (v32 > v695 || v33 >= v695)
                  {
                    goto LABEL_1843;
                  }

                  v697 = v30[v16];
                  if (v32 > v697 || v33 >= v697)
                  {
                    goto LABEL_1843;
                  }

                  v699 = v30[v21];
                  if (v32 > v699 || v33 >= v699)
                  {
                    v609 = v30[v12];
                    goto LABEL_1914;
                  }

LABEL_1916:
                  v221 = v30[v17];
                  goto LABEL_2153;
                }

                v589 = v30[v16];
                if (v32 <= v589)
                {
                  if (v33 >= v589)
                  {
                    v807 = v30[v24];
                    if (v32 > v807 || v33 >= v807)
                    {
                      goto LABEL_1843;
                    }

                    v809 = v30[v23];
                    if (v32 > v809)
                    {
                      goto LABEL_1843;
                    }

                    goto LABEL_2188;
                  }

                  v741 = v30[v15];
                  if (v32 <= v741)
                  {
                    if (v33 >= v741)
                    {
                      v809 = v30[v23];
                      if (v32 > v809)
                      {
                        goto LABEL_1843;
                      }

LABEL_2188:
                      if (v33 >= v809)
                      {
                        goto LABEL_1843;
                      }

                      v861 = v30[v22];
                      if (v32 > v861 || v33 >= v861)
                      {
                        goto LABEL_1843;
                      }

LABEL_1531:
                      v609 = v30[v21];
LABEL_1914:
                      if (v32 > v609 || v33 >= v609)
                      {
                        goto LABEL_1843;
                      }

                      goto LABEL_1916;
                    }

                    v820 = v30[v17];
                    if (v32 > v820 || v33 >= v820)
                    {
                      goto LABEL_1843;
                    }

                    v821 = v30[v21];
                    if (v32 <= v821)
                    {
                      if (v33 < v821)
                      {
                        goto LABEL_1816;
                      }

                      v855 = v30[v12];
LABEL_2170:
                      if (v32 > v855 || v33 >= v855)
                      {
                        goto LABEL_1843;
                      }

LABEL_1139:
                      v221 = v30[v14];
                      goto LABEL_2153;
                    }

                    v822 = v30[v12];
                    if (v32 > v822 || v33 >= v822)
                    {
                      goto LABEL_1843;
                    }

                    v406 = v30[v14];
                    goto LABEL_2067;
                  }

                  v742 = v30[v23];
                  if (v32 > v742)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v742)
                  {
                    goto LABEL_1843;
                  }

                  v743 = v30[v21];
                  if (v32 > v743 || v33 >= v743)
                  {
                    goto LABEL_1843;
                  }

                  v595 = v30[v22];
                }

                else
                {
                  v590 = v30[v24];
                  if (v32 > v590 || v33 >= v590)
                  {
                    goto LABEL_1843;
                  }

                  v592 = v30[v23];
                  if (v32 > v592 || v33 >= v592)
                  {
                    goto LABEL_1843;
                  }

                  v594 = v30[v22];
                  if (v32 > v594 || v33 >= v594)
                  {
                    goto LABEL_1843;
                  }

                  v595 = v30[v21];
                }
              }

              else
              {
                v394 = v30[v12];
                if (v32 <= v394)
                {
                  if (v33 >= v394)
                  {
                    v755 = v30[v21];
                    if (v32 > v755 || v33 >= v755)
                    {
                      goto LABEL_1843;
                    }

                    v757 = v30[v14];
                    if (v32 > v757 || v33 >= v757)
                    {
                      goto LABEL_1843;
                    }

                    v759 = v30[v16];
                    if (v32 > v759 || v33 >= v759)
                    {
                      goto LABEL_1843;
                    }

                    v609 = v30[v15];
                    goto LABEL_1914;
                  }

                  v655 = v30[v16];
                  if (v32 > v655 || v33 >= v655)
                  {
                    goto LABEL_1843;
                  }

                  v657 = v30[v14];
                  if (v32 > v657 || v33 >= v657)
                  {
                    goto LABEL_1843;
                  }
                }

                else
                {
                  v395 = v30[v21];
                  if (v32 > v395)
                  {
                    v331 = v30[v14];
                    goto LABEL_770;
                  }

                  if (v33 >= v395)
                  {
                    goto LABEL_1843;
                  }

                  v709 = v30[v14];
                  if (v32 > v709 || v33 >= v709)
                  {
                    goto LABEL_1843;
                  }

                  v711 = v30[v16];
                  if (v32 > v711 || v33 >= v711)
                  {
                    goto LABEL_1843;
                  }
                }

                v595 = v30[v15];
              }

              if (v32 > v595 || v33 >= v595)
              {
                goto LABEL_1843;
              }
            }

            else
            {
              v45 = v30[v22];
              if (v32 > v45)
              {
                v46 = v30[v17];
                if (v32 > v46)
                {
                  if (v32 <= *(v30 - 3))
                  {
                    goto LABEL_1843;
                  }

                  v47 = v30[v23];
                  if (v32 > v47)
                  {
                    if (v32 <= v30[v21])
                    {
                      goto LABEL_1843;
                    }

                    if (v32 <= v30[v24])
                    {
                      if (v32 <= v30[v16])
                      {
                        goto LABEL_1843;
                      }

                      goto LABEL_25;
                    }

LABEL_293:
                    if (v32 > v30[v19])
                    {
                      goto LABEL_1816;
                    }

                    if (v32 <= v30[v12])
                    {
                      goto LABEL_1843;
                    }

                    goto LABEL_1147;
                  }

                  v348 = v30[v15];
                  if (v33 < v47)
                  {
                    if (v32 <= v348 || v32 <= v30[v16])
                    {
                      goto LABEL_1843;
                    }

                    v176 = v30[v19];
                    goto LABEL_820;
                  }

                  if (v32 <= v348)
                  {
                    goto LABEL_1843;
                  }

                  v65 = v30[v16];
LABEL_1307:
                  if (v32 <= v65 || v32 <= v30[v18])
                  {
                    goto LABEL_1843;
                  }

                  v48 = v30[v21];
LABEL_1310:
                  if (v32 <= v48)
                  {
                    goto LABEL_1843;
                  }

LABEL_1311:
                  v91 = v30[v19];
                  goto LABEL_1815;
                }

                if (v33 >= v46)
                {
                  if (v32 <= v30[v13] || v32 <= *(v30 - 3) || v32 <= v30[v23] || v32 <= v30[v19] && v32 <= v30[v12])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_716;
                }

                v177 = v30[v12];
                if (v32 > v177)
                {
                  if (v32 <= v30[v21] || v32 <= v30[v23])
                  {
                    goto LABEL_1843;
                  }

                  v178 = v30[v13];
                  goto LABEL_395;
                }

                v371 = v30[v19];
                if (v33 >= v177)
                {
                  if (v32 <= v371)
                  {
                    goto LABEL_1843;
                  }

LABEL_1341:
                  if (v32 <= v30[v13] || v32 <= v30[v23])
                  {
                    goto LABEL_1843;
                  }

                  v328 = v30[v21];
                  goto LABEL_1344;
                }

                if (v32 > v371)
                {
                  goto LABEL_1341;
                }

                if (v33 >= v371)
                {
                  goto LABEL_1843;
                }

                v372 = v30[v13];
                if (v32 > v372 || v33 >= v372)
                {
                  goto LABEL_1843;
                }

                v374 = v30[v16];
                if (v32 > v374 || v33 >= v374)
                {
                  goto LABEL_1843;
                }

                v376 = v30[v15];
                if (v32 > v376 || v33 >= v376)
                {
                  goto LABEL_1843;
                }

                v378 = v30[v14];
                goto LABEL_2064;
              }

              v112 = v30[v13];
              if (v33 >= v45)
              {
                if (v32 > v112 || v33 >= v112)
                {
                  goto LABEL_1843;
                }

                v209 = v30[v19];
                if (v32 > v209 || v33 >= v209)
                {
                  goto LABEL_1843;
                }

                v211 = v30[v18];
                if (v32 > v211 || v33 >= v211)
                {
                  goto LABEL_1843;
                }

                v213 = v30[v12];
                if (v32 > v213 || v33 >= v213)
                {
                  goto LABEL_1843;
                }

                v215 = v30[v15];
                if (v32 > v215 || v33 >= v215)
                {
                  goto LABEL_1843;
                }

                v217 = v30[v14];
                if (v32 > v217 || v33 >= v217)
                {
                  goto LABEL_1843;
                }

                v219 = v30[v17];
                if (v32 > v219 || v33 >= v219)
                {
                  goto LABEL_1843;
                }

                v221 = v30[v16];
                goto LABEL_2153;
              }

              if (v32 > v112 || v33 >= v112)
              {
                goto LABEL_1843;
              }

              v114 = v30[v19];
              if (v32 > v114 || v33 >= v114)
              {
                goto LABEL_1843;
              }

              v116 = v30[v16];
              if (v32 > v116 || v33 >= v116)
              {
                goto LABEL_1843;
              }

              v118 = v30[v12];
              if (v32 > v118 || v33 >= v118)
              {
                goto LABEL_1843;
              }

              v120 = v30[v18];
              if (v32 > v120 || v33 >= v120)
              {
                goto LABEL_1843;
              }

              v122 = v30[v15];
              if (v32 > v122 || v33 >= v122)
              {
                goto LABEL_1843;
              }

              v124 = v30[v14];
              if (v32 > v124 || v33 >= v124)
              {
                goto LABEL_1843;
              }
            }

            v406 = v30[v17];
            goto LABEL_2067;
          }

          if (v33 >= v43)
          {
            v92 = v30[v19];
            if (v32 > v92)
            {
              if (v32 <= v30[v18] || v32 <= v30[v22] || v32 <= *(v30 - 3))
              {
                goto LABEL_1843;
              }

              v93 = v30[v23];
              if (v32 <= v93)
              {
                v477 = v30[v15];
                if (v33 >= v93)
                {
                  if (v32 <= v477)
                  {
                    goto LABEL_1843;
                  }
                }

                else if (v32 <= v477)
                {
                  goto LABEL_1843;
                }

                if (v32 <= v30[v16] || v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }
              }

              else
              {
                if (v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                if (v32 > v30[v24])
                {
                  if (v32 <= v30[v17])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1014;
                }

                if (v32 <= v30[v16])
                {
                  goto LABEL_1843;
                }
              }

              goto LABEL_1612;
            }

            if (v33 >= v92)
            {
              goto LABEL_1843;
            }

            v160 = v30[v18];
            if (v32 > v160 || v33 >= v160)
            {
              goto LABEL_1843;
            }

            v162 = v30[v16];
            if (v32 > v162)
            {
              v163 = v30[v24];
              if (v32 > v163 || v33 >= v163)
              {
                goto LABEL_1843;
              }

              v165 = v30[v23];
              if (v32 > v165 || v33 >= v165)
              {
                goto LABEL_1843;
              }

              v167 = v30[v21];
              if (v32 > v167 || v33 >= v167)
              {
                goto LABEL_1843;
              }

              v169 = v30[v22];
              if (v32 > v169 || v33 >= v169)
              {
                goto LABEL_1843;
              }

              v171 = v30[v20];
              if (v32 > v171 || v33 >= v171)
              {
                goto LABEL_1843;
              }

              v173 = *(v30 - 3);
              if (v32 > v173)
              {
                goto LABEL_1843;
              }

LABEL_1459:
              if (v33 >= v173)
              {
                goto LABEL_1843;
              }

              goto LABEL_1916;
            }

            if (v33 >= v162)
            {
              v535 = v30[v24];
              if (v32 > v535 || v33 >= v535)
              {
                goto LABEL_1843;
              }

              v537 = v30[v23];
              if (v32 > v537 || v33 >= v537)
              {
                goto LABEL_1843;
              }

              v539 = v30[v21];
              if (v32 > v539 || v33 >= v539)
              {
                goto LABEL_1843;
              }

              v541 = v30[v22];
              if (v32 > v541 || v33 >= v541)
              {
                goto LABEL_1843;
              }

              v543 = v30[v20];
              if (v32 > v543 || v33 >= v543)
              {
                goto LABEL_1843;
              }

              v545 = *(v30 - 3);
              if (v32 > v545 || v33 >= v545)
              {
                goto LABEL_1843;
              }
            }

            else
            {
              v362 = v30[v20];
              if (v32 > v362)
              {
                v363 = v30[v13];
                if (v32 > v363 || v33 >= v363)
                {
                  goto LABEL_1843;
                }

                v365 = v30[v12];
                if (v32 > v365 || v33 >= v365)
                {
                  goto LABEL_1843;
                }

                v367 = v30[v14];
                if (v32 > v367 || v33 >= v367)
                {
                  goto LABEL_1843;
                }

                v369 = v30[v15];
                if (v32 > v369 || v33 >= v369)
                {
                  goto LABEL_1843;
                }

                goto LABEL_1916;
              }

              if (v33 >= v362)
              {
                v681 = v30[v13];
                if (v32 > v681 || v33 >= v681)
                {
                  goto LABEL_1843;
                }

                v683 = v30[v12];
                if (v32 > v683 || v33 >= v683)
                {
                  goto LABEL_1843;
                }

                v685 = v30[v14];
                if (v32 > v685 || v33 >= v685)
                {
                  goto LABEL_1843;
                }

                v687 = v30[v15];
                if (v32 > v687 || v33 >= v687)
                {
                  goto LABEL_1843;
                }
              }

              else
              {
                v577 = v30[v21];
                if (v32 > v577)
                {
                  v578 = v30[v12];
                  if (v32 > v578 || v33 >= v578)
                  {
                    goto LABEL_1843;
                  }

                  v580 = v30[v15];
                  if (v32 > v580 || v33 >= v580)
                  {
                    goto LABEL_1843;
                  }

                  v173 = v30[v14];
                  if (v32 > v173)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1459;
                }

                if (v33 < v577)
                {
                  v737 = v30[v17];
                  if (v32 > v737 || v33 >= v737)
                  {
                    goto LABEL_1843;
                  }

                  v739 = v30[v15];
                  if (v32 > v739)
                  {
                    v740 = v30[v23];
                    if (v32 > v740)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v740)
                    {
                      goto LABEL_1843;
                    }

                    v248 = v30[v22];
                    if (v32 > v248)
                    {
                      goto LABEL_1843;
                    }

                    goto LABEL_528;
                  }

                  if (v33 >= v739)
                  {
                    v869 = v30[v23];
                    if (v32 > v869)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v869)
                    {
                      goto LABEL_1843;
                    }

                    v870 = v30[v22];
                    if (v32 > v870 || v33 >= v870)
                    {
                      goto LABEL_1843;
                    }

                    v221 = *(v30 - 3);
                    goto LABEL_2231;
                  }

                  v844 = *(v30 - 3);
                  if (v32 > v844)
                  {
                    goto LABEL_1139;
                  }

                  if (v33 < v844)
                  {
                    goto LABEL_1816;
                  }

                  goto LABEL_2098;
                }

                v803 = v30[v12];
                if (v32 > v803 || v33 >= v803)
                {
                  goto LABEL_1843;
                }

                v805 = v30[v14];
                if (v32 > v805)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v805)
                {
                  goto LABEL_1843;
                }

                v806 = v30[v15];
                if (v32 > v806 || v33 >= v806)
                {
                  goto LABEL_1843;
                }
              }
            }

LABEL_2039:
            v221 = v30[v17];
            goto LABEL_2231;
          }

          v62 = v30[v17];
          if (v32 > v62)
          {
            v63 = v30[v23];
            if (v32 > v63)
            {
              v64 = v30[v16];
              if (v32 > v64)
              {
                if (v32 <= *(v30 - 3) || v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                v65 = v30[v22];
                goto LABEL_1307;
              }

              if (v33 >= v64)
              {
                if (v32 <= v30[v24] || v32 <= v30[v18] || v32 <= *(v30 - 3) || v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                v330 = v30[v22];
                goto LABEL_1011;
              }

              v276 = v30[v18];
              if (v32 > v276)
              {
                if (v32 <= v30[v24] || v32 <= v30[v21] || v32 <= v30[v20] || v32 <= v30[v22])
                {
                  goto LABEL_1843;
                }

                v277 = v30[v19];
                goto LABEL_1410;
              }

              if (v33 >= v276)
              {
                goto LABEL_1843;
              }

              v509 = v30[v24];
              if (v32 > v509 || v33 >= v509)
              {
                goto LABEL_1843;
              }

              v511 = v30[v12];
              if (v32 > v511 || v33 >= v511)
              {
                goto LABEL_1843;
              }

              v513 = v30[v15];
              if (v32 > v513 || v33 >= v513)
              {
                goto LABEL_1843;
              }

              v138 = v30[v14];
              goto LABEL_1256;
            }

            if (v33 >= v63)
            {
              v329 = v30[v18];
              if (v32 > v329)
              {
                if (v32 <= v30[v15] || v32 <= v30[v22] || v32 <= *(v30 - 3) || v32 <= v30[v16])
                {
                  goto LABEL_1843;
                }

LABEL_758:
                v330 = v30[v20];
LABEL_1011:
                if (v32 <= v330)
                {
                  goto LABEL_1843;
                }

                v349 = v30[v19];
LABEL_1013:
                if (v32 <= v349)
                {
                  goto LABEL_1843;
                }

LABEL_1014:
                v91 = v30[v21];
                goto LABEL_1815;
              }

              if (v33 >= v329)
              {
                goto LABEL_1843;
              }

              v465 = v30[v24];
              if (v32 > v465 || v33 >= v465)
              {
                goto LABEL_1843;
              }

              v467 = v30[v16];
              if (v32 > v467 || v33 >= v467)
              {
                goto LABEL_1843;
              }

              v469 = v30[v12];
              if (v32 > v469 || v33 >= v469)
              {
                goto LABEL_1843;
              }

              v471 = v30[v15];
              if (v32 > v471 || v33 >= v471)
              {
                goto LABEL_1843;
              }

              v473 = v30[v13];
              if (v32 > v473 || v33 >= v473)
              {
                goto LABEL_1843;
              }

              goto LABEL_1139;
            }

            v195 = v30[v12];
            if (v32 > v195)
            {
              v196 = v30[v19];
              if (v32 > v196)
              {
                if (v32 <= v30[v15] || v32 <= v30[v22] || v32 <= *(v30 - 3) || v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                v176 = v30[v16];
                goto LABEL_820;
              }

              if (v33 >= v196)
              {
                goto LABEL_1843;
              }

              v485 = v30[v13];
              if (v32 > v485 || v33 >= v485)
              {
                goto LABEL_1843;
              }

              v487 = v30[v21];
              if (v32 > v487 || v33 >= v487)
              {
                goto LABEL_1843;
              }

              v489 = v30[v22];
              if (v32 > v489 || v33 >= v489)
              {
                goto LABEL_1843;
              }

              v491 = v30[v20];
              if (v32 > v491 || v33 >= v491)
              {
                goto LABEL_1843;
              }

              v191 = *(v30 - 3);
              goto LABEL_1791;
            }

            if (v33 >= v195)
            {
              v546 = v30[v19];
              if (v32 > v546)
              {
                if (v32 <= v30[v22] || v32 <= v30[v15] || v32 <= *(v30 - 3) || v32 <= v30[v16])
                {
                  goto LABEL_1843;
                }

                v392 = v30[v20];
                goto LABEL_1352;
              }

              if (v33 >= v546)
              {
                goto LABEL_1843;
              }

              v635 = v30[v13];
              if (v32 > v635 || v33 >= v635)
              {
                goto LABEL_1843;
              }

              v637 = v30[v21];
              if (v32 > v637 || v33 >= v637)
              {
                goto LABEL_1843;
              }

              v639 = v30[v20];
              if (v32 > v639 || v33 >= v639)
              {
                goto LABEL_1843;
              }

              v641 = v30[v22];
              if (v32 > v641 || v33 >= v641)
              {
                goto LABEL_1843;
              }

              goto LABEL_1604;
            }

            v389 = *(v30 - 3);
            if (v32 <= v389)
            {
              if (v33 >= v389)
              {
                v688 = v30[v15];
                if (v32 > v688 || v33 >= v688)
                {
                  goto LABEL_1843;
                }

                v690 = v30[v22];
                if (v32 > v690)
                {
                  v691 = v30[v16];
                  if (v32 > v691 || v33 >= v691)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_2018;
                }

                if (v33 < v690)
                {
                  goto LABEL_2018;
                }

                v838 = v30[v16];
                if (v32 > v838)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v838)
                {
                  goto LABEL_1843;
                }

                v839 = v30[v24];
                if (v32 > v839 || v33 >= v839)
                {
                  goto LABEL_1843;
                }

                v799 = v30[v14];
LABEL_2021:
                if (v32 > v799 || v33 >= v799)
                {
                  goto LABEL_1843;
                }

                goto LABEL_2152;
              }

              v582 = v30[v13];
              if (v32 > v582 || v33 >= v582)
              {
                goto LABEL_1843;
              }

              v584 = v30[v24];
              if (v32 > v584 || v33 >= v584)
              {
                goto LABEL_1843;
              }

              v586 = v30[v22];
              if (v32 <= v586)
              {
                if (v33 >= v586)
                {
                  v854 = v30[v16];
                  if (v32 > v854 || v33 >= v854)
                  {
                    goto LABEL_1843;
                  }

                  v855 = v30[v15];
                  goto LABEL_2170;
                }

                v810 = v30[v14];
                if (v32 <= v810)
                {
                  if (v33 < v810)
                  {
                    goto LABEL_1816;
                  }

                  v785 = v30[v20];
                  goto LABEL_1974;
                }

                v811 = v30[v20];
                if (v32 > v811 || v33 >= v811)
                {
                  goto LABEL_1843;
                }

                v406 = v30[v21];
              }

              else
              {
                v587 = v30[v16];
                if (v32 > v587)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v587)
                {
                  goto LABEL_1843;
                }

                v588 = v30[v14];
                if (v32 > v588 || v33 >= v588)
                {
                  goto LABEL_1843;
                }

                v406 = v30[v15];
              }

              goto LABEL_2067;
            }

            v390 = v30[v16];
            if (v32 > v390)
            {
              v391 = v30[v15];
              if (v32 > v391)
              {
                if (v32 <= v30[v22] || v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                v392 = v30[v19];
LABEL_1352:
                if (v32 <= v392)
                {
                  goto LABEL_1843;
                }

                v203 = v30[v21];
LABEL_1442:
                if (v32 <= v203)
                {
                  goto LABEL_1843;
                }

LABEL_1443:
                v91 = v30[v18];
                goto LABEL_1815;
              }

              if (v33 >= v391)
              {
                goto LABEL_1843;
              }

              v707 = v30[v22];
              if (v32 > v707 || v33 >= v707)
              {
                goto LABEL_1843;
              }

              v662 = v30[v14];
              if (v32 > v662)
              {
                goto LABEL_1843;
              }

              goto LABEL_1789;
            }

            if (v33 >= v390)
            {
              v751 = v30[v22];
              if (v32 > v751 || v33 >= v751)
              {
                goto LABEL_1843;
              }

              v753 = v30[v15];
              if (v32 > v753 || v33 >= v753)
              {
                goto LABEL_1843;
              }

LABEL_2018:
              v798 = v30[v14];
              if (v32 > v798 || v33 >= v798)
              {
                goto LABEL_1843;
              }

              v799 = v30[v24];
              goto LABEL_2021;
            }

            v651 = v30[v15];
            if (v32 > v651 || v33 >= v651)
            {
              goto LABEL_1843;
            }

            v653 = v30[v24];
            if (v32 > v653 || v33 >= v653)
            {
              goto LABEL_1843;
            }

            v507 = v30[v14];
LABEL_1652:
            if (v32 > v507 || v33 >= v507)
            {
              goto LABEL_1843;
            }

LABEL_1261:
            v406 = v30[v13];
LABEL_2067:
            if (v32 <= v406 && v33 < v406)
            {
              goto LABEL_1816;
            }

            goto LABEL_1843;
          }

          if (v33 >= v62)
          {
            v235 = v30[v24];
            if (v32 > v235 || v33 >= v235)
            {
              goto LABEL_1843;
            }

            v237 = v30[v12];
            if (v32 > v237)
            {
              v238 = v30[v19];
              if (v32 > v238 || v33 >= v238)
              {
                goto LABEL_1843;
              }

              v240 = v30[v13];
              if (v32 > v240 || v33 >= v240)
              {
                goto LABEL_1843;
              }

              v242 = v30[v21];
              if (v32 > v242 || v33 >= v242)
              {
                goto LABEL_1843;
              }

              v244 = v30[v22];
              if (v32 > v244 || v33 >= v244)
              {
                goto LABEL_1843;
              }

              v246 = v30[v20];
              if (v32 > v246 || v33 >= v246)
              {
                goto LABEL_1843;
              }

              v248 = v30[v23];
LABEL_527:
              if (v32 > v248)
              {
                goto LABEL_1843;
              }

LABEL_528:
              if (v33 >= v248)
              {
                goto LABEL_1843;
              }

              goto LABEL_1070;
            }

            if (v33 >= v237)
            {
              v557 = v30[v19];
              if (v32 > v557 || v33 >= v557)
              {
                goto LABEL_1843;
              }

              v559 = v30[v20];
              if (v32 > v559 || v33 >= v559)
              {
                goto LABEL_1843;
              }

              v561 = v30[v13];
              if (v32 > v561 || v33 >= v561)
              {
                goto LABEL_1843;
              }

              v563 = v30[v22];
              if (v32 > v563 || v33 >= v563)
              {
                goto LABEL_1843;
              }

              v565 = v30[v21];
              if (v32 > v565 || v33 >= v565)
              {
                goto LABEL_1843;
              }

              v567 = v30[v23];
              goto LABEL_1400;
            }

            v407 = v30[v23];
            if (v32 > v407)
            {
              v408 = v30[v18];
              if (v32 > v408 || v33 >= v408)
              {
                goto LABEL_1843;
              }

              v410 = v30[v16];
              if (v32 > v410 || v33 >= v410)
              {
                goto LABEL_1843;
              }

              v412 = v30[v15];
              if (v32 > v412 || v33 >= v412)
              {
                goto LABEL_1843;
              }

              v414 = v30[v13];
              if (v32 > v414 || v33 >= v414)
              {
                goto LABEL_1843;
              }

              goto LABEL_1139;
            }

            if (v33 >= v407)
            {
              v700 = v30[v18];
              if (v32 > v700 || v33 >= v700)
              {
                goto LABEL_1843;
              }

              v702 = v30[v16];
              if (v32 > v702 || v33 >= v702)
              {
                goto LABEL_1843;
              }

              v704 = v30[v15];
              if (v32 > v704 || v33 >= v704)
              {
                goto LABEL_1843;
              }

              goto LABEL_2183;
            }

            v596 = v30[v13];
            if (v32 > v596 || v33 >= v596)
            {
              goto LABEL_1843;
            }

            v598 = v30[v22];
            if (v32 > v598)
            {
              v599 = v30[v16];
              if (v32 > v599 || v33 >= v599)
              {
                goto LABEL_1843;
              }

              v601 = v30[v14];
              if (v32 > v601 || v33 >= v601)
              {
                goto LABEL_1843;
              }

LABEL_1505:
              v221 = v30[v15];
              goto LABEL_2153;
            }

            if (v33 < v598)
            {
              v788 = v30[v14];
              if (v32 > v788)
              {
                v789 = v30[v20];
                if (v32 > v789 || v33 >= v789)
                {
                  goto LABEL_1843;
                }

                v248 = v30[v21];
                goto LABEL_527;
              }

              if (v33 < v788)
              {
                v848 = *(v30 - 3);
                if (v32 <= v848)
                {
                  if (v33 < v848)
                  {
                    goto LABEL_1816;
                  }

                  v221 = v30[v15];
                  goto LABEL_2231;
                }

                goto LABEL_1505;
              }

              v873 = v30[v20];
              if (v32 > v873 || v33 >= v873)
              {
                goto LABEL_1843;
              }

              v567 = v30[v21];
LABEL_1400:
              if (v32 > v567 || v33 >= v567)
              {
                goto LABEL_1843;
              }

              v221 = *(v30 - 3);
              goto LABEL_2231;
            }

            v826 = v30[v16];
            if (v32 > v826)
            {
              goto LABEL_1843;
            }

            if (v33 >= v826)
            {
              goto LABEL_1843;
            }

            v827 = v30[v15];
            if (v32 > v827 || v33 >= v827)
            {
              goto LABEL_1843;
            }

LABEL_2098:
            v221 = v30[v14];
            goto LABEL_2231;
          }

          v142 = v30[v16];
          if (v32 > v142)
          {
            v143 = v30[v22];
            if (v32 > v143 || v33 >= v143)
            {
              goto LABEL_1843;
            }

            v145 = v30[v23];
            if (v32 > v145 || v33 >= v145)
            {
              goto LABEL_1843;
            }

            v147 = v30[v24];
            if (v32 > v147 || v33 >= v147)
            {
              goto LABEL_1843;
            }

            v149 = *(v30 - 3);
            if (v32 > v149)
            {
              v150 = v30[v15];
              if (v32 > v150 || v33 >= v150)
              {
                goto LABEL_1843;
              }

              v152 = v30[v12];
              if (v32 > v152 || v33 >= v152)
              {
                goto LABEL_1843;
              }

              v154 = v30[v14];
              if (v32 > v154 || v33 >= v154)
              {
                goto LABEL_1843;
              }

              goto LABEL_1261;
            }

            if (v33 >= v149)
            {
              v747 = v30[v15];
              if (v32 > v747 || v33 >= v747)
              {
                goto LABEL_1843;
              }

              v749 = v30[v12];
              if (v32 > v749 || v33 >= v749)
              {
                goto LABEL_1843;
              }

              goto LABEL_2149;
            }

            v644 = v30[v20];
            if (v32 > v644)
            {
              v645 = v30[v12];
              if (v32 > v645 || v33 >= v645)
              {
                goto LABEL_1843;
              }

              goto LABEL_1622;
            }

            if (v33 >= v644)
            {
              goto LABEL_2147;
            }

            v790 = v30[v21];
            if (v32 <= v790)
            {
              if (v33 >= v790)
              {
LABEL_2147:
                v850 = v30[v12];
                if (v32 > v850 || v33 >= v850)
                {
                  goto LABEL_1843;
                }

LABEL_2149:
                v736 = v30[v14];
LABEL_2150:
                if (v32 > v736 || v33 >= v736)
                {
                  goto LABEL_1843;
                }

LABEL_2152:
                v221 = v30[v13];
                goto LABEL_2153;
              }

              v849 = v30[v19];
              if (v32 <= v849)
              {
                if (v33 < v849)
                {
                  goto LABEL_1816;
                }

                v736 = v30[v12];
                goto LABEL_2150;
              }

              v647 = v30[v12];
            }

            else
            {
              v791 = v30[v12];
              if (v32 > v791 || v33 >= v791)
              {
                goto LABEL_1843;
              }

LABEL_1622:
              v647 = v30[v14];
            }

LABEL_1623:
            if (v32 > v647 || v33 >= v647)
            {
              goto LABEL_1843;
            }

            goto LABEL_1261;
          }

          if (v33 >= v142)
          {
            v443 = v30[v23];
            if (v32 > v443 || v33 >= v443)
            {
              goto LABEL_1843;
            }

            v445 = v30[v22];
            if (v32 > v445 || v33 >= v445)
            {
              goto LABEL_1843;
            }

            v447 = v30[v24];
            if (v32 > v447 || v33 >= v447)
            {
              goto LABEL_1843;
            }

            v449 = *(v30 - 3);
            if (v32 > v449)
            {
              v450 = v30[v15];
              if (v32 > v450 || v33 >= v450)
              {
                goto LABEL_1843;
              }

              v452 = v30[v12];
              if (v32 > v452 || v33 >= v452)
              {
                goto LABEL_1843;
              }

LABEL_1849:
              v736 = v30[v14];
              goto LABEL_2150;
            }

            if (v33 >= v449)
            {
              v800 = v30[v15];
              if (v32 > v800 || v33 >= v800)
              {
                goto LABEL_1843;
              }

              v802 = v30[v12];
              if (v32 > v802 || v33 >= v802)
              {
                goto LABEL_1843;
              }
            }

            else
            {
              v734 = v30[v20];
              if (v32 > v734)
              {
                v735 = v30[v12];
                if (v32 > v735 || v33 >= v735)
                {
                  goto LABEL_1843;
                }

                goto LABEL_1849;
              }

              if (v33 >= v734)
              {
                v859 = v30[v12];
                if (v32 > v859 || v33 >= v859)
                {
                  goto LABEL_1843;
                }
              }

              else
              {
                v818 = v30[v21];
                if (v32 > v818)
                {
                  v819 = v30[v12];
                  if (v32 > v819 || v33 >= v819)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1849;
                }

                if (v33 < v818)
                {
                  v865 = v30[v19];
                  if (v32 > v865)
                  {
                    v736 = v30[v12];
                    goto LABEL_2150;
                  }

                  if (v33 < v865)
                  {
                    goto LABEL_1816;
                  }

                  v860 = v30[v12];
LABEL_2184:
                  if (v32 > v860 || v33 >= v860)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_2186;
                }

                v890 = v30[v12];
                if (v32 > v890 || v33 >= v890)
                {
                  goto LABEL_1843;
                }
              }
            }

LABEL_2183:
            v860 = v30[v14];
            goto LABEL_2184;
          }

          v303 = v30[v12];
          if (v32 <= v303)
          {
            if (v33 >= v303)
            {
              v626 = v30[v20];
              if (v32 > v626 || v33 >= v626)
              {
                goto LABEL_1843;
              }

              v628 = v30[v21];
              if (v32 > v628 || v33 >= v628)
              {
                goto LABEL_1843;
              }

              v630 = v30[v19];
              if (v32 > v630 || v33 >= v630)
              {
                goto LABEL_1843;
              }

              v632 = *(v30 - 3);
              if (v32 > v632)
              {
                v633 = v30[v14];
                if (v32 > v633)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v633)
                {
                  goto LABEL_1843;
                }

                v634 = v30[v15];
                if (v32 > v634)
                {
                  goto LABEL_1843;
                }

LABEL_2087:
                if (v33 >= v634)
                {
                  goto LABEL_1843;
                }

LABEL_2088:
                v221 = v30[v18];
                goto LABEL_2153;
              }

              if (v33 >= v632)
              {
                v856 = v30[v14];
                if (v32 > v856)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v856)
                {
                  goto LABEL_1843;
                }

                v857 = v30[v15];
                if (v32 > v857 || v33 >= v857)
                {
                  goto LABEL_1843;
                }

                goto LABEL_2177;
              }

              v812 = v30[v15];
              if (v32 > v812)
              {
                v813 = v30[v23];
                if (v32 > v813)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v813)
                {
                  goto LABEL_1843;
                }

                v814 = v30[v22];
                if (v32 > v814 || v33 >= v814)
                {
                  goto LABEL_1843;
                }

                v815 = v30[v24];
                if (v32 <= v815)
                {
                  goto LABEL_2223;
                }

                v816 = v30[v18];
                goto LABEL_2370;
              }

              if (v33 >= v812)
              {
                v887 = v30[v23];
                if (v32 > v887)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v887)
                {
                  goto LABEL_1843;
                }

                v888 = v30[v22];
                if (v32 > v888 || v33 >= v888)
                {
                  goto LABEL_1843;
                }

                v889 = v30[v24];
                if (v32 > v889)
                {
                  goto LABEL_2088;
                }

                if (v33 < v889)
                {
                  goto LABEL_1816;
                }

LABEL_2177:
                v221 = v30[v18];
                goto LABEL_2231;
              }

              v862 = v30[v18];
              if (v32 > v862)
              {
                v863 = v30[v23];
                if (v32 > v863)
                {
                  goto LABEL_1843;
                }

                if (v33 >= v863)
                {
                  goto LABEL_1843;
                }

                v864 = v30[v22];
                if (v32 > v864)
                {
                  goto LABEL_1843;
                }

                goto LABEL_2357;
              }

              if (v33 < v862)
              {
                goto LABEL_1816;
              }

              v896 = v30[v23];
              if (v32 <= v896 && v33 < v896)
              {
                v886 = v30[v22];
                if (v32 <= v886)
                {
                  goto LABEL_2269;
                }
              }
            }

            else
            {
              v523 = v30[v15];
              if (v32 <= v523)
              {
                if (v33 >= v523)
                {
                  v772 = v30[v22];
                  if (v32 > v772 || v33 >= v772)
                  {
                    goto LABEL_1843;
                  }

                  v774 = v30[v23];
                  if (v32 > v774 || v33 >= v774)
                  {
                    goto LABEL_1843;
                  }

                  v776 = *(v30 - 3);
                  if (v32 > v776 || v33 >= v776)
                  {
                    goto LABEL_1843;
                  }

                  v777 = v30[v24];
                  if (v32 > v777)
                  {
                    v778 = v30[v21];
                    if (v32 > v778)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v778)
                    {
                      goto LABEL_1843;
                    }

                    v779 = v30[v20];
                    if (v32 > v779 || v33 >= v779)
                    {
                      goto LABEL_1843;
                    }

                    goto LABEL_2209;
                  }

                  if (v33 >= v777)
                  {
                    v891 = v30[v21];
                    if (v32 > v891)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v891)
                    {
                      goto LABEL_1843;
                    }

                    v892 = v30[v20];
                    if (v32 > v892 || v33 >= v892)
                    {
                      goto LABEL_1843;
                    }

                    v893 = v30[v18];
                    goto LABEL_2288;
                  }

                  v878 = v30[v14];
                  if (v32 > v878)
                  {
                    v879 = v30[v20];
                    if (v32 > v879)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v879)
                    {
                      goto LABEL_1843;
                    }

                    v880 = v30[v21];
                    if (v32 > v880 || v33 >= v880)
                    {
                      goto LABEL_1843;
                    }

LABEL_2308:
                    v899 = v30[v19];
                    if (v32 <= v899 && v33 < v899)
                    {
                      goto LABEL_1816;
                    }

                    goto LABEL_2369;
                  }

                  if (v33 >= v878)
                  {
                    v907 = v30[v20];
                    if (v32 > v907)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v907)
                    {
                      goto LABEL_1843;
                    }

                    v908 = v30[v21];
                    if (v32 > v908 || v33 >= v908)
                    {
                      goto LABEL_1843;
                    }

                    v909 = v30[v19];
                    if (v32 <= v909)
                    {
                      if (v33 < v909)
                      {
                        goto LABEL_1816;
                      }

LABEL_2186:
                      v221 = v30[v13];
                      goto LABEL_2231;
                    }

LABEL_2369:
                    v816 = v30[v13];
LABEL_2370:
                    if (v33 < v816)
                    {
                      goto LABEL_1816;
                    }

                    goto LABEL_1843;
                  }

                  v900 = v30[v13];
                  if (v32 > v900)
                  {
                    v901 = v30[v21];
                    if (v32 > v901 || v33 >= v901)
                    {
                      goto LABEL_1843;
                    }

LABEL_2339:
                    v868 = v30[v20];
                    goto LABEL_2210;
                  }

                  if (v33 < v900)
                  {
                    goto LABEL_1816;
                  }

                  v913 = v30[v21];
                  if (v32 <= v913 && v33 < v913)
                  {
                    v893 = v30[v20];
LABEL_2288:
                    if (v32 > v893 || v33 >= v893)
                    {
                      goto LABEL_1843;
                    }

                    v221 = v30[v19];
                    goto LABEL_2231;
                  }
                }

                else
                {
                  v673 = v30[v14];
                  if (v32 <= v673)
                  {
                    if (v33 >= v673)
                    {
                      v831 = v30[v21];
                      if (v32 > v831)
                      {
                        goto LABEL_1843;
                      }

                      if (v33 >= v831)
                      {
                        goto LABEL_1843;
                      }

                      v832 = v30[v20];
                      if (v32 > v832)
                      {
                        goto LABEL_1843;
                      }

                      if (v33 >= v832)
                      {
                        goto LABEL_1843;
                      }

                      v833 = *(v30 - 3);
                      if (v32 > v833 || v33 >= v833)
                      {
                        goto LABEL_1843;
                      }

                      v834 = v30[v19];
                      if (v32 > v834)
                      {
                        v835 = v30[v22];
                        if (v32 > v835)
                        {
                          goto LABEL_1843;
                        }

                        if (v33 >= v835)
                        {
                          goto LABEL_1843;
                        }

                        v836 = v30[v23];
                        if (v32 > v836 || v33 >= v836)
                        {
                          goto LABEL_1843;
                        }

                        v837 = v30[v13];
                        goto LABEL_2333;
                      }

                      if (v33 >= v834)
                      {
                        v911 = v30[v22];
                        if (v32 > v911)
                        {
                          goto LABEL_1843;
                        }

                        if (v33 >= v911)
                        {
                          goto LABEL_1843;
                        }

                        v912 = v30[v23];
                        if (v32 > v912 || v33 >= v912)
                        {
                          goto LABEL_1843;
                        }

                        v886 = v30[v13];
LABEL_2268:
                        if (v32 > v886)
                        {
                          goto LABEL_1843;
                        }

LABEL_2269:
                        if (v33 >= v886)
                        {
                          goto LABEL_1843;
                        }

                        v221 = v30[v24];
                        goto LABEL_2231;
                      }

                      v904 = v30[v18];
                      if (v32 > v904)
                      {
                        v905 = v30[v23];
                        if (v32 > v905 || v33 >= v905)
                        {
                          goto LABEL_1843;
                        }

                        v837 = v30[v22];
LABEL_2333:
                        if (v32 > v837 || v33 >= v837)
                        {
                          goto LABEL_1843;
                        }

LABEL_2335:
                        v816 = v30[v24];
                        goto LABEL_2370;
                      }

                      if (v33 < v904)
                      {
                        goto LABEL_1816;
                      }

                      v914 = v30[v22];
                      if (v32 <= v914 && v33 < v914)
                      {
                        goto LABEL_2267;
                      }
                    }

                    else
                    {
                      v794 = v30[v13];
                      if (v32 <= v794)
                      {
                        if (v33 >= v794)
                        {
                          v875 = v30[v20];
                          if (v32 > v875)
                          {
                            goto LABEL_1843;
                          }

                          if (v33 >= v875)
                          {
                            goto LABEL_1843;
                          }

                          v876 = v30[v19];
                          if (v32 > v876 || v33 >= v876)
                          {
                            goto LABEL_1843;
                          }

                          v877 = v30[v18];
                          if (v32 > v877)
                          {
                            if (v33 >= v30[v22] || v33 >= v30[v21] || v33 >= v30[v23])
                            {
                              goto LABEL_1843;
                            }

                            v816 = *(v30 - 3);
                            goto LABEL_2370;
                          }

                          if (v33 < v877)
                          {
                            goto LABEL_1816;
                          }

                          if (v33 >= v30[v22] || v33 >= v30[v23] || v33 >= v30[v21])
                          {
                            goto LABEL_1843;
                          }

                          goto LABEL_2335;
                        }

                        v853 = v30[v18];
                        if (v32 <= v853)
                        {
                          if (v33 < v853)
                          {
                            goto LABEL_1816;
                          }

LABEL_2267:
                          v886 = v30[v23];
                          goto LABEL_2268;
                        }

                        v847 = v30[v23];
LABEL_2164:
                        if (v32 > v847 || v33 >= v847)
                        {
                          goto LABEL_1843;
                        }

                        goto LABEL_1793;
                      }

                      v795 = v30[v20];
                      if (v32 > v795)
                      {
                        goto LABEL_1843;
                      }

                      if (v33 >= v795)
                      {
                        goto LABEL_1843;
                      }

                      v796 = v30[v19];
                      if (v32 > v796 || v33 >= v796)
                      {
                        goto LABEL_1843;
                      }

                      v797 = v30[v18];
                      if (v32 > v797)
                      {
                        if (v33 >= v30[v22] || v33 >= v30[v23] || v33 >= v30[v21])
                        {
                          goto LABEL_1843;
                        }

                        v784 = *(v30 - 3);
                        goto LABEL_1967;
                      }

                      if (v33 < v797)
                      {
                        goto LABEL_1816;
                      }

                      if (v33 < *(v30 - 3) && v33 < v30[v23] && v33 < v30[v21])
                      {
                        v816 = v30[v22];
                        goto LABEL_2370;
                      }
                    }
                  }

                  else
                  {
                    v674 = *(v30 - 3);
                    if (v32 > v674 || v33 >= v674)
                    {
                      goto LABEL_1843;
                    }

                    v676 = v30[v20];
                    if (v32 > v676)
                    {
                      goto LABEL_1843;
                    }

                    if (v33 >= v676)
                    {
                      goto LABEL_1843;
                    }

                    v677 = v30[v21];
                    if (v32 > v677 || v33 >= v677)
                    {
                      goto LABEL_1843;
                    }

                    v678 = v30[v19];
                    if (v32 > v678)
                    {
                      v679 = v30[v22];
                      if (v32 > v679)
                      {
                        goto LABEL_1843;
                      }

                      if (v33 >= v679)
                      {
                        goto LABEL_1843;
                      }

                      v680 = v30[v23];
                      if (v32 > v680 || v33 >= v680)
                      {
                        goto LABEL_1843;
                      }

                      v647 = v30[v24];
                      goto LABEL_1623;
                    }

                    if (v33 >= v678)
                    {
                      v902 = v30[v22];
                      if (v32 > v902)
                      {
                        goto LABEL_1843;
                      }

                      if (v33 >= v902)
                      {
                        goto LABEL_1843;
                      }

                      v903 = v30[v23];
                      if (v32 > v903 || v33 >= v903)
                      {
                        goto LABEL_1843;
                      }

                      v864 = v30[v13];
                      goto LABEL_2356;
                    }

                    v894 = v30[v18];
                    if (v32 > v894)
                    {
                      v895 = v30[v22];
                      if (v32 > v895 || v33 >= v895 || v33 >= v30[v23])
                      {
                        goto LABEL_1843;
                      }

                      v784 = v30[v24];
                      goto LABEL_1967;
                    }

                    if (v33 < v894)
                    {
                      goto LABEL_1816;
                    }

                    v910 = v30[v22];
                    if (v32 <= v910 && v33 < v910)
                    {
                      v864 = v30[v23];
                      goto LABEL_2356;
                    }
                  }
                }
              }

              else
              {
                v524 = *(v30 - 3);
                if (v32 > v524 || v33 >= v524)
                {
                  goto LABEL_1843;
                }

                v526 = v30[v23];
                if (v32 > v526 || v33 >= v526)
                {
                  goto LABEL_1843;
                }

                v528 = v30[v22];
                if (v32 > v528 || v33 >= v528)
                {
                  goto LABEL_1843;
                }

                v530 = v30[v24];
                if (v32 > v530)
                {
                  v531 = v30[v21];
                  if (v32 > v531)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v531)
                  {
                    goto LABEL_1843;
                  }

                  v532 = v30[v20];
                  if (v32 > v532 || v33 >= v532)
                  {
                    goto LABEL_1843;
                  }

                  v313 = v30[v19];
                  goto LABEL_699;
                }

                if (v33 >= v530)
                {
                  v866 = v30[v21];
                  if (v32 > v866)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v866)
                  {
                    goto LABEL_1843;
                  }

                  v867 = v30[v20];
                  if (v32 > v867 || v33 >= v867)
                  {
                    goto LABEL_1843;
                  }

LABEL_2209:
                  v868 = v30[v18];
LABEL_2210:
                  if (v32 > v868 || v33 >= v868)
                  {
                    goto LABEL_1843;
                  }

LABEL_808:
                  v221 = v30[v19];
                  goto LABEL_2153;
                }

                v840 = v30[v14];
                if (v32 > v840)
                {
                  v841 = v30[v21];
                  if (v32 > v841)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v841)
                  {
                    goto LABEL_1843;
                  }

                  v842 = v30[v20];
                  if (v32 > v842 || v33 >= v842)
                  {
                    goto LABEL_1843;
                  }

                  v843 = v30[v19];
                  if (v32 > v843)
                  {
                    v784 = v30[v13];
LABEL_1967:
                    if (v33 < v784)
                    {
                      goto LABEL_1816;
                    }

                    goto LABEL_1843;
                  }

                  if (v33 < v843)
                  {
                    goto LABEL_1816;
                  }

                  goto LABEL_2369;
                }

                if (v33 >= v840)
                {
                  v897 = v30[v21];
                  if (v32 > v897)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v897)
                  {
                    goto LABEL_1843;
                  }

                  v898 = v30[v20];
                  if (v32 > v898 || v33 >= v898)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_2308;
                }

                v881 = v30[v13];
                if (v32 > v881)
                {
                  v882 = v30[v21];
                  if (v32 > v882)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v882)
                  {
                    goto LABEL_1843;
                  }

                  v883 = v30[v19];
                  if (v32 > v883 || v33 >= v883)
                  {
                    goto LABEL_1843;
                  }

                  v406 = v30[v20];
                  goto LABEL_2067;
                }

                if (v33 < v881)
                {
                  goto LABEL_1816;
                }

                v906 = v30[v21];
                if (v32 <= v906 && v33 < v906)
                {
                  goto LABEL_2339;
                }
              }
            }
          }

          else
          {
            v304 = v30[v21];
            if (v32 > v304 || v33 >= v304)
            {
              goto LABEL_1843;
            }

            v306 = v30[v20];
            if (v32 > v306 || v33 >= v306)
            {
              goto LABEL_1843;
            }

            v308 = v30[v19];
            if (v32 > v308 || v33 >= v308)
            {
              goto LABEL_1843;
            }

            v310 = *(v30 - 3);
            if (v32 > v310)
            {
              v311 = v30[v14];
              if (v32 > v311 || v33 >= v311)
              {
                goto LABEL_1843;
              }

              v313 = v30[v15];
LABEL_699:
              if (v32 > v313 || v33 >= v313)
              {
                goto LABEL_1843;
              }

LABEL_2066:
              v406 = v30[v18];
              goto LABEL_2067;
            }

            if (v33 >= v310)
            {
              v823 = v30[v14];
              if (v32 > v823)
              {
                goto LABEL_1843;
              }

              if (v33 >= v823)
              {
                goto LABEL_1843;
              }

              v634 = v30[v15];
              if (v32 > v634)
              {
                goto LABEL_1843;
              }

              goto LABEL_2087;
            }

            v780 = v30[v15];
            if (v32 > v780)
            {
              v781 = v30[v23];
              if (v32 > v781)
              {
                goto LABEL_1843;
              }

              if (v33 >= v781)
              {
                goto LABEL_1843;
              }

              v782 = v30[v22];
              if (v32 > v782 || v33 >= v782)
              {
                goto LABEL_1843;
              }

              v783 = v30[v24];
              if (v32 > v783)
              {
                v784 = v30[v18];
                goto LABEL_1967;
              }

              if (v33 < v783)
              {
                goto LABEL_1816;
              }

              goto LABEL_2088;
            }

            if (v33 >= v780)
            {
              v871 = v30[v23];
              if (v32 > v871)
              {
                goto LABEL_1843;
              }

              if (v33 >= v871)
              {
                goto LABEL_1843;
              }

              v872 = v30[v22];
              if (v32 > v872 || v33 >= v872)
              {
                goto LABEL_1843;
              }

              v815 = v30[v24];
              if (v32 <= v815)
              {
LABEL_2223:
                if (v33 < v815)
                {
                  goto LABEL_1816;
                }
              }

              goto LABEL_2088;
            }

            v845 = v30[v18];
            if (v32 > v845)
            {
              v846 = v30[v23];
              if (v32 > v846 || v33 >= v846)
              {
                goto LABEL_1843;
              }

              v847 = v30[v22];
              goto LABEL_2164;
            }

            if (v33 < v845)
            {
              goto LABEL_1816;
            }

            v884 = v30[v23];
            if (v32 <= v884 && v33 < v884)
            {
              v864 = v30[v22];
LABEL_2356:
              if (v32 > v864)
              {
                goto LABEL_1843;
              }

LABEL_2357:
              if (v33 >= v864)
              {
                goto LABEL_1843;
              }

LABEL_1990:
              v221 = v30[v24];
              goto LABEL_2153;
            }
          }
        }
      }

      else
      {
        v35 = v30[v11];
        if (v32 <= v35)
        {
          if (v33 < v35)
          {
            v49 = v30[v20];
            if (v32 <= v49)
            {
              if (v33 >= v49)
              {
                v158 = v30[v13];
                if (v32 > v158)
                {
                  goto LABEL_305;
                }

                if (v33 >= v158)
                {
                  goto LABEL_1843;
                }

                v260 = v30[v14];
                if (v32 > v260 || v33 >= v260)
                {
                  goto LABEL_1843;
                }

                v262 = v30[v21];
                if (v32 > v262 || v33 >= v262)
                {
                  goto LABEL_1843;
                }

                v264 = *(v30 - 3);
                if (v32 > v264 || v33 >= v264)
                {
                  goto LABEL_1843;
                }

                v266 = v30[v12];
                if (v32 > v266 || v33 >= v266)
                {
                  goto LABEL_1843;
                }

                v268 = v30[v23];
                if (v32 > v268 || v33 >= v268)
                {
                  goto LABEL_1843;
                }

                v233 = v30[v22];
                goto LABEL_580;
              }

              v87 = v30[v22];
              if (v32 > v87)
              {
                if (v32 <= v30[v13] || v32 <= v30[v19] || v32 <= v30[v16] || v32 <= v30[v12])
                {
                  goto LABEL_1843;
                }

                v88 = v30[v18];
LABEL_1017:
                if (v32 <= v88)
                {
                  goto LABEL_1843;
                }

                goto LABEL_1018;
              }

              if (v33 >= v87)
              {
                if (v32 <= v30[v13])
                {
                  goto LABEL_1843;
                }

LABEL_305:
                if (v32 <= v30[v19] || v32 <= v30[v16] || v32 <= v30[v12])
                {
                  goto LABEL_1843;
                }

                v159 = v30[v18];
                goto LABEL_618;
              }

              v200 = v30[v17];
              if (v32 <= v200)
              {
                if (v33 >= v200)
                {
                  v548 = v30[v13];
                  if (v32 > v548 || v33 >= v548)
                  {
                    goto LABEL_1843;
                  }

                  v550 = *(v30 - 3);
                  if (v32 > v550 || v33 >= v550)
                  {
                    goto LABEL_1843;
                  }

                  v552 = v30[v23];
                  if (v32 > v552 || v33 >= v552)
                  {
                    goto LABEL_1843;
                  }

                  v554 = v30[v19];
                  if (v32 <= v554)
                  {
                    if (v33 >= v554)
                    {
                      v787 = v30[v12];
                      if (v32 > v787 || v33 >= v787)
                      {
                        goto LABEL_1843;
                      }
                    }
                  }

                  else
                  {
                    v555 = v30[v12];
                    if (v32 > v555 || v33 >= v555)
                    {
                      goto LABEL_1843;
                    }
                  }

                  v327 = v30[v21];
                  goto LABEL_1988;
                }

                v396 = *(v30 - 3);
                if (v32 > v396 || v33 >= v396)
                {
                  goto LABEL_1843;
                }

                v398 = v30[v23];
                if (v32 > v398)
                {
                  v399 = v30[v15];
                  if (v32 > v399 || v33 >= v399)
                  {
                    goto LABEL_1843;
                  }

                  v401 = v30[v16];
                  if (v32 > v401 || v33 >= v401)
                  {
                    goto LABEL_1843;
                  }

                  v403 = v30[v18];
                  if (v32 > v403 || v33 >= v403)
                  {
                    goto LABEL_1843;
                  }

                  v405 = v30[v21];
                  if (v32 > v405 || v33 >= v405)
                  {
                    goto LABEL_1843;
                  }

                  v406 = v30[v19];
                  goto LABEL_2067;
                }

                if (v33 >= v398)
                {
                  v760 = v30[v15];
                  if (v32 > v760 || v33 >= v760)
                  {
                    goto LABEL_1843;
                  }

                  v762 = v30[v16];
                  if (v32 > v762 || v33 >= v762)
                  {
                    goto LABEL_1843;
                  }

                  v764 = v30[v21];
                  if (v32 > v764)
                  {
                    goto LABEL_1843;
                  }

                  if (v33 >= v764)
                  {
                    goto LABEL_1843;
                  }

                  v765 = v30[v18];
                  if (v32 > v765 || v33 >= v765)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_808;
                }

                v659 = v30[v21];
                if (v32 > v659 || v33 >= v659)
                {
                  goto LABEL_1843;
                }

                v661 = v30[v19];
                if (v32 > v661)
                {
                  v662 = v30[v12];
                  if (v32 > v662)
                  {
                    goto LABEL_1843;
                  }

LABEL_1789:
                  if (v33 >= v662)
                  {
                    goto LABEL_1843;
                  }

                  v191 = v30[v13];
                  goto LABEL_1791;
                }

                if (v33 >= v661)
                {
                  v858 = v30[v12];
                  if (v32 > v858 || v33 >= v858)
                  {
                    goto LABEL_1843;
                  }

LABEL_741:
                  v327 = v30[v13];
LABEL_1988:
                  if (v32 > v327 || v33 >= v327)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1990;
                }

                v817 = v30[v24];
                if (v32 <= v817)
                {
                  if (v33 < v817)
                  {
                    goto LABEL_1816;
                  }

                  v464 = v30[v16];
LABEL_1115:
                  if (v32 > v464 || v33 >= v464)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_2088;
                }

                v378 = v30[v16];
LABEL_2064:
                if (v32 > v378 || v33 >= v378)
                {
                  goto LABEL_1843;
                }

                goto LABEL_2066;
              }

              v201 = v30[v12];
              if (v32 > v201)
              {
                v202 = v30[v13];
                if (v32 > v202)
                {
                  if (v32 <= v30[v19] || v32 <= v30[v16] || v32 <= v30[v15])
                  {
                    goto LABEL_1843;
                  }

                  v203 = v30[v14];
                  goto LABEL_1442;
                }

                if (v33 >= v202)
                {
                  goto LABEL_1843;
                }

                v570 = v30[v19];
                if (v32 > v570 || v33 >= v570)
                {
                  goto LABEL_1843;
                }

                v572 = v30[v23];
                if (v32 > v572 || v33 >= v572)
                {
                  goto LABEL_1843;
                }

                v574 = v30[v21];
                if (v32 > v574 || v33 >= v574)
                {
                  goto LABEL_1843;
                }

                v576 = v30[v24];
                if (v32 > v576 || v33 >= v576)
                {
                  goto LABEL_1843;
                }

LABEL_1438:
                v406 = *(v30 - 3);
                goto LABEL_2067;
              }

              if (v33 >= v201)
              {
                v610 = v30[v19];
                if (v32 > v610 || v33 >= v610)
                {
                  goto LABEL_1843;
                }

                v612 = v30[v13];
                if (v32 > v612 || v33 >= v612)
                {
                  goto LABEL_1843;
                }

                v614 = v30[v23];
                if (v32 > v614 || v33 >= v614)
                {
                  goto LABEL_1843;
                }

                v616 = v30[v21];
                if (v32 > v616 || v33 >= v616)
                {
                  goto LABEL_1843;
                }

LABEL_1604:
                v327 = *(v30 - 3);
                goto LABEL_1988;
              }

              v493 = v30[v21];
              if (v32 > v493 || v33 >= v493)
              {
                goto LABEL_1843;
              }

              v495 = v30[v23];
              if (v32 > v495 || v33 >= v495)
              {
                goto LABEL_1843;
              }

              v497 = v30[v13];
              if (v32 > v497 || v33 >= v497)
              {
                goto LABEL_1843;
              }

              v499 = *(v30 - 3);
              if (v32 > v499 || v33 >= v499)
              {
                goto LABEL_1843;
              }
            }

            else
            {
              v50 = v30[v18];
              if (v32 <= v50)
              {
                v126 = v30[v14];
                if (v33 >= v50)
                {
                  if (v32 > v126 || v33 >= v126)
                  {
                    goto LABEL_1843;
                  }

                  v223 = v30[v21];
                  if (v32 > v223 || v33 >= v223)
                  {
                    goto LABEL_1843;
                  }

                  v225 = *(v30 - 3);
                  if (v32 > v225 || v33 >= v225)
                  {
                    goto LABEL_1843;
                  }

                  v227 = v30[v12];
                  if (v32 > v227 || v33 >= v227)
                  {
                    goto LABEL_1843;
                  }

                  v229 = v30[v23];
                  if (v32 > v229 || v33 >= v229)
                  {
                    goto LABEL_1843;
                  }

                  v231 = v30[v22];
                  if (v32 > v231 || v33 >= v231)
                  {
                    goto LABEL_1843;
                  }

                  v233 = v30[v13];
LABEL_580:
                  if (v32 > v233 || v33 >= v233)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1990;
                }

                if (v32 > v126 || v33 >= v126)
                {
                  goto LABEL_1843;
                }

                v128 = v30[v21];
                if (v32 > v128 || v33 >= v128)
                {
                  goto LABEL_1843;
                }

                v130 = v30[v23];
                if (v32 > v130 || v33 >= v130)
                {
                  goto LABEL_1843;
                }

                v132 = v30[v12];
                if (v32 > v132 || v33 >= v132)
                {
                  goto LABEL_1843;
                }

                v134 = *(v30 - 3);
                if (v32 > v134 || v33 >= v134)
                {
                  goto LABEL_1843;
                }

                v136 = v30[v22];
                if (v32 > v136 || v33 >= v136)
                {
                  goto LABEL_1843;
                }

                v138 = v30[v24];
LABEL_1256:
                if (v32 > v138 || v33 >= v138)
                {
                  goto LABEL_1843;
                }

                goto LABEL_1261;
              }

              v51 = v30[v19];
              if (v32 > v51)
              {
                v52 = *(v30 - 3);
                if (v32 > v52)
                {
                  if (v32 <= v30[v16])
                  {
                    if (v32 <= v30[v24] || v32 <= v30[v23])
                    {
                      goto LABEL_1843;
                    }
                  }

                  else
                  {
                    v53 = v30[v15];
                    if (v32 > v53)
                    {
                      if (v32 <= v30[v17])
                      {
                        goto LABEL_1843;
                      }

                      if (v32 > v30[v21])
                      {
                        goto LABEL_1816;
                      }

                      if (v32 <= v30[v12])
                      {
                        goto LABEL_1843;
                      }

                      goto LABEL_1143;
                    }

                    v475 = v30[v23];
                    if (v33 < v53)
                    {
                      if (v32 <= v475 || v32 <= v30[v21])
                      {
                        goto LABEL_1843;
                      }

                      v279 = v30[v22];
                      goto LABEL_1613;
                    }

                    if (v32 <= v475)
                    {
                      goto LABEL_1843;
                    }
                  }

                  if (v32 <= v30[v22])
                  {
                    goto LABEL_1843;
                  }

LABEL_1612:
                  v279 = v30[v21];
                  goto LABEL_1613;
                }

                if (v33 >= v52)
                {
                  if (v32 <= v30[v14] || v32 <= v30[v16] || v32 <= v30[v21] && v32 <= v30[v12])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1020;
                }

                v272 = v30[v12];
                if (v32 > v272)
                {
                  v88 = v30[v16];
                  goto LABEL_1017;
                }

                v501 = v30[v21];
                if (v33 >= v272)
                {
                  if (v32 <= v501)
                  {
                    goto LABEL_1843;
                  }

LABEL_1550:
                  if (v32 <= v30[v14])
                  {
                    goto LABEL_1843;
                  }

                  v419 = v30[v16];
                  goto LABEL_1019;
                }

                if (v32 > v501)
                {
                  goto LABEL_1550;
                }

                if (v33 >= v501)
                {
                  goto LABEL_1843;
                }

                v502 = v30[v14];
                if (v32 > v502 || v33 >= v502)
                {
                  goto LABEL_1843;
                }

                v504 = v30[v23];
                if (v32 > v504 || v33 >= v504)
                {
                  goto LABEL_1843;
                }

                v506 = v30[v22];
                if (v32 > v506 || v33 >= v506)
                {
                  goto LABEL_1843;
                }

                v507 = v30[v24];
                goto LABEL_1652;
              }

              v179 = v30[v14];
              if (v33 >= v51)
              {
                if (v32 > v179 || v33 >= v179)
                {
                  goto LABEL_1843;
                }

                v317 = v30[v21];
                if (v32 > v317 || v33 >= v317)
                {
                  goto LABEL_1843;
                }

                v319 = *(v30 - 3);
                if (v32 > v319 || v33 >= v319)
                {
                  goto LABEL_1843;
                }

                v321 = v30[v12];
                if (v32 > v321 || v33 >= v321)
                {
                  goto LABEL_1843;
                }

                v323 = v30[v23];
                if (v32 > v323 || v33 >= v323)
                {
                  goto LABEL_1843;
                }

                v325 = v30[v22];
                if (v32 > v325 || v33 >= v325)
                {
                  goto LABEL_1843;
                }

                goto LABEL_741;
              }

              if (v32 > v179 || v33 >= v179)
              {
                goto LABEL_1843;
              }

              v181 = v30[v21];
              if (v32 > v181 || v33 >= v181)
              {
                goto LABEL_1843;
              }

              v183 = *(v30 - 3);
              if (v32 > v183 || v33 >= v183)
              {
                goto LABEL_1843;
              }

              v185 = v30[v12];
              if (v32 > v185 || v33 >= v185)
              {
                goto LABEL_1843;
              }

              v187 = v30[v23];
              if (v32 > v187 || v33 >= v187)
              {
                goto LABEL_1843;
              }

              v189 = v30[v13];
              if (v32 > v189 || v33 >= v189)
              {
                goto LABEL_1843;
              }

              v191 = v30[v22];
LABEL_1791:
              if (v32 > v191 || v33 >= v191)
              {
                goto LABEL_1843;
              }
            }

LABEL_1793:
            v406 = v30[v24];
            goto LABEL_2067;
          }

          v66 = v30[v19];
          if (v32 <= v66)
          {
            if (v33 >= v66)
            {
              goto LABEL_1843;
            }

            v94 = v30[v18];
            if (v32 > v94 || v33 >= v94)
            {
              goto LABEL_1843;
            }

            v96 = v30[v22];
            if (v32 > v96 || v33 >= v96)
            {
              goto LABEL_1843;
            }

            v98 = *(v30 - 3);
            if (v32 > v98 || v33 >= v98)
            {
              goto LABEL_1843;
            }

            v100 = v30[v23];
            if (v32 <= v100)
            {
              if (v33 < v100)
              {
                v478 = v30[v20];
                if (v32 > v478 || v33 >= v478)
                {
                  goto LABEL_1843;
                }

                v480 = v30[v17];
                if (v32 > v480 || v33 >= v480)
                {
                  goto LABEL_1843;
                }

                v482 = v30[v24];
                if (v32 <= v482)
                {
                  if (v33 >= v482)
                  {
                    v785 = v30[v16];
LABEL_1974:
                    if (v32 > v785 || v33 >= v785)
                    {
                      goto LABEL_1843;
                    }
                  }
                }

                else
                {
                  v483 = v30[v16];
                  if (v32 > v483 || v33 >= v483)
                  {
                    goto LABEL_1843;
                  }
                }

                v221 = v30[v21];
                goto LABEL_2153;
              }

              v603 = v30[v15];
              if (v32 > v603 || v33 >= v603)
              {
                goto LABEL_1843;
              }

              v605 = v30[v16];
              if (v32 > v605 || v33 >= v605)
              {
                goto LABEL_1843;
              }

              v607 = v30[v20];
              if (v32 > v607 || v33 >= v607)
              {
                goto LABEL_1843;
              }

              goto LABEL_1531;
            }

            v101 = v30[v15];
            if (v32 > v101 || v33 >= v101)
            {
              goto LABEL_1843;
            }

            v103 = v30[v16];
            if (v32 > v103 || v33 >= v103)
            {
              goto LABEL_1843;
            }

            v105 = v30[v20];
            if (v32 > v105 || v33 >= v105)
            {
              goto LABEL_1843;
            }

            v107 = v30[v21];
            goto LABEL_552;
          }

          if (v32 <= v30[v18])
          {
            goto LABEL_1843;
          }

          v67 = v30[v16];
          if (v32 > v67)
          {
            v68 = v30[v20];
            if (v32 <= v68)
            {
              v278 = v30[v13];
              if (v33 >= v68)
              {
                if (v32 <= v278)
                {
                  goto LABEL_1843;
                }

                v88 = v30[v12];
                goto LABEL_1017;
              }

              if (v32 <= v278)
              {
                goto LABEL_1843;
              }

              v159 = v30[v12];
LABEL_618:
              if (v32 <= v159 || v32 <= v30[v15])
              {
                goto LABEL_1843;
              }

              v279 = v30[v14];
            }

            else
            {
              if (v32 > v30[v21])
              {
                if (v32 <= v30[v17])
                {
                  goto LABEL_1843;
                }

                if (v32 > v30[v15])
                {
                  if (v32 > *(v30 - 3))
                  {
                    goto LABEL_1816;
                  }

                  goto LABEL_1143;
                }

                if (v32 <= v30[v23])
                {
                  goto LABEL_1843;
                }

                v277 = v30[v22];
LABEL_1410:
                if (v32 <= v277)
                {
                  goto LABEL_1843;
                }

                v91 = *(v30 - 3);
LABEL_1815:
                if (v32 > v91)
                {
                  goto LABEL_1816;
                }

                goto LABEL_1843;
              }

              if (v32 <= v30[v12])
              {
                goto LABEL_1843;
              }

LABEL_1018:
              v419 = v30[v14];
LABEL_1019:
              if (v32 <= v419)
              {
                goto LABEL_1843;
              }

LABEL_1020:
              v279 = v30[v15];
            }

LABEL_1613:
            if (v32 <= v279)
            {
              goto LABEL_1843;
            }

            goto LABEL_1614;
          }

          v197 = v30[v24];
          if (v33 >= v67)
          {
            if (v32 <= v197 || v32 <= v30[v23] || v32 <= v30[v21])
            {
              goto LABEL_1843;
            }

            v198 = v30[v22];
          }

          else
          {
            if (v32 <= v197 || v32 <= v30[v22] || v32 <= v30[v21])
            {
              goto LABEL_1843;
            }

            v198 = v30[v23];
          }

          if (v32 > v198 && v32 > v30[v20])
          {
            v279 = *(v30 - 3);
            goto LABEL_1613;
          }
        }

        else
        {
          v36 = v30[v17];
          if (v32 > v36)
          {
            v37 = v30[v16];
            if (v32 <= v37)
            {
              if (v33 >= v37)
              {
                if (v32 <= v30[v23] || v32 <= v30[v22] || v32 <= v30[v24])
                {
                  goto LABEL_1843;
                }
              }

              else if (v32 <= v30[v22] || v32 <= v30[v23] || v32 <= v30[v24])
              {
                goto LABEL_1843;
              }

              if (v32 <= *(v30 - 3))
              {
                if (v32 <= v30[v15])
                {
                  goto LABEL_1843;
                }

                v290 = v30[v12];
                goto LABEL_859;
              }

              if (v32 <= v30[v20] || v32 <= v30[v21])
              {
                if (v32 <= v30[v12])
                {
                  goto LABEL_1843;
                }

                goto LABEL_1145;
              }

              goto LABEL_293;
            }

            v38 = v30[v12];
            if (v32 > v38)
            {
              v39 = v30[v15];
              if (v32 > v39)
              {
                v40 = v30[v14];
                if (v32 > v40)
                {
                  v41 = v30[v13];
                  if (v32 > v41)
                  {
                    if (v32 > v30[v18])
                    {
                      goto LABEL_1816;
                    }

                    v42 = v30[v23];
                    goto LABEL_1404;
                  }

                  v345 = v30[v20];
                  if (v33 < v41)
                  {
                    if (v32 <= v345 || v32 <= v30[v19])
                    {
                      goto LABEL_1843;
                    }

                    v346 = v30[v18];
                    if (v32 > v346)
                    {
                      goto LABEL_1816;
                    }

                    v347 = v30[v22];
                    if (v33 >= v346)
                    {
                      if (v32 <= v347 || v32 <= *(v30 - 3))
                      {
                        goto LABEL_1843;
                      }

                      v349 = v30[v23];
                      goto LABEL_1013;
                    }

                    if (v32 <= v347)
                    {
                      goto LABEL_1843;
                    }

                    goto LABEL_780;
                  }

                  if (v32 <= v345 || v32 <= v30[v19])
                  {
                    goto LABEL_1843;
                  }

                  v533 = v30[v18];
                  if (v32 > v533)
                  {
                    goto LABEL_1816;
                  }

                  v534 = v30[v22];
                  if (v33 >= v533)
                  {
                    if (v32 <= v534 || v32 <= v30[v23])
                    {
                      goto LABEL_1843;
                    }

LABEL_716:
                    v111 = v30[v21];
                  }

                  else
                  {
                    if (v32 <= v534)
                    {
                      goto LABEL_1843;
                    }

                    v178 = v30[v23];
LABEL_395:
                    if (v32 <= v178)
                    {
                      goto LABEL_1843;
                    }

                    v111 = *(v30 - 3);
                  }

                  goto LABEL_1813;
                }

                if (v33 < v40)
                {
                  if (v32 <= *(v30 - 3) || v32 <= v30[v20] || v32 <= v30[v21])
                  {
                    goto LABEL_1843;
                  }

                  if (v32 > v30[v19])
                  {
                    v271 = v30[v18];
                    if (v32 > v271)
                    {
                      goto LABEL_1816;
                    }

                    if (v33 >= v271)
                    {
                      if (v32 <= v30[v22] || v32 <= v30[v24])
                      {
                        goto LABEL_1843;
                      }

                      v91 = v30[v23];
                      goto LABEL_1815;
                    }

                    goto LABEL_301;
                  }

                  v706 = v30[v22];
LABEL_1809:
                  if (v32 <= v706)
                  {
                    goto LABEL_1843;
                  }

                  v547 = v30[v23];
LABEL_1811:
                  if (v32 <= v547)
                  {
                    goto LABEL_1843;
                  }

                  v111 = v30[v13];
LABEL_1813:
                  if (v32 <= v111)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1814;
                }

                if (v32 <= v30[v21] || v32 <= v30[v20] || v32 <= *(v30 - 3))
                {
                  goto LABEL_1843;
                }

                v416 = v30[v19];
                if (v32 <= v416)
                {
                  v706 = v30[v22];
                  if (v33 < v416)
                  {
                    if (v32 <= v706)
                    {
                      goto LABEL_1843;
                    }

                    v332 = v30[v23];
                    goto LABEL_1004;
                  }

                  goto LABEL_1809;
                }

                v417 = v30[v18];
                if (v32 > v417)
                {
                  goto LABEL_1816;
                }

                v207 = v30[v23];
                if (v33 < v417)
                {
LABEL_989:
                  if (v32 <= v207 || v32 <= v30[v24])
                  {
                    goto LABEL_1843;
                  }

                  v91 = v30[v22];
                  goto LABEL_1815;
                }

LABEL_439:
                if (v32 <= v207)
                {
                  goto LABEL_1843;
                }

LABEL_303:
                v111 = v30[v22];
                goto LABEL_1813;
              }

              if (v33 >= v39)
              {
                if (v32 <= v30[v22] || v32 <= v30[v23] || v32 <= *(v30 - 3))
                {
                  goto LABEL_1843;
                }

                v314 = v30[v24];
                if (v32 <= v314)
                {
                  if (v33 < v314)
                  {
                    if (v32 <= v30[v20] || v32 <= v30[v21])
                    {
                      goto LABEL_1843;
                    }

                    v203 = v30[v19];
                    goto LABEL_1442;
                  }

                  if (v32 <= v30[v21] || v32 <= v30[v20])
                  {
                    goto LABEL_1843;
                  }

LABEL_25:
                  v48 = v30[v18];
                  goto LABEL_1310;
                }

                if (v32 > v30[v14])
                {
                  v315 = v30[v13];
                  if (v32 > v315)
                  {
                    goto LABEL_1816;
                  }

                  if (v33 < v315)
                  {
                    goto LABEL_758;
                  }

                  goto LABEL_709;
                }

                if (v32 <= v30[v20] || v32 <= v30[v21])
                {
                  goto LABEL_1843;
                }
              }

              else
              {
                if (v32 <= *(v30 - 3) || v32 <= v30[v23] || v32 <= v30[v22])
                {
                  goto LABEL_1843;
                }

                v174 = v30[v14];
                if (v32 > v174)
                {
                  if (v32 <= v30[v13])
                  {
                    if (v32 <= v30[v21])
                    {
                      goto LABEL_1843;
                    }
                  }

                  else
                  {
                    v175 = v30[v24];
                    if (v32 > v175)
                    {
                      goto LABEL_1816;
                    }

                    if (v33 < v175)
                    {
                      v176 = v30[v20];
LABEL_820:
                      if (v32 <= v176)
                      {
                        goto LABEL_1843;
                      }

                      v349 = v30[v18];
                      goto LABEL_1013;
                    }

LABEL_709:
                    if (v32 <= v30[v21])
                    {
                      goto LABEL_1843;
                    }
                  }

                  v48 = v30[v20];
                  goto LABEL_1310;
                }

                v648 = v30[v20];
                if (v33 < v174)
                {
                  if (v32 <= v648 || v32 <= v30[v21])
                  {
                    goto LABEL_1843;
                  }

                  if (v32 > v30[v24])
                  {
                    v649 = v30[v13];
                    if (v32 > v649 || v33 < v649)
                    {
                      goto LABEL_1816;
                    }

                    goto LABEL_1311;
                  }

LABEL_2082:
                  if (v32 <= v30[v18])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1311;
                }

                if (v32 <= v648 || v32 <= v30[v21])
                {
                  goto LABEL_1843;
                }

                if (v32 <= v30[v24])
                {
                  goto LABEL_2082;
                }
              }

              if (v32 > v30[v19])
              {
                goto LABEL_1816;
              }

              goto LABEL_1147;
            }

            v108 = v30[v21];
            if (v33 >= v38)
            {
              if (v32 <= v108 || v32 <= v30[v20] || v32 <= v30[v19])
              {
                goto LABEL_1843;
              }

              if (v32 > *(v30 - 3))
              {
                if (v32 > v30[v15])
                {
                  v206 = v30[v18];
                  if (v32 > v206)
                  {
                    goto LABEL_1816;
                  }

                  v207 = v30[v23];
                  if (v33 >= v206)
                  {
                    goto LABEL_989;
                  }

                  goto LABEL_439;
                }

                goto LABEL_1444;
              }

              v568 = v30[v14];
            }

            else
            {
              if (v32 <= v108 || v32 <= v30[v20] || v32 <= v30[v19])
              {
                goto LABEL_1843;
              }

              v109 = *(v30 - 3);
              if (v32 > v109)
              {
                if (v32 > v30[v15])
                {
                  v110 = v30[v18];
                  if (v32 > v110)
                  {
                    goto LABEL_1816;
                  }

                  if (v33 < v110)
                  {
                    if (v32 <= v30[v22])
                    {
                      goto LABEL_1843;
                    }

                    v111 = v30[v23];
                    goto LABEL_1813;
                  }

LABEL_301:
                  v157 = v30[v23];
LABEL_302:
                  if (v32 <= v157)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_303;
                }

LABEL_1444:
                if (v32 <= v30[v23] || v32 <= v30[v22])
                {
                  goto LABEL_1843;
                }

                if (v32 > v30[v24])
                {
                  goto LABEL_1816;
                }

                goto LABEL_1443;
              }

              v568 = v30[v14];
              if (v33 < v109)
              {
                if (v32 <= v568 || v32 <= v30[v18])
                {
                  goto LABEL_1843;
                }

                goto LABEL_132;
              }
            }

            if (v32 <= v568)
            {
              goto LABEL_1843;
            }

            v203 = v30[v15];
            goto LABEL_1442;
          }

          if (v33 >= v36)
          {
            if (v32 <= v30[v24])
            {
              goto LABEL_1843;
            }

            v89 = v30[v12];
            if (v32 > v89)
            {
              v90 = v30[v23];
              if (v32 <= v90)
              {
                v289 = v30[v18];
                if (v33 >= v90)
                {
                  if (v32 <= v289 || v32 <= v30[v16])
                  {
                    goto LABEL_1843;
                  }

                  v275 = v30[v15];
                  goto LABEL_1046;
                }

                if (v32 <= v289 || v32 <= v30[v16])
                {
                  goto LABEL_1843;
                }

                v290 = v30[v15];
                goto LABEL_859;
              }

              if (v32 <= v30[v13])
              {
                goto LABEL_1843;
              }

              if (v32 <= v30[v22])
              {
                goto LABEL_1140;
              }

              if (v32 <= v30[v14])
              {
                if (v32 <= v30[v20])
                {
                  goto LABEL_1843;
                }

                v277 = v30[v21];
                goto LABEL_1410;
              }

              if (v32 > *(v30 - 3))
              {
                goto LABEL_1816;
              }

LABEL_132:
              v91 = v30[v15];
              goto LABEL_1815;
            }

            v204 = v30[v19];
            if (v33 < v89)
            {
              if (v32 <= v204 || v32 <= v30[v13] || v32 <= v30[v21] || v32 <= v30[v22])
              {
                goto LABEL_1843;
              }

              v205 = v30[v20];
              goto LABEL_781;
            }

            if (v32 <= v204 || v32 <= v30[v20] || v32 <= v30[v22] || v32 <= v30[v13])
            {
              goto LABEL_1843;
            }

LABEL_780:
            v205 = v30[v21];
LABEL_781:
            if (v32 <= v205)
            {
              goto LABEL_1843;
            }

            v277 = v30[v23];
            goto LABEL_1410;
          }

          v59 = v30[v23];
          if (v32 > v59)
          {
            v60 = v30[v12];
            if (v32 <= v60)
            {
              v194 = v30[v19];
              if (v33 >= v60)
              {
                if (v32 > v194)
                {
                  if (v32 <= v30[v13] || v32 <= v30[v21] || v32 <= v30[v20])
                  {
                    goto LABEL_1843;
                  }

                  v328 = v30[v22];
LABEL_1344:
                  if (v32 <= v328)
                  {
                    goto LABEL_1843;
                  }

                  v277 = v30[v24];
                  goto LABEL_1410;
                }

                if (v33 >= v194)
                {
                  goto LABEL_1843;
                }

                v454 = v30[v22];
                if (v32 > v454 || v33 >= v454)
                {
                  goto LABEL_1843;
                }

                v456 = v30[v15];
                if (v32 > v456 || v33 >= v456)
                {
                  goto LABEL_1843;
                }

                v458 = *(v30 - 3);
                if (v32 > v458 || v33 >= v458)
                {
                  goto LABEL_1843;
                }

                v460 = v30[v16];
                if (v32 > v460 || v33 >= v460)
                {
                  goto LABEL_1843;
                }

                v462 = v30[v20];
                if (v32 > v462 || v33 >= v462)
                {
                  goto LABEL_1843;
                }

                v464 = v30[v21];
                goto LABEL_1115;
              }

              if (v32 > v194)
              {
                if (v32 <= v30[v13] || v32 <= v30[v21] || v32 <= v30[v22])
                {
                  goto LABEL_1843;
                }

                v178 = v30[v20];
                goto LABEL_395;
              }

              if (v33 >= v194)
              {
                goto LABEL_1843;
              }

              v379 = v30[v15];
              if (v32 > v379 || v33 >= v379)
              {
                goto LABEL_1843;
              }

              v381 = v30[v22];
              if (v32 > v381 || v33 >= v381)
              {
                goto LABEL_1843;
              }

              v383 = *(v30 - 3);
              if (v32 > v383 || v33 >= v383)
              {
                goto LABEL_1843;
              }

              v385 = v30[v20];
              if (v32 > v385 || v33 >= v385)
              {
                goto LABEL_1843;
              }

              v387 = v30[v16];
              if (v32 > v387 || v33 >= v387)
              {
                goto LABEL_1843;
              }

              v378 = v30[v21];
            }

            else
            {
              v61 = *(v30 - 3);
              if (v32 > v61)
              {
                if (v32 <= v30[v13] || v32 <= v30[v24])
                {
                  goto LABEL_1843;
                }

                if (v32 > v30[v22])
                {
                  if (v32 > v30[v14])
                  {
                    goto LABEL_1816;
                  }

                  if (v32 <= v30[v20])
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_1014;
                }

LABEL_1140:
                if (v32 <= v30[v16])
                {
                  goto LABEL_1843;
                }

                goto LABEL_1141;
              }

              if (v33 >= v61)
              {
                if (v32 <= v30[v15])
                {
                  goto LABEL_1843;
                }

                v418 = v30[v22];
                if (v32 > v418)
                {
                  v332 = v30[v14];
                  goto LABEL_1004;
                }

                v602 = v30[v16];
                if (v33 >= v418)
                {
                  if (v32 <= v602)
                  {
                    goto LABEL_1843;
                  }

                  goto LABEL_607;
                }

                if (v32 <= v602)
                {
                  goto LABEL_1843;
                }

                v290 = v30[v24];
LABEL_859:
                if (v32 <= v290)
                {
                  goto LABEL_1843;
                }

LABEL_1145:
                v141 = v30[v14];
LABEL_1146:
                if (v32 <= v141)
                {
                  goto LABEL_1843;
                }

LABEL_1147:
                v91 = v30[v13];
                goto LABEL_1815;
              }

              v274 = v30[v16];
              if (v32 > v274)
              {
                if (v32 <= v30[v15])
                {
                  goto LABEL_1843;
                }

LABEL_607:
                v275 = v30[v24];
LABEL_1046:
                if (v32 <= v275)
                {
                  goto LABEL_1843;
                }

                v431 = v30[v13];
LABEL_1142:
                if (v32 <= v431)
                {
                  goto LABEL_1843;
                }

LABEL_1143:
                v91 = v30[v14];
                goto LABEL_1815;
              }

              v508 = v30[v22];
              if (v33 >= v274)
              {
                if (v32 <= v508 || v32 <= v30[v15])
                {
                  goto LABEL_1843;
                }

                v547 = v30[v14];
                goto LABEL_1811;
              }

              if (v32 > v508)
              {
                if (v32 <= v30[v15] || v32 <= v30[v13])
                {
                  goto LABEL_1843;
                }

                v111 = v30[v14];
                goto LABEL_1813;
              }

              if (v33 >= v508)
              {
                goto LABEL_1843;
              }

              v663 = v30[v15];
              if (v32 > v663 || v33 >= v663)
              {
                goto LABEL_1843;
              }

              v665 = v30[v20];
              if (v32 > v665 || v33 >= v665)
              {
                goto LABEL_1843;
              }

              v667 = v30[v21];
              if (v32 > v667 || v33 >= v667)
              {
                goto LABEL_1843;
              }

              v378 = v30[v19];
            }

            goto LABEL_2064;
          }

          if (v33 >= v59)
          {
            v234 = v30[v18];
            if (v32 > v234)
            {
              if (v32 <= v30[v24] || v32 <= v30[v16] || v32 <= v30[v12] || v32 <= v30[v13])
              {
                goto LABEL_1843;
              }

LABEL_1141:
              v431 = v30[v15];
              goto LABEL_1142;
            }

            if (v33 >= v234)
            {
              goto LABEL_1843;
            }

            v333 = v30[v15];
            if (v32 > v333 || v33 >= v333)
            {
              goto LABEL_1843;
            }

            v335 = v30[v22];
            if (v32 > v335 || v33 >= v335)
            {
              goto LABEL_1843;
            }

            v337 = *(v30 - 3);
            if (v32 > v337 || v33 >= v337)
            {
              goto LABEL_1843;
            }

            v339 = v30[v16];
            if (v32 > v339 || v33 >= v339)
            {
              goto LABEL_1843;
            }

            v341 = v30[v20];
            if (v32 > v341 || v33 >= v341)
            {
              goto LABEL_1843;
            }

            v343 = v30[v21];
            if (v32 > v343 || v33 >= v343)
            {
              goto LABEL_1843;
            }

            goto LABEL_808;
          }

          v139 = v30[v16];
          if (v32 > v139)
          {
            v140 = v30[v18];
            if (v32 > v140)
            {
              if (v32 <= v30[v24] || v32 <= v30[v12] || v32 <= v30[v14])
              {
                goto LABEL_1843;
              }

              v141 = v30[v15];
              goto LABEL_1146;
            }

            if (v33 >= v140)
            {
              goto LABEL_1843;
            }

            v352 = v30[v24];
            if (v32 > v352 || v33 >= v352)
            {
              goto LABEL_1843;
            }

            v354 = v30[v21];
            if (v32 > v354 || v33 >= v354)
            {
              goto LABEL_1843;
            }

            v356 = v30[v20];
            if (v32 > v356 || v33 >= v356)
            {
              goto LABEL_1843;
            }

            v358 = v30[v22];
            if (v32 > v358 || v33 >= v358)
            {
              goto LABEL_1843;
            }

            v360 = v30[v19];
            if (v32 > v360 || v33 >= v360)
            {
              goto LABEL_1843;
            }

            goto LABEL_1438;
          }

          if (v33 >= v139)
          {
            v432 = v30[v24];
            if (v32 > v432 || v33 >= v432)
            {
              goto LABEL_1843;
            }

            v434 = v30[v18];
            if (v32 > v434 || v33 >= v434)
            {
              goto LABEL_1843;
            }

            v436 = v30[v21];
            if (v32 > v436 || v33 >= v436)
            {
              goto LABEL_1843;
            }

            v438 = v30[v20];
            if (v32 > v438 || v33 >= v438)
            {
              goto LABEL_1843;
            }

            v440 = v30[v22];
            if (v32 > v440 || v33 >= v440)
            {
              goto LABEL_1843;
            }

            v442 = v30[v19];
            if (v32 > v442 || v33 >= v442)
            {
              goto LABEL_1843;
            }

LABEL_1070:
            v221 = *(v30 - 3);
            goto LABEL_2153;
          }

          v291 = *(v30 - 3);
          if (v32 <= v291 && v33 < v291)
          {
            v293 = v30[v20];
            if (v32 <= v293 && v33 < v293)
            {
              v295 = v30[v22];
              if (v32 <= v295 && v33 < v295)
              {
                v297 = v30[v18];
                if (v32 <= v297 && v33 < v297)
                {
                  v299 = v30[v21];
                  if (v32 <= v299 && v33 < v299)
                  {
                    v301 = v30[v19];
                    if (v32 <= v301 && v33 < v301)
                    {
LABEL_1816:
                      if (*(result + 8) <= a3)
                      {
                        v712 = v29;
                        v714 = *(a4 + 8);
                        v713 = *(a4 + 16);
                        if (v714 >= v713)
                        {
                          v716 = (v714 - *a4) >> 3;
                          v717 = v716 + 1;
                          if ((v716 + 1) >> 61)
                          {
                            sub_254B32E20();
                          }

                          v718 = v713 - *a4;
                          if (v718 >> 2 > v717)
                          {
                            v717 = v718 >> 2;
                          }

                          if (v718 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v719 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v719 = v717;
                          }

                          if (v719)
                          {
                            sub_254B35448(a4, v719);
                          }

                          v720 = (8 * v716);
                          *v720 = v712;
                          v720[1] = v28;
                          v715 = 8 * v716 + 8;
                          v721 = *(a4 + 8) - *a4;
                          v722 = v720 - v721;
                          memcpy(v720 - v721, *a4, v721);
                          v723 = *a4;
                          *a4 = v722;
                          *(a4 + 8) = v715;
                          *(a4 + 16) = 0;
                          if (v723)
                          {
                            operator delete(v723);
                          }

                          a5 = v916;
                          v23 = v917;
                          result = v931;
                          v11 = v929;
                          v5 = v930;
                          v13 = v927;
                          v12 = v928;
                          v15 = v925;
                          v14 = v926;
                          v17 = v923;
                          v16 = v924;
                          v19 = v921;
                          v18 = v922;
                          v21 = v919;
                          v20 = v920;
                          v22 = v918;
                        }

                        else
                        {
                          *v714 = v712;
                          v714[1] = v28;
                          v715 = (v714 + 2);
                        }

                        *(a4 + 8) = v715;
                        v725 = a5[1];
                        v724 = a5[2];
                        if (v725 >= v724)
                        {
                          v727 = *a5;
                          v728 = v725 - *a5;
                          v729 = v728 >> 2;
                          v730 = (v728 >> 2) + 1;
                          if (v730 >> 62)
                          {
                            sub_254B32E20();
                          }

                          v731 = v724 - v727;
                          if (v731 >> 1 > v730)
                          {
                            v730 = v731 >> 1;
                          }

                          v70 = v731 >= 0x7FFFFFFFFFFFFFFCLL;
                          v732 = 0x3FFFFFFFFFFFFFFFLL;
                          if (!v70)
                          {
                            v732 = v730;
                          }

                          if (v732)
                          {
                            sub_254B3383C(a5, v732);
                          }

                          *(4 * v729) = a3;
                          v726 = 4 * v729 + 4;
                          memcpy(0, v727, v728);
                          v733 = *a5;
                          *a5 = 0;
                          a5[1] = v726;
                          a5[2] = 0;
                          if (v733)
                          {
                            operator delete(v733);
                          }

                          a4 = v915;
                          result = v931;
                          v11 = v929;
                          v5 = v930;
                          v13 = v927;
                          v12 = v928;
                          v15 = v925;
                          v14 = v926;
                          v17 = v923;
                          v16 = v924;
                          v19 = v921;
                          v18 = v922;
                          v21 = v919;
                          v20 = v920;
                          v23 = v917;
                          v22 = v918;
                        }

                        else
                        {
                          *v725 = a3;
                          v726 = (v725 + 1);
                        }

                        a5[1] = v726;
                        v24 = v932;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_1843:
      if (++v29 == v26)
      {
        goto LABEL_2376;
      }
    }
  }

  return result;
}

uint64_t sub_254B738F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = a4[1];
  result = v6 - *a4;
  if (v6 != *a4)
  {
    v8 = 0;
    v9 = a2[3];
    v10 = 3 - v9;
    v11 = -3 - v9;
    v12 = *a2;
    result >>= 3;
    v13 = *a5;
    do
    {
      v14 = 0;
      v15 = (v12 + *(v5 + 8 * v8) + v9 * *(v5 + 8 * v8 + 4));
      v16 = *v15;
      v17 = &v15[v9];
      v18 = &v15[v9 - 3];
      v19 = &v15[3 * v9];
      v20 = &v15[-2 * v9];
      v21 = &v15[-3 * v9];
      v22 = v15[3];
      v23 = v20 - 2;
      v24 = v21 - 1;
      v25 = &v15[2 * v9];
      v26 = 255;
      do
      {
        v27 = v14;
        v28 = v14 + v26;
        v14 = ((v14 + v26) / 2);
        v29 = v16 - v28 / 2;
        v30 = v16 + v28 / 2;
        if (v29 <= v22)
        {
          if (v30 >= v22)
          {
            v49 = *(v15 - 3);
            if (v29 <= v49)
            {
              if (v30 >= v49)
              {
                goto LABEL_1557;
              }

              v68 = v15[v11];
              if (v29 > v68)
              {
                goto LABEL_1557;
              }

              if (v30 >= v68)
              {
                goto LABEL_1557;
              }

              v69 = *v18;
              if (v29 > v69 || v30 >= v69)
              {
                goto LABEL_1557;
              }

              v70 = *(v19 - 1);
              if (v29 > v70)
              {
                v71 = v20[2];
                if (v29 > v71)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v71)
                {
                  goto LABEL_1557;
                }

                v72 = *v24;
                if (v29 > v72)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v72)
                {
                  goto LABEL_1557;
                }

                v73 = v21[1];
                if (v29 > v73 || v30 >= v73)
                {
                  goto LABEL_1557;
                }

                v74 = v15[v10];
                if (v29 <= v74)
                {
                  if (v30 >= v74)
                  {
                    v525 = *(v25 - 2);
                    if (v29 > v525)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v525)
                    {
                      goto LABEL_1557;
                    }

                    v526 = *v23;
                    if (v29 > v526 || v30 >= v526)
                    {
                      goto LABEL_1557;
                    }
                  }

                  else
                  {
                    v488 = *v23;
                    if (v29 > v488 || v30 >= v488)
                    {
                      goto LABEL_1557;
                    }
                  }
                }

                else
                {
                  v75 = *(v25 - 2);
                  if (v29 > v75)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v75)
                  {
                    goto LABEL_1557;
                  }

                  v76 = *v23;
                  if (v29 > v76 || v30 >= v76)
                  {
                    goto LABEL_1557;
                  }
                }

                v248 = *v21;
LABEL_1457:
                if (v29 <= v248)
                {
                  goto LABEL_1458;
                }

                goto LABEL_1557;
              }

              if (v30 >= v70)
              {
                v322 = v20[2];
                if (v29 > v322)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v322)
                {
                  goto LABEL_1557;
                }

                v323 = *v21;
                if (v29 > v323)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v323)
                {
                  goto LABEL_1557;
                }

                v324 = *v23;
                if (v29 > v324)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v324)
                {
                  goto LABEL_1557;
                }

                v325 = v21[1];
                if (v29 > v325)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v325)
                {
                  goto LABEL_1557;
                }

                v326 = *v24;
                if (v29 > v326 || v30 >= v326)
                {
                  goto LABEL_1557;
                }

                v327 = v15[v10];
                if (v29 > v327)
                {
                  v248 = *(v25 - 2);
                  goto LABEL_1457;
                }

                if (v30 >= v327)
                {
                  v248 = *(v25 - 2);
                  goto LABEL_1744;
                }
              }

              else
              {
                v243 = *v23;
                if (v29 > v243)
                {
                  v244 = v17[3];
                  if (v29 > v244)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v244)
                  {
                    goto LABEL_1557;
                  }

                  v245 = v25[2];
                  if (v29 > v245)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v245)
                  {
                    goto LABEL_1557;
                  }

                  v246 = *(v25 - 2);
                  if (v29 > v246)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v246)
                  {
                    goto LABEL_1557;
                  }

                  v247 = v19[1];
                  if (v29 > v247 || v30 >= v247)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_614;
                }

                if (v30 >= v243)
                {
                  v436 = v17[3];
                  if (v29 > v436)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v436)
                  {
                    goto LABEL_1557;
                  }

                  v437 = v25[2];
                  if (v29 > v437)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v437)
                  {
                    goto LABEL_1557;
                  }

                  v438 = *(v25 - 2);
                  if (v29 > v438)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v438)
                  {
                    goto LABEL_1557;
                  }

                  v439 = v19[1];
                  if (v29 > v439 || v30 >= v439)
                  {
                    goto LABEL_1557;
                  }

                  v248 = *v19;
                  goto LABEL_1744;
                }

                v380 = *v21;
                if (v29 > v380)
                {
                  v381 = v19[1];
                  if (v29 > v381 || v30 >= v381)
                  {
                    goto LABEL_1557;
                  }

                  v382 = v25[2];
                  if (v29 <= v382)
                  {
                    if (v30 >= v382)
                    {
                      v584 = *v24;
                      if (v29 > v584)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v584)
                      {
                        goto LABEL_1557;
                      }

                      v585 = *(v25 - 2);
                      if (v29 > v585 || v30 >= v585)
                      {
                        goto LABEL_1557;
                      }
                    }

                    else
                    {
                      v547 = *(v25 - 2);
                      if (v29 > v547 || v30 >= v547)
                      {
                        goto LABEL_1557;
                      }
                    }
                  }

                  else
                  {
                    v383 = *v24;
                    if (v29 > v383)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v383)
                    {
                      goto LABEL_1557;
                    }

                    v384 = *(v25 - 2);
                    if (v29 > v384 || v30 >= v384)
                    {
                      goto LABEL_1557;
                    }
                  }

LABEL_614:
                  v248 = *v19;
                  goto LABEL_1457;
                }

                if (v30 >= v380)
                {
                  v517 = v19[1];
                  if (v29 > v517)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v517)
                  {
                    goto LABEL_1557;
                  }

                  v518 = *(v25 - 2);
                  if (v29 > v518)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v518)
                  {
                    goto LABEL_1557;
                  }

                  v519 = *v19;
                  if (v29 > v519 || v30 >= v519)
                  {
                    goto LABEL_1557;
                  }

                  v520 = v25[2];
                  if (v29 <= v520)
                  {
                    if (v30 < v520)
                    {
                      continue;
                    }

LABEL_1743:
                    v248 = *v24;
                    goto LABEL_1744;
                  }

LABEL_1521:
                  v248 = *v24;
                  goto LABEL_1457;
                }

                v482 = *(v25 - 2);
                if (v29 > v482)
                {
                  v483 = v15[v10];
                  if (v29 > v483)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v483)
                  {
                    goto LABEL_1557;
                  }

                  v484 = v20[2];
                  if (v29 > v484)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v484)
                  {
                    goto LABEL_1557;
                  }

                  v485 = v21[1];
                  if (v29 > v485 || v30 >= v485)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1521;
                }

                if (v30 >= v482)
                {
                  v571 = v15[v10];
                  if (v29 > v571)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v571)
                  {
                    goto LABEL_1557;
                  }

                  v572 = v20[2];
                  if (v29 > v572)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v572)
                  {
                    goto LABEL_1557;
                  }

                  v573 = v21[1];
                  if (v29 > v573 || v30 >= v573)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1743;
                }

                v541 = *v19;
                if (v29 > v541)
                {
                  v542 = v21[1];
                  if (v29 > v542 || v30 >= v542)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1521;
                }

                if (v30 >= v541)
                {
                  v615 = v21[1];
                  if (v29 > v615 || v30 >= v615)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1743;
                }

                v591 = *v24;
                if (v29 > v591)
                {
                  v592 = v25[2];
                  if (v29 > v592 || v30 >= v592)
                  {
                    goto LABEL_1557;
                  }

                  v248 = v19[1];
                  goto LABEL_1457;
                }

                if (v30 >= v591)
                {
                  v631 = v25[2];
                  if (v29 > v631 || v30 >= v631)
                  {
                    goto LABEL_1557;
                  }

                  v248 = v19[1];
LABEL_1744:
                  if (v29 <= v248)
                  {
LABEL_1458:
                    if (v30 < v248)
                    {
                      continue;
                    }

                    goto LABEL_1557;
                  }

                  goto LABEL_1557;
                }
              }
            }

            else
            {
              if (v29 <= v15[v11] || v29 <= *v18)
              {
                goto LABEL_1557;
              }

              v50 = *(v19 - 1);
              if (v29 > v50)
              {
                v51 = *v23;
                if (v29 <= v51)
                {
                  v205 = v17[3];
                  if (v30 >= v51)
                  {
                    if (v29 <= v205 || v29 <= v25[2] || v29 <= *(v25 - 2) || v29 <= v19[1])
                    {
                      goto LABEL_1557;
                    }
                  }

                  else if (v29 <= v205 || v29 <= v25[2] || v29 <= *(v25 - 2) || v29 <= v19[1])
                  {
                    goto LABEL_1557;
                  }
                }

                else
                {
                  v52 = *v21;
                  if (v29 > v52)
                  {
                    v53 = *(v25 - 2);
                    if (v29 <= v53)
                    {
                      v329 = v15[v10];
                      if (v30 >= v53)
                      {
                        if (v29 <= v329 || v29 <= v20[2] || v29 <= v21[1])
                        {
                          goto LABEL_1557;
                        }
                      }

                      else if (v29 <= v329 || v29 <= v20[2] || v29 <= v21[1])
                      {
                        goto LABEL_1557;
                      }
                    }

                    else
                    {
                      v54 = *v19;
                      if (v29 > v54)
                      {
                        v55 = *v24;
                        if (v29 > v55)
                        {
                          continue;
                        }

                        v56 = v25[2];
                        if (v30 >= v55)
                        {
                          if (v29 <= v56)
                          {
                            goto LABEL_1557;
                          }
                        }

                        else if (v29 <= v56)
                        {
                          goto LABEL_1557;
                        }

                        v60 = v19[1];
LABEL_1556:
                        if (v29 > v60)
                        {
                          continue;
                        }

                        goto LABEL_1557;
                      }

                      v389 = v21[1];
                      if (v30 >= v54)
                      {
                        if (v29 <= v389)
                        {
                          goto LABEL_1557;
                        }
                      }

                      else if (v29 <= v389)
                      {
                        goto LABEL_1557;
                      }
                    }

                    v60 = *v24;
                    goto LABEL_1556;
                  }

                  v254 = v19[1];
                  if (v30 >= v52)
                  {
                    if (v29 <= v254 || v29 <= *(v25 - 2))
                    {
                      goto LABEL_1557;
                    }

                    v361 = v25[2];
                    if (v29 <= v361)
                    {
                      v494 = *v24;
                      if (v30 >= v361)
                      {
                        if (v29 <= v494)
                        {
                          goto LABEL_1557;
                        }
                      }

                      else if (v29 <= v494)
                      {
                        goto LABEL_1557;
                      }
                    }
                  }

                  else
                  {
                    if (v29 <= v254)
                    {
                      goto LABEL_1557;
                    }

                    v255 = v25[2];
                    if (v29 <= v255)
                    {
                      v447 = *v24;
                      if (v30 >= v255)
                      {
                        if (v29 <= v447 || v29 <= *(v25 - 2))
                        {
                          goto LABEL_1557;
                        }
                      }

                      else if (v29 <= v447 || v29 <= *(v25 - 2))
                      {
                        goto LABEL_1557;
                      }
                    }

                    else if (v29 <= *(v25 - 2))
                    {
                      goto LABEL_1557;
                    }
                  }
                }

LABEL_941:
                v60 = *v19;
                goto LABEL_1556;
              }

              v151 = v20[2];
              if (v30 >= v50)
              {
                if (v29 <= v151 || v29 <= *v21 || v29 <= *v23 || v29 <= v21[1] || v29 <= v15[v10] && v29 <= *(v25 - 2))
                {
                  goto LABEL_1557;
                }
              }

              else
              {
                if (v29 <= v151 || v29 <= *v21)
                {
                  goto LABEL_1557;
                }

                v152 = v15[v10];
                if (v29 <= v152)
                {
                  v391 = *(v25 - 2);
                  if (v30 >= v152)
                  {
                    if (v29 <= v391 || v29 <= *v23)
                    {
                      goto LABEL_1557;
                    }
                  }

                  else if (v29 <= v391 || v29 <= *v23)
                  {
                    goto LABEL_1557;
                  }
                }

                else if (v29 <= *v23)
                {
                  goto LABEL_1557;
                }

                if (v29 <= v21[1])
                {
                  goto LABEL_1557;
                }
              }

              if (v29 <= *v24)
              {
                goto LABEL_1557;
              }
            }
          }

          else
          {
            v38 = *v21;
            if (v29 > v38)
            {
              v39 = *(v25 - 2);
              if (v29 > v39)
              {
                v40 = v15[v11];
                if (v29 <= v40)
                {
                  v100 = v21[1];
                  if (v30 >= v40)
                  {
                    if (v29 > v100)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v100)
                    {
                      goto LABEL_1557;
                    }

                    v168 = *(v19 - 1);
                    if (v29 > v168)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v168)
                    {
                      goto LABEL_1557;
                    }

                    v169 = v19[1];
                    if (v29 > v169)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v169)
                    {
                      goto LABEL_1557;
                    }

                    v170 = v20[2];
                    if (v29 > v170)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v170)
                    {
                      goto LABEL_1557;
                    }

                    v171 = v17[3];
                    if (v29 > v171)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v171)
                    {
                      goto LABEL_1557;
                    }

                    v172 = v15[v10];
                    if (v29 > v172)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v172)
                    {
                      goto LABEL_1557;
                    }

                    v173 = *v19;
                    if (v29 > v173 || v30 >= v173)
                    {
                      goto LABEL_1557;
                    }

                    v174 = v25[2];
LABEL_1546:
                    if (v29 > v174 || v30 >= v174)
                    {
                      goto LABEL_1557;
                    }

                    continue;
                  }

                  if (v29 > v100)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v100)
                  {
                    goto LABEL_1557;
                  }

                  v101 = *(v19 - 1);
                  if (v29 > v101)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v101)
                  {
                    goto LABEL_1557;
                  }

                  v102 = v25[2];
                  if (v29 > v102)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v102)
                  {
                    goto LABEL_1557;
                  }

                  v103 = v20[2];
                  if (v29 > v103)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v103)
                  {
                    goto LABEL_1557;
                  }

                  v104 = v19[1];
                  if (v29 > v104)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v104)
                  {
                    goto LABEL_1557;
                  }

                  v105 = v17[3];
                  if (v29 > v105 || v30 >= v105)
                  {
                    goto LABEL_1557;
                  }

                  v106 = v15[v10];
LABEL_182:
                  if (v29 > v106 || v30 >= v106)
                  {
                    goto LABEL_1557;
                  }

                  v107 = *v19;
                }

                else
                {
                  v41 = *v19;
                  if (v29 > v41)
                  {
                    if (v29 <= *(v15 - 3))
                    {
                      goto LABEL_1557;
                    }

                    v42 = *v23;
                    if (v29 <= v42)
                    {
                      v252 = v17[3];
                      if (v30 < v42)
                      {
                        if (v29 <= v252 || v29 <= v25[2] || v29 <= *(v19 - 1) || v29 <= v19[1])
                        {
                          goto LABEL_1557;
                        }

                        v79 = *v18;
                        goto LABEL_1034;
                      }

                      if (v29 <= v252 || v29 <= v25[2] || v29 <= v19[1])
                      {
                        goto LABEL_1557;
                      }

                      v360 = *v18;
                    }

                    else
                    {
                      if (v29 <= *v18)
                      {
                        goto LABEL_1557;
                      }

                      if (v29 > *v24)
                      {
                        if (v29 > *(v19 - 1))
                        {
                          continue;
                        }

                        if (v29 <= v20[2])
                        {
                          goto LABEL_1557;
                        }

                        goto LABEL_116;
                      }

                      if (v29 <= v25[2])
                      {
                        goto LABEL_1557;
                      }

                      v360 = v19[1];
                    }

                    if (v29 <= v360)
                    {
                      goto LABEL_1557;
                    }

                    v79 = *(v19 - 1);
LABEL_1034:
                    if (v29 > v79)
                    {
                      continue;
                    }

                    goto LABEL_1557;
                  }

                  if (v30 >= v41)
                  {
                    if (v29 <= v21[1] || v29 <= *(v15 - 3) || v29 <= *v23 || v29 <= *(v19 - 1) && v29 <= v20[2])
                    {
                      goto LABEL_1557;
                    }

                    v143 = *v18;
                    goto LABEL_523;
                  }

                  v142 = v20[2];
                  if (v29 > v142)
                  {
                    if (v29 <= *v18 || v29 <= *v23 || v29 <= v21[1])
                    {
                      goto LABEL_1557;
                    }

                    v143 = *(v15 - 3);
                    goto LABEL_523;
                  }

                  v262 = *(v19 - 1);
                  if (v30 >= v142)
                  {
                    if (v29 <= v262 || v29 <= v21[1] || v29 <= *v23)
                    {
                      goto LABEL_1557;
                    }

LABEL_945:
                    if (v29 <= *v18 || v29 <= *v24)
                    {
                      goto LABEL_1557;
                    }

                    v79 = *(v15 - 3);
                    goto LABEL_1034;
                  }

                  if (v29 > v262)
                  {
                    if (v29 <= v21[1] || v29 <= *v23)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_945;
                  }

                  if (v30 >= v262)
                  {
                    goto LABEL_1557;
                  }

                  v396 = v21[1];
                  if (v29 > v396)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v396)
                  {
                    goto LABEL_1557;
                  }

                  v397 = v25[2];
                  if (v29 > v397)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v397)
                  {
                    goto LABEL_1557;
                  }

                  v398 = v17[3];
                  if (v29 > v398)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v398)
                  {
                    goto LABEL_1557;
                  }

                  v399 = v15[v10];
                  if (v29 > v399 || v30 >= v399)
                  {
                    goto LABEL_1557;
                  }

                  v107 = v19[1];
                }

                if (v29 > v107 || v30 >= v107)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              if (v30 >= v39)
              {
                v126 = v21[1];
                if (v29 > v126)
                {
                  if (v29 <= v15[v10] || v29 <= *v18 || v29 <= *(v15 - 3) || v29 <= v20[2] || v29 <= *v23)
                  {
                    goto LABEL_1557;
                  }

                  v127 = v15[v11];
LABEL_240:
                  if (v29 <= v127)
                  {
                    goto LABEL_1557;
                  }

                  v64 = *v24;
LABEL_242:
                  if (v29 <= v64)
                  {
                    goto LABEL_1557;
                  }

                  continue;
                }

                if (v30 >= v126)
                {
                  goto LABEL_1557;
                }

                v190 = *(v19 - 1);
                if (v29 > v190)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v190)
                {
                  goto LABEL_1557;
                }

                v191 = v25[2];
                if (v29 > v191)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v191)
                {
                  goto LABEL_1557;
                }

                v192 = v20[2];
                if (v29 > v192)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v192)
                {
                  goto LABEL_1557;
                }

                v193 = v19[1];
                if (v29 > v193 || v30 >= v193)
                {
                  goto LABEL_1557;
                }

                v194 = v15[v10];
                goto LABEL_417;
              }

              v77 = v19[1];
              if (v29 > v77)
              {
                if (v29 <= v15[v10] || v29 <= *v18 || v29 <= *(v15 - 3) || v29 <= *v23)
                {
                  goto LABEL_1557;
                }

                v78 = v20[2];
                goto LABEL_113;
              }

              if (v30 >= v77)
              {
                if (v29 <= *v18 || v29 <= v15[v10] || v29 <= *(v15 - 3) || v29 <= v20[2] || v29 <= *v23 || v29 <= v15[v11] || v29 <= *v24)
                {
                  goto LABEL_1557;
                }

                v64 = v21[1];
                goto LABEL_242;
              }

              v159 = *(v19 - 1);
              if (v29 > v159)
              {
                if (v29 <= v15[v10] || v29 <= *v18 || v29 <= v20[2] || v29 <= *(v15 - 3) || v29 <= *v23 || v29 <= v21[1])
                {
                  goto LABEL_1557;
                }

                v143 = v15[v11];
LABEL_523:
                if (v29 <= v143)
                {
                  goto LABEL_1557;
                }

                v79 = *v24;
                goto LABEL_1034;
              }

              if (v30 >= v159)
              {
                if (v29 <= v15[v10] || v29 <= *v18 || v29 <= *(v15 - 3) || v29 <= v20[2] || v29 <= *v23 || v29 <= v15[v11])
                {
                  goto LABEL_1557;
                }

                v127 = v21[1];
                goto LABEL_240;
              }

              v273 = *(v15 - 3);
              if (v29 > v273)
              {
                v274 = v20[2];
                if (v29 > v274)
                {
                  v275 = *v18;
                  if (v29 > v275)
                  {
                    if (v29 <= v15[v10])
                    {
                      goto LABEL_1557;
                    }

                    v78 = *v23;
LABEL_113:
                    if (v29 <= v78 || v29 <= v15[v11] || v29 <= *v24)
                    {
                      goto LABEL_1557;
                    }

LABEL_116:
                    v79 = v21[1];
                    goto LABEL_1034;
                  }

                  if (v30 >= v275)
                  {
                    goto LABEL_1557;
                  }

                  v492 = v15[v10];
                  if (v29 > v492)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v492)
                  {
                    goto LABEL_1557;
                  }

                  v493 = v25[2];
                  if (v29 > v493 || v30 >= v493)
                  {
                    goto LABEL_1557;
                  }

                  v106 = v17[3];
                  goto LABEL_182;
                }

                if (v30 < v274)
                {
                  v450 = v25[2];
                  if (v29 > v450)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v450)
                  {
                    goto LABEL_1557;
                  }

                  v451 = v15[v10];
                  if (v29 > v451 || v30 >= v451)
                  {
                    goto LABEL_1557;
                  }

                  v410 = v17[3];
                  goto LABEL_1228;
                }

                v500 = *v18;
                if (v29 > v500)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v500)
                {
                  goto LABEL_1557;
                }

                v501 = v15[v10];
                if (v29 > v501 || v30 >= v501)
                {
                  goto LABEL_1557;
                }

                v194 = v25[2];
LABEL_417:
                if (v29 > v194 || v30 >= v194)
                {
                  goto LABEL_1557;
                }

                v195 = v17[3];
LABEL_420:
                if (v29 > v195 || v30 >= v195)
                {
                  goto LABEL_1557;
                }

LABEL_422:
                v196 = *v19;
LABEL_423:
                if (v29 > v196 || v30 >= v196)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              if (v30 >= v273)
              {
                v467 = v15[v10];
                if (v29 > v467)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v467)
                {
                  goto LABEL_1557;
                }

                v468 = v17[3];
                if (v29 > v468)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v468)
                {
                  goto LABEL_1557;
                }

                v469 = v25[2];
                if (v29 > v469 || v30 >= v469)
                {
                  goto LABEL_1557;
                }

                v470 = *v18;
                if (v29 > v470 || v30 >= v470)
                {
                  v195 = v20[2];
                  goto LABEL_420;
                }

                goto LABEL_422;
              }

              v406 = v25[2];
              if (v29 > v406)
              {
                v407 = *v24;
                if (v29 > v407)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v407)
                {
                  goto LABEL_1557;
                }

                v408 = *v23;
                if (v29 > v408)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v408)
                {
                  goto LABEL_1557;
                }

                v409 = v15[v11];
                if (v29 > v409 || v30 >= v409)
                {
                  goto LABEL_1557;
                }

                v410 = *v18;
LABEL_1228:
                if (v29 > v410 || v30 >= v410)
                {
                  goto LABEL_1557;
                }

                v347 = *v19;
LABEL_1231:
                if (v29 > v347 || v30 >= v347)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              if (v30 >= v406)
              {
                v532 = *v24;
                if (v29 > v532)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v532)
                {
                  goto LABEL_1557;
                }

                v533 = *v23;
                if (v29 > v533)
                {
                  goto LABEL_1557;
                }
              }

              else
              {
                v495 = v17[3];
                if (v29 > v495)
                {
                  v496 = *v23;
                  if (v29 > v496)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v496)
                  {
                    goto LABEL_1557;
                  }

                  v497 = *v18;
                  if (v29 > v497 || v30 >= v497)
                  {
                    goto LABEL_1557;
                  }

                  v410 = v15[v11];
                  goto LABEL_1228;
                }

                if (v30 < v495)
                {
                  v553 = *v19;
                  if (v29 > v553 || v30 >= v553)
                  {
                    goto LABEL_1557;
                  }

                  v554 = *v18;
                  if (v29 > v554)
                  {
                    v555 = v20[2];
                    if (v29 > v555 || v30 >= v555)
                    {
                      goto LABEL_1557;
                    }

                    v347 = v15[v10];
                    goto LABEL_1231;
                  }

                  if (v30 < v554)
                  {
                    continue;
                  }

                  v630 = v20[2];
                  if (v29 > v630 || v30 >= v630)
                  {
                    goto LABEL_1557;
                  }

                  v196 = v15[v10];
                  goto LABEL_423;
                }

                v533 = *v23;
                if (v29 > v533)
                {
                  goto LABEL_1557;
                }
              }

              if (v30 >= v533)
              {
                goto LABEL_1557;
              }

              v588 = v15[v11];
              if (v29 > v588 || v30 >= v588)
              {
                goto LABEL_1557;
              }

              v195 = *v18;
              goto LABEL_420;
            }

            if (v30 >= v38)
            {
              v84 = *(v19 - 1);
              if (v29 > v84)
              {
                if (v29 <= v19[1] || v29 <= v15[v11] || v29 <= *(v15 - 3))
                {
                  goto LABEL_1557;
                }

                v85 = *v23;
                if (v29 <= v85)
                {
                  v330 = v17[3];
                  if (v30 >= v85)
                  {
                    if (v29 <= v330 || v29 <= v25[2] || v29 <= *(v25 - 2) || v29 <= *v18)
                    {
                      goto LABEL_1557;
                    }
                  }

                  else if (v29 <= v330 || v29 <= v25[2] || v29 <= *(v25 - 2) || v29 <= *v18)
                  {
                    goto LABEL_1557;
                  }
                }

                else
                {
                  if (v29 <= *(v25 - 2))
                  {
                    goto LABEL_1557;
                  }

                  v86 = *v24;
                  if (v29 > v86)
                  {
                    if (v29 <= *v19)
                    {
                      goto LABEL_1557;
                    }

                    v60 = *v18;
                    goto LABEL_1556;
                  }

                  v444 = v25[2];
                  if (v30 >= v86)
                  {
                    if (v29 <= v444 || v29 <= *v18)
                    {
                      goto LABEL_1557;
                    }
                  }

                  else if (v29 <= v444 || v29 <= *v18)
                  {
                    goto LABEL_1557;
                  }
                }

                goto LABEL_941;
              }

              if (v30 >= v84)
              {
                goto LABEL_1557;
              }

              v130 = v19[1];
              if (v29 > v130 || v30 >= v130)
              {
                goto LABEL_1557;
              }

              v131 = v25[2];
              if (v29 <= v131)
              {
                if (v30 >= v131)
                {
                  v368 = *v24;
                  if (v29 > v368)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v368)
                  {
                    goto LABEL_1557;
                  }

                  v369 = *v23;
                  if (v29 > v369)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v369)
                  {
                    goto LABEL_1557;
                  }

                  v370 = *v18;
                  if (v29 > v370)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v370)
                  {
                    goto LABEL_1557;
                  }

                  v371 = v15[v11];
                  if (v29 > v371)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v371)
                  {
                    goto LABEL_1557;
                  }

                  v372 = *(v25 - 2);
                  if (v29 > v372)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v372)
                  {
                    goto LABEL_1557;
                  }

                  v373 = *(v15 - 3);
                  if (v29 > v373)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v373)
                  {
                    goto LABEL_1557;
                  }

                  v138 = *v19;
                  if (v29 > v138)
                  {
                    goto LABEL_1557;
                  }
                }

                else
                {
                  v312 = *(v25 - 2);
                  if (v29 <= v312)
                  {
                    if (v30 >= v312)
                    {
                      v475 = v21[1];
                      if (v29 > v475)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v475)
                      {
                        goto LABEL_1557;
                      }

                      v476 = v20[2];
                      if (v29 > v476)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v476)
                      {
                        goto LABEL_1557;
                      }

                      v477 = v15[v10];
                      if (v29 > v477)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v477)
                      {
                        goto LABEL_1557;
                      }

                      v478 = v17[3];
                      if (v29 > v478)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v478)
                      {
                        goto LABEL_1557;
                      }

                      v138 = *v19;
                      if (v29 > v138)
                      {
                        goto LABEL_1557;
                      }
                    }

                    else
                    {
                      v428 = *v18;
                      if (v29 <= v428)
                      {
                        if (v30 >= v428)
                        {
                          v536 = v20[2];
                          if (v29 > v536)
                          {
                            goto LABEL_1557;
                          }

                          if (v30 >= v536)
                          {
                            goto LABEL_1557;
                          }

                          v537 = v15[v10];
                          if (v29 > v537)
                          {
                            goto LABEL_1557;
                          }

                          if (v30 >= v537)
                          {
                            goto LABEL_1557;
                          }

                          v538 = v17[3];
                          if (v29 > v538)
                          {
                            goto LABEL_1557;
                          }

                          if (v30 >= v538)
                          {
                            goto LABEL_1557;
                          }

                          v138 = *v19;
                          if (v29 > v138)
                          {
                            goto LABEL_1557;
                          }
                        }

                        else
                        {
                          v509 = *v19;
                          if (v29 > v509 || v30 >= v509)
                          {
                            goto LABEL_1557;
                          }

                          v510 = v17[3];
                          if (v29 <= v510)
                          {
                            if (v30 >= v510)
                            {
                              v612 = *v23;
                              if (v29 > v612)
                              {
                                goto LABEL_1557;
                              }

                              if (v30 >= v612)
                              {
                                goto LABEL_1557;
                              }

                              v613 = v15[v11];
                              if (v29 > v613)
                              {
                                goto LABEL_1557;
                              }

                              if (v30 >= v613)
                              {
                                goto LABEL_1557;
                              }

                              v138 = *(v15 - 3);
                              if (v29 > v138)
                              {
                                goto LABEL_1557;
                              }
                            }

                            else
                            {
                              v589 = *(v15 - 3);
                              if (v29 <= v589)
                              {
                                if (v30 < v589)
                                {
                                  continue;
                                }

                                v138 = v15[v10];
                                if (v29 > v138)
                                {
                                  goto LABEL_1557;
                                }
                              }

                              else
                              {
                                v138 = v15[v10];
                                if (v29 > v138)
                                {
                                  goto LABEL_1557;
                                }
                              }
                            }
                          }

                          else
                          {
                            v511 = *v23;
                            if (v29 > v511)
                            {
                              goto LABEL_1557;
                            }

                            if (v30 >= v511)
                            {
                              goto LABEL_1557;
                            }

                            v512 = v15[v11];
                            if (v29 > v512)
                            {
                              goto LABEL_1557;
                            }

                            if (v30 >= v512)
                            {
                              goto LABEL_1557;
                            }

                            v138 = *(v15 - 3);
                            if (v29 > v138)
                            {
                              goto LABEL_1557;
                            }
                          }
                        }
                      }

                      else
                      {
                        v429 = v20[2];
                        if (v29 > v429)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v429)
                        {
                          goto LABEL_1557;
                        }

                        v430 = v17[3];
                        if (v29 > v430)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v430)
                        {
                          goto LABEL_1557;
                        }

                        v431 = v15[v10];
                        if (v29 > v431)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v431)
                        {
                          goto LABEL_1557;
                        }

                        v138 = *v19;
                        if (v29 > v138)
                        {
                          goto LABEL_1557;
                        }
                      }
                    }
                  }

                  else
                  {
                    v313 = v21[1];
                    if (v29 > v313)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v313)
                    {
                      goto LABEL_1557;
                    }

                    v314 = v20[2];
                    if (v29 > v314)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v314)
                    {
                      goto LABEL_1557;
                    }

                    v315 = v15[v10];
                    if (v29 > v315)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v315)
                    {
                      goto LABEL_1557;
                    }

                    v316 = v17[3];
                    if (v29 > v316)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v316)
                    {
                      goto LABEL_1557;
                    }

                    v138 = *v19;
                    if (v29 > v138)
                    {
                      goto LABEL_1557;
                    }
                  }
                }
              }

              else
              {
                v132 = *v24;
                if (v29 > v132)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v132)
                {
                  goto LABEL_1557;
                }

                v133 = *v23;
                if (v29 > v133)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v133)
                {
                  goto LABEL_1557;
                }

                v134 = *v18;
                if (v29 > v134)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v134)
                {
                  goto LABEL_1557;
                }

                v135 = v15[v11];
                if (v29 > v135)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v135)
                {
                  goto LABEL_1557;
                }

                v136 = *(v25 - 2);
                if (v29 > v136)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v136)
                {
                  goto LABEL_1557;
                }

                v137 = *(v15 - 3);
                if (v29 > v137)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v137)
                {
                  goto LABEL_1557;
                }

                v138 = *v19;
                if (v29 > v138)
                {
                  goto LABEL_1557;
                }
              }

              if (v30 >= v138)
              {
                goto LABEL_1557;
              }
            }

            else
            {
              v61 = *v19;
              if (v29 > v61)
              {
                v62 = *v23;
                if (v29 > v62)
                {
                  v63 = v25[2];
                  if (v29 > v63)
                  {
                    if (v29 <= *(v15 - 3) || v29 <= *(v25 - 2) || v29 <= v15[v11] || v29 <= v19[1] || v29 <= *v18)
                    {
                      goto LABEL_1557;
                    }

                    v64 = *(v19 - 1);
                    goto LABEL_242;
                  }

                  if (v30 >= v63)
                  {
                    if (v29 <= *v24 || v29 <= v19[1] || v29 <= *(v15 - 3) || v29 <= *(v25 - 2) || v29 <= v15[v11] || v29 <= *(v19 - 1))
                    {
                      goto LABEL_1557;
                    }

                    v64 = *v18;
                    goto LABEL_242;
                  }

                  v207 = v19[1];
                  if (v29 > v207)
                  {
                    if (v29 <= *v24 || v29 <= *v18 || v29 <= *(v25 - 2) || v29 <= v15[v11] || v29 <= *(v19 - 1))
                    {
                      goto LABEL_1557;
                    }

                    v64 = *(v15 - 3);
                    goto LABEL_242;
                  }

                  if (v30 >= v207)
                  {
                    goto LABEL_1557;
                  }

                  v343 = *v24;
                  if (v29 > v343)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v343)
                  {
                    goto LABEL_1557;
                  }

                  v344 = v20[2];
                  if (v29 > v344)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v344)
                  {
                    goto LABEL_1557;
                  }

                  v345 = v17[3];
                  if (v29 > v345)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v345)
                  {
                    goto LABEL_1557;
                  }

                  v346 = v15[v10];
                  if (v29 > v346 || v30 >= v346)
                  {
                    goto LABEL_1557;
                  }

                  v347 = v21[1];
                  goto LABEL_1231;
                }

                if (v30 < v62)
                {
                  v154 = v20[2];
                  if (v29 > v154)
                  {
                    v155 = *(v19 - 1);
                    if (v29 > v155)
                    {
                      if (v29 <= v17[3] || v29 <= v15[v11] || v29 <= *(v15 - 3) || v29 <= *(v25 - 2) || v29 <= v25[2])
                      {
                        goto LABEL_1557;
                      }

                      v156 = v19[1];
LABEL_564:
                      if (v29 <= v156)
                      {
                        goto LABEL_1557;
                      }

                      v235 = *v18;
                      goto LABEL_957;
                    }

                    if (v30 >= v155)
                    {
                      goto LABEL_1557;
                    }

                    v331 = v21[1];
                    if (v29 > v331)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v331)
                    {
                      goto LABEL_1557;
                    }

                    v332 = *v18;
                    if (v29 > v332)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v332)
                    {
                      goto LABEL_1557;
                    }

                    v333 = v15[v11];
                    if (v29 > v333)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v333)
                    {
                      goto LABEL_1557;
                    }

                    v334 = *(v25 - 2);
                    if (v29 > v334 || v30 >= v334)
                    {
                      goto LABEL_1557;
                    }

                    v335 = *(v15 - 3);
                    goto LABEL_1342;
                  }

                  if (v30 >= v154)
                  {
                    v362 = *(v19 - 1);
                    if (v29 > v362)
                    {
                      if (v29 <= v15[v11] || v29 <= v17[3] || v29 <= *(v15 - 3) || v29 <= v25[2])
                      {
                        goto LABEL_1557;
                      }

                      v272 = *(v25 - 2);
LABEL_954:
                      if (v29 <= v272 || v29 <= *v18)
                      {
                        goto LABEL_1557;
                      }

                      v235 = v19[1];
LABEL_957:
                      if (v29 <= v235)
                      {
                        goto LABEL_1557;
                      }

                      continue;
                    }

                    if (v30 >= v362)
                    {
                      goto LABEL_1557;
                    }

                    v423 = v21[1];
                    if (v29 > v423)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v423)
                    {
                      goto LABEL_1557;
                    }

                    v424 = *v18;
                    if (v29 > v424)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v424)
                    {
                      goto LABEL_1557;
                    }

                    v425 = *(v25 - 2);
                    if (v29 > v425)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v425)
                    {
                      goto LABEL_1557;
                    }

                    v426 = v15[v11];
                    if (v29 > v426)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v426)
                    {
                      goto LABEL_1557;
                    }

                    v427 = *(v15 - 3);
                    if (v29 > v427 || v30 >= v427)
                    {
                      goto LABEL_1557;
                    }

                    v311 = *v24;
                  }

                  else
                  {
                    v269 = *(v15 - 3);
                    if (v29 > v269)
                    {
                      v270 = v25[2];
                      if (v29 > v270)
                      {
                        v271 = v17[3];
                        if (v29 > v271)
                        {
                          if (v29 <= v15[v11] || v29 <= *(v25 - 2))
                          {
                            goto LABEL_1557;
                          }

                          v272 = *(v19 - 1);
                          goto LABEL_954;
                        }

                        if (v30 >= v271)
                        {
                          goto LABEL_1557;
                        }

                        v490 = v15[v11];
                        if (v29 > v490)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v490)
                        {
                          goto LABEL_1557;
                        }

                        v491 = v15[v10];
                        if (v29 > v491 || v30 >= v491)
                        {
                          goto LABEL_1557;
                        }

                        v335 = v21[1];
LABEL_1342:
                        if (v29 > v335 || v30 >= v335)
                        {
                          goto LABEL_1557;
                        }

                        v405 = *v24;
                        goto LABEL_1345;
                      }

                      if (v30 < v270)
                      {
                        v448 = v17[3];
                        if (v29 > v448)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v448)
                        {
                          goto LABEL_1557;
                        }

                        v449 = *v24;
                        if (v29 > v449 || v30 >= v449)
                        {
                          goto LABEL_1557;
                        }

                        goto LABEL_1320;
                      }

                      v499 = v15[v11];
                      if (v29 > v499 || v30 >= v499)
                      {
                        goto LABEL_1557;
                      }

                      v466 = v17[3];
LABEL_1388:
                      if (v29 > v466 || v30 >= v466)
                      {
                        goto LABEL_1557;
                      }

                      goto LABEL_1495;
                    }

                    if (v30 >= v269)
                    {
                      v464 = v17[3];
                      if (v29 > v464 || v30 >= v464)
                      {
                        goto LABEL_1557;
                      }

                      v465 = v15[v11];
                      if (v29 > v465)
                      {
                        v466 = v25[2];
                        goto LABEL_1388;
                      }

                      if (v30 >= v465)
                      {
                        v563 = v25[2];
                        if (v29 > v563)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v563)
                        {
                          goto LABEL_1557;
                        }

                        v564 = *v24;
                        if (v29 > v564 || v30 >= v564)
                        {
                          goto LABEL_1557;
                        }

                        v535 = v15[v10];
                      }

                      else
                      {
LABEL_1495:
                        v534 = v15[v10];
                        if (v29 > v534 || v30 >= v534)
                        {
                          goto LABEL_1557;
                        }

                        v535 = *v24;
                      }

                      if (v29 > v535 || v30 >= v535)
                      {
                        goto LABEL_1557;
                      }

                      v311 = v21[1];
                    }

                    else
                    {
                      v400 = v21[1];
                      if (v29 > v400)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v400)
                      {
                        goto LABEL_1557;
                      }

                      v401 = *v24;
                      if (v29 > v401 || v30 >= v401)
                      {
                        goto LABEL_1557;
                      }

                      v402 = v15[v11];
                      if (v29 > v402)
                      {
                        v403 = v25[2];
                        if (v29 > v403)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v403)
                        {
                          goto LABEL_1557;
                        }

                        v404 = v15[v10];
                        if (v29 > v404 || v30 >= v404)
                        {
                          goto LABEL_1557;
                        }

                        v405 = v17[3];
                        goto LABEL_1345;
                      }

                      if (v30 < v402)
                      {
                        v565 = v15[v10];
                        if (v29 > v565)
                        {
                          v566 = *(v25 - 2);
                          if (v29 > v566 || v30 >= v566)
                          {
                            goto LABEL_1557;
                          }

                          v405 = *v18;
                          goto LABEL_1345;
                        }

                        if (v30 < v565)
                        {
                          continue;
                        }

                        v610 = *(v25 - 2);
                        if (v29 > v610 || v30 >= v610)
                        {
                          goto LABEL_1557;
                        }

                        v311 = *v18;
                        goto LABEL_1501;
                      }

                      v593 = v25[2];
                      if (v29 > v593 || v30 >= v593)
                      {
                        goto LABEL_1557;
                      }

                      v310 = v17[3];
LABEL_792:
                      if (v29 > v310 || v30 >= v310)
                      {
                        goto LABEL_1557;
                      }

                      v311 = v15[v10];
                    }
                  }

LABEL_1501:
                  if (v29 > v311 || v30 >= v311)
                  {
                    goto LABEL_1557;
                  }

                  continue;
                }

                v234 = v19[1];
                if (v29 > v234)
                {
                  if (v29 <= v17[3] || v29 <= v15[v11] || v29 <= *(v15 - 3) || v29 <= v25[2] || v29 <= *(v25 - 2))
                  {
                    goto LABEL_1557;
                  }

                  v156 = *(v19 - 1);
                  goto LABEL_564;
                }

                if (v30 >= v234)
                {
                  goto LABEL_1557;
                }

                v306 = *v24;
                if (v29 > v306)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v306)
                {
                  goto LABEL_1557;
                }

                v307 = v25[2];
                if (v29 > v307)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v307)
                {
                  goto LABEL_1557;
                }

                v308 = v20[2];
                if (v29 > v308)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v308)
                {
                  goto LABEL_1557;
                }

                v309 = v17[3];
                if (v29 > v309 || v30 >= v309)
                {
                  goto LABEL_1557;
                }

                v310 = v21[1];
                goto LABEL_792;
              }

              if (v30 >= v61)
              {
                v181 = *v24;
                if (v29 > v181 || v30 >= v181)
                {
                  goto LABEL_1557;
                }

                v182 = v20[2];
                if (v29 > v182)
                {
                  v183 = *(v19 - 1);
                  if (v29 > v183)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v183)
                  {
                    goto LABEL_1557;
                  }

                  v184 = v21[1];
                  if (v29 > v184)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v184)
                  {
                    goto LABEL_1557;
                  }

                  v185 = *v18;
                  if (v29 > v185)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v185)
                  {
                    goto LABEL_1557;
                  }

                  v186 = v15[v11];
                  if (v29 > v186)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v186)
                  {
                    goto LABEL_1557;
                  }

                  v187 = *(v25 - 2);
                  if (v29 > v187 || v30 >= v187)
                  {
                    goto LABEL_1557;
                  }

                  v188 = *v23;
LABEL_404:
                  if (v29 > v188 || v30 >= v188)
                  {
                    goto LABEL_1557;
                  }

                  v189 = *(v15 - 3);
                  goto LABEL_1447;
                }

                if (v30 >= v182)
                {
                  v374 = *(v19 - 1);
                  if (v29 > v374)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v374)
                  {
                    goto LABEL_1557;
                  }

                  v375 = *(v25 - 2);
                  if (v29 > v375)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v375)
                  {
                    goto LABEL_1557;
                  }

                  v376 = v21[1];
                  if (v29 > v376)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v376)
                  {
                    goto LABEL_1557;
                  }

                  v377 = v15[v11];
                  if (v29 > v377)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v377)
                  {
                    goto LABEL_1557;
                  }

                  v378 = *v18;
                  if (v29 > v378 || v30 >= v378)
                  {
                    goto LABEL_1557;
                  }

                  v379 = *v23;
                }

                else
                {
                  v317 = *v23;
                  if (v29 > v317)
                  {
                    v318 = v19[1];
                    if (v29 > v318)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v318)
                    {
                      goto LABEL_1557;
                    }

                    v319 = v25[2];
                    if (v29 > v319)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v319)
                    {
                      goto LABEL_1557;
                    }

                    v320 = v17[3];
                    if (v29 > v320)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v320)
                    {
                      goto LABEL_1557;
                    }

                    v321 = v21[1];
                    if (v29 > v321 || v30 >= v321)
                    {
                      goto LABEL_1557;
                    }

                    v189 = v15[v10];
                    goto LABEL_1447;
                  }

                  if (v30 >= v317)
                  {
                    v479 = v19[1];
                    if (v29 > v479)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v479)
                    {
                      goto LABEL_1557;
                    }

                    v480 = v25[2];
                    if (v29 > v480 || v30 >= v480)
                    {
                      goto LABEL_1557;
                    }

                    v481 = v17[3];
                    goto LABEL_1625;
                  }

                  v432 = v21[1];
                  if (v29 > v432 || v30 >= v432)
                  {
                    goto LABEL_1557;
                  }

                  v433 = v15[v11];
                  if (v29 > v433)
                  {
                    v434 = v25[2];
                    if (v29 > v434)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v434)
                    {
                      goto LABEL_1557;
                    }

                    v435 = v15[v10];
                    if (v29 > v435 || v30 >= v435)
                    {
                      goto LABEL_1557;
                    }

LABEL_1178:
                    v189 = v17[3];
                    goto LABEL_1447;
                  }

                  if (v30 >= v433)
                  {
                    v569 = v25[2];
                    if (v29 > v569)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v569)
                    {
                      goto LABEL_1557;
                    }

                    v570 = v17[3];
                    if (v29 > v570 || v30 >= v570)
                    {
                      goto LABEL_1557;
                    }

                    v189 = v15[v10];
                    goto LABEL_1631;
                  }

                  v539 = v15[v10];
                  if (v29 > v539)
                  {
                    v540 = *(v25 - 2);
                    if (v29 > v540 || v30 >= v540)
                    {
                      goto LABEL_1557;
                    }

                    v188 = *v18;
                    goto LABEL_404;
                  }

                  if (v30 < v539)
                  {
                    v590 = *(v15 - 3);
                    if (v29 <= v590)
                    {
                      if (v30 < v590)
                      {
                        continue;
                      }

                      v189 = v17[3];
                      goto LABEL_1631;
                    }

                    goto LABEL_1178;
                  }

                  v614 = *(v25 - 2);
                  if (v29 > v614 || v30 >= v614)
                  {
                    goto LABEL_1557;
                  }

                  v379 = *v18;
                }

                if (v29 > v379 || v30 >= v379)
                {
                  goto LABEL_1557;
                }

                v189 = *(v15 - 3);
                goto LABEL_1631;
              }

              v119 = v25[2];
              if (v29 > v119)
              {
                v120 = v15[v11];
                if (v29 > v120)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v120)
                {
                  goto LABEL_1557;
                }

                v121 = *v23;
                if (v29 > v121)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v121)
                {
                  goto LABEL_1557;
                }

                v122 = *v24;
                if (v29 > v122 || v30 >= v122)
                {
                  goto LABEL_1557;
                }

                v123 = *(v15 - 3);
                if (v29 <= v123)
                {
                  if (v30 >= v123)
                  {
                    v524 = v17[3];
                    if (v29 > v524 || v30 >= v524)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_1701;
                  }

                  v486 = *(v25 - 2);
                  if (v29 <= v486)
                  {
                    if (v30 < v486)
                    {
                      v548 = *v18;
                      if (v29 > v548)
                      {
                        v549 = v20[2];
                        if (v29 > v549 || v30 >= v549)
                        {
                          goto LABEL_1557;
                        }

                        v550 = v15[v10];
                        goto LABEL_1695;
                      }

                      if (v30 < v548)
                      {
                        v602 = *(v19 - 1);
                        if (v29 > v602)
                        {
                          v550 = v20[2];
LABEL_1695:
                          if (v29 > v550 || v30 >= v550)
                          {
                            goto LABEL_1557;
                          }

                          v224 = v21[1];
LABEL_1698:
                          if (v29 > v224)
                          {
                            goto LABEL_1557;
                          }

LABEL_1699:
                          if (v30 >= v224)
                          {
                            goto LABEL_1557;
                          }

                          continue;
                        }

                        if (v30 < v602)
                        {
                          continue;
                        }

                        v604 = v20[2];
                        goto LABEL_1704;
                      }
                    }

LABEL_1701:
                    v603 = v20[2];
                    if (v29 > v603 || v30 >= v603)
                    {
                      goto LABEL_1557;
                    }

                    v604 = v15[v10];
LABEL_1704:
                    if (v29 > v604 || v30 >= v604)
                    {
                      goto LABEL_1557;
                    }

                    v583 = v21[1];
                    goto LABEL_1707;
                  }

                  v125 = v20[2];
                  if (v29 > v125)
                  {
                    goto LABEL_1557;
                  }
                }

                else
                {
                  v124 = v17[3];
                  if (v29 > v124)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v124)
                  {
                    goto LABEL_1557;
                  }

                  v125 = v20[2];
                  if (v29 > v125)
                  {
                    goto LABEL_1557;
                  }
                }

                if (v30 >= v125)
                {
                  goto LABEL_1557;
                }

LABEL_1320:
                v487 = v15[v10];
                if (v29 > v487 || v30 >= v487)
                {
                  goto LABEL_1557;
                }

                v405 = v21[1];
LABEL_1345:
                if (v29 > v405 || v30 >= v405)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              if (v30 >= v119)
              {
                v295 = *v23;
                if (v29 > v295)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v295)
                {
                  goto LABEL_1557;
                }

                v296 = v15[v11];
                if (v29 > v296)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v296)
                {
                  goto LABEL_1557;
                }

                v297 = *v24;
                if (v29 > v297 || v30 >= v297)
                {
                  goto LABEL_1557;
                }

                v298 = *(v15 - 3);
                if (v29 > v298)
                {
                  v299 = v17[3];
                  if (v29 > v299 || v30 >= v299)
                  {
                    goto LABEL_1557;
                  }

LABEL_1441:
                  v522 = v20[2];
                  if (v29 > v522 || v30 >= v522)
                  {
                    goto LABEL_1557;
                  }

                  v523 = v15[v10];
LABEL_1444:
                  if (v29 > v523 || v30 >= v523)
                  {
                    goto LABEL_1557;
                  }

                  v189 = v21[1];
LABEL_1447:
                  if (v29 > v189)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1632;
                }

                if (v30 >= v298)
                {
                  v551 = v17[3];
                  if (v29 > v551 || v30 >= v551)
                  {
                    goto LABEL_1557;
                  }
                }

                else
                {
                  v521 = *(v25 - 2);
                  if (v29 > v521)
                  {
                    goto LABEL_1441;
                  }

                  if (v30 < v521)
                  {
                    v578 = *v18;
                    if (v29 > v578)
                    {
                      goto LABEL_1441;
                    }

                    if (v30 < v578)
                    {
                      v579 = *(v19 - 1);
                      if (v29 > v579)
                      {
                        v523 = v20[2];
                        goto LABEL_1444;
                      }

                      if (v30 < v579)
                      {
                        continue;
                      }

                      v580 = v20[2];
LABEL_1628:
                      if (v29 > v580 || v30 >= v580)
                      {
                        goto LABEL_1557;
                      }

                      v189 = v21[1];
                      goto LABEL_1631;
                    }
                  }
                }

                v481 = v20[2];
LABEL_1625:
                if (v29 > v481 || v30 >= v481)
                {
                  goto LABEL_1557;
                }

                v580 = v15[v10];
                goto LABEL_1628;
              }

              v217 = v20[2];
              if (v29 <= v217)
              {
                if (v30 >= v217)
                {
                  v416 = *(v25 - 2);
                  if (v29 > v416)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v416)
                  {
                    goto LABEL_1557;
                  }

                  v417 = *v18;
                  if (v29 > v417)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v417)
                  {
                    goto LABEL_1557;
                  }

                  v418 = *(v19 - 1);
                  if (v29 > v418 || v30 >= v418)
                  {
                    goto LABEL_1557;
                  }

                  v419 = *(v15 - 3);
                  if (v29 > v419)
                  {
                    v420 = v15[v10];
                    if (v29 > v420)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v420)
                    {
                      goto LABEL_1557;
                    }

                    v421 = v17[3];
                    if (v29 > v421 || v30 >= v421)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_1144;
                  }

                  if (v30 >= v419)
                  {
                    v605 = v15[v10];
                    if (v29 > v605)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v605)
                    {
                      goto LABEL_1557;
                    }

                    v606 = v17[3];
                    if (v29 > v606 || v30 >= v606)
                    {
                      goto LABEL_1557;
                    }
                  }

                  else
                  {
                    v574 = v17[3];
                    if (v29 > v574)
                    {
                      v575 = *v23;
                      if (v29 > v575)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v575)
                      {
                        goto LABEL_1557;
                      }

                      v576 = v15[v11];
                      if (v29 > v576 || v30 >= v576)
                      {
                        goto LABEL_1557;
                      }

                      v577 = *v24;
                      if (v29 <= v577)
                      {
                        if (v30 < v577)
                        {
                          continue;
                        }

LABEL_1144:
                        v422 = v19[1];
                        goto LABEL_1145;
                      }

                      v422 = v19[1];
LABEL_1146:
                      if (v30 >= v422)
                      {
                        goto LABEL_1557;
                      }

                      continue;
                    }

                    if (v30 < v574)
                    {
                      v620 = v19[1];
                      if (v29 > v620)
                      {
                        v621 = *v23;
                        if (v29 > v621 || v30 >= v621)
                        {
                          goto LABEL_1557;
                        }

                        v622 = v15[v11];
                        goto LABEL_1859;
                      }

                      if (v30 < v620)
                      {
                        continue;
                      }

                      v649 = *v23;
                      if (v29 > v649 || v30 >= v649)
                      {
                        goto LABEL_1557;
                      }

                      v629 = v15[v11];
LABEL_1777:
                      if (v29 > v629 || v30 >= v629)
                      {
                        goto LABEL_1557;
                      }

                      v422 = *v24;
LABEL_1822:
                      if (v29 > v422)
                      {
                        goto LABEL_1557;
                      }

                      goto LABEL_1146;
                    }

                    v642 = *v23;
                    if (v29 > v642)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v642)
                    {
                      goto LABEL_1557;
                    }

                    v643 = v15[v11];
                    if (v29 > v643 || v30 >= v643)
                    {
                      goto LABEL_1557;
                    }

                    v644 = *v24;
                    if (v29 > v644)
                    {
                      v189 = v19[1];
                      goto LABEL_1447;
                    }

                    if (v30 < v644)
                    {
                      continue;
                    }
                  }

                  v189 = v19[1];
LABEL_1631:
                  if (v29 > v189)
                  {
                    goto LABEL_1557;
                  }

LABEL_1632:
                  if (v30 >= v189)
                  {
                    goto LABEL_1557;
                  }

                  continue;
                }

                v348 = v17[3];
                if (v29 <= v348)
                {
                  if (v30 >= v348)
                  {
                    v502 = v15[v11];
                    if (v29 > v502)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v502)
                    {
                      goto LABEL_1557;
                    }

                    v503 = *v23;
                    if (v29 > v503)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v503)
                    {
                      goto LABEL_1557;
                    }

                    v504 = *(v15 - 3);
                    if (v29 > v504 || v30 >= v504)
                    {
                      goto LABEL_1557;
                    }

                    v505 = *v24;
                    if (v29 > v505)
                    {
                      v506 = *v18;
                      if (v29 > v506)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v506)
                      {
                        goto LABEL_1557;
                      }

                      v507 = *(v25 - 2);
                      if (v29 > v507 || v30 >= v507)
                      {
                        goto LABEL_1557;
                      }

                      v508 = v19[1];
                      goto LABEL_1408;
                    }

                    if (v30 >= v505)
                    {
                      v639 = *v18;
                      if (v29 > v639)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v639)
                      {
                        goto LABEL_1557;
                      }

                      v640 = *(v25 - 2);
                      if (v29 > v640 || v30 >= v640)
                      {
                        goto LABEL_1557;
                      }

                      v641 = v19[1];
                      goto LABEL_1819;
                    }

                    v616 = v15[v10];
                    if (v29 <= v616)
                    {
                      if (v30 >= v616)
                      {
                        v659 = *(v25 - 2);
                        if (v29 > v659)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v659)
                        {
                          goto LABEL_1557;
                        }

                        v660 = *v18;
                        if (v29 > v660 || v30 >= v660)
                        {
                          goto LABEL_1557;
                        }

                        v661 = *(v19 - 1);
                        if (v29 > v661)
                        {
LABEL_1893:
                          v422 = v21[1];
                          goto LABEL_1146;
                        }

                        if (v30 < v661)
                        {
                          continue;
                        }

                        v422 = v21[1];
                      }

                      else
                      {
                        v647 = v21[1];
                        if (v29 > v647)
                        {
                          v648 = *v18;
                          if (v29 > v648 || v30 >= v648)
                          {
                            goto LABEL_1557;
                          }

                          v508 = *(v25 - 2);
LABEL_1408:
                          if (v29 > v508 || v30 >= v508)
                          {
                            goto LABEL_1557;
                          }

                          v422 = *(v19 - 1);
LABEL_1145:
                          if (v29 > v422)
                          {
                            goto LABEL_1557;
                          }

                          goto LABEL_1146;
                        }

                        if (v30 < v647)
                        {
                          continue;
                        }

                        v663 = *v18;
                        if (v29 > v663 || v30 >= v663)
                        {
                          goto LABEL_1557;
                        }

                        v641 = *(v25 - 2);
LABEL_1819:
                        if (v29 > v641 || v30 >= v641)
                        {
                          goto LABEL_1557;
                        }

                        v422 = *(v19 - 1);
                      }

                      goto LABEL_1822;
                    }

                    v617 = *(v25 - 2);
                    if (v29 > v617)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v617)
                    {
                      goto LABEL_1557;
                    }

                    v618 = *v18;
                    if (v29 > v618 || v30 >= v618)
                    {
                      goto LABEL_1557;
                    }

                    v619 = *(v19 - 1);
                    if (v29 > v619 || v30 >= v619)
                    {
                      goto LABEL_1893;
                    }
                  }

                  else
                  {
                    v456 = v15[v10];
                    if (v29 > v456)
                    {
                      v457 = *(v15 - 3);
                      if (v29 > v457)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v457)
                      {
                        goto LABEL_1557;
                      }

                      v458 = *(v25 - 2);
                      if (v29 > v458)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v458)
                      {
                        goto LABEL_1557;
                      }

                      v459 = *v18;
                      if (v29 > v459 || v30 >= v459)
                      {
                        goto LABEL_1557;
                      }

                      v460 = *(v19 - 1);
                      if (v29 <= v460)
                      {
                        if (v30 >= v460)
                        {
                          v650 = v15[v11];
                          if (v29 > v650)
                          {
                            goto LABEL_1557;
                          }

                          if (v30 >= v650)
                          {
                            goto LABEL_1557;
                          }

                          v651 = *v23;
                          if (v29 > v651 || v30 >= v651)
                          {
                            goto LABEL_1557;
                          }

                          v622 = v21[1];
LABEL_1859:
                          if (v29 > v622 || v30 >= v622)
                          {
                            goto LABEL_1557;
                          }

                          v422 = *v24;
                          goto LABEL_1145;
                        }

                        v632 = v19[1];
                        if (v29 > v632)
                        {
                          v633 = v15[v11];
                          if (v29 > v633 || v30 >= v633 || v30 >= *v23)
                          {
                            goto LABEL_1557;
                          }

                          v224 = *v24;
                          goto LABEL_1699;
                        }

                        if (v30 < v632)
                        {
                          continue;
                        }

                        v655 = v15[v11];
                        if (v29 > v655 || v30 >= v655)
                        {
                          goto LABEL_1557;
                        }

                        v638 = *v23;
LABEL_1809:
                        if (v29 > v638 || v30 >= v638)
                        {
                          goto LABEL_1557;
                        }

                        v583 = *v24;
                        goto LABEL_1707;
                      }

                      v461 = v15[v11];
                      if (v29 > v461)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v461)
                      {
                        goto LABEL_1557;
                      }

                      v462 = *v23;
                      if (v29 > v462)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v462)
                      {
                        goto LABEL_1557;
                      }

                      v463 = *v24;
                      if (v29 > v463 || v30 >= v463)
                      {
                        goto LABEL_1557;
                      }

                      v356 = v21[1];
                      goto LABEL_917;
                    }

                    if (v30 >= v456)
                    {
                      v556 = *v18;
                      if (v29 > v556)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v556)
                      {
                        goto LABEL_1557;
                      }

                      v557 = *(v25 - 2);
                      if (v29 > v557)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v557)
                      {
                        goto LABEL_1557;
                      }

                      v558 = *(v15 - 3);
                      if (v29 > v558 || v30 >= v558)
                      {
                        goto LABEL_1557;
                      }

                      v559 = *(v19 - 1);
                      if (v29 <= v559)
                      {
                        if (v30 >= v559)
                        {
                          v657 = v15[v11];
                          if (v29 > v657)
                          {
                            goto LABEL_1557;
                          }

                          if (v30 >= v657)
                          {
                            goto LABEL_1557;
                          }

                          v658 = *v23;
                          if (v29 > v658 || v30 >= v658)
                          {
                            goto LABEL_1557;
                          }

                          v629 = v21[1];
                          goto LABEL_1777;
                        }

                        v645 = v19[1];
                        if (v29 <= v645)
                        {
                          if (v30 < v645)
                          {
                            continue;
                          }

                          v662 = v15[v11];
                          if (v29 > v662 || v30 >= v662)
                          {
                            goto LABEL_1557;
                          }

                          goto LABEL_1776;
                        }

                        v646 = *v23;
                        if (v29 > v646 || v30 >= v646)
                        {
                          goto LABEL_1557;
                        }

                        v562 = v15[v11];
                      }

                      else
                      {
                        v560 = v15[v11];
                        if (v29 > v560)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v560)
                        {
                          goto LABEL_1557;
                        }

                        v561 = *v23;
                        if (v29 > v561 || v30 >= v561)
                        {
                          goto LABEL_1557;
                        }

                        v562 = v21[1];
                      }

                      if (v29 > v562)
                      {
                        goto LABEL_1557;
                      }

LABEL_1841:
                      if (v30 >= v562)
                      {
                        goto LABEL_1557;
                      }

                      v422 = *v24;
                      goto LABEL_1146;
                    }

                    v527 = v21[1];
                    if (v29 <= v527)
                    {
                      if (v30 >= v527)
                      {
                        v607 = *(v25 - 2);
                        if (v29 > v607)
                        {
                          goto LABEL_1557;
                        }

                        if (v30 >= v607)
                        {
                          goto LABEL_1557;
                        }

                        v608 = *(v19 - 1);
                        if (v29 > v608 || v30 >= v608)
                        {
                          goto LABEL_1557;
                        }

                        v609 = v19[1];
                        if (v29 > v609)
                        {
                          if (v30 >= v15[v11] || v30 >= *v18 || v30 >= *v23)
                          {
                            goto LABEL_1557;
                          }

                          v422 = *(v15 - 3);
                          goto LABEL_1146;
                        }

                        if (v30 < v609)
                        {
                          continue;
                        }

                        if (v30 >= v15[v11] || v30 >= *v23)
                        {
                          goto LABEL_1557;
                        }

                        v562 = *v18;
                        goto LABEL_1841;
                      }

                      v586 = v19[1];
                      if (v29 <= v586)
                      {
                        if (v30 < v586)
                        {
                          continue;
                        }

LABEL_1776:
                        v629 = *v23;
                        goto LABEL_1777;
                      }

                      v587 = *v23;
                      if (v29 > v587)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v587)
                      {
                        goto LABEL_1557;
                      }

                      v531 = *v24;
                      if (v29 > v531)
                      {
                        goto LABEL_1557;
                      }
                    }

                    else
                    {
                      v528 = *(v25 - 2);
                      if (v29 > v528)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v528)
                      {
                        goto LABEL_1557;
                      }

                      v529 = *(v19 - 1);
                      if (v29 > v529 || v30 >= v529)
                      {
                        goto LABEL_1557;
                      }

                      v530 = v19[1];
                      if (v29 <= v530)
                      {
                        if (v30 < v530)
                        {
                          continue;
                        }

                        if (v30 >= *(v15 - 3) || v30 >= *v23 || v30 >= *v18)
                        {
                          goto LABEL_1557;
                        }

                        v422 = v15[v11];
                        goto LABEL_1146;
                      }

                      if (v30 >= v15[v11] || v30 >= *v23 || v30 >= *v18)
                      {
                        goto LABEL_1557;
                      }

                      v531 = *(v15 - 3);
                    }

                    if (v30 >= v531)
                    {
                      goto LABEL_1557;
                    }
                  }
                }

                else
                {
                  v349 = *(v15 - 3);
                  if (v29 > v349)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v349)
                  {
                    goto LABEL_1557;
                  }

                  v350 = *v23;
                  if (v29 > v350)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v350)
                  {
                    goto LABEL_1557;
                  }

                  v351 = v15[v11];
                  if (v29 > v351 || v30 >= v351)
                  {
                    goto LABEL_1557;
                  }

                  v352 = *v24;
                  if (v29 > v352)
                  {
                    v353 = *v18;
                    if (v29 > v353)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v353)
                    {
                      goto LABEL_1557;
                    }

                    v354 = *(v25 - 2);
                    if (v29 > v354)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v354)
                    {
                      goto LABEL_1557;
                    }

                    v355 = *(v19 - 1);
                    if (v29 > v355 || v30 >= v355)
                    {
                      goto LABEL_1557;
                    }

                    v356 = v19[1];
LABEL_917:
                    if (v30 >= v356 || v29 > v356)
                    {
                      goto LABEL_1557;
                    }

                    continue;
                  }

                  if (v30 >= v352)
                  {
                    v623 = *v18;
                    if (v29 > v623)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v623)
                    {
                      goto LABEL_1557;
                    }

                    v624 = *(v25 - 2);
                    if (v29 > v624 || v30 >= v624)
                    {
                      goto LABEL_1557;
                    }

                    v625 = v19[1];
LABEL_1765:
                    if (v29 > v625 || v30 >= v625)
                    {
                      goto LABEL_1557;
                    }

                    v583 = *(v19 - 1);
                    goto LABEL_1707;
                  }

                  v595 = v15[v10];
                  if (v29 > v595)
                  {
                    v596 = *v18;
                    if (v29 > v596)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v596)
                    {
                      goto LABEL_1557;
                    }

                    v597 = *(v25 - 2);
                    if (v29 > v597 || v30 >= v597)
                    {
                      goto LABEL_1557;
                    }

                    v598 = *(v19 - 1);
                    if (v29 > v598)
                    {
                      v224 = v21[1];
                      goto LABEL_1699;
                    }

                    if (v30 < v598)
                    {
                      continue;
                    }

LABEL_1905:
                    v583 = v21[1];
                    goto LABEL_1708;
                  }

                  if (v30 < v595)
                  {
                    v634 = v21[1];
                    if (v29 > v634)
                    {
                      v635 = *v18;
                      if (v29 > v635)
                      {
                        goto LABEL_1557;
                      }

                      if (v30 >= v635)
                      {
                        goto LABEL_1557;
                      }

                      v636 = *(v19 - 1);
                      if (v29 > v636 || v30 >= v636)
                      {
                        goto LABEL_1557;
                      }

                      v224 = *(v25 - 2);
                      goto LABEL_1698;
                    }

                    if (v30 < v634)
                    {
                      continue;
                    }

                    v656 = *v18;
                    if (v29 > v656 || v30 >= v656)
                    {
                      goto LABEL_1557;
                    }

                    v625 = *(v25 - 2);
                    goto LABEL_1765;
                  }

                  v652 = *v18;
                  if (v29 > v652)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v652)
                  {
                    goto LABEL_1557;
                  }

                  v653 = *(v25 - 2);
                  if (v29 > v653 || v30 >= v653)
                  {
                    goto LABEL_1557;
                  }

                  v654 = *(v19 - 1);
                  if (v29 > v654 || v30 >= v654)
                  {
                    goto LABEL_1905;
                  }
                }
              }

              else
              {
                v218 = *v18;
                if (v29 > v218)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v218)
                {
                  goto LABEL_1557;
                }

                v219 = *(v25 - 2);
                if (v29 > v219)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v219)
                {
                  goto LABEL_1557;
                }

                v220 = *(v19 - 1);
                if (v29 > v220 || v30 >= v220)
                {
                  goto LABEL_1557;
                }

                v221 = *(v15 - 3);
                if (v29 > v221)
                {
                  v222 = v15[v10];
                  if (v29 > v222)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v222)
                  {
                    goto LABEL_1557;
                  }

                  v223 = v17[3];
                  if (v29 > v223 || v30 >= v223)
                  {
                    goto LABEL_1557;
                  }

                  v224 = v19[1];
                  goto LABEL_1698;
                }

                if (v30 >= v221)
                {
                  v581 = v15[v10];
                  if (v29 > v581)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v581)
                  {
                    goto LABEL_1557;
                  }

                  v582 = v17[3];
                  if (v29 > v582 || v30 >= v582)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1638;
                }

                v543 = v17[3];
                if (v29 > v543)
                {
                  v544 = *v23;
                  if (v29 > v544)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v544)
                  {
                    goto LABEL_1557;
                  }

                  v545 = v15[v11];
                  if (v29 > v545 || v30 >= v545)
                  {
                    goto LABEL_1557;
                  }

                  v546 = *v24;
                  if (v29 > v546)
                  {
                    v224 = v19[1];
                    goto LABEL_1699;
                  }

                  if (v30 < v546)
                  {
                    continue;
                  }

LABEL_1638:
                  v583 = v19[1];
LABEL_1707:
                  if (v29 > v583)
                  {
                    goto LABEL_1557;
                  }

LABEL_1708:
                  if (v30 >= v583)
                  {
                    goto LABEL_1557;
                  }

                  continue;
                }

                if (v30 < v543)
                {
                  v599 = v19[1];
                  if (v29 > v599)
                  {
                    v600 = *v23;
                    if (v29 > v600)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v600)
                    {
                      goto LABEL_1557;
                    }

                    v601 = v15[v11];
                    if (v29 > v601 || v30 >= v601)
                    {
                      goto LABEL_1557;
                    }

                    v224 = *v24;
                    goto LABEL_1698;
                  }

                  if (v30 < v599)
                  {
                    continue;
                  }

                  v637 = *v23;
                  if (v29 > v637 || v30 >= v637)
                  {
                    goto LABEL_1557;
                  }

                  v638 = v15[v11];
                  goto LABEL_1809;
                }

                v626 = *v23;
                if (v29 > v626)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v626)
                {
                  goto LABEL_1557;
                }

                v627 = v15[v11];
                if (v29 > v627 || v30 >= v627)
                {
                  goto LABEL_1557;
                }

                v628 = *v24;
                if (v29 > v628 || v30 >= v628)
                {
                  goto LABEL_1638;
                }
              }
            }
          }
        }

        else
        {
          v31 = *v21;
          if (v29 <= v31)
          {
            if (v30 < v31)
            {
              v43 = *(v25 - 2);
              if (v29 > v43)
              {
                v44 = v19[1];
                if (v29 <= v44)
                {
                  v108 = v15[v10];
                  if (v30 < v44)
                  {
                    if (v29 > v108)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v108)
                    {
                      goto LABEL_1557;
                    }

                    v109 = *v18;
                    if (v29 > v109)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v109)
                    {
                      goto LABEL_1557;
                    }

                    v110 = *v23;
                    if (v29 > v110)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v110)
                    {
                      goto LABEL_1557;
                    }

                    v111 = v20[2];
                    if (v29 > v111)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v111)
                    {
                      goto LABEL_1557;
                    }

                    v112 = *(v15 - 3);
                    if (v29 > v112)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v112)
                    {
                      goto LABEL_1557;
                    }

                    v113 = v15[v11];
                    if (v29 > v113)
                    {
                      goto LABEL_1557;
                    }

LABEL_200:
                    if (v30 >= v113)
                    {
                      goto LABEL_1557;
                    }

                    v114 = *v24;
                    if (v29 > v114 || v30 >= v114)
                    {
                      goto LABEL_1557;
                    }

                    v115 = v21[1];
                    goto LABEL_874;
                  }

                  if (v29 > v108)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v108)
                  {
                    goto LABEL_1557;
                  }

                  v175 = *v18;
                  if (v29 > v175)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v175)
                  {
                    goto LABEL_1557;
                  }

                  v176 = *(v15 - 3);
                  if (v29 > v176)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v176)
                  {
                    goto LABEL_1557;
                  }

                  v177 = v20[2];
                  if (v29 > v177)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v177)
                  {
                    goto LABEL_1557;
                  }

                  v178 = *v23;
                  if (v29 > v178)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v178)
                  {
                    goto LABEL_1557;
                  }

                  v179 = v15[v11];
                  if (v29 > v179)
                  {
                    goto LABEL_1557;
                  }
                }

                else
                {
                  v45 = *(v19 - 1);
                  if (v29 > v45)
                  {
                    v46 = *(v15 - 3);
                    if (v29 > v46)
                    {
                      v47 = v25[2];
                      if (v29 <= v47)
                      {
                        v253 = *v24;
                        if (v30 < v47)
                        {
                          if (v29 <= v253 || v29 <= *v23)
                          {
                            goto LABEL_1557;
                          }

                          goto LABEL_1106;
                        }

                        if (v29 <= v253 || v29 <= *v23 || v29 <= v15[v11])
                        {
                          goto LABEL_1557;
                        }
                      }

                      else
                      {
                        v48 = v17[3];
                        if (v29 > v48)
                        {
                          if (v29 <= *v19)
                          {
                            goto LABEL_1557;
                          }

                          if (v29 > *v18)
                          {
                            continue;
                          }

                          if (v29 <= v20[2])
                          {
                            goto LABEL_1557;
                          }

                          goto LABEL_833;
                        }

                        v328 = *v23;
                        if (v30 < v48)
                        {
                          if (v29 <= v328 || v29 <= *v18)
                          {
                            goto LABEL_1557;
                          }

                          v209 = v15[v11];
                          goto LABEL_736;
                        }

                        if (v29 <= v328)
                        {
                          goto LABEL_1557;
                        }

LABEL_1106:
                        if (v29 <= v15[v11])
                        {
                          goto LABEL_1557;
                        }
                      }

                      v209 = *v18;
                      goto LABEL_736;
                    }

                    if (v30 >= v46)
                    {
                      if (v29 <= v15[v10] || v29 <= v25[2] || v29 <= *v18 && v29 <= v20[2])
                      {
                        goto LABEL_1557;
                      }

                      goto LABEL_735;
                    }

                    v204 = v20[2];
                    if (v29 > v204)
                    {
                      v81 = v25[2];
LABEL_450:
                      if (v29 <= v81)
                      {
                        goto LABEL_1557;
                      }

LABEL_733:
                      v287 = v15[v10];
LABEL_734:
                      if (v29 <= v287)
                      {
                        goto LABEL_1557;
                      }

LABEL_735:
                      v209 = v17[3];
LABEL_736:
                      if (v29 <= v209)
                      {
                        goto LABEL_1557;
                      }

                      v60 = *v19;
                      goto LABEL_1556;
                    }

                    v339 = *v18;
                    if (v30 >= v204)
                    {
                      if (v29 <= v339)
                      {
                        goto LABEL_1557;
                      }

LABEL_1127:
                      if (v29 <= v15[v10])
                      {
                        goto LABEL_1557;
                      }

                      v287 = v25[2];
                      goto LABEL_734;
                    }

                    if (v29 > v339)
                    {
                      goto LABEL_1127;
                    }

                    if (v30 >= v339)
                    {
                      goto LABEL_1557;
                    }

                    v340 = v15[v10];
                    if (v29 > v340)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v340)
                    {
                      goto LABEL_1557;
                    }

                    v341 = *v23;
                    if (v29 > v341)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v341)
                    {
                      goto LABEL_1557;
                    }

                    v113 = v15[v11];
                    if (v29 > v113)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_200;
                  }

                  v144 = v15[v10];
                  if (v30 < v45)
                  {
                    if (v29 > v144)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v144)
                    {
                      goto LABEL_1557;
                    }

                    v145 = *v18;
                    if (v29 > v145)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v145)
                    {
                      goto LABEL_1557;
                    }

                    v146 = *(v15 - 3);
                    if (v29 > v146)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v146)
                    {
                      goto LABEL_1557;
                    }

                    v147 = v20[2];
                    if (v29 > v147)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v147)
                    {
                      goto LABEL_1557;
                    }

                    v148 = *v23;
                    if (v29 > v148)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v148)
                    {
                      goto LABEL_1557;
                    }

                    v149 = v21[1];
                    if (v29 > v149 || v30 >= v149)
                    {
                      goto LABEL_1557;
                    }

                    v150 = v15[v11];
                    goto LABEL_871;
                  }

                  if (v29 > v144)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v144)
                  {
                    goto LABEL_1557;
                  }

                  v227 = *v18;
                  if (v29 > v227)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v227)
                  {
                    goto LABEL_1557;
                  }

                  v228 = *(v15 - 3);
                  if (v29 > v228)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v228)
                  {
                    goto LABEL_1557;
                  }

                  v229 = v20[2];
                  if (v29 > v229)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v229)
                  {
                    goto LABEL_1557;
                  }

                  v230 = *v23;
                  if (v29 > v230)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v230)
                  {
                    goto LABEL_1557;
                  }

                  v179 = v15[v11];
                  if (v29 > v179)
                  {
                    goto LABEL_1557;
                  }
                }

                if (v30 >= v179)
                {
                  goto LABEL_1557;
                }

                v231 = v21[1];
                goto LABEL_538;
              }

              if (v30 < v43)
              {
                v80 = v15[v11];
                if (v29 > v80)
                {
                  if (v29 <= v21[1] || v29 <= *(v19 - 1) || v29 <= v25[2] || v29 <= v20[2])
                  {
                    goto LABEL_1557;
                  }

                  v81 = v19[1];
                  goto LABEL_450;
                }

                if (v30 >= v80)
                {
                  if (v29 <= v21[1])
                  {
                    goto LABEL_1557;
                  }

LABEL_245:
                  if (v29 <= *(v19 - 1) || v29 <= v25[2] || v29 <= v20[2])
                  {
                    goto LABEL_1557;
                  }

                  v129 = v19[1];
                  goto LABEL_474;
                }

                v160 = *v19;
                if (v29 > v160)
                {
                  v161 = v20[2];
                  if (v29 > v161)
                  {
                    v162 = v21[1];
                    if (v29 > v162)
                    {
                      if (v29 <= *(v19 - 1) || v29 <= v25[2] || v29 <= v17[3])
                      {
                        goto LABEL_1557;
                      }

                      v163 = v15[v10];
                      goto LABEL_1066;
                    }

                    if (v30 >= v162)
                    {
                      goto LABEL_1557;
                    }

                    v392 = *(v19 - 1);
                    if (v29 > v392)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v392)
                    {
                      goto LABEL_1557;
                    }

                    v393 = *v23;
                    if (v29 > v393)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v393)
                    {
                      goto LABEL_1557;
                    }

                    v394 = *v18;
                    if (v29 > v394)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v394)
                    {
                      goto LABEL_1557;
                    }

                    v395 = *v24;
                    if (v29 > v395 || v30 >= v395)
                    {
                      goto LABEL_1557;
                    }

                    v115 = *(v15 - 3);
                    goto LABEL_874;
                  }

                  if (v30 < v161)
                  {
                    v336 = *v18;
                    if (v29 > v336)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v336)
                    {
                      goto LABEL_1557;
                    }

                    v337 = *v23;
                    if (v29 > v337)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v337)
                    {
                      goto LABEL_1557;
                    }

                    v338 = v21[1];
                    if (v29 > v338 || v30 >= v338)
                    {
                      goto LABEL_1557;
                    }

                    v150 = *(v15 - 3);
LABEL_871:
                    if (v29 > v150 || v30 >= v150)
                    {
                      goto LABEL_1557;
                    }

                    v115 = *v24;
LABEL_874:
                    if (v29 > v115 || v30 >= v115)
                    {
                      goto LABEL_1557;
                    }

                    continue;
                  }

                  v412 = *(v19 - 1);
                  if (v29 > v412)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v412)
                  {
                    goto LABEL_1557;
                  }

                  v413 = v21[1];
                  if (v29 > v413)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v413)
                  {
                    goto LABEL_1557;
                  }

                  v414 = *v23;
                  if (v29 > v414)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v414)
                  {
                    goto LABEL_1557;
                  }

                  v415 = *v18;
                  if (v29 > v415 || v30 >= v415)
                  {
                    goto LABEL_1557;
                  }

                  v231 = *(v15 - 3);
LABEL_538:
                  if (v29 > v231)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v231)
                  {
                    goto LABEL_1557;
                  }

                  v232 = *v24;
                  if (v29 > v232 || v30 >= v232)
                  {
                    goto LABEL_1557;
                  }

                  continue;
                }

                if (v30 >= v160)
                {
                  v363 = v21[1];
                  if (v29 > v363)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v363)
                  {
                    goto LABEL_1557;
                  }

                  v364 = *(v15 - 3);
                  if (v29 > v364)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v364)
                  {
                    goto LABEL_1557;
                  }

                  v365 = *v23;
                  if (v29 > v365 || v30 >= v365)
                  {
                    goto LABEL_1557;
                  }

                  v366 = *(v19 - 1);
                  if (v29 > v366 || v30 >= v366)
                  {
                    v367 = v20[2];
                    if (v29 > v367 || v30 >= v367)
                    {
                      goto LABEL_1557;
                    }
                  }

                  v202 = *v18;
                  goto LABEL_977;
                }

                v276 = *(v15 - 3);
                if (v29 > v276 || v30 >= v276)
                {
                  goto LABEL_1557;
                }

                v277 = *v23;
                if (v29 > v277)
                {
                  v278 = v17[3];
                  if (v29 > v278)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v278)
                  {
                    goto LABEL_1557;
                  }

                  v279 = v25[2];
                  if (v29 > v279)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v279)
                  {
                    goto LABEL_1557;
                  }

                  v280 = v19[1];
                  if (v29 > v280)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v280)
                  {
                    goto LABEL_1557;
                  }

                  v281 = *v18;
                  if (v29 > v281 || v30 >= v281)
                  {
                    goto LABEL_1557;
                  }

                  v282 = *(v19 - 1);
LABEL_1596:
                  if (v29 > v282 || v30 >= v282)
                  {
                    goto LABEL_1557;
                  }

                  continue;
                }

                if (v30 >= v277)
                {
                  v513 = v17[3];
                  if (v29 > v513)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v513)
                  {
                    goto LABEL_1557;
                  }

                  v514 = v25[2];
                  if (v29 > v514)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v514)
                  {
                    goto LABEL_1557;
                  }

                  v515 = *v18;
                  if (v29 > v515)
                  {
                    goto LABEL_1557;
                  }

                  if (v30 >= v515)
                  {
                    goto LABEL_1557;
                  }

                  v516 = v19[1];
                  if (v29 > v516 || v30 >= v516)
                  {
                    goto LABEL_1557;
                  }

                  v95 = *(v19 - 1);
                }

                else
                {
                  v471 = *v18;
                  if (v29 > v471 || v30 >= v471)
                  {
                    goto LABEL_1557;
                  }

                  v472 = *(v19 - 1);
                  if (v29 > v472)
                  {
                    v473 = v20[2];
                    if (v29 > v473)
                    {
                      goto LABEL_1557;
                    }

                    if (v30 >= v473)
                    {
                      goto LABEL_1557;
                    }

                    v474 = v21[1];
                    if (v29 > v474 || v30 >= v474)
                    {
                      goto LABEL_1557;
                    }

                    v282 = *v24;
                    goto LABEL_1596;
                  }

                  if (v30 < v472)
                  {
                    v567 = *v24;
                    if (v29 > v567)
                    {
                      v568 = v25[2];
                      if (v29 > v568 || v30 >= v568)
                      {
                        goto LABEL_1557;
                      }

                      v282 = v19[1];
                      goto LABEL_1596;
                    }

                    if (v30 < v567)
                    {
                      continue;
                    }

                    v611 = v25[2];
                    if (v29 > v611 || v30 >= v611)
                    {
                      goto LABEL_1557;
                    }

                    v95 = v19[1];
                    goto LABEL_1027;
                  }

                  v594 = v20[2];
                  if (v29 > v594 || v30 >= v594)
                  {
                    goto LABEL_1557;
                  }

                  v202 = v21[1];
LABEL_977:
                  if (v29 > v202 || v30 >= v202)
                  {
                    goto LABEL_1557;
                  }

                  v95 = *v24;
                }

LABEL_1027:
                if (v29 > v95 || v30 >= v95)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              v128 = v21[1];
              if (v29 > v128)
              {
                goto LABEL_245;
              }

              if (v30 >= v128)
              {
                goto LABEL_1557;
              }

              v197 = v15[v10];
              if (v29 > v197)
              {
                goto LABEL_1557;
              }

              if (v30 >= v197)
              {
                goto LABEL_1557;
              }

              v198 = *v18;
              if (v29 > v198)
              {
                goto LABEL_1557;
              }

              if (v30 >= v198)
              {
                goto LABEL_1557;
              }

              v199 = *(v15 - 3);
              if (v29 > v199)
              {
                goto LABEL_1557;
              }

              if (v30 >= v199)
              {
                goto LABEL_1557;
              }

              v200 = v20[2];
              if (v29 > v200)
              {
                goto LABEL_1557;
              }

              if (v30 >= v200)
              {
                goto LABEL_1557;
              }

              v201 = *v23;
              if (v29 > v201 || v30 >= v201)
              {
                goto LABEL_1557;
              }

              v202 = v15[v11];
              goto LABEL_977;
            }

            v65 = *(v19 - 1);
            if (v29 > v65)
            {
              if (v29 <= v19[1])
              {
                goto LABEL_1557;
              }

              v66 = v25[2];
              if (v29 > v66)
              {
                v67 = *(v25 - 2);
                if (v29 > v67)
                {
                  if (v29 > *v18)
                  {
                    if (v29 <= *v19)
                    {
                      goto LABEL_1557;
                    }

                    if (v29 <= v17[3])
                    {
                      if (v29 <= *v23)
                      {
                        goto LABEL_1557;
                      }

                      v233 = v15[v11];
                      goto LABEL_1043;
                    }

                    if (v29 > *(v15 - 3))
                    {
                      continue;
                    }

                    goto LABEL_833;
                  }

                  if (v29 <= v20[2])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_733;
                }

                v208 = v21[1];
                if (v30 >= v67)
                {
                  if (v29 <= v208 || v29 <= v20[2])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_733;
                }

                if (v29 <= v208)
                {
                  goto LABEL_1557;
                }

                v129 = v20[2];
LABEL_474:
                if (v29 <= v129 || v29 <= v17[3])
                {
                  goto LABEL_1557;
                }

                v209 = v15[v10];
                goto LABEL_736;
              }

              v157 = *v24;
              if (v30 >= v66)
              {
                if (v29 <= v157 || v29 <= *v23 || v29 <= *v18)
                {
                  goto LABEL_1557;
                }

                v158 = v15[v11];
              }

              else
              {
                if (v29 <= v157 || v29 <= v15[v11] || v29 <= *v18)
                {
                  goto LABEL_1557;
                }

                v158 = *v23;
              }

              if (v29 > v158 && v29 > *(v25 - 2))
              {
                v209 = *(v15 - 3);
                goto LABEL_736;
              }

LABEL_1557:
              v26 = v14;
              v14 = v27;
              continue;
            }

            if (v30 >= v65)
            {
              goto LABEL_1557;
            }

            v87 = v19[1];
            if (v29 > v87)
            {
              goto LABEL_1557;
            }

            if (v30 >= v87)
            {
              goto LABEL_1557;
            }

            v88 = v15[v11];
            if (v29 > v88)
            {
              goto LABEL_1557;
            }

            if (v30 >= v88)
            {
              goto LABEL_1557;
            }

            v89 = *(v15 - 3);
            if (v29 > v89 || v30 >= v89)
            {
              goto LABEL_1557;
            }

            v90 = *v23;
            if (v29 > v90)
            {
              v91 = v17[3];
              if (v29 > v91)
              {
                goto LABEL_1557;
              }

              if (v30 >= v91)
              {
                goto LABEL_1557;
              }

              v92 = v25[2];
              if (v29 > v92)
              {
                goto LABEL_1557;
              }

              if (v30 >= v92)
              {
                goto LABEL_1557;
              }

              v93 = *(v25 - 2);
              if (v29 > v93)
              {
                goto LABEL_1557;
              }

              if (v30 >= v93)
              {
                goto LABEL_1557;
              }

              v94 = *v18;
              if (v29 > v94 || v30 >= v94)
              {
                goto LABEL_1557;
              }

              v95 = *v19;
              goto LABEL_1027;
            }

            if (v30 >= v90)
            {
              v440 = v17[3];
              if (v29 > v440)
              {
                goto LABEL_1557;
              }

              if (v30 >= v440)
              {
                goto LABEL_1557;
              }

              v441 = v25[2];
              if (v29 > v441)
              {
                goto LABEL_1557;
              }

              if (v30 >= v441)
              {
                goto LABEL_1557;
              }

              v442 = *(v25 - 2);
              if (v29 > v442)
              {
                goto LABEL_1557;
              }

              if (v30 >= v442)
              {
                goto LABEL_1557;
              }

              v443 = *v18;
              if (v29 > v443 || v30 >= v443)
              {
                goto LABEL_1557;
              }

              v174 = *v19;
            }

            else
            {
              v385 = *(v25 - 2);
              if (v29 > v385)
              {
                goto LABEL_1557;
              }

              if (v30 >= v385)
              {
                goto LABEL_1557;
              }

              v386 = *v19;
              if (v29 > v386 || v30 >= v386)
              {
                goto LABEL_1557;
              }

              v387 = *v24;
              if (v29 > v387)
              {
                v388 = v25[2];
                if (v29 > v388 || v30 >= v388)
                {
                  goto LABEL_1557;
                }

                v95 = *v18;
                goto LABEL_1027;
              }

              if (v30 >= v387)
              {
                v552 = v25[2];
                if (v29 > v552 || v30 >= v552)
                {
                  goto LABEL_1557;
                }
              }

              v174 = *v18;
            }

            goto LABEL_1546;
          }

          v32 = *v19;
          if (v29 <= v32)
          {
            if (v30 >= v32)
            {
              if (v29 <= *v24)
              {
                goto LABEL_1557;
              }

              v82 = v20[2];
              if (v29 > v82)
              {
                v83 = *v23;
                if (v29 <= v83)
                {
                  v210 = v19[1];
                  if (v30 >= v83)
                  {
                    if (v29 <= v210 || v29 <= v25[2] || v29 <= v17[3])
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_741;
                  }

                  if (v29 <= v210 || v29 <= v25[2] || v29 <= v17[3])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_835;
                }

                if (v29 <= v21[1])
                {
                  goto LABEL_1557;
                }

                if (v29 <= v15[v11])
                {
                  goto LABEL_830;
                }

                if (v29 <= v15[v10])
                {
                  if (v29 <= *(v25 - 2))
                  {
                    goto LABEL_1557;
                  }

                  v233 = *v18;
                  goto LABEL_1043;
                }

                if (v29 > *(v15 - 3))
                {
                  continue;
                }

LABEL_131:
                v60 = v17[3];
                goto LABEL_1556;
              }

              v164 = *(v19 - 1);
              if (v30 >= v82)
              {
                if (v29 <= v164 || v29 <= *(v25 - 2) || v29 <= v15[v11] || v29 <= v21[1])
                {
                  goto LABEL_1557;
                }

                v165 = *v18;
              }

              else
              {
                if (v29 <= v164 || v29 <= v21[1] || v29 <= *v18 || v29 <= v15[v11])
                {
                  goto LABEL_1557;
                }

                v165 = *(v25 - 2);
              }

              if (v29 <= v165)
              {
                goto LABEL_1557;
              }

LABEL_589:
              v233 = *v23;
LABEL_1043:
              if (v29 <= v233)
              {
                goto LABEL_1557;
              }

              v60 = *(v15 - 3);
              goto LABEL_1556;
            }

            v57 = *v23;
            if (v29 > v57)
            {
              v58 = v20[2];
              if (v29 > v58)
              {
                v59 = *(v15 - 3);
                if (v29 > v59)
                {
                  if (v29 <= v21[1] || v29 <= *v24)
                  {
                    goto LABEL_1557;
                  }

                  if (v29 > v15[v11])
                  {
                    if (v29 > v15[v10])
                    {
                      continue;
                    }

                    if (v29 <= *(v25 - 2))
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_59;
                  }

LABEL_830:
                  if (v29 <= v25[2])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_831;
                }

                if (v30 >= v59)
                {
                  if (v29 <= v17[3])
                  {
                    goto LABEL_1557;
                  }

                  v286 = v15[v11];
                  if (v29 > v286)
                  {
                    if (v29 <= v15[v10])
                    {
                      goto LABEL_1557;
                    }

LABEL_723:
                    v118 = *v24;
LABEL_836:
                    if (v29 <= v118)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_837;
                  }

                  v411 = v25[2];
                  if (v30 >= v286)
                  {
                    if (v29 <= v411)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_461;
                  }

                  if (v29 <= v411)
                  {
                    goto LABEL_1557;
                  }

                  v261 = *v24;
LABEL_657:
                  if (v29 <= v261)
                  {
                    goto LABEL_1557;
                  }

LABEL_835:
                  v118 = v15[v10];
                  goto LABEL_836;
                }

                v206 = v25[2];
                if (v29 > v206)
                {
                  if (v29 <= v17[3])
                  {
                    goto LABEL_1557;
                  }

LABEL_461:
                  if (v29 <= *v24)
                  {
                    goto LABEL_1557;
                  }

LABEL_741:
                  v288 = v21[1];
LABEL_832:
                  if (v29 <= v288)
                  {
                    goto LABEL_1557;
                  }

LABEL_833:
                  v60 = v15[v10];
                  goto LABEL_1556;
                }

                v342 = v15[v11];
                if (v30 >= v206)
                {
                  if (v29 <= v342 || v29 <= v17[3] || v29 <= v15[v10])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1360;
                }

                if (v29 > v342)
                {
                  if (v29 <= v17[3] || v29 <= v21[1])
                  {
                    goto LABEL_1557;
                  }

                  v99 = v15[v10];
                  goto LABEL_1554;
                }

                if (v30 >= v342)
                {
                  goto LABEL_1557;
                }

                v452 = v17[3];
                if (v29 > v452)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v452)
                {
                  goto LABEL_1557;
                }

                v453 = *(v25 - 2);
                if (v29 > v453)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v453)
                {
                  goto LABEL_1557;
                }

                v454 = *v18;
                if (v29 > v454 || v30 >= v454)
                {
                  goto LABEL_1557;
                }

                v268 = *(v19 - 1);
                goto LABEL_1242;
              }

              v153 = *(v19 - 1);
              if (v30 < v58)
              {
                if (v29 > v153)
                {
                  if (v29 <= v21[1] || v29 <= *v18 || v29 <= v15[v11] || v29 <= *(v25 - 2))
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_310;
                }

                if (v30 >= v153)
                {
                  goto LABEL_1557;
                }

                v263 = v17[3];
                if (v29 > v263)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v263)
                {
                  goto LABEL_1557;
                }

                v264 = v15[v11];
                if (v29 > v264)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v264)
                {
                  goto LABEL_1557;
                }

                v265 = *(v15 - 3);
                if (v29 > v265)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v265)
                {
                  goto LABEL_1557;
                }

                v266 = *(v25 - 2);
                if (v29 > v266)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v266)
                {
                  goto LABEL_1557;
                }

                v267 = v25[2];
                if (v29 > v267 || v30 >= v267)
                {
                  goto LABEL_1557;
                }

                v268 = *v18;
LABEL_1242:
                if (v29 > v268)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v268)
                {
                  goto LABEL_1557;
                }

                v455 = v19[1];
                if (v29 > v455 || v30 >= v455)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              if (v29 > v153)
              {
                if (v29 <= v21[1] || v29 <= *v18 || v29 <= *(v25 - 2) || v29 <= v15[v11])
                {
                  goto LABEL_1557;
                }

                v233 = *v24;
                goto LABEL_1043;
              }

              if (v30 >= v153)
              {
                goto LABEL_1557;
              }

              v300 = v15[v11];
              if (v29 > v300)
              {
                goto LABEL_1557;
              }

              if (v30 >= v300)
              {
                goto LABEL_1557;
              }

              v301 = v17[3];
              if (v29 > v301)
              {
                goto LABEL_1557;
              }

              if (v30 >= v301)
              {
                goto LABEL_1557;
              }

              v302 = *(v15 - 3);
              if (v29 > v302)
              {
                goto LABEL_1557;
              }

              if (v30 >= v302)
              {
                goto LABEL_1557;
              }

              v303 = v25[2];
              if (v29 > v303)
              {
                goto LABEL_1557;
              }

              if (v30 >= v303)
              {
                goto LABEL_1557;
              }

              v304 = *(v25 - 2);
              if (v29 > v304)
              {
                goto LABEL_1557;
              }

              if (v30 >= v304)
              {
                goto LABEL_1557;
              }

              v305 = *v18;
              if (v29 > v305 || v30 >= v305)
              {
                goto LABEL_1557;
              }

              v242 = v19[1];
              goto LABEL_779;
            }

            if (v30 >= v57)
            {
              v180 = v19[1];
              if (v29 > v180)
              {
                if (v29 <= *v24 || v29 <= v25[2] || v29 <= v20[2] || v29 <= v21[1])
                {
                  goto LABEL_1557;
                }

LABEL_831:
                v288 = v17[3];
                goto LABEL_832;
              }

              if (v30 >= v180)
              {
                goto LABEL_1557;
              }

              v236 = v17[3];
              if (v29 > v236)
              {
                goto LABEL_1557;
              }

              if (v30 >= v236)
              {
                goto LABEL_1557;
              }

              v237 = v15[v11];
              if (v29 > v237)
              {
                goto LABEL_1557;
              }

              if (v30 >= v237)
              {
                goto LABEL_1557;
              }

              v238 = *(v15 - 3);
              if (v29 > v238)
              {
                goto LABEL_1557;
              }

              if (v30 >= v238)
              {
                goto LABEL_1557;
              }

              v239 = v25[2];
              if (v29 > v239)
              {
                goto LABEL_1557;
              }

              if (v30 >= v239)
              {
                goto LABEL_1557;
              }

              v240 = *(v25 - 2);
              if (v29 > v240)
              {
                goto LABEL_1557;
              }

              if (v30 >= v240)
              {
                goto LABEL_1557;
              }

              v241 = *v18;
              if (v29 > v241 || v30 >= v241)
              {
                goto LABEL_1557;
              }

              v242 = *(v19 - 1);
              goto LABEL_779;
            }

            v116 = v25[2];
            if (v29 <= v116)
            {
              if (v30 >= v116)
              {
                v289 = *v24;
                if (v29 > v289)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v289)
                {
                  goto LABEL_1557;
                }

                v290 = v19[1];
                if (v29 > v290)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v290)
                {
                  goto LABEL_1557;
                }

                v291 = *v18;
                if (v29 > v291)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v291)
                {
                  goto LABEL_1557;
                }

                v292 = *(v25 - 2);
                if (v29 > v292)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v292)
                {
                  goto LABEL_1557;
                }

                v293 = v15[v11];
                if (v29 > v293)
                {
                  goto LABEL_1557;
                }

                if (v30 >= v293)
                {
                  goto LABEL_1557;
                }

                v294 = *(v19 - 1);
                if (v29 > v294 || v30 >= v294)
                {
                  goto LABEL_1557;
                }

                v242 = *(v15 - 3);
LABEL_779:
                if (v29 > v242 || v30 >= v242)
                {
                  goto LABEL_1557;
                }

                continue;
              }

              v211 = *(v15 - 3);
              if (v29 > v211)
              {
                goto LABEL_1557;
              }

              if (v30 >= v211)
              {
                goto LABEL_1557;
              }

              v212 = *(v25 - 2);
              if (v29 > v212)
              {
                goto LABEL_1557;
              }

              if (v30 >= v212)
              {
                goto LABEL_1557;
              }

              v213 = v15[v11];
              if (v29 > v213)
              {
                goto LABEL_1557;
              }

              if (v30 >= v213)
              {
                goto LABEL_1557;
              }

              v214 = v19[1];
              if (v29 > v214)
              {
                goto LABEL_1557;
              }

              if (v30 >= v214)
              {
                goto LABEL_1557;
              }

              v215 = *v18;
              if (v29 > v215 || v30 >= v215)
              {
                goto LABEL_1557;
              }

              v216 = *(v19 - 1);
            }

            else
            {
              v117 = v19[1];
              if (v29 > v117)
              {
                if (v29 <= *v24 || v29 <= v20[2] || v29 <= v15[v10])
                {
                  goto LABEL_1557;
                }

                v118 = v17[3];
                goto LABEL_836;
              }

              if (v30 >= v117)
              {
                goto LABEL_1557;
              }

              v256 = *v24;
              if (v29 > v256)
              {
                goto LABEL_1557;
              }

              if (v30 >= v256)
              {
                goto LABEL_1557;
              }

              v257 = *v18;
              if (v29 > v257)
              {
                goto LABEL_1557;
              }

              if (v30 >= v257)
              {
                goto LABEL_1557;
              }

              v258 = *(v25 - 2);
              if (v29 > v258)
              {
                goto LABEL_1557;
              }

              if (v30 >= v258)
              {
                goto LABEL_1557;
              }

              v259 = v15[v11];
              if (v29 > v259)
              {
                goto LABEL_1557;
              }

              if (v30 >= v259)
              {
                goto LABEL_1557;
              }

              v260 = *(v19 - 1);
              if (v29 > v260 || v30 >= v260)
              {
                goto LABEL_1557;
              }

              v216 = *(v15 - 3);
            }

            if (v29 > v216 || v30 >= v216)
            {
              goto LABEL_1557;
            }
          }

          else
          {
            v33 = v25[2];
            if (v29 <= v33)
            {
              if (v30 >= v33)
              {
                if (v29 <= *v23 || v29 <= v15[v11] || v29 <= *v24)
                {
                  goto LABEL_1557;
                }

                if (v29 > *(v15 - 3))
                {
                  if (v29 > *(v25 - 2) && v29 > *v18)
                  {
                    if (v29 > *(v19 - 1))
                    {
                      continue;
                    }

LABEL_231:
                    if (v29 <= v20[2])
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_837;
                  }

LABEL_834:
                  if (v29 <= v20[2])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_835;
                }
              }

              else
              {
                if (v29 <= v15[v11] || v29 <= *v23 || v29 <= *v24)
                {
                  goto LABEL_1557;
                }

                if (v29 > *(v15 - 3))
                {
                  if (v29 > *(v25 - 2) && v29 > *v18)
                  {
                    if (v29 > *(v19 - 1))
                    {
                      continue;
                    }

                    goto LABEL_231;
                  }

                  goto LABEL_834;
                }
              }

              if (v29 <= v17[3])
              {
                goto LABEL_1557;
              }

              v261 = v20[2];
              goto LABEL_657;
            }

            v34 = v20[2];
            if (v29 <= v34)
            {
              v96 = *v18;
              if (v30 >= v34)
              {
                if (v29 <= v96 || v29 <= *(v25 - 2) || v29 <= *(v19 - 1))
                {
                  goto LABEL_1557;
                }

                if (v29 > *(v15 - 3))
                {
                  if (v29 > v17[3])
                  {
                    v166 = v19[1];
                    if (v29 > v166)
                    {
                      continue;
                    }

                    v167 = *v23;
                    if (v30 >= v166)
                    {
                      if (v29 <= v167)
                      {
                        goto LABEL_1557;
                      }

LABEL_1463:
                      if (v29 <= *v24)
                      {
                        goto LABEL_1557;
                      }

                      v60 = v15[v11];
                      goto LABEL_1556;
                    }

                    if (v29 <= v167)
                    {
                      goto LABEL_1557;
                    }

LABEL_1553:
                    v99 = v15[v11];
                    goto LABEL_1554;
                  }

LABEL_1068:
                  if (v29 <= *v23 || v29 <= v15[v11])
                  {
                    goto LABEL_1557;
                  }

                  if (v29 > *v24)
                  {
                    continue;
                  }

                  goto LABEL_1071;
                }

                v390 = v15[v10];
              }

              else
              {
                if (v29 <= v96 || v29 <= *(v25 - 2) || v29 <= *(v19 - 1))
                {
                  goto LABEL_1557;
                }

                v97 = *(v15 - 3);
                if (v29 > v97)
                {
                  if (v29 > v17[3])
                  {
                    v98 = v19[1];
                    if (v29 > v98)
                    {
                      continue;
                    }

                    if (v30 < v98)
                    {
                      if (v29 <= v15[v11])
                      {
                        goto LABEL_1557;
                      }

                      v99 = *v23;
                      goto LABEL_1554;
                    }

                    if (v29 <= *v23)
                    {
                      goto LABEL_1557;
                    }

                    goto LABEL_1553;
                  }

                  goto LABEL_1068;
                }

                v390 = v15[v10];
                if (v30 < v97)
                {
                  if (v29 <= v390 || v29 <= v19[1])
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_131;
                }
              }

              if (v29 <= v390)
              {
                goto LABEL_1557;
              }

              v163 = v17[3];
              goto LABEL_1066;
            }

            v35 = v17[3];
            if (v29 > v35)
            {
              v36 = v15[v10];
              if (v29 > v36)
              {
                v37 = v21[1];
                if (v29 > v37)
                {
                  if (v29 > v19[1])
                  {
                    continue;
                  }

                  if (v29 <= *v23)
                  {
                    goto LABEL_1557;
                  }

LABEL_1555:
                  v60 = *v24;
                  goto LABEL_1556;
                }

                v249 = *(v25 - 2);
                if (v30 < v37)
                {
                  if (v29 <= v249 || v29 <= *(v19 - 1))
                  {
                    goto LABEL_1557;
                  }

                  v250 = v19[1];
                  if (v29 > v250)
                  {
                    continue;
                  }

                  v251 = v15[v11];
                  if (v30 >= v250)
                  {
                    if (v29 <= v251 || v29 <= *(v15 - 3))
                    {
                      goto LABEL_1557;
                    }

                    v141 = *v23;
                    goto LABEL_1472;
                  }

                  if (v29 <= v251 || v29 <= *v18)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_589;
                }

                if (v29 <= v249 || v29 <= *(v19 - 1))
                {
                  goto LABEL_1557;
                }

                v358 = v19[1];
                if (v29 > v358)
                {
                  continue;
                }

                v359 = v15[v11];
                if (v30 >= v358)
                {
                  if (v29 <= v359 || v29 <= *v23)
                  {
                    goto LABEL_1557;
                  }

                  v99 = *v18;
                  goto LABEL_1554;
                }

                if (v29 <= v359 || v29 <= *v23)
                {
                  goto LABEL_1557;
                }

LABEL_310:
                v99 = *(v15 - 3);
LABEL_1554:
                if (v29 <= v99)
                {
                  goto LABEL_1557;
                }

                goto LABEL_1555;
              }

              if (v30 < v36)
              {
                if (v29 <= *(v15 - 3) || v29 <= *(v25 - 2) || v29 <= *v18)
                {
                  goto LABEL_1557;
                }

                if (v29 > *(v19 - 1))
                {
                  v203 = v19[1];
                  if (v29 > v203)
                  {
                    continue;
                  }

                  if (v30 >= v203)
                  {
                    if (v29 <= v15[v11] || v29 <= *v24)
                    {
                      goto LABEL_1557;
                    }

                    v60 = *v23;
                    goto LABEL_1556;
                  }

                  if (v29 <= *v23)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_1553;
                }

                v489 = v15[v11];
LABEL_1358:
                if (v29 <= v489 || v29 <= *v23)
                {
                  goto LABEL_1557;
                }

LABEL_1360:
                v99 = v21[1];
                goto LABEL_1554;
              }

              if (v29 <= *v18 || v29 <= *(v25 - 2) || v29 <= *(v15 - 3))
              {
                goto LABEL_1557;
              }

              v283 = *(v19 - 1);
              if (v29 <= v283)
              {
                v489 = v15[v11];
                if (v30 < v283)
                {
                  if (v29 <= v489 || v29 <= *v23)
                  {
                    goto LABEL_1557;
                  }

                  goto LABEL_723;
                }

                goto LABEL_1358;
              }

              v284 = v19[1];
              if (v29 > v284)
              {
                continue;
              }

              v285 = *v23;
              if (v30 < v284)
              {
                if (v29 <= v285)
                {
                  goto LABEL_1557;
                }

                goto LABEL_1463;
              }

              if (v29 <= v285)
              {
                goto LABEL_1557;
              }

              goto LABEL_1553;
            }

            if (v30 >= v35)
            {
              if (v29 <= v15[v11] || v29 <= *v23 || v29 <= *(v15 - 3))
              {
                goto LABEL_1557;
              }

              v225 = *v24;
              if (v29 > v225)
              {
                if (v29 > v15[v10])
                {
                  v226 = v21[1];
                  if (v29 > v226)
                  {
                    continue;
                  }

                  if (v30 < v226)
                  {
                    if (v29 <= *(v25 - 2))
                    {
                      goto LABEL_1557;
                    }

                    v141 = *(v19 - 1);
                    goto LABEL_1472;
                  }

                  goto LABEL_1465;
                }

                if (v29 <= *(v25 - 2) || v29 <= *v18)
                {
                  goto LABEL_1557;
                }

                if (v29 > *(v19 - 1))
                {
                  continue;
                }

                goto LABEL_837;
              }

              if (v30 >= v225)
              {
                if (v29 <= *v18 || v29 <= *(v25 - 2))
                {
                  goto LABEL_1557;
                }

                v498 = v19[1];
                goto LABEL_1467;
              }

              if (v29 <= *(v25 - 2) || v29 <= *v18)
              {
                goto LABEL_1557;
              }

              v163 = *(v19 - 1);
LABEL_1066:
              if (v29 <= v163)
              {
                goto LABEL_1557;
              }

LABEL_1071:
              v60 = v19[1];
              goto LABEL_1556;
            }

            if (v29 <= *(v15 - 3) || v29 <= *v23 || v29 <= v15[v11])
            {
              goto LABEL_1557;
            }

            v139 = v15[v10];
            if (v29 > v139)
            {
              if (v29 <= v21[1])
              {
                if (v29 <= *v18)
                {
                  goto LABEL_1557;
                }
              }

              else
              {
                v140 = *v24;
                if (v29 > v140)
                {
                  continue;
                }

                if (v30 < v140)
                {
                  if (v29 <= *(v25 - 2))
                  {
                    goto LABEL_1557;
                  }

                  v141 = v19[1];
LABEL_1472:
                  if (v29 <= v141)
                  {
                    goto LABEL_1557;
                  }

LABEL_59:
                  v60 = *v18;
                  goto LABEL_1556;
                }

LABEL_1465:
                if (v29 <= *v18)
                {
                  goto LABEL_1557;
                }
              }

              v498 = *(v25 - 2);
LABEL_1467:
              if (v29 <= v498)
              {
                goto LABEL_1557;
              }

LABEL_1468:
              v60 = *(v19 - 1);
              goto LABEL_1556;
            }

            v445 = *(v25 - 2);
            if (v30 >= v139)
            {
              if (v29 <= v445 || v29 <= *v18)
              {
                goto LABEL_1557;
              }

              if (v29 <= *v24)
              {
LABEL_1567:
                if (v29 <= v19[1])
                {
                  goto LABEL_1557;
                }

                goto LABEL_1468;
              }

              if (v29 > *(v19 - 1))
              {
                continue;
              }

LABEL_837:
              v60 = v21[1];
              goto LABEL_1556;
            }

            if (v29 <= v445 || v29 <= *v18)
            {
              goto LABEL_1557;
            }

            if (v29 <= *v24)
            {
              goto LABEL_1567;
            }

            v446 = v21[1];
            if (v29 <= v446 && v30 >= v446)
            {
              goto LABEL_1468;
            }
          }
        }
      }

      while (v26 - v14 > 1);
      *(v13 + 4 * v8++) = v14;
    }

    while (result != v8);
  }

  return result;
}