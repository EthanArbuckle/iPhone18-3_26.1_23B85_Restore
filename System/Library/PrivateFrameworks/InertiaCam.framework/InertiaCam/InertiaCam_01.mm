uint64_t sub_254B3857C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B3705C(result, a4);
  }

  return result;
}

void sub_254B385E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_254B36F30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_254B38604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v22 = a4;
  v23 = a4;
  v20[0] = a1;
  v20[1] = &v22;
  v20[2] = &v23;
  v21 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(v4 + 60) = *(v6 + 60);
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 16) = v7;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = 0;
      sub_254B331F8(v4 + 80, *(v6 + 80), *(v6 + 88), (*(v6 + 88) - *(v6 + 80)) >> 6);
      *(v4 + 104) = *(v6 + 104);
      v10 = *(v6 + 120);
      v11 = *(v6 + 136);
      v12 = *(v6 + 152);
      *(v4 + 168) = *(v6 + 168);
      *(v4 + 152) = v12;
      *(v4 + 136) = v11;
      *(v4 + 120) = v10;
      v13 = *(v6 + 184);
      v14 = *(v6 + 200);
      v15 = *(v6 + 216);
      *(v4 + 232) = *(v6 + 232);
      *(v4 + 216) = v15;
      *(v4 + 200) = v14;
      *(v4 + 184) = v13;
      v16 = *(v6 + 248);
      v17 = *(v6 + 264);
      v18 = *(v6 + 280);
      *(v4 + 293) = *(v6 + 293);
      *(v4 + 264) = v17;
      *(v4 + 280) = v18;
      *(v4 + 248) = v16;
      v6 += 304;
      v4 = v23 + 304;
      v23 += 304;
    }

    while (v6 != a3);
  }

  v21 = 1;
  sub_254B34718(v20);
  return v4;
}

void sub_254B3876C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x259C24E00);
}

void sub_254B38850(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

uint64_t sub_254B3888C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    v2 = [WeakRetained ICShouldBeCanceled];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_254B388F0(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_254B38968(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x259C24E00);
}

void sub_254B38A4C(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_254B38A88(uint64_t a1, int *a2)
{
  v2 = *a2;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v3) = v2;
    [WeakRetained ICReportProgress:v3];
  }
}

uint64_t sub_254B38B08(uint64_t a1, uint64_t a2)
{
  if (sub_254B33F84(a2, &unk_286700140))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_254B38B54(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      operator delete(v3);
    }

    v4 = *(v2 + 72);
    if (v4)
    {
      *(v2 + 80) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      *(v2 + 32) = v6;
      operator delete(v6);
    }

    v7 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v7;
      operator delete(v7);
    }

    JUMPOUT(0x259C24E00);
  }

  return result;
}

uint64_t sub_254B38BF8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B36A00(result, a4);
  }

  return result;
}

void sub_254B38C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B38C78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B36B20(result, a4);
  }

  return result;
}

void sub_254B38CF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B38D0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_254B36CA4(result, a6);
  }

  return result;
}

void sub_254B38D78(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_254B38D90(uint64_t a1, uint64_t a2)
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

uint64_t sub_254B38E78(uint64_t *a1, uint64_t a2)
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

void sub_254B39044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_254B34798(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B39058(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x86BCA1AF286BCA1BLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x86BCA1AF286BCA1BLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 304 * a5;
        sub_254B34C4C(a1, a2, a1[1], a2 + 304 * a5);
        v17 = v18 + a3;
      }

      else
      {
        a1[1] = sub_254B38604(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_254B34C4C(a1, v5, v10, v5 + 304 * a5);
        v17 = v16 + a3;
      }

      sub_254B35164(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x79435E50D79435E5 * ((v10 - *a1) >> 4);
    if (v12 > 0xD79435E50D7943)
    {
      sub_254B32E20();
    }

    v13 = a2 - v11;
    v14 = 0x86BCA1AF286BCA1BLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x6BCA1AF286BCA1)
    {
      v15 = 0xD79435E50D7943;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_254B34578(a1, v15);
    }

    v20 = 0;
    v21 = 16 * (v13 >> 4);
    v22 = v21;
    v23 = 0;
    sub_254B3923C(&v20, a3, a5);
    v5 = sub_254B34F18(a1, &v20, v5);
    sub_254B34798(&v20);
  }

  return v5;
}

uint64_t sub_254B3923C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = v4 + 304 * a3;
    v7 = v4 + 80;
    v8 = 304 * a3;
    do
    {
      *(v7 - 80) = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      *(v7 - 20) = *(a2 + 60);
      *(v7 - 48) = v10;
      *(v7 - 32) = v11;
      *(v7 - 64) = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      result = sub_254B331F8(v7, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 6);
      *(v7 + 24) = *(a2 + 104);
      v12 = *(a2 + 120);
      v13 = *(a2 + 136);
      v14 = *(a2 + 152);
      *(v7 + 88) = *(a2 + 168);
      *(v7 + 72) = v14;
      *(v7 + 56) = v13;
      *(v7 + 40) = v12;
      v15 = *(a2 + 184);
      v16 = *(a2 + 200);
      v17 = *(a2 + 216);
      *(v7 + 152) = *(a2 + 232);
      *(v7 + 136) = v17;
      *(v7 + 120) = v16;
      *(v7 + 104) = v15;
      v18 = *(a2 + 248);
      v19 = *(a2 + 264);
      v20 = *(a2 + 280);
      *(v7 + 213) = *(a2 + 293);
      *(v7 + 200) = v20;
      *(v7 + 184) = v19;
      *(v7 + 168) = v18;
      a2 += 304;
      v7 += 304;
      v8 -= 304;
    }

    while (v8);
  }

  else
  {
    v6 = *(result + 16);
  }

  *(v3 + 16) = v6;
  return result;
}

void ***sub_254B39358(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_254B36F30(&v3);
    return MEMORY[0x259C24E00](v2, 0x20C40960023A9);
  }

  return result;
}

void sub_254B393AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_254B393AC(a1, *a2);
    sub_254B393AC(a1, a2[1]);
    v4 = a2[11];
    if (v4)
    {
      a2[12] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *sub_254B39410(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_254B39504(uint64_t a1, double *a2)
{
  v2 = 0.0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = a2[9];
    }

    else if (a1 == 3 || a1 == 4)
    {
      v2 = a2[10];
    }

    return v2 != 0.0;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = a2[8];
    }

    return v2 != 0.0;
  }

  return 1;
}

uint64_t sub_254B3955C(int64x2_t *a1, unint64_t a2, double *a3)
{
  v6 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  do
  {
    if (v6 <= a2)
    {
      if (sub_254B39504(v6, a3))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v13.i64[v6++] = v8;
    --v7;
  }

  while (v6 != 4);
  v9 = v14;
  v10 = v13;
  v11 = v14;
  *a1 = v13;
  a1[1] = v9;
  return vaddvq_s64(vaddq_s64(v11, v10));
}

double sub_254B39624(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

uint64_t sub_254B39630(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v7 = (*a3 + 72 * a4);
  v8 = *v7;
  v9 = *v7;
  if (a4)
  {
    v9 = *(v7 - 9);
  }

  sub_254B48B98(v11, *a2 + 72 * a4);
  result = sub_254B48E78(a1, v11);
  *(a1 + 24) = (v9 - v8) / (a5 * 3.0);
  return result;
}

void sub_254B396E8(uint64_t a1, float64x2_t *a2, double *a3, double a4)
{
  v55 = *MEMORY[0x277D85DE8];
  sub_254B48E40(v53, a2);
  sub_254B48C38(v42, v53);
  v8 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = a3[5];
  v12 = a3[6];
  v13 = a3[7];
  v14 = a3[8];
  v15 = a2[1].f64[1] * -3.0 * a4;
  v16 = v15 + *a3;
  v17 = v15 + a3[4];
  v18 = v17 * v14 - v13 * v11;
  v19 = v13 * v10 - v8 * v14;
  v43 = v18;
  v44 = v19;
  v20 = v8 * v11 - v17 * v10;
  v45 = v20;
  v21 = v19 * v9 + v16 * v18 + v12 * v20;
  if (fabs(v21) >= 2.22044605e-16)
  {
    v43 = v18 / v21;
    v44 = v19 / v21;
    v45 = v20 / v21;
    v46 = (v12 * v11 - v9 * v14) / v21;
    v47 = (v16 * v14 - v12 * v10) / v21;
    v48 = (v9 * v10 - v16 * v11) / v21;
    v49 = (v9 * v13 - v12 * v17) / v21;
    v50 = (v12 * v8 - v16 * v13) / v21;
    v51 = (v16 * v17 - v9 * v8) / v21;
  }

  for (i = 0; i != 3; ++i)
  {
    v23 = 0;
    v24 = v42;
    do
    {
      v25 = 0;
      v26 = 0.0;
      v27 = v24;
      do
      {
        v28 = *v27;
        v27 += 3;
        v26 = v26 + a3[v25++] * v28;
      }

      while (v25 != 3);
      v52[3 * i + v23++] = v26;
      ++v24;
    }

    while (v23 != 3);
    a3 += 3;
  }

  v29 = 0;
  v30 = v52;
  do
  {
    v31 = 0;
    v32 = &v43;
    do
    {
      v33 = 0;
      v34 = 0.0;
      v35 = v32;
      do
      {
        v36 = *v35;
        v35 += 3;
        v34 = v34 + v30[v33++] * v36;
      }

      while (v33 != 3);
      *(v53 + 3 * v29 + v31++) = v34;
      ++v32;
    }

    while (v31 != 3);
    ++v29;
    v30 += 3;
  }

  while (v29 != 3);
  v37 = 0;
  v38 = v53[3];
  *(a1 + 32) = v53[2];
  *(a1 + 48) = v38;
  *(a1 + 64) = v54;
  v39 = v53[1];
  *a1 = v53[0];
  *(a1 + 16) = v39;
  v40 = (a1 + 64);
  v41 = vld1q_dup_f64(v40);
  do
  {
    *(a1 + v37) = vdivq_f64(*(a1 + v37), v41);
    v37 += 16;
  }

  while (v37 != 64);
  *(a1 + 64) = 0x3FF0000000000000;
}

float64x2_t sub_254B3994C(float64x2_t **a1, float64x2_t **a2, double *a3)
{
  v6 = log((1.0 - a3[4]) * 1.0008) * -0.249688;
  v7 = log((1.0 - a3[5]) * 1.0008);
  v8 = v7 * -0.249688;
  v9 = *a1;
  v10 = -v6;
  if (v6 < 0.0)
  {
    v10 = -0.0;
  }

  if (v9->f64[0] >= v10)
  {
    v10 = v9->f64[0];
  }

  v9->f64[0] = v10;
  v11 = -(v7 * -0.249688);
  if (v8 < 0.0)
  {
    v11 = -0.0;
  }

  if (v9[2].f64[0] >= v11)
  {
    v11 = v9[2].f64[0];
  }

  v9[2].f64[0] = v11;
  v12 = a3[4];
  if (v12 <= a3[5])
  {
    v12 = a3[5];
  }

  v13 = 1.0 - v12;
  v14 = log((1.0 - v12) * 1.00929) * -1.56986;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = -v14;
  v16 = v9->f64[1];
  if (v16 < -v14)
  {
    v16 = -v14;
  }

  v9->f64[1] = v16;
  if (v9[1].f64[1] >= v15)
  {
    v15 = v9[1].f64[1];
  }

  v9[1].f64[1] = v15;
  v17 = *a2;
  v18 = v17->f64[1];
  if (v14 < v18)
  {
    v18 = v14;
  }

  v17->f64[1] = v18;
  if (v14 >= v17[1].f64[1])
  {
    v14 = v17[1].f64[1];
  }

  v17[1].f64[1] = v14;
  v19 = a3[4] * (a3[1] * 0.5);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  v20 = -v19;
  if (v9[1].f64[0] >= -v19)
  {
    v20 = v9[1].f64[0];
  }

  v9[1].f64[0] = v20;
  if (v19 >= v17[1].f64[0])
  {
    v19 = v17[1].f64[0];
  }

  v17[1].f64[0] = v19;
  v21 = a3[5] * (a3[2] * 0.5);
  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = -v21;
  if (v9[2].f64[1] >= -v21)
  {
    v22 = v9[2].f64[1];
  }

  v9[2].f64[1] = v22;
  if (v21 >= v17[2].f64[1])
  {
    v21 = v17[2].f64[1];
  }

  v17[2].f64[1] = v21;
  v23 = log(v13) * -1.237 + -0.0186;
  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  v24 = vdupq_lane_s64(COERCE__INT64(-v23), 0);
  v9[3] = vbslq_s8(vcgtq_f64(v24, v9[3]), v24, v9[3]);
  v25 = vdupq_lane_s64(*&v23, 0);
  result = vbslq_s8(vcgtq_f64(v17[3], v25), v25, v17[3]);
  v17[3] = result;
  return result;
}

void sub_254B39B64(void *a1, void **a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = sub_254B3955C(v31, a4, a3);
  *__p = -*(a3 + 104);
  sub_254B3F9BC(v30, a5);
  sub_254B3F9BC(__p, a5);
  v13 = v12 * a5;
  if ((a6 & 1) == 0)
  {
    if (*(a3 + 24) == 1)
    {
      sub_254B3994C(v30, __p, a3);
    }

    else
    {
      printf("undefined: generating log H bounds for uncentered image.");
    }
  }

  sub_254B39D6C(a1, v13);
  sub_254B620EC(a1);
  v14 = 8 * a5;
  if (a4)
  {
    v15 = 0;
    v16 = v30[0];
    v17 = *a1;
    do
    {
      v18 = a5;
      v19 = v16;
      for (i = v17; v18; --v18)
      {
        v21 = *v19++;
        *i++ = v21;
      }

      ++v15;
      v17 = (v17 + v14);
    }

    while (v15 != a4);
  }

  sub_254B39D6C(a2, v13);
  if (v13)
  {
    memset_pattern16(*a2, &unk_254B8B0F0, 8 * v13);
  }

  v22 = __p[0];
  if (a4)
  {
    v23 = 0;
    v24 = *a2;
    do
    {
      v25 = a5;
      v26 = v22;
      for (j = v24; v25; --v25)
      {
        v28 = *v26++;
        *j++ = v28;
      }

      ++v23;
      v24 = (v24 + v14);
    }

    while (v23 != a4);
  }

  if (v22)
  {
    __p[1] = v22;
    operator delete(v22);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }
}

void sub_254B39D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B39D6C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_254B3FB20(a1, a2 - v2);
  }
}

uint64_t sub_254B39D9C(uint64_t result, unint64_t *a2, unint64_t *a3, float64x2_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  for (i = 0; i != 4; ++i)
  {
    a4->f64[i] = 0.0;
    *(a5 + i * 8) = 0;
  }

  switch(result)
  {
    case 1:
      *a2 = 0;
      v8 = 1;
      *a3 = 1;
      v16 = (*a6 + 8 * a7);
      v17 = vld1q_dup_f64(v16);
      *a4 = vdivq_f64(xmmword_254B8B080, v17);
      break;
    case 2:
      *a2 = 0;
      v8 = 2;
      *a3 = 2;
      v13 = (*a6 + 8 * a7);
      v14 = v13[1];
      v15 = *v13 * v14 * (*v13 + v14);
      a4->f64[0] = (v14 + v14) / v15;
      a4->f64[1] = (*v13 + v13[1]) * -2.0 / v15;
      a4[1].f64[0] = (*v13 + *v13) / v15;
      break;
    case 3:
      *a2 = 0;
      v8 = 3;
      *a3 = 3;
      v9 = (*a6 + 8 * a7);
      v10 = v9[1];
      v11 = v9[2];
      v12 = (*v9 + v10 + v11) * ((v10 + v11) * ((*v9 + v10) * (*v9 * v10 * v11)));
      a4->f64[0] = v10 * -6.0 * v11 * (v10 + v11) / v12;
      a4->f64[1] = v9[2] * 6.0 * (*v9 + v9[1]) * (v9[2] + *v9 + v9[1]) / v12;
      a4[1].f64[0] = (*v9 + v9[1] + v9[2]) * (*v9 * -6.0 * (v9[1] + v9[2])) / v12;
      a4[1].f64[1] = *v9 * 6.0 * v9[1] * (*v9 + v9[1]) / v12;
      break;
    default:
      v8 = *a3;
      break;
  }

  v18 = *a2;
  *(a5 + 8 * *a2) = 0;
  while (++v18 <= v8)
  {
    *(a5 + 8 * v18) = 0;
    v19 = 0.0;
    v20 = v18;
    do
    {
      v19 = a4->f64[v20] + v19;
      *(a5 + 8 * v18) = v19;
      ++v20;
    }

    while (v20 <= v8);
  }

  return result;
}

void sub_254B39F5C(sparse_m_double *a1, uint64_t *a2, void *a3, void *A, double *a5, uint64_t a6)
{
  v89 = *MEMORY[0x277D85DE8];
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(A);
  Aa = A;
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(A);
  sub_254B3955C(v88, matrix_number_of_rows, a5);
  v11 = 0;
  v12 = 0;
  v87[0] = 0;
  do
  {
    v12 += v88[0].i64[v11];
    v87[++v11] = v12;
  }

  while (v11 != 3);
  for (i = 0; i != 4; ++i)
  {
    v86[i + 4] = v87[i] * matrix_number_of_columns;
  }

  v86[0] = 0;
  for (j = 1; j != 4; ++j)
  {
    v86[j] = 2 * matrix_number_of_columns * v88[0].i64[j];
  }

  v63 = 2 * matrix_number_of_columns;
  v15 = 0;
  v16 = 0;
  v85[0] = 0;
  do
  {
    v16 += v86[v15];
    v85[++v15] = v16;
  }

  while (v15 != 3);
  v17 = 0;
  v18 = matrix_number_of_rows;
  do
  {
    v19 = 0;
    *(&v84[4] + v17) = 0;
    if (v17 <= matrix_number_of_rows)
    {
      if (sub_254B39504(v17, a5))
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    *(&v84[2] + v17++) = v19;
    --v18;
  }

  while (v17 != 4);
  column_end = 0x7FF8000000000000;
  sub_254B3F9BC(&__p, matrix_number_of_columns);
  sub_254B3FC50(v79, 4uLL);
  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }

  v20 = sparse_matrix_create_double(matrix_number_of_columns, matrix_number_of_columns);
  if (matrix_number_of_columns)
  {
    for (k = 0; k != matrix_number_of_columns; ++k)
    {
      sparse_insert_entry_double(v20, 1.0, k, k);
    }
  }

  if (matrix_number_of_rows)
  {
    v71 = matrix_number_of_columns;
    v72 = 0;
    v22 = 0;
    v70 = matrix_number_of_rows;
    do
    {
      v23 = 0;
      memset(v84, 0, 32);
      v80 = 0;
      do
      {
        if (v22 + v23 < matrix_number_of_rows)
        {
          *(v84 + v23) = v22 + v23;
          *(&v80 + v23) = 1;
        }

        ++v23;
      }

      while (v23 != 4);
      v24 = 0;
      v69 = matrix_number_of_columns * 2 * v22;
      v74 = v22;
      do
      {
        if (*(&v80 + v24) == 1)
        {
          v25 = v79[0];
          v26 = *(v84 + v24);
          v27 = sparse_get_matrix_number_of_columns(Aa);
          v28 = (v25 + 24 * v24);
          sub_254B39D6C(v28, v27);
          if (v27)
          {
            v29 = 8 * v27;
            bzero(*v28, 8 * v27);
          }

          else
          {
            v29 = 0;
          }

          v30 = malloc_type_malloc(v29, 0x100004000313F17uLL);
          v31 = malloc_type_malloc(v29, 0x100004000313F17uLL);
          column_end = 0;
          v32 = sparse_extract_sparse_row_double(Aa, v26, 0, &column_end, v27, v30, v31);
          if (v32 >= 1)
          {
            v33 = *v28;
            v34 = v32;
            v35 = v30;
            v36 = v31;
            do
            {
              v37 = *v35++;
              v38 = v37;
              v39 = *v36++;
              v33[v39] = v38;
              --v34;
            }

            while (v34);
          }

          free(v30);
          free(v31);
          v22 = v74;
        }

        ++v24;
      }

      while (v24 != 4);
      v40 = v22;
      v41 = 1;
      matrix_number_of_rows = v70;
      v67 = v22;
      v68 = v22 * matrix_number_of_columns;
      do
      {
        if (*(&v84[4] + v41) <= v22 && *(&v84[2] + v41) > v22)
        {
          column_end = 0;
          v76 = 0;
          sub_254B39D9C(v41, &column_end, &v76, &v83, v82, (a6 + 24), v22);
          v42 = column_end;
          v43 = v76;
          v73 = v85[v41];
          v44 = v73 + v69;
          if (column_end <= v76)
          {
            v45 = column_end;
            do
            {
              v46 = *(v84 + v45) * matrix_number_of_columns;
              v47 = v83.f64[v45];
              sub_254B62270(a1, v44, v46, v20, 0, v47, 0.0);
              sub_254B62270(a1, v44 + matrix_number_of_columns, v46, v20, 0, -v47, 0.0);
              ++v45;
            }

            while (v45 <= v43);
          }

          v48 = v86[v41 + 4];
          sub_254B62270(a1, v44, v48 + v68, v20, 0, -1.0, 0.0);
          sub_254B62270(a1, v44 + matrix_number_of_columns, v48 + v68, v20, 0, -1.0, 0.0);
          sub_254B3F9BC(&__p, matrix_number_of_columns);
          matrix_number_of_rows = v70;
          if (v42 <= v43)
          {
            v49 = 24 * v42;
            do
            {
              sub_254B6204C(&__p, (v79[0] + v49), v82[v42++]);
              v49 += 24;
            }

            while (v42 <= v43);
          }

          v50 = __p;
          v22 = v74;
          v40 = v67;
          if (v78 != __p)
          {
            v51 = (v78 - __p) >> 3;
            v52 = *a2;
            if (v51 <= 1)
            {
              v51 = 1;
            }

            v53 = (v52 + 8 * (v72 + v73));
            v54 = __p;
            v55 = v51;
            do
            {
              v56 = *v54++;
              *v53++ = -v56;
              --v55;
            }

            while (v55);
            v57 = (v52 + 8 * (v71 + v73));
            v58 = v50;
            do
            {
              v59 = *v58++;
              *v57++ = v59;
              --v51;
            }

            while (v51);
          }

          if (matrix_number_of_columns)
          {
            v60 = 0;
            v61 = *a3 + 4 * (v72 + v73);
            v62 = *a3 + 4 * (v71 + v73);
            do
            {
              *(v61 + 4 * v60) = 1;
              *(v62 + 4 * v60++) = 1;
            }

            while (matrix_number_of_columns > v60);
          }

          if (v50)
          {
            v78 = v50;
            operator delete(v50);
          }
        }

        if (v40 == 255)
        {
          sparse_commit(a1);
        }

        ++v41;
      }

      while (v41 != 4);
      ++v22;
      v72 += v63;
      v71 += v63;
    }

    while (v22 != matrix_number_of_rows);
  }

  if (v20)
  {
    sparse_matrix_destroy(v20);
  }

  __p = v79;
  sub_254B35B8C(&__p);
}

void sub_254B3A57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B3A5E8(void *a1, void *a2, void *a3, uint64_t a4, sparse_dimension a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 48);
  v8 = *(a7 + 56);
  if (v7 == v8)
  {
    return 0;
  }

  v10 = (v8 - v7) >> 3;
  if (v10 != 3 * a5)
  {
    return 0;
  }

  matrix_number_of_rows = sparse_get_matrix_number_of_rows(a1);
  if (matrix_number_of_rows < v10 + a4 || matrix_number_of_rows != (a2[1] - *a2) >> 3 || matrix_number_of_rows != (a3[1] - *a3) >> 2)
  {
    return 0;
  }

  v29 = a2;
  v30 = a3;
  v17 = sparse_matrix_create_double(a5, a5);
  if (a5)
  {
    v18 = 0;
    do
    {
      sparse_insert_entry_double(v17, 1.0, v18, v18);
      ++v18;
    }

    while (a5 != v18);
  }

  v19 = 0;
  v20 = 0;
  v21 = 4 * a4;
  v22 = 8 * a4;
  v23 = 8 * a5;
  do
  {
    sub_254B62270(a1, a4, v20 * a5, v17, 0, 1.0, 0.0);
    if (a5)
    {
      v24 = 0;
      v25 = *v30 + v21;
      v26 = *v29 + v22;
      v27 = *(a7 + 48) + v19;
      do
      {
        *(v26 + 8 * v24) = *(v27 + 8 * v24);
        *(v25 + 4 * v24++) = 0;
      }

      while (a5 > v24);
    }

    a4 += a5;
    ++v20;
    v21 += 4 * a5;
    v22 += v23;
    v19 += v23;
  }

  while (v20 != 3);
  if (v17)
  {
    sparse_matrix_destroy(v17);
  }

  return 1;
}

void sub_254B3A790(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a2 + 72) == *(a2 + 80))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    LOBYTE(v19) = 0;
    sub_254B3FD0C(&__p, a1);
    v6 = *(a2 + 72);
    v7 = *(a2 + 80);
    v8 = v7 - v6;
    if (v7 != v6)
    {
      v9 = 0;
      v10 = v8 >> 2;
      v11 = __p;
      if ((v8 >> 2) <= 1)
      {
        v10 = 1;
      }

      do
      {
        v12 = *(v6 + 4 * v9);
        if (v12 <= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v12;
        }

        v14 = v12 + 3;
        if (v14 >= a1 - 1)
        {
          v14 = a1 - 1;
        }

        if (v13 - 3 <= v14)
        {
          v15 = v13 - 3;
          v16 = -4 - v14;
          do
          {
            *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
            ++v15;
          }

          while (v16 + v15 != -3);
        }

        ++v9;
      }

      while (v9 != v10);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v19 = 0;
    if (a1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if ((*(__p + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18))
        {
          sub_254B3A90C(a3, &v19);
          v17 = v19;
        }

        v19 = ++v17;
        v18 = v17;
      }

      while (v17 < a1);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_254B3A8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B3A90C(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_254B32E20();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_254B3383C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

sparse_m_double *sub_254B3A9EC(sparse_m_double *A, void *a2, void *a3, uint64_t *a4, sparse_index i, uint64_t a6)
{
  v7 = *a4;
  v6 = a4[1];
  if (v6 != *a4)
  {
    v13 = A;
    v14 = 0;
    do
    {
      if (a6)
      {
        v15 = *(v7 + 4 * v14);
        v16 = v15 * a6;
        v17 = (v15 - 1) * a6;
        v18 = a6;
        do
        {
          sparse_insert_entry_double(v13, 1.0, i, v16);
          A = sparse_insert_entry_double(v13, -1.0, i, v17);
          *(*a2 + 8 * i) = 0;
          *(*a3 + 4 * i++) = 0;
          ++v17;
          ++v16;
          --v18;
        }

        while (v18);
        v7 = *a4;
        v6 = a4[1];
      }

      ++v14;
    }

    while (v14 < (v6 - v7) >> 2);
  }

  return A;
}

void sub_254B3AAD0(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, _DWORD *a5, uint64_t a6, unint64_t a7)
{
  v8 = *a4;
  v7 = a4[1];
  if (*a5 == 1)
  {
    v12 = *(a6 + 168);
    v13 = 1.0;
    if (((*(a6 + 176) - v12) >> 3) + 1 > a7)
    {
      if (a7)
      {
        v12 = &v12[a7 - 1];
      }

      v13 = *v12;
    }

    *a2 = -(v8 * v7) / v13;
    *(a2 + 8) = v13 + v8 * v8 / v13;
    *(a2 + 16) = -v7;
    *(a2 + 24) = v8 * 3.0 / v13;
    *a3 = -v13 - v7 * v7 / v13;
    *(a3 + 8) = v8 * v7 / v13;
    *(a3 + 16) = v8;
    v11 = 24;
    v10 = v7 * 3.0 / v13;
  }

  else
  {
    if (*a5)
    {
      return;
    }

    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0x3FF0000000000000;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v9 = -(v8 * v7);
    *(a2 + 48) = -(v8 * v8);
    *(a2 + 56) = v9;
    *(a2 + 64) = -v8;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v8;
    *(a3 + 32) = v7;
    *(a3 + 40) = 0x3FF0000000000000;
    v10 = -v7;
    v11 = 64;
    *(a3 + 48) = v9;
    *(a3 + 56) = -(v7 * v7);
  }

  *(a3 + v11) = v10;
}

double sub_254B3ABBC(double *a1, double *a2, double *a3)
{
  *a1 = a3[14] * a3[4];
  v3 = a3[14] * a3[5];
  *a2 = v3;
  result = a3[4];
  v5 = a3[5];
  if (vabdd_f64(result, v5) > a3[11])
  {
    if (result <= v5)
    {
      if (v5 <= result)
      {
        v6 = 1.0 - result;
        v7 = 0.0;
      }

      else
      {
        v6 = 1.0 - result;
        v7 = fmin((1.0 - v3) / (1.0 - v5), (*a1 * -0.5 + 1.0) / v6);
      }
    }

    else
    {
      v6 = 1.0 - result;
      v7 = fmin((1.0 - *a1) / v6, (v3 * -0.5 + 1.0) / (1.0 - v5));
    }

    *a1 = 1.0 - v7 * v6;
    result = 1.0 - v7 * (1.0 - a3[5]);
    *a2 = result;
  }

  return result;
}

uint64_t sub_254B3AC84@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v11[0] = v5 - v9;
  v11[1] = v8 - v4;
  v11[2] = v7 - v3;
  v11[3] = v2 - v6;
  v11[4] = v9 - v5;
  v11[5] = v4 - v8;
  v11[6] = v3 - v7;
  v11[7] = v6 - v2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_254B3FF44(a2, v11, &v12, 8uLL);
}

float64x2_t sub_254B3AD2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = vsubq_f64(*(a1 + 16 * a2), *(a1 + 16 * a3));
  sub_254B3F9BC(a4, 8uLL);
  v7 = *a4;
  *(*a4 + 16 * a2) = vaddq_f64(v14, v14);
  __asm { FMOV            V0.2D, #-2.0 }

  result = vmulq_f64(v14, _Q0);
  *(v7 + 16 * a3) = result;
  return result;
}

uint64_t sub_254B3ADA4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8, unint64_t a9)
{
  v165 = *MEMORY[0x277D85DE8];
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(a1);
  v19 = *a2;
  v18 = a2[1];
  v147 = a2;
  if (matrix_number_of_rows != (v18 - v19) >> 3 || sparse_get_matrix_number_of_rows(a1) != (a3[1] - *a3) >> 2)
  {
    return 0;
  }

  v146 = a3;
  v20 = 16;
  if (*(a7 + 154))
  {
    v20 = 20;
  }

  v21 = *a7;
  v22 = 4;
  if (a7[38])
  {
    v22 = 6;
  }

  _ZF = v21 == 0;
  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = v20 | *(a7 + 155);
  if (_ZF)
  {
    ++v25;
  }

  v26 = v25 + v24;
  if (v25 + v24 + a4 > sparse_get_matrix_number_of_rows(a1))
  {
    return 0;
  }

  v160.f64[0] = 0.0;
  sub_254B3F9BC(v164, a6);
  sub_254B3FC50(&v158, v26);
  if (*&v164[0])
  {
    *(&v164[0] + 1) = *&v164[0];
    operator delete(*&v164[0]);
  }

  *&v164[0] = 0;
  sub_254B3F9BC(v157, v26);
  v140 = a1;
  LODWORD(v164[0]) = 0;
  sub_254B3FFB8(v156, v26);
  v30 = *(a7 + 24);
  v31.f64[0] = *(a7 + 1);
  v139 = a4;
  v135 = a5;
  v145 = v31;
  if (v30 == 1)
  {
    v29.f64[0] = v31.f64[0] * -0.5;
    v142 = v29;
    v31.f64[0] = v31.f64[0] * 0.5;
    v144 = v31;
    v31.f64[0] = *(a7 + 2);
    v28.f64[0] = v31.f64[0] * -0.5;
    v141 = v28;
    v138 = v31;
    v28.f64[0] = v31.f64[0] * 0.5;
  }

  else
  {
    v29.f64[0] = *(a7 + 2);
    v28.f64[0] = 0.0;
    v142 = v28;
    v28.f64[0] = v31.f64[0];
    v144 = v28;
    v28.f64[0] = 0.0;
    v141 = v28;
    v138 = v29;
    v28.f64[0] = v29.f64[0];
  }

  v143 = v28;
  v28.f64[0] = *(a7 + 4);
  v136 = v28;
  v137.f64[0] = *(a7 + 5);
  v154 = 0.0;
  v155 = 0.0;
  sub_254B3ABBC(&v155, &v154, a7);
  v134 = &v132;
  v33.f64[0] = v154;
  v32.f64[0] = v155;
  v32.f64[1] = v136.f64[0];
  __asm { FMOV            V3.2D, #0.5 }

  v38 = vmulq_f64(vmulq_n_f64(v32, v145.f64[0]), _Q3);
  v39 = vaddq_f64(vdupq_lane_s64(*&v142.f64[0], 0), v38);
  v33.f64[1] = v137.f64[0];
  v40 = vmulq_n_f64(v33, v138.f64[0]);
  v138 = _Q3;
  v41 = vmulq_f64(v40, _Q3);
  v42 = vaddq_f64(vdupq_lane_s64(*&v141.f64[0], 0), v41);
  v43 = vsubq_f64(vdupq_lane_s64(*&v144.f64[0], 0), v38);
  v164[0] = vzip2q_s64(v39, v42);
  v164[1] = vzip2q_s64(v43, v42);
  v44 = vsubq_f64(vdupq_lane_s64(*&v143.f64[0], 0), v41);
  v164[2] = vzip2q_s64(v43, v44);
  v164[3] = vzip2q_s64(v39, v44);
  v136 = v42;
  v137 = v39;
  v160 = vzip1q_s64(v39, v42);
  v161 = vzip1q_s64(v43, v42);
  v132 = v44;
  v133 = v43;
  v162 = vzip1q_s64(v43, v44);
  v163 = vzip1q_s64(v39, v44);
  v45 = 8 * a6;
  v47 = MEMORY[0x28223BE20](v46);
  v48 = &v132 - 4 * a6;
  v49 = a7;
  v50 = 0;
  *&v145.f64[0] = v48;
  do
  {
    sub_254B3AAD0(v47, v48, v48 + v45, &v160.f64[v50], v49, a8, a9);
    v50 += 2;
    v48 += a6;
  }

  while (v50 != 8);
  v51 = 0;
  v52 = v158;
  v53 = *&v145.f64[0];
  v54 = v145.f64[0];
  v56 = v139;
  v55 = v140;
  v57 = v146;
  v58.f64[0] = v144.f64[0];
  v59 = v141.f64[0];
  v60.f64[0] = v142.f64[0];
  do
  {
    if (a6)
    {
      v61 = 0;
      v62 = *(v52 + 24 * v51);
      do
      {
        *(v62 + 8 * v61) = -*(*&v54 + 8 * v61);
        ++v61;
      }

      while (a6 > v61);
    }

    ++v51;
    *&v54 += v45;
  }

  while (v51 != 8);
  v63 = 0;
  v64 = v157[0];
  v65 = v156[0];
  v60.f64[1] = v59;
  v66 = vsubq_f64(v160, v60);
  v67 = vsubq_f64(v161, v60);
  v68 = vsubq_f64(v163, v60);
  *(v157[0] + 2) = vsubq_f64(v162, v60);
  v64[3] = v68;
  *v64 = v66;
  v64[1] = v67;
  *&v68.f64[0] = 0x100000001;
  *&v68.f64[1] = 0x100000001;
  *v65 = v68;
  v65[1] = v68;
  v69 = v158;
  v70 = v53;
  v71 = v143.f64[0];
  do
  {
    if (a6)
    {
      v72 = 0;
      v73 = *(v69 + 24 * (v63 | 8));
      do
      {
        *(v73 + 8 * v72) = v70[v72];
        ++v72;
      }

      while (a6 > v72);
    }

    ++v63;
    v70 = (v70 + v45);
  }

  while (v63 != 8);
  v58.f64[1] = v71;
  v74 = vsubq_f64(v58, v160);
  v75 = vsubq_f64(v58, v161);
  v76 = vsubq_f64(v58, v163);
  v64[6] = vsubq_f64(v58, v162);
  v64[7] = v76;
  v64[4] = v74;
  v64[5] = v75;
  *&v76.f64[0] = 0x100000001;
  *&v76.f64[1] = 0x100000001;
  v65[2] = v76;
  v65[3] = v76;
  if (*(v49 + 154))
  {
    v77 = v56;
    v78 = 0;
    v79 = 16;
    do
    {
      v80 = v78 + 1;
      if (v78 == 3)
      {
        v81 = 0;
      }

      else
      {
        v81 = (v78 + 1);
      }

      sub_254B3AD2C(&v160, v78, v81, &v151);
      v148 = 0;
      sub_254B3F9BC(&v149, a6);
      if (a6)
      {
        v82 = 0;
        v83 = v149;
        v84 = v151;
        v85 = *&v145.f64[0];
        do
        {
          v86 = 0;
          v83[v82] = 0;
          v87 = 0.0;
          v88 = v85;
          do
          {
            v87 = v87 + *v88 * v84[v86];
            *&v83[v82] = v87;
            ++v86;
            v88 = (v88 + v45);
          }

          while (v86 != 8);
          ++v82;
          ++v85;
        }

        while (v82 != a6);
      }

      sub_254B620BC(&v149, -1.0);
      v89 = v149;
      if (a6)
      {
        v90 = *(v158 + 24 * v79);
        v91 = v149;
        v92 = a6;
        do
        {
          v93 = *v91++;
          *v90++ = v93;
          --v92;
        }

        while (v92);
      }

      v94 = &v160 + v78;
      v95 = &v160 + v81;
      v96 = v94->f64[1] - v95->f64[1];
      v97 = v96 * v96 + (v94->f64[0] - v95->f64[0]) * (v94->f64[0] - v95->f64[0]);
      v98 = &v164[v81];
      *(v157[0] + v79) = v97 - ((*(&v164[v78] + 1) - v98[1]) * (*(&v164[v78] + 1) - v98[1]) + (*&v164[v78] - *v98) * (*&v164[v78] - *v98));
      *(v156[0] + v79) = 1;
      if (v89)
      {
        v150 = v89;
        operator delete(v89);
      }

      v57 = v146;
      if (v151)
      {
        v152 = v151;
        operator delete(v151);
      }

      ++v79;
      ++v78;
    }

    while (v80 != 4);
    v56 = v77;
    v53 = *&v145.f64[0];
    v99 = 20;
  }

  else
  {
    v99 = 16;
  }

  if (!*v49)
  {
    v100 = v158;
    v101 = v158 + 24 * v99;
    v102 = *v101;
    *v102 = 0x3FF0000000000000;
    v102[4] = 0x3FF0000000000000;
    v102[8] = 0x3FF0000000000000;
    v103 = v157[0];
    *(v157[0] + v99) = 0;
    v104 = v156[0];
    v105 = *(v100 + 24 * (v99 | 1));
    *v105 = 0x3FF0000000000000;
    v105[4] = 0xBFF0000000000000;
    v103[v99 | 1] = *(v49 + 17);
    v106 = *(v100 + 24 * (v99 | 2));
    *v106 = 0xBFF0000000000000;
    v106[4] = 0x3FF0000000000000;
    v103[v99 | 2] = *(v49 + 17);
    v107 = *(v100 + 24 * (v99 | 3));
    *(v107 + 8) = 0x3FF0000000000000;
    *(v107 + 24) = 0x3FF0000000000000;
    v103[v99 | 3] = *(v49 + 18);
    *&v104[v99] = xmmword_254B8B090;
    v108 = *(v101 + 96);
    *(v108 + 8) = 0xBFF0000000000000;
    *(v108 + 24) = 0xBFF0000000000000;
    v103[v99 + 4] = *(v49 + 18);
    v104[v99 + 4] = 1;
    v109 = v99 + 5;
    if (*(v49 + 152) == 1)
    {
      v110 = *(v100 + 24 * v109);
      *(v110 + 16) = 0x3FF0000000000000;
      *(v110 + 48) = 0x3FF0000000000000;
      v103[v109] = 0;
      v111 = *(v100 + 24 * (v99 + 6));
      *(v111 + 40) = 0x3FF0000000000000;
      *(v111 + 56) = 0x3FF0000000000000;
      v103[v99 + 6] = 0;
      *&v104[v109] = 0;
      v99 += 7;
    }

    else
    {
      v99 += 5;
    }
  }

  v112 = *(v49 + 155);
  v113 = v135;
  if (v112 == 1)
  {
    sub_254B3AC84(v160.f64, &v151);
    v148 = 0;
    sub_254B3F9BC(&v149, a6);
    if (a6)
    {
      v114 = 0;
      v115 = v149;
      v116 = v151;
      do
      {
        v117 = 0;
        v115[v114] = 0;
        v118 = 0.0;
        v119 = v53;
        do
        {
          v118 = v118 + *v119 * v116[v117];
          *&v115[v114] = v118;
          ++v117;
          v119 = (v119 + v45);
        }

        while (v117 != 8);
        ++v114;
        ++v53;
      }

      while (v114 != a6);
    }

    sub_254B620BC(&v149, -0.5);
    v120 = v149;
    if (a6)
    {
      v121 = *(v158 + 24 * v99);
      v122 = v149;
      do
      {
        v123 = *v122++;
        *v121++ = v123;
        --a6;
      }

      while (a6);
    }

    v124 = vmulq_f64(vmlsq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vsubq_f64(v136, v136), vnegq_f64(vsubq_f64(v133, v133))), vsubq_f64(v132, v136), vsubq_f64(v133, v137)), vsubq_f64(v136, v132), vsubq_f64(v137, v133)), vsubq_f64(v132, v132), vsubq_f64(v137, v137)), v138);
    *(v157[0] + v99) = *&vsubq_f64(v124, vdupq_laneq_s64(v124, 1));
    *(v156[0] + v99) = 1;
    if (v120)
    {
      v150 = v120;
      operator delete(v120);
    }

    if (v151)
    {
      v152 = v151;
      operator delete(v151);
    }
  }

  v125 = v158;
  if (v159 != v158)
  {
    v126 = 0;
    do
    {
      v151 = 0;
      v152 = 0;
      v153 = 0;
      sub_254B35A88(&v151, *(v125 + 24 * v126), *(v125 + 24 * v126 + 8), (*(v125 + 24 * v126 + 8) - *(v125 + 24 * v126)) >> 3);
      v127 = v151;
      v128 = v152;
      v129 = v126 + v56;
      if (v152 != v151)
      {
        v130 = 0;
        do
        {
          v131 = v127[v130];
          if (fabs(v131) > 1.0e-12)
          {
            sparse_insert_entry_double(v55, v131, v126 + v56, v113 + v130);
            v127 = v151;
            v128 = v152;
          }

          ++v130;
        }

        while (v130 < v128 - v127);
      }

      *(*v147 + 8 * v129) = *(v157[0] + v126);
      *(*v57 + 4 * v129) = *(v156[0] + v126);
      if (v127)
      {
        v152 = v127;
        operator delete(v127);
      }

      ++v126;
      v125 = v158;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v159 - v158) >> 3) > v126);
  }

  if (v156[0])
  {
    v156[1] = v156[0];
    operator delete(v156[0]);
  }

  if (v157[0])
  {
    v157[1] = v157[0];
    operator delete(v157[0]);
  }

  *&v164[0] = &v158;
  sub_254B35B8C(v164);
  return 1;
}

void sub_254B3B6B8(_Unwind_Exception *a1)
{
  v4 = v1[27];
  if (v4)
  {
    v1[28] = v4;
    operator delete(v4);
  }

  v5 = v1[30];
  if (v5)
  {
    v1[31] = v5;
    operator delete(v5);
  }

  v6 = v1[35];
  if (v6)
  {
    v1[36] = v6;
    operator delete(v6);
  }

  v7 = v1[38];
  if (v7)
  {
    v1[39] = v7;
    operator delete(v7);
  }

  *(v2 - 176) = v1 + 41;
  sub_254B35B8C((v2 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_254B3B768(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == a1[1])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v5 += !CGRectIsNull(*(v1 + v3));
    ++v4;
    v1 = *a1;
    v3 += 32;
  }

  while (v4 < (a1[1] - *a1) >> 5);
  return (16 * v5);
}

BOOL sub_254B3B7E8(void *a1, void *a2, uint64_t *a3, uint64_t *a4, sparse_index a5, uint64_t a6, unint64_t a7, _DWORD *a8, uint64_t a9)
{
  v61 = a8;
  v62 = a3;
  v64 = a2;
  v70[8] = *MEMORY[0x277D85DE8];
  v9 = a4[1];
  if (*a4 == v9)
  {
    return 1;
  }

  if (a6 != (v9 - *a4) >> 5 || sparse_get_matrix_number_of_rows(a1) != (v64[1] - *v64) >> 3 || sparse_get_matrix_number_of_rows(a1) != (v62[1] - *v62) >> 2)
  {
    return 0;
  }

  v56 = a6;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v15 = *a4;
  v16 = a4[1];
  v55 = a4;
  sub_254B36150(&v67, v15, v16, (v16 - v15) >> 5);
  v17 = sub_254B3B768(&v67);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  matrix_number_of_rows = sparse_get_matrix_number_of_rows(a1);
  if (a5 + v17 > matrix_number_of_rows)
  {
    return 0;
  }

  v54 = a5 + v17;
  v53 = &v53;
  v20 = MEMORY[0x28223BE20](matrix_number_of_rows);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v27 = &v53 - v26;
  if (v56)
  {
    v28 = 0;
    v60 = a9;
    __asm { FMOV            V3.2D, #1.0 }

    v58 = vmulq_f64(vmlsq_lane_f64(_Q3, v24, v23, 0), v25);
    __asm { FMOV            V0.2D, #0.5 }

    v57 = _Q0;
    do
    {
      v35 = *v55;
      v63 = v28;
      v36 = (v35 + 32 * v28);
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      v40 = v36[3];
      v71.origin.x = *v36;
      v71.origin.y = v38;
      v71.size.width = v39;
      v71.size.height = v40;
      IsNull = CGRectIsNull(v71);
      if (IsNull)
      {
        v42 = v63;
      }

      else
      {
        *v70 = v37;
        *&v70[1] = v38;
        *&v70[2] = v37 + v39;
        *&v70[3] = v38;
        *&v70[4] = v37 + v39;
        *&v70[5] = v38 + v40;
        *&v70[6] = v37;
        *&v70[7] = v38 + v40;
        v42 = v63;
        v43 = v63 * a7;
        v44 = 1;
        do
        {
          v45 = 0;
          v59 = v44;
          if (v44)
          {
            v46 = -1;
          }

          else
          {
            v46 = 1;
          }

          v66 = v46;
          v65 = vmulq_f64(vmulq_n_f64(v58, v46), v57);
          do
          {
            sub_254B3AAD0(IsNull, v22, v27, &v70[2 * v45], v61, v60, v42);
            if (a7)
            {
              v47 = 0;
              v48 = 1;
              do
              {
                v49 = *&v22[8 * v47];
                if (fabs(v49) > 1.0e-12)
                {
                  IsNull = sparse_insert_entry_double(a1, v49, a5, v47 + v43);
                }

                v50 = *&v27[8 * v47];
                if (fabs(v50) > 1.0e-12)
                {
                  IsNull = sparse_insert_entry_double(a1, v50, a5 + 1, v47 + v43);
                }

                v47 = v48++;
              }

              while (v47 < a7);
            }

            *(*v64 + 8 * a5) = vaddq_f64(v65, *&v70[2 * v45]);
            v51 = *v62;
            v52 = v66;
            *(v51 + 4 * a5) = v66;
            *(v51 + 4 * (a5 + 1)) = v52;
            a5 += 2;
            ++v45;
            v42 = v63;
          }

          while (v45 != 4);
          v44 = 0;
        }

        while ((v59 & 1) != 0);
      }

      v28 = v42 + 1;
    }

    while (v28 != v56);
  }

  return a5 == v54;
}

void sub_254B3BBD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 232);
  if (v3)
  {
    *(v1 - 224) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B3BBF8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  matrix_number_of_rows = sparse_get_matrix_number_of_rows(a1);
  v16 = a8 == (a5[1] - *a5) >> 3 && matrix_number_of_rows >= a8 + a6;
  if (!v16 || matrix_number_of_rows != (a2[1] - *a2) >> 3 || matrix_number_of_rows != (a3[1] - *a3) >> 2)
  {
    return 0;
  }

  if (a8)
  {
    v17 = 0;
    v18 = a8 * a4;
    v19 = 1;
    do
    {
      v20 = v17 + a6;
      sparse_insert_entry_double(a1, 1.0, v17 + a6, v17 + v18);
      *(*a2 + 8 * v20) = *(*a5 + 8 * v17);
      *(*a3 + 4 * v20) = 0;
      v17 = v19++;
    }

    while (v17 < a8);
  }

  return 1;
}

void sub_254B3BCE8(void *A, uint64_t a2, void *a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    puts("Working on L1 constraints.");
  }

  matrix_number_of_rows = sparse_get_matrix_number_of_rows(A);
  matrix_number_of_columns = sparse_get_matrix_number_of_columns(A);
  v9 = sub_254B3955C(v59, matrix_number_of_rows, a2);
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  sub_254B39B64(v58, v57, a2, matrix_number_of_rows, matrix_number_of_columns, (*a2 != 0) | *(a2 + 153) & 1);
  sub_254B3A790(matrix_number_of_rows, a3, &v55);
  v10 = 0;
  Aa = A;
  v39 = v9 * matrix_number_of_columns;
  for (i = 1; i != 4; ++i)
  {
    v10 += 2 * matrix_number_of_columns * v59[0].i64[i];
  }

  if (a3[6] == a3[7])
  {
    v12 = 0;
  }

  else
  {
    v12 = 3 * matrix_number_of_columns;
  }

  v41 = v12;
  v13 = 16;
  if (*(a2 + 154))
  {
    v13 = 20;
  }

  v14 = *a2;
  v15 = 4;
  if (*(a2 + 152))
  {
    v15 = 6;
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 | *(a2 + 155);
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  v20 = v55;
  v19 = v56;
  v53 = 0;
  v54 = 0;
  __p = 0;
  sub_254B36150(&__p, a3[18], a3[19], (a3[19] - a3[18]) >> 5);
  v21 = v18 + v16;
  v22 = ((v19 - v20) >> 2) * matrix_number_of_columns;
  v23 = sub_254B3B768(&__p);
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  v24 = v41 + v10;
  v42 = v23;
  v37 = a3[26] * matrix_number_of_columns;
  v25 = v41 + v10 + v21 * matrix_number_of_rows + v22 + v23 + v37;
  v26 = sparse_matrix_create_double(v25, v39);
  v51[3] = v26;
  v50 = 0;
  sub_254B3F9BC(v51, v25);
  v40 = v25;
  sub_254B400CC(&v50, v25);
  sub_254B39F5C(v26, v51, &v50, Aa, a2, a3);
  if (a4)
  {
    printf("added %ld derivative constraints.\n", v10);
  }

  if (a3[6] == a3[7])
  {
    v24 = v10;
  }

  else
  {
    sub_254B3A5E8(v26, v51, &v50, v10, matrix_number_of_columns, v27, a3);
    if (a4)
    {
      printf("added %ld initial condition constraints.\n", v41);
    }
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_254B40144(&v47, v55, v56, (v56 - v55) >> 2);
  sub_254B3A9EC(v26, v51, &v50, &v47, v24, matrix_number_of_columns);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (a4)
  {
    printf("added %ld invalid-frame constraints.\n", v22);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  sub_254B36150(&v44, a3[18], a3[19], (a3[19] - a3[18]) >> 5);
  v28 = v24 + v22;
  sub_254B3B7E8(v26, v51, &v50, &v44, v28, matrix_number_of_rows, matrix_number_of_columns, a2, a3);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (a4)
  {
    printf("added %ld salient-rect constraints.\n", v42);
  }

  v30 = v28 + v42;
  v31 = a3[24];
  if (v31 != a3 + 25)
  {
    do
    {
      sub_254B3BBF8(v26, v51, &v50, v31[4], v31 + 5, v30, v29, matrix_number_of_columns);
      v32 = v31[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v31[2];
          v34 = *v33 == v31;
          v31 = v33;
        }

        while (!v34);
      }

      v30 += matrix_number_of_columns;
      v31 = v33;
    }

    while (v33 != a3 + 25);
  }

  if (a4)
  {
    printf("added %ld path constraints.\n", v37);
  }

  if (matrix_number_of_rows)
  {
    v35 = 0;
    for (j = 0; j != matrix_number_of_rows; ++j)
    {
      sub_254B3ADA4(v26, v51, &v50, v30, v35, matrix_number_of_columns, a2, a3, j);
      if (j == 0xFF)
      {
        sparse_commit(v26);
      }

      v30 += v21;
      v35 += matrix_number_of_columns;
    }
  }

  if (a4)
  {
    printf("added %ld x %ld per-frame constraints.\n", matrix_number_of_rows, v21);
    printf("-> total of %ld constraints (expected %ld)\n", v30, v40);
  }

  sub_254B3C2C8();
}

void sub_254B3C1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v37 = *(v35 - 176);
  if (v37)
  {
    *(v35 - 168) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 152);
  if (v38)
  {
    *(v35 - 144) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B3C3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  MEMORY[0x259C24E00](v23, v22);
  _Unwind_Resume(a1);
}

void sub_254B3C450(unint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = sub_254B3955C(&v31, a1, a3);
  v10 = 0;
  v11 = 0;
  do
  {
    v11 += v31.i64[v10];
    v30[++v10] = v11;
  }

  while (v10 != 3);
  __p = 0;
  sub_254B3F9BC(a5, v9 * a2);
  for (i = 1; i != 4; ++i)
  {
    if (i == 3)
    {
      v13 = *(a3 + 10);
    }

    else if (i == 2)
    {
      v13 = *(a3 + 9);
    }

    else
    {
      v13 = 0;
      if (i == 1)
      {
        v13 = *(a3 + 8);
      }
    }

    v14 = *a3;
    v29 = v13;
    sub_254B3F9BC(&__p, a2);
    v15 = __p;
    if (!v14)
    {
      *(__p + 8) = *(__p + 8) * 0.01;
    }

    v16 = v31.u64[i];
    if (v16)
    {
      v17 = 0;
      v18 = *(a4 + 24);
      v19 = v28;
      v20 = v28 - v15;
      v21 = *a5;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      do
      {
        if (v19 != v15)
        {
          v22 = *(v18 + 8 * v17);
          v23 = (v21 + 8 * a2 * (v30[i] + v17));
          v24 = v15;
          v25 = v20;
          do
          {
            v26 = *v24++;
            *v23++ = v22 * v26;
            --v25;
          }

          while (v25);
        }

        ++v17;
      }

      while (v16 > v17);
    }

    if (v15)
    {
      v28 = v15;
      operator delete(v15);
    }
  }
}

sparse_matrix_double sub_254B3C63C(void **a1, unint64_t a2, unint64_t a3, int *a4, void *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v9 = sub_254B3955C(&v67, a2, a4);
  v10 = 0;
  v11 = 0;
  v66[0] = 0;
  do
  {
    v11 += v67.i64[v10];
    v66[++v10] = v11;
  }

  while (v10 != 3);
  N = v9 * a3;
  v60 = a2;
  sub_254B39D6C(a1, v9 * a3);
  v12 = a1[1] - *a1;
  if (v12)
  {
    v13 = v12 >> 3;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a1, 8 * v13);
  }

  v14 = 8 * a3;
  for (i = 1; i != 4; ++i)
  {
    if (i == 3)
    {
      v16 = (a4 + 20);
    }

    else
    {
      v16 = (a4 + 18);
    }

    if (i == 1)
    {
      v16 = (a4 + 16);
    }

    v17 = *a4;
    v62[0] = *v16;
    sub_254B3F9BC(&__p, a3);
    v18 = __p;
    if (!v17)
    {
      *(__p + 8) = *(__p + 8) * 0.01;
    }

    v19 = v67.u64[i];
    if (v19)
    {
      v20 = 0;
      v21 = a5[3];
      v22 = v64;
      v23 = v64 - v18;
      v24 = *a1;
      if (v23 <= 1)
      {
        v23 = 1;
      }

      do
      {
        if (v22 != v18)
        {
          v25 = *(v21 + 8 * v20);
          v26 = &v24[v14 * (v66[i] + v20)];
          v27 = v18;
          v28 = v23;
          do
          {
            v29 = *v27++;
            *v26++ = v25 * v29;
            --v28;
          }

          while (v28);
        }

        ++v20;
      }

      while (v19 > v20);
    }

    if (v18)
    {
      v64 = v18;
      operator delete(v18);
    }
  }

  v30 = *a4;
  v62[0] = *(a4 + 6);
  sub_254B3F9BC(&__p, a3);
  if (!v30)
  {
    *(__p + 8) = *(__p + 8) * 0.01;
  }

  v31 = *a4;
  if (a5[15] == a5[16])
  {
    v65 = 0;
  }

  else
  {
    v65 = *(a4 + 7);
  }

  sub_254B3F9BC(v62, a3);
  if (!v31)
  {
    *(v62[0] + 8) = *(v62[0] + 8) * 0.01;
  }

  v32 = a5[15];
  if (v32 != a5[16] && v60)
  {
    v33 = 0;
    v34 = v62[0];
    v35 = a5[3];
    v36 = *a1;
    do
    {
      v37 = v32 + 24 * v33;
      v38 = *v37;
      if (*v37 != *(v37 + 8) && a3 != 0)
      {
        v40 = a3;
        v41 = v34;
        v42 = v36;
        do
        {
          v43 = *v41++;
          v44 = v43;
          v45 = *v38++;
          *v42 = *v42 + -(v44 * v45) * *(v35 + 8 * v33);
          ++v42;
          --v40;
        }

        while (v40);
      }

      ++v33;
      v36 = (v36 + v14);
    }

    while (v33 != v60);
  }

  v46 = sparse_matrix_create_double(N, N);
  sparse_set_matrix_property(v46, SPARSE_UPPER_SYMMETRIC);
  if (v60)
  {
    v47 = 0;
    for (j = 0; j != v60; ++j)
    {
      if (a3)
      {
        v49 = 0;
        do
        {
          v50 = *(__p + v49);
          v51 = a5[12];
          if (v51 != a5[13])
          {
            v50 = v50 * *(*(v51 + 24 * j) + 8 * v49);
          }

          v52 = v50 + 0.0;
          v53 = a5[15];
          if (v53 != a5[16] && *(v53 + 24 * j) != *(v53 + 24 * j + 8))
          {
            v52 = v52 + *(v62[0] + v49);
          }

          if (!*a4)
          {
            if ((v49 & 0x7FFFFFFB) == 0)
            {
              v52 = v52 + *(a4 + 15);
            }

            if ((v49 & 0x7FFFFFFD) == 1)
            {
              v52 = v52 + *(a4 + 16);
            }
          }

          if (v52 != 0.0)
          {
            sparse_insert_entry_double(v46, v52 * *(a5[3] + 8 * j), v47 + v49, v47 + v49);
          }

          ++v49;
        }

        while (a3 != v49);
      }

      v47 += a3;
    }

    v54 = 0;
    v55 = 3;
    do
    {
      if (!*a4)
      {
        v56 = *(a4 + 15);
        if (v56 != 0.0)
        {
          sparse_insert_entry_double(v46, -(v56 * *(a5[3] + 8 * v54)), v55 - 3, v55 + 1);
          sparse_insert_entry_double(v46, -(*(a4 + 15) * *(a5[3] + 8 * v54)), v55 + 1, v55 - 3);
        }

        v57 = *(a4 + 16);
        if (v57 != 0.0)
        {
          sparse_insert_entry_double(v46, v57 * *(a5[3] + 8 * v54), v55 - 2, v55);
          sparse_insert_entry_double(v46, *(a4 + 16) * *(a5[3] + 8 * v54), v55, v55 - 2);
        }
      }

      ++v54;
      v55 += a3;
    }

    while (v60 != v54);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  return v46;
}

void sub_254B3CAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B3CB40(void *A, double *a2, void *a3, int a4)
{
  if (a4)
  {
    printf("Solving l1 LP with w1=%f, w2=%f, w3=%f\n", a2[8], a2[9], a2[10]);
  }

  sparse_get_matrix_number_of_rows(A);
  sparse_get_matrix_number_of_columns(A);
  sub_254B3BCE8(A, a2, a3, 0);
}

void sub_254B3CC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
{
  sub_254B3CC98(&a12);
  MEMORY[0x259C24E00](v16, 0x10A1C404B04B953);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_254B3CC98(&a16);
  _Unwind_Resume(a1);
}

void **sub_254B3CC98(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_254B3FA94(v2);
    MEMORY[0x259C24E00](v3, 0x10B0C40BD2A282ELL);
  }

  return a1;
}

void sub_254B3CCE0(void *A, double *a2, void *a3, int a4)
{
  if (a4)
  {
    printf("Solving l1 QP with q0=%f, qt=%f, w1=%f, w2=%f, w3=%f, cropfraction=%f %f\n", a2[6], a2[7], a2[8], a2[9], a2[10], a2[4], a2[5]);
  }

  sparse_get_matrix_number_of_rows(A);
  sparse_get_matrix_number_of_columns(A);
  sub_254B3BCE8(A, a2, a3, 0);
}

void sub_254B3CDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18)
{
  sub_254B3CC98(&a16);
  MEMORY[0x259C24E00](v18, 0x10A1C40F3C75648);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_254B3CC98((v19 - 56));
  _Unwind_Resume(a1);
}

double sub_254B3CE48(uint64_t a1, int a2, char a3, double a4, double a5, double a6, double a7)
{
  *a1 = a2;
  *(a1 + 24) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 48) = xmmword_254B8B0A0;
  *(a1 + 64) = _Q1;
  *(a1 + 80) = xmmword_254B8B0B0;
  *(a1 + 96) = 1;
  *(a1 + 104) = xmmword_254B8B0C0;
  v12 = 0.0;
  v13 = 1.0;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = 10;
  }

  if (a2)
  {
    v13 = 0.0;
  }

  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  if (!a2)
  {
    v12 = 0.1;
  }

  *(a1 + 136) = v12;
  *(a1 + 144) = v12;
  *&result = 16842752;
  *(a1 + 152) = 16842752;
  return result;
}

uint64_t sub_254B3CECC(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  v4 = 0;
  v5[3] = 0;
  sub_254B3F434(a1, v3);
  sub_254B3F53C(a1 + 32, v5);
  sub_254B36250(v5);
  sub_254B362D0(v3);
  *(a1 + 64) = 0;
  *(a1 + 72) = xmmword_254B8B0D0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_254B3CF70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_254B32E0C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254B3CF84(uint64_t a1, char **a2)
{
  *(a1 + 96) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (a1 != a2)
  {
    sub_254B401C0(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  CMTimeMake(&v4, 20, 600);
  sub_254B3D0D4(a1, 0, &v4);
  return a1;
}

void sub_254B3D040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = v5;
  sub_254B35FEC(v6, *(v4 + 200));
  v8 = *(v4 + 168);
  if (v8)
  {
    *(v4 + 176) = v8;
    operator delete(v8);
  }

  v9 = *(v4 + 144);
  if (v9)
  {
    *(v4 + 152) = v9;
    operator delete(v9);
  }

  sub_254B35B8C(va);
  sub_254B35B8C(va);
  v10 = *(v4 + 72);
  if (v10)
  {
    *(v4 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(v4 + 48);
  if (v11)
  {
    *(v4 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(v4 + 24);
  if (v12)
  {
    *(v4 + 32) = v12;
    operator delete(v12);
  }

  v13 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_254B3D0D4(void *a1, int a2, CMTime *a3)
{
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v3 != *a1)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    sub_254B39D6C(a1 + 3, v8);
    if (v4 == 24)
    {
      *a1[3] = 0x3FF0000000000000;
    }

    else
    {
      v9 = v8 - 1;
      sub_254B4031C(v27, v8 - 1);
      v10 = a2 & ~(a2 >> 31);
      if (v8 - 1 > v10)
      {
        v11 = 24 * v10;
        v12 = ~v10 + v8;
        do
        {
          v13 = *a1 + v11;
          time = *v13;
          v25 = *(v13 + 24);
          lhs = v25;
          v22 = time;
          CMTimeSubtract(&v24, &lhs, &v22);
          v14 = v27[0] + v11;
          v15 = *&v24.value;
          *(v14 + 2) = v24.epoch;
          *v14 = v15;
          v11 += 24;
          --v12;
        }

        while (v12);
      }

      time = *a3;
      Seconds = CMTimeGetSeconds(&time);
      if (v9 <= v10)
      {
        v21 = a1[3];
      }

      else
      {
        v17 = Seconds;
        v18 = 24 * v10;
        do
        {
          v19 = *(v27[0] + v18 + 16);
          *&time.value = *(v27[0] + v18);
          time.epoch = v19;
          v20 = CMTimeGetSeconds(&time);
          v21 = a1[3];
          *(v21 + 8 * v10++) = v20 / v17;
          v18 += 24;
        }

        while (v9 != v10);
      }

      *(v21 + 8 * v9) = *(v21 + 8 * v8 - 16);
      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }
    }
  }
}

void sub_254B3D288(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B3D2B0(int a1, unint64_t a2, uint64_t a3)
{
  if (a1 >= a2 && (a3 == -1 || a3 + a2 > a1))
  {
    return (a1 - a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_254B3D2E0(uint64_t a1, uint64_t *a2, signed int a3, int a4)
{
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0u;
  v8 = (a1 + 96);
  *(a1 + 144) = 0u;
  v9 = a1 + 144;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  v10 = a1 + 192;
  v11 = (a1 + 120);
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v12 = a2[6];
  v13 = a2[7];
  if (v12 != v13)
  {
    if (a3)
    {
      puts("warning: asked to copy l1StabParams initial condition to a different range; ignoring.");
    }

    else if (a1 != a2)
    {
      sub_254B403B8((a1 + 48), v12, v13, (v13 - v12) >> 3);
    }
  }

  sub_254B3D74C(a2 + 3, a3, a4, &v35);
  v14 = *(a1 + 24);
  if (v14)
  {
    *(a1 + 32) = v14;
    operator delete(v14);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = v35;
  sub_254B302EC(a2, a3, a4, &v35);
  v15 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v15;
    operator delete(v15);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = v35;
  CMTimeMake(&v35, 20, 600);
  sub_254B3D0D4(a1, 0, &v35);
  sub_254B3D7B8(a2 + 12, a3, a4, &v35);
  sub_254B40694(v8);
  *(a1 + 96) = v35;
  memset(&v35, 0, sizeof(v35));
  v36 = &v35;
  sub_254B35B8C(&v36);
  sub_254B3D7B8(a2 + 15, a3, a4, &v35);
  sub_254B40694(v11);
  *(a1 + 120) = v35;
  memset(&v35, 0, sizeof(v35));
  v36 = &v35;
  sub_254B35B8C(&v36);
  sub_254B3D82C(a2 + 18, a3, a4, &v35);
  v16 = *v9;
  if (*v9)
  {
    *(a1 + 152) = v16;
    operator delete(v16);
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
  }

  *(a1 + 144) = v35;
  sub_254B3D74C(a2 + 21, a3, a4, &v35);
  v17 = *(a1 + 168);
  if (v17)
  {
    *(a1 + 176) = v17;
    operator delete(v17);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = v35;
  v19 = a2[9];
  v18 = a2[10];
  if (v18 != v19)
  {
    v20 = 0;
    do
    {
      v21 = *(v19 + 4 * v20);
      v23 = a4 == -1 || a4 + a3 > v21;
      v24 = v21 < a3 || !v23;
      if (!v24)
      {
        LODWORD(v35.value) = v21 - a3;
        if (v21 - a3 >= 0)
        {
          sub_254B3A90C((a1 + 72), &v35);
          v19 = a2[9];
          v18 = a2[10];
        }
      }

      ++v20;
    }

    while (v20 < (v18 - v19) >> 2);
  }

  v25 = a2[24];
  if (v25 != a2 + 25)
  {
    do
    {
      v26 = v25[4];
      v28 = a4 == -1 || a4 + a3 > v26;
      if (v26 >= a3 && v28)
      {
        v30 = (v26 - a3);
        if (v30 >= 0)
        {
          v36 = v30;
          v35.value = &v36;
          v31 = sub_254B35490(v10, &v36);
          if (v25 != v31)
          {
            sub_254B403B8(v31 + 5, v25[5], v25[6], (v25[6] - v25[5]) >> 3);
          }
        }
      }

      v32 = v25[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v25[2];
          v24 = *v33 == v25;
          v25 = v33;
        }

        while (!v24);
      }

      v25 = v33;
    }

    while (v33 != a2 + 25);
  }

  return a1;
}

void sub_254B3D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  sub_254B35FEC(v21, *a10);
  v23 = *(v20 + 168);
  if (v23)
  {
    *(v20 + 176) = v23;
    operator delete(v23);
  }

  v24 = *a11;
  if (*a11)
  {
    *(v20 + 152) = v24;
    operator delete(v24);
  }

  a20 = a12;
  sub_254B35B8C(&a20);
  a20 = a13;
  sub_254B35B8C(&a20);
  v25 = *(v20 + 72);
  if (v25)
  {
    *(v20 + 80) = v25;
    operator delete(v25);
  }

  v26 = *a14;
  if (*a14)
  {
    *(v20 + 56) = v26;
    operator delete(v26);
  }

  v27 = *(v20 + 24);
  if (v27)
  {
    *(v20 + 32) = v27;
    operator delete(v27);
  }

  v28 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_254B3D74C@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = *result;
  v4 = result[1];
  if (*result == v4 || (a2 & 0x80000000) != 0 || (v6 = (v4 - v5) >> 3, v7 = v6 - a2, v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v8 = v6 - a2;
    }

    else
    {
      v8 = a3;
    }

    if ((v8 + a2) <= v6)
    {
      v7 = v8;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B404E4(a4, v5 + 8 * a2, v5 + 8 * (v7 + a2), v7);
  }

  return result;
}

uint64_t *sub_254B3D7B8@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5 || (a2 & 0x80000000) != 0 || (v6 = -1431655765 * ((v5 - v4) >> 3), v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v7 = v6 - a2;
    }

    else
    {
      v7 = a3;
    }

    if ((v7 + a2) <= v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6 - a2;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B40558(a4, v4 + 24 * a2, v4 + 24 * a2 + 24 * v8, v8);
  }

  return result;
}

uint64_t *sub_254B3D82C@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = *result;
  v4 = result[1];
  if (*result == v4 || (a2 & 0x80000000) != 0 || (v6 = (v4 - v5) >> 5, v7 = v6 - a2, v6 <= a2) || a3 <= -2)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    if (a3 == -1)
    {
      v8 = v6 - a2;
    }

    else
    {
      v8 = a3;
    }

    if ((v8 + a2) <= v6)
    {
      v7 = v8;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return sub_254B406D4(a4, v5 + 32 * a2, v5 + 32 * (v7 + a2), v7);
  }

  return result;
}

void *sub_254B3D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254B40748((a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  sub_254B40948(a1, *(a1 + 8), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v6 = -1431655765 * ((*(a1 + 8) - *a1) >> 3) + 1431655765 * ((*(a2 + 8) - *a2) >> 3) - 1;
  CMTimeMake(&v13, 20, 600);
  sub_254B3D0D4(a1, v6, &v13);
  sub_254B40BB8((a1 + 72), *(a1 + 80), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  sub_254B40DB8((a1 + 96), *(a1 + 104), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  sub_254B40DB8((a1 + 120), *(a1 + 128), *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  sub_254B41200((a1 + 144), *(a1 + 152), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 5);
  result = sub_254B40748((a1 + 168), *(a1 + 176), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 3);
  v8 = *(a2 + 192);
  if (v8 != (a2 + 200))
  {
    do
    {
      v12 = v8[4] + a3;
      v13.value = &v12;
      result = sub_254B35490(a1 + 192, &v12);
      if (v8 != result)
      {
        result = sub_254B403B8(result + 5, v8[5], v8[6], (v8[6] - v8[5]) >> 3);
      }

      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != (a2 + 200));
  }

  return result;
}

sparse_m_double *sub_254B3DA7C(sparse_m_double *A, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = A;
  if (a2[1] == *a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(*a2 + 8) - **a2) >> 3;
  }

  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (v9)
      {
        for (j = 0; j != v9; ++j)
        {
          v14 = *(*(*a2 + 24 * v10 + 24 * i) + 8 * j);
          if (v14 != 0.0)
          {
            A = sparse_insert_entry_double(v8, v14, i + a5, j);
          }
        }
      }
    }
  }

  if (a5)
  {
    v15 = 1;
    do
    {
      if (v9)
      {
        for (k = 0; k != v9; ++k)
        {
          v17 = *(*(*a2 + 24 * v10 + 24 * v15) + 8 * k);
          if (v17 != 0.0)
          {
            A = sparse_insert_entry_double(v8, v17, a5 - v15, k);
          }
        }
      }

      ++v15;
    }

    while (v15 <= a5);
  }

  if (a6)
  {
    v18 = 1;
    do
    {
      if (v9)
      {
        for (m = 0; m != v9; ++m)
        {
          v20 = *(*(*a2 + 24 * v10 + 24 * v11 + 24 * ~v18) + 8 * m);
          if (v20 != 0.0)
          {
            A = sparse_insert_entry_double(v8, v20, a6 + v11 - 1 + v18, m);
          }
        }
      }

      ++v18;
    }

    while (v18 <= a6);
  }

  return A;
}

void sub_254B3DD68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_254B883C8(v1);
  }

  _Unwind_Resume(exception_object);
}

double *sub_254B3DD94@<X0>(double *result@<X0>, _DWORD *a2@<X2>, void *a3@<X8>)
{
  *a2 = 0;
  v3 = result[11];
  if (result[4] >= v3 && result[5] >= v3)
  {
    sub_254B3DDC0();
  }

  *a2 = 3;
  *a3 = 0;
  return result;
}

void sub_254B3DEC8(_Unwind_Exception *a1)
{
  sub_254B36250(v3 + 32);
  sub_254B362D0(v4 - 152);
  MEMORY[0x259C24E00](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_254B3DF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 280);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *(a1 + 272)) >> 3);
  sub_254B40DB8((a1 + 272), v9, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  sub_254B3D89C(a1 + 296, a3, v10);
  sub_254B41754(v12, a4);
  sub_254B3DFF4(a1, 0, v12, a5);
  return sub_254B417EC(v12);
}

void sub_254B3DFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B417EC(va);
  _Unwind_Resume(a1);
}

void sub_254B3DFF4(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 272);
  v9 = *(a1 + 280) - v8;
  if (v9)
  {
    v10 = (v8[1] - *v8) >> 3;
  }

  else
  {
    v10 = 0;
  }

  if (!*a4)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    if (a2)
    {
      if (v11 <= 2)
      {
        goto LABEL_16;
      }
    }

    else if (v11 < 3 || *(a1 + 224) != 1)
    {
      return;
    }

    v12 = *a1;
    if (!*a1 && v10 != 9)
    {
      printf("Require k=9 for l1Model_logHomography, got k=%zu.\n");
LABEL_16:
      *a4 = 3;
      return;
    }

    if (v12 == 1 && v10 != 4)
    {
      printf("Require k=4 for l1Model_logHomographyScale, got k=%zu.\n");
      goto LABEL_16;
    }

    if (v12 == 1 && v11 != (*(a1 + 472) - *(a1 + 464)) >> 3)
    {
      goto LABEL_16;
    }

    v13 = *(a1 + 320);
    v14 = *(a1 + 328);
    if (v11 != v14 - v13)
    {
      goto LABEL_16;
    }

    if (v14 != v13)
    {
      v15 = v11;
      while (*v13 > 0.0)
      {
        ++v13;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_16;
    }

LABEL_25:
    v16 = *(a1 + 488);
    if (v16 != (a1 + 496))
    {
      memset(__p, 0, sizeof(__p));
      sub_254B35A88(__p, v16[5], v16[6], (v16[6] - v16[5]) >> 3);
      sub_254B3F358(__p, v16[4], 9uLL, a1, (a1 + 296));
    }

    sub_254B3955C(&v36, v11, a1);
    v17 = *(a1 + 256);
    *&v28 = 0;
    sub_254B3F644((v17 + 8), v36.i64[0] * v10, &v28);
    v18 = *(a1 + 256);
    *&v28 = 0;
    sub_254B3F644((v18 + 32), v36.i64[1] * v10, &v28);
    v19 = *(a1 + 256);
    *&v28 = 0;
    sub_254B3F644((v19 + 56), v37 * v10, &v28);
    v20 = *(a1 + 256);
    *&v28 = 0;
    sub_254B3F644((v20 + 80), v38 * v10, &v28);
    if (a2 && (*(a1 + 224) & 1) == 0)
    {
      v31 = 0;
      v32 = 0;
      v30 = 0;
      sub_254B3EE74((a1 + 272), a1 + 160, 0, 0, &v33, v11, v11, a4);
      if (v33)
      {
        operator delete(v33);
      }

      if (v30)
      {
        operator delete(v30);
      }

      if (!*a4 && *(a3 + 24))
      {
        *&v28 = 0;
        v35 = v11;
        sub_254B3F844(a3);
      }
    }

    else
    {
      v21 = *(a1 + 512);
      if (v21 < v11)
      {
        v22 = (a1 + 520);
        v24 = *(a1 + 232);
        v23 = *(a1 + 240);
        do
        {
          if (a2)
          {
            if (v21 + v24 > v11)
            {
              v24 = v11 - v21;
              if ((*(a1 + 248) & (v23 + 3 <= v11 - v21)) == 0)
              {
                v23 = v11 - v21;
              }
            }
          }

          else if (v21 + v24 > v11 || v23 + v21 + 3 > v11)
          {
            return;
          }

          *v27 = *v22;
          *(a1 + 528) = 0;
          *(a1 + 536) = 0;
          *v22 = 0;
          sub_254B3EE74((a1 + 272), a1 + 160, 0, v21, &v28, v23, v24, a4);
          v25 = *v22;
          if (*v22)
          {
            *(a1 + 528) = v25;
            operator delete(v25);
            *v22 = 0;
            *(a1 + 528) = 0;
            *(a1 + 536) = 0;
          }

          *v22 = v28;
          *(a1 + 536) = v29;
          if (v27[0])
          {
            operator delete(v27[0]);
          }

          if (*a4)
          {
            break;
          }

          v26 = *(a3 + 24);
          if (v26)
          {
            *&v28 = *(a1 + 512);
            v35 = v23;
            (*(*v26 + 48))(v26, &v28, &v35);
          }

          v21 = *(a1 + 512) + v23;
          *(a1 + 512) = v21;
        }

        while (v21 < v11);
      }
    }
  }
}

void sub_254B3E440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B3E484(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_254B41754(v16, a2);
  sub_254B3DFF4(a1, 1, v16, a3);
  sub_254B417EC(v16);
  if (*a3)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 272);
    v9 = *(a1 + 280) - v8;
    if (v9)
    {
      v10 = (v8[1] - *v8) >> 3;
    }

    else
    {
      v10 = 0;
    }

    sub_254B3E5B0(*(a1 + 256), a1, (a1 + 296), 0xAAAAAAAAAAAAAAABLL * (v9 >> 3), v10, 0, v14);
    v11 = *(a1 + 256);
    v12 = v14[0];
    *(v11 + 120) = v14[1];
    v13 = v14[3];
    *(v11 + 136) = v14[2];
    *(v11 + 152) = v13;
    *(v11 + 168) = v15;
    *(v11 + 104) = v12;
    v7 = *(a1 + 256);
    *(a1 + 256) = 0;
  }

  *a4 = v7;
}

void sub_254B3E594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_254B417EC(va);
  _Unwind_Resume(a1);
}

void sub_254B3E5B0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 64) = 0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  sub_254B3ECD8(&v64, a1, a5, a2);
  if (a6)
  {
    puts("\nL1 objective function breakdown:");
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v13 = sub_254B3C63C(&v61, a4, a5, a2, a3);
  v14 = sub_254B3F264(&v64, v13, &v61);
  *a7 = v14;
  if (a6)
  {
    printf("\tFinal objective value = %f\n", v14);
  }

  sparse_matrix_destroy(v13);
  v15 = *(a2 + 112);
  v58 = *(a2 + 96);
  *v59 = v15;
  v16 = *(a2 + 144);
  *&v59[16] = *(a2 + 128);
  v60 = v16;
  v17 = *(a2 + 48);
  v54[2] = *(a2 + 32);
  v55 = v17;
  v18 = *(a2 + 80);
  v56 = *(a2 + 64);
  v57 = v18;
  v19 = *(a2 + 16);
  v54[0] = *a2;
  v54[1] = v19;
  v56 = vandq_s8(vdupq_n_s64(0x3D719799812DEA11uLL), vcgtzq_f64(v56));
  v20 = 0.0;
  if (*(a2 + 80) > 0.0)
  {
    v20 = 1.0e-12;
  }

  *&v57 = v20;
  *&v59[8] = 0;
  *&v59[16] = 0;
  v55 = 0x3FF0000000000000uLL;
  v21 = sub_254B3C63C(&v61, a4, a5, v54, a3);
  v22 = sub_254B3F264(&v64, v21, &v61);
  v23 = v22;
  *(a7 + 8) = v22;
  v24 = *(a2 + 48);
  if (a6)
  {
    printf("\tCorrections penalty (q0) = %f, weight = %f\n", v22, v24);
  }

  sparse_matrix_destroy(v21);
  v25 = v24 * v23 + 0.0;
  *&v55 = 0;
  if (*(a2 + 64) == 0.0)
  {
    if ((a6 & 1) == 0)
    {
      if (*(a2 + 72) == 0.0)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    puts("\tFirst derivative (e1) omitted from model.");
    if (*(a2 + 72) != 0.0)
    {
LABEL_22:
      v56.f64[1] = 1.0;
      v32 = sub_254B3C63C(&v61, a4, a5, v54, a3);
      v33 = sub_254B3F264(&v64, v32, &v61);
      v34 = v33;
      *(a7 + 40) = v33;
      v35 = *(a2 + 72);
      if (a6)
      {
        printf("\tSecond derivative (w2) = %f, weight = %f\n", v33, v35);
      }

      sparse_matrix_destroy(v32);
      v25 = v25 + v35 * v34;
      v36 = 0.0;
      if (*(a2 + 72) > 0.0)
      {
        v36 = 1.0e-12;
      }

      v56.f64[1] = v36;
LABEL_27:
      if (*(a2 + 80) == 0.0)
      {
        if (!a6)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v56.f64[0] = 1.0;
    v26 = sub_254B3C63C(&v61, a4, a5, v54, a3);
    v27 = sub_254B3F264(&v64, v26, &v61);
    v28 = v27;
    *(a7 + 32) = v27;
    v29 = *(a2 + 64);
    if (a6)
    {
      printf("\tFirst derivative (w1) = %f, weight = %f\n", v27, v29);
    }

    sparse_matrix_destroy(v26);
    v25 = v25 + v29 * v28;
    v30 = *(a2 + 72);
    v31 = 0.0;
    if (*(a2 + 64) > 0.0)
    {
      v31 = 1.0e-12;
    }

    v56.f64[0] = v31;
    if (v30 != 0.0)
    {
      goto LABEL_22;
    }

    if ((a6 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  puts("\tSecond derivative (e2) omitted from model.");
  if (*(a2 + 80) == 0.0)
  {
LABEL_29:
    puts("\tThird derivative (e3) omitted from model.");
    goto LABEL_35;
  }

LABEL_30:
  *&v57 = 0x3FF0000000000000;
  v37 = sub_254B3C63C(&v61, a4, a5, v54, a3);
  v38 = sub_254B3F264(&v64, v37, &v61);
  v39 = v38;
  *(a7 + 48) = v38;
  v40 = *(a2 + 80);
  if (a6)
  {
    printf("\tThird derivative (w3) = %f, weight = %f\n", v38, v40);
  }

  sparse_matrix_destroy(v37);
  v25 = v25 + v40 * v39;
  v41 = 0.0;
  if (*(a2 + 80) > 0.0)
  {
    v41 = 1.0e-12;
  }

  *&v57 = v41;
LABEL_35:
  if (!*a2)
  {
    *&v59[8] = 0x3FF0000000000000;
    v42 = sub_254B3C63C(&v61, a4, a5, v54, a3);
    v43 = sub_254B3F264(&v64, v42, &v61);
    v44 = v43;
    *(a7 + 56) = v43;
    v45 = *(a2 + 120);
    if (a6)
    {
      printf("\taffine_diag objective = %f, weight = %f\n", v43, v45);
    }

    sparse_matrix_destroy(v42);
    *&v59[8] = xmmword_254B8AAE0;
    v46 = sub_254B3C63C(&v61, a4, a5, v54, a3);
    v47 = sub_254B3F264(&v64, v46, &v61);
    v48 = v47;
    *(a7 + 64) = v47;
    v49 = *(a2 + 128);
    if (a6)
    {
      printf("\taffine_off_diag objective = %f, weight = %f\n", v47, v49);
    }

    sparse_matrix_destroy(v46);
    v25 = v25 + v45 * v44 + v49 * v48;
    *&v59[16] = 0;
  }

  if (a3[15] != a3[16])
  {
    *(&v55 + 1) = 0x3FF0000000000000;
    v50 = sub_254B3C63C(&v61, a4, a5, v54, a3);
    v51 = sub_254B3F264(&v64, v50, &v61);
    v52 = v51;
    *(a7 + 24) = v51;
    v53 = *(a2 + 56);
    if (a6)
    {
      printf("\tTarget (qt) = %f, weight = %f\n", v51, v53);
    }

    sparse_matrix_destroy(v50);
    v25 = v25 + v53 * v52;
  }

  if (a6)
  {
    printf("\tSub-objective total = %f\n", v25);
  }

  sub_254B3F328(a7, (1.0 / a4));
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void sub_254B3EAE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B3EB1C(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, double *a8)
{
  v40 = *MEMORY[0x277D85DE8];
  sub_254B3955C(v39, a4, a8);
  v14 = 0;
  v15 = 0;
  v38[0] = 0;
  do
  {
    v15 += v39[0].i64[v14];
    v38[++v14] = v15;
  }

  while (v14 != 3);
  result = sub_254B3955C(&v35, a6, a8);
  if (a6)
  {
    v17 = 0;
    v18 = v35;
    v19 = v36;
    v20 = v37;
    v21 = 8 * v38[0] * a7;
    v22 = 8 * a7;
    v23 = 8 * a7 * a5;
    v24 = 8 * v38[1] * a7;
    v25 = 8 * v38[2] * a7;
    result = 8 * v38[3] * a7;
    do
    {
      if (a7)
      {
        v26 = 0;
        v27 = *a2 + v21;
        v28 = a1[1] + v23;
        v29 = *a2 + v24;
        v30 = a1[4] + v23;
        v31 = *a2 + v25;
        v32 = a1[7] + v23;
        v33 = *a2 + result;
        v34 = a1[10] + v23;
        do
        {
          if (v17 < v18.i64[0])
          {
            *(v28 + 8 * v26) = *(v27 + 8 * v26);
          }

          if (v17 < v18.i64[1])
          {
            *(v30 + 8 * v26) = *(v29 + 8 * v26);
          }

          if (v17 < v19)
          {
            *(v32 + 8 * v26) = *(v31 + 8 * v26);
          }

          if (v17 < v20)
          {
            *(v34 + 8 * v26) = *(v33 + 8 * v26);
          }

          ++v26;
        }

        while (a7 != v26);
      }

      ++v17;
      v21 += v22;
      v23 += v22;
      v24 += v22;
      v25 += v22;
      result += v22;
    }

    while (v17 != a6);
  }

  return result;
}

double sub_254B3ECD8(void *a1, void *a2, unint64_t a3, double *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = sub_254B3955C(v36, ((a2[2] - a2[1]) >> 3) / a3, a4);
  sub_254B39D6C(a1, v7 * a3);
  v9 = 0;
  v10 = 0;
  v35[0] = 0;
  do
  {
    v10 += v36[0].i64[v9];
    v35[++v9] = v10;
  }

  while (v9 != 3);
  v11 = a2[1];
  v12 = a2[2] - v11;
  if (v12)
  {
    v13 = v12 >> 3;
    v14 = (*a1 + 8 * v35[0] * a3);
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    do
    {
      v16 = *v11++;
      result = v16;
      *v14++ = v16;
      --v15;
    }

    while (v15);
  }

  v17 = a2[4];
  v18 = a2[5] - v17;
  if (v18)
  {
    v19 = v18 >> 3;
    v20 = (*a1 + 8 * v35[1] * a3);
    if (v19 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19;
    }

    do
    {
      v22 = *v17++;
      result = v22;
      *v20++ = v22;
      --v21;
    }

    while (v21);
  }

  v23 = a2[7];
  v24 = a2[8] - v23;
  if (v24)
  {
    v25 = v24 >> 3;
    v26 = (*a1 + 8 * v35[2] * a3);
    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    do
    {
      v28 = *v23++;
      result = v28;
      *v26++ = v28;
      --v27;
    }

    while (v27);
  }

  v29 = a2[10];
  v30 = a2[11] - v29;
  if (v30)
  {
    v31 = v30 >> 3;
    v32 = (*a1 + 8 * v35[3] * a3);
    if (v31 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v31;
    }

    do
    {
      v34 = *v29++;
      result = v34;
      *v32++ = v34;
      --v33;
    }

    while (v33);
  }

  return result;
}

uint64_t sub_254B3EE74@<X0>(void *a1@<X2>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X7>, void *a5@<X8>, sparse_dimension a6, sparse_dimension a7, int *a8)
{
  v10 = a6;
  v18[10] = *MEMORY[0x277D85DE8];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (a1[1] == *a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*a1 + 8) - **a1) >> 3;
  }

  if (a7 + a4 >= v11)
  {
    v13 = v11 - a4;
  }

  else
  {
    v13 = a7;
  }

  if (v13 < a6)
  {
    v10 = v13;
  }

  v17 = v10;
  result = *(a2 + 24);
  if (result && (result = (*(*result + 48))(result), result))
  {
    v15 = 2;
  }

  else
  {
    *a8 = 0;
    if (v17)
    {
      v16 = sparse_matrix_create_double(v13, v12);
      sub_254B5AD68(v16, v18);
    }

    if (a3)
    {
      result = puts("Windowed-L1 requires stride length > 0.");
    }

    v15 = 3;
  }

  *a8 = v15;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  return result;
}

void sub_254B3F188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  sub_254B3F1EC(va);
  sub_254B3842C(va1);
  v13 = *(v11 - 168);
  if (v13)
  {
    sub_254B4186C(v13);
  }

  _Unwind_Resume(a1);
}

void *sub_254B3F1EC(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      v2[2] = v5;
      operator delete(v5);
    }

    MEMORY[0x259C24E00](v2, 0x1080C40A74EF1D4);
  }

  return a1;
}

double sub_254B3F264(uint64_t a1, sparse_m_double *a2, uint64_t a3)
{
  sub_254B35394(__p, (*(a1 + 8) - *a1) >> 3);
  sub_254B61F14(a2, a1, __p, CblasNoTrans);
  v6 = sub_254B61F90(a1, __p);
  v7 = sub_254B61F90(a3, a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7 + v6 * 0.5;
}

void sub_254B3F304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float64_t sub_254B3F328(float64x2_t *a1, double a2)
{
  v2 = vmulq_n_f64(a1[1], a2);
  *a1 = vmulq_n_f64(*a1, a2);
  a1[1] = v2;
  v3 = vmulq_n_f64(a1[3], a2);
  a1[2] = vmulq_n_f64(a1[2], a2);
  a1[3] = v3;
  result = a1[4].f64[0] * a2;
  a1[4].f64[0] = result;
  return result;
}

void sub_254B3F358(int a1, signed int a2, sparse_dimension N, uint64_t a4, uint64_t *a5)
{
  v8 = sparse_matrix_create_double(1uLL, N);
  sub_254B3D2E0(v9, a5, a2, 1);
  sub_254B3BCE8(v8, a4, v9, 0);
}

void sub_254B3F410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B3842C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B3F434(uint64_t a1, uint64_t a2)
{
  sub_254B3F4B8(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_254B3F4B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_254B3F53C(uint64_t a1, uint64_t a2)
{
  sub_254B3F5C0(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_254B3F5C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_254B3F644(void *a1, unint64_t a2, uint64_t *a3)
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
    sub_254B3F674(a1, a2 - v3, a3);
  }
}

void sub_254B3F674(uint64_t a1, unint64_t a2, uint64_t *a3)
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

uint64_t sub_254B3F844(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_254B33AE8();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_254B3F88C(uint64_t a1, uint64_t a2)
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

uint64_t sub_254B3F924(uint64_t a1, uint64_t a2)
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

void *sub_254B3F9BC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B3540C(result, a2);
  }

  return result;
}

void sub_254B3FA78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B3FA94(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    sub_254B4186C(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    sub_254B4186C(v8);
  }

  return a1;
}

void sub_254B3FB20(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_254B32E20();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_254B35448(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_254B3FC50(void *result, unint64_t a2)
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

void *sub_254B3FD0C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B36CA4(result, a2);
  }

  return result;
}

void *sub_254B3FDE0(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_254B3FE94(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_254B3FF44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B3540C(result, a4);
  }

  return result;
}

void sub_254B3FF9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B3FFB8(void *result, unint64_t a2)
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

void sub_254B400B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B400CC(void *result, unint64_t a2)
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

void sub_254B40128(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B40144(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B33800(result, a4);
  }

  return result;
}

void sub_254B401A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B401C0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_254B36A00(v6, v11);
    }

    sub_254B32E20();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
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

void *sub_254B4031C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B36A00(result, a2);
  }

  return result;
}

void sub_254B4039C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B403B8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_254B3540C(v6, v10);
    }

    sub_254B32E20();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

uint64_t sub_254B404E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B3540C(result, a4);
  }

  return result;
}

void sub_254B4053C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B40558(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B35930(result, a4);
  }

  return result;
}

void sub_254B405C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_254B35B8C(&a9);
  _Unwind_Resume(a1);
}

void *sub_254B405E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_254B35A88(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_254B35B04(v8);
  return v4;
}

void sub_254B40694(uint64_t *a1)
{
  if (*a1)
  {
    sub_254B35BE0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_254B406D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_254B361CC(result, a4);
  }

  return result;
}

void sub_254B4072C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_254B40748(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_254B32E20();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_254B35448(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char *sub_254B40948(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        v21 = &__dst[24 * a5];
        v22 = &v8[-24 * a5];
        v23 = a1[1];
        while (v22 < v8)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        a1[1] = v23;
        if (v8 != v21)
        {
          memmove(&__dst[24 * a5], __dst, v8 - v21);
        }

        v29 = 8 * v20;
        v30 = v5;
        v31 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          *(v18 + 16) = *(v16 + 2);
          *v18 = v19;
          v18 += 24;
          v16 += 24;
          v17 += 24;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v25 = &__dst[24 * a5];
        v26 = v17 - 24 * a5;
        v27 = v17;
        while (v26 < v8)
        {
          v28 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *v27 = v28;
          v27 += 24;
          v26 += 24;
        }

        a1[1] = v27;
        if (v18 != v25)
        {
          memmove(&__dst[24 * a5], __dst, v17 - v25);
        }

        v30 = v5;
        v31 = v6;
        v29 = v15;
      }

      memmove(v30, v31, v29);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 3);
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_254B32E20();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_254B36A4C(a1, v14);
    }

    v32 = 8 * (v12 >> 3);
    v33 = (v32 + 24 * a5);
    v34 = 24 * a5;
    v35 = v32;
    do
    {
      v36 = *v6;
      *(v35 + 16) = *(v6 + 2);
      *v35 = v36;
      v35 += 24;
      v6 += 24;
      v34 -= 24;
    }

    while (v34);
    memcpy(v33, v5, a1[1] - v5);
    v37 = *a1;
    v38 = &v33[a1[1] - v5];
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v32 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  return v5;
}

char *sub_254B40BB8(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_254B32E20();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_254B3383C(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char **sub_254B40DB8(void *a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        sub_254B40FD0(a1, a2, a1[1], (a2 + 24 * a5));
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = sub_254B405E0(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_254B40FD0(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      sub_254B410F8(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_254B32E20();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      sub_254B3597C(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    sub_254B41070(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    sub_254B41168(&v27);
    return v19;
  }

  return v5;
}

void sub_254B40FD0(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      sub_254B35110(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

uint64_t sub_254B41070(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = sub_254B35A88(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

char **sub_254B410F8(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_254B403B8(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_254B41168(uint64_t a1)
{
  sub_254B411A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_254B411A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

char *sub_254B41200(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 5);
    if (v12 >> 59)
    {
      sub_254B32E20();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      sub_254B36208(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, a1[1] - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + a1[1] - v5;
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = (v10 - __dst) >> 5;
  if (v17 >= a5)
  {
    v23 = &__dst[32 * a5];
    v24 = &v10[-32 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v27 = *(v24 + 1);
      v24 += 32;
      *v25 = v26;
      v25[1] = v27;
      v25 += 2;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v23);
    }

    v33 = 32 * a5;
    v34 = v5;
    v35 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v22 = *(v18 + 1);
    v18 += 32;
    *v20 = v21;
    *(v20 + 1) = v22;
    v20 += 32;
    v19 += 32;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v28 = &__dst[32 * a5];
    v29 = &v19[-32 * a5];
    v30 = v19;
    while (v29 < v10)
    {
      v31 = *v29;
      v32 = *(v29 + 1);
      v29 += 32;
      *v30 = v31;
      *(v30 + 1) = v32;
      v30 += 32;
    }

    a1[1] = v30;
    if (v20 != v28)
    {
      memmove(&__dst[32 * a5], __dst, v19 - v28);
    }

    if (v10 != v5)
    {
      v34 = v5;
      v35 = v7;
      v33 = v10 - v5;
LABEL_34:
      memmove(v34, v35, v33);
    }
  }

  return v5;
}

void sub_254B41400(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  a1[4] = a2[4];
  a1[5] = v8;
  a1[2] = v6;
  a1[3] = v7;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  a1[8] = a2[8];
  a1[9] = v11;
  a1[6] = v9;
  a1[7] = v10;
  sub_254B41514((a1 + 10), a3);
  sub_254B41594((a1 + 12), a3 + 32);
  v12 = *(a3 + 64);
  *(a1 + 233) = *(a3 + 73);
  a1[14] = v12;
  operator new();
}

void sub_254B414D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  sub_254B35B8C(&a10);
  sub_254B36594((v10 + 256));
  sub_254B36250(v10 + 192);
  sub_254B362D0(v10 + 160);
  _Unwind_Resume(a1);
}

uint64_t sub_254B41514(uint64_t a1, uint64_t a2)
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

uint64_t sub_254B41594(uint64_t a1, uint64_t a2)
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

uint64_t sub_254B41614(uint64_t a1, unint64_t a2)
{
  *(a1 + 96) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  sub_254B3F9BC(&v5, a2);
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return a1;
}

void sub_254B416C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v4;
  sub_254B35FEC(v5, *(v3 + 200));
  v7 = *(v3 + 168);
  if (v7)
  {
    *(v3 + 176) = v7;
    operator delete(v7);
  }

  v8 = *(v3 + 144);
  if (v8)
  {
    *(v3 + 152) = v8;
    operator delete(v8);
  }

  sub_254B35B8C(va);
  sub_254B35B8C(va);
  v9 = *(v3 + 72);
  if (v9)
  {
    *(v3 + 80) = v9;
    operator delete(v9);
  }

  v10 = *(v3 + 48);
  if (v10)
  {
    *(v3 + 56) = v10;
    operator delete(v10);
  }

  v11 = *(v3 + 24);
  if (v11)
  {
    *(v3 + 32) = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254B41754(uint64_t a1, uint64_t a2)
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

uint64_t sub_254B417EC(uint64_t a1)
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

void sub_254B4186C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

PipelineStatePromise *sub_254B41B50(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = dispatch_group_create();
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v15 = v4;
    v16 = [[PipelineStatePromise alloc] initWithDispatchGroup:v5 pipelineStates:v6 errors:v7];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if ([v13 conformsToProtocol:{&unk_28670E208, v15}])
          {
            dispatch_group_enter(v5);
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = sub_254B41DAC;
            v18[3] = &unk_2797A99D8;
            v19 = v16;
            v20 = v6;
            v21 = v13;
            v22 = v7;
            v23 = v5;
            [v17 newComputePipelineStateWithFunction:v13 completionHandler:v18];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v4 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_254B41DAC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(a1 + 48);
  if (v8)
  {
    [*(a1 + 40) setObject:v8 forKey:v7];
  }

  else
  {
    [*(a1 + 56) setObject:v5 forKey:v7];
  }

  objc_sync_exit(v6);

  dispatch_group_leave(*(a1 + 64));
}

void sub_254B42450(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();

    JUMPOUT(0x254B41F6CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_254B45300(void *a1)
{
  [a1 waitUntilCompleted];
  v2 = [a1 status] == 4;

  return v2;
}

void *sub_254B4533C(void *a1, __CVBuffer *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if ([v7 didFinishInitializationWithTimeout:5000000.0])
  {
    CleanRect = CVImageBufferGetCleanRect(a2);
    x = CleanRect.origin.x;
    y = CleanRect.origin.y;
    height = CleanRect.size.height;
    EncodedSize = CVImageBufferGetEncodedSize(a2);
    *&y = EncodedSize.height - (y + height);
    v12 = [v7 queue];
    v13 = [v12 commandBuffer];
    context = objc_autoreleasePoolPush();
    v14 = [v7 _textureFromPixelBuffer:a2 forcedMetalPixelFormat:13 forcedWidthDivisior:1];
    v15 = [v7 _textureFromPixelBuffer:a3 forcedMetalPixelFormat:13 forcedWidthDivisior:1];
    v16 = [v7 _textureFromPixelBuffer:a3 forcedMetalPixelFormat:73 forcedWidthDivisior:4];
    v17 = [v7 _textureFromPixelBuffer:a4 forcedMetalPixelFormat:73 forcedWidthDivisior:4];
    v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:objc_msgSend(v16 width:"pixelFormat") height:objc_msgSend(v16 mipmapped:"width"), objc_msgSend(v16, "height"), 0];
    [v18 setUsage:{objc_msgSend(v18, "usage") | 3}];
    v19 = [v7 device];
    v20 = [v19 newTextureWithDescriptor:v18];

    *&x = x;
    [v7 _gaussianishBlur_metal:v13 inputTexture:v14 outputTexture:v15 offset:{*&x, *&y}];
    [v7 _computeResponseMap_metal:v13 inputTexture:v16 outputTexture:v20 garbagePixelCount:{(objc_msgSend(v20, "width") - EncodedSize.width)}];
    [v7 _suppressResponseMap_metal:v13 unsuppressedTexture:v20 suppressedTexture:v17 garbagePixelCount:{(objc_msgSend(v20, "width") - EncodedSize.width)}];
    [v13 commit];
    [v13 waitUntilScheduled];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_254B455A0()
{
  v0 = getenv("AL_STABILIZE_NO_METAL");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = dword_281535BE8;
  }

  dword_281535BE8 = result;
  return result;
}

void sub_254B455E0(uint64_t a1, unint64_t a2)
{
  v130 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = 0;
    v4 = ((*(a1 + 244) - *(a1 + 236)) * (*(a1 + 248) - *(a1 + 240))) / (HIDWORD(a2) * a2);
    *(a1 + 192) = v4;
    v5 = a2;
    v104 = HIDWORD(a2);
    v6 = SHIDWORD(a2);
    v119 = 0;
    v120 = 0;
    v121 = 0x3FF0000000000000;
    v122 = a2;
    v123 = xmmword_254B8AAE0;
    v124 = 0;
    v125 = SHIDWORD(a2);
    v126 = 0x3FF0000000000000;
    v127 = a2;
    v128 = SHIDWORD(a2);
    v129 = 0x3FF0000000000000;
    __asm { FMOV            V22.2D, #1.0 }

    do
    {
      v12 = (&v119 + v3 * 8);
      v132 = vld3q_f64(v12);
      v13 = vmulq_f64(v132.val[1], 0);
      v14 = vmlaq_f64(vaddq_f64(v132.val[0], v13), 0, v132.val[2]);
      v15 = vaddq_f64(v132.val[2], vmlaq_f64(v13, 0, v132.val[0]));
      v16 = vdivq_f64(v14, v15);
      v17 = &v118[v3];
      v18 = vdivq_f64(vmlaq_f64(vmlaq_f64(v132.val[1], 0, v132.val[0]), 0, v132.val[2]), v15);
      vst3q_f64(v17, *(&_Q22 - 2));
      v3 += 6;
    }

    while (v3 != 12);
    v106 = a2;
    v19 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0x3FF0000000000000;
    v122 = a2;
    v123 = xmmword_254B8AAE0;
    v124 = 0;
    v125 = SHIDWORD(a2);
    v126 = 0x3FF0000000000000;
    v127 = a2;
    v128 = SHIDWORD(a2);
    v129 = 0x3FF0000000000000;
    v20 = *(a1 + 8);
    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    v99 = *(a1 + 16);
    v100 = *a1;
    v23 = vdupq_lane_s64(*a1, 0);
    v24 = vdupq_lane_s64(v99, 0);
    v101 = *(a1 + 40);
    v102 = *(a1 + 24);
    v25 = vdupq_lane_s64(v102, 0);
    v26 = vdupq_lane_s64(v101, 0);
    v103 = *(a1 + 48);
    v27 = vdupq_lane_s64(v103, 0);
    v105 = *(a1 + 64);
    v28 = vdupq_lane_s64(v105, 0);
    do
    {
      v29 = (&v119 + v19 * 8);
      v134 = vld3q_f64(v29);
      v30 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v134.val[1], v21), v134.val[0], v25), v134.val[2], v26);
      v31 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v134.val[1], v22), v134.val[0], v27), v134.val[2], v28);
      v134.val[0] = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v134.val[1], v20), v134.val[0], v23), v134.val[2], v24), v31);
      v134.val[1] = vdivq_f64(v30, v31);
      v134.val[2] = _Q22;
      v32 = &v111[v19];
      vst3q_f64(v32, v134);
      v19 += 6;
    }

    while (v19 != 12);
    v107 = v22;
    v108 = v21;
    v109 = v20;
    v110 = _Q22;
    v33 = 0;
    *&v34.f64[0] = v118[0];
    *&v35.f64[0] = v118[1];
    *&v34.f64[1] = v118[3];
    *&v36.f64[0] = v118[6];
    *&v37.f64[0] = v118[7];
    *&v36.f64[1] = v118[9];
    *&v38.f64[0] = v111[0];
    v38.f64[1] = v112;
    v39.f64[0] = v114;
    v39.f64[1] = v116;
    v40 = vsubq_f64(v36, v39);
    v41 = vsubq_f64(v34, v38);
    *&v35.f64[1] = v118[4];
    *&v37.f64[1] = v118[10];
    v42 = *v111;
    *&v38.f64[0] = v111[1];
    v43 = v112;
    v38.f64[1] = v113;
    v44 = v114;
    v39.f64[0] = v115;
    v45 = v116;
    v39.f64[1] = v117;
    v46 = vsubq_f64(v35, v38);
    v131.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v41), v40);
    v131.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v46), vsubq_f64(v37, v39));
    v47 = (a1 + 252);
    vst2q_f32(v47, v131);
    v48 = -1;
    v49 = (a1 + 284);
    do
    {
      if (v48 >= 2)
      {
        v50 = v44;
      }

      else
      {
        v50 = v42;
      }

      v51 = *&v111[v33];
      v52 = *&v111[v33 + 1];
      v53 = v50 - v51;
      if (v48 >= 2)
      {
        v54 = v43;
      }

      else
      {
        v54 = v45;
      }

      v55 = v54 - v51;
      if (v48 >= 2)
      {
        v56 = 7;
      }

      else
      {
        v56 = 1;
      }

      v57 = v55;
      v58 = *&v111[v56] - v52;
      if (v48 >= 2)
      {
        v59 = 4;
      }

      else
      {
        v59 = 10;
      }

      v60 = *&v111[v59] - v52;
      *v49++ = acosf(((v58 * v60) + (v53 * v57)) / (sqrtf((v58 * v58) + (v53 * v53)) * sqrtf((v60 * v60) + (v57 * v57))));
      v33 += 3;
      ++v48;
    }

    while (v33 != 12);
    v61 = 0;
    *(a1 + 172) = 0;
    v62 = 0.0;
    do
    {
      v63 = vabds_f32(1.5708, *(a1 + 284 + v61));
      if (v62 <= v63)
      {
        v62 = v63;
      }

      v61 += 4;
    }

    while (v61 != 16);
    v64 = 0;
    if (v104 <= v106)
    {
      v65 = v106;
    }

    else
    {
      v65 = v104;
    }

    v66 = v65;
    v67 = *(a1 + 220) / v65;
    v68 = (v62 * v62) / (v67 + 0.0001);
    *(a1 + 176) = v68;
    v119 = 0;
    v120 = 0;
    v121 = 0x3FF0000000000000;
    v122 = v5;
    v123 = xmmword_254B8AAE0;
    v124 = 0;
    v125 = v6;
    v126 = 0x3FF0000000000000;
    v127 = v5;
    v128 = v6;
    v129 = 0x3FF0000000000000;
    do
    {
      v69 = (&v119 + v64 * 8);
      v133 = vld3q_f64(v69);
      v70 = vmulq_f64(v133.val[1], 0);
      v71 = vmlaq_f64(vaddq_f64(v133.val[0], v70), 0, v133.val[2]);
      v72 = vaddq_f64(v133.val[2], vmlaq_f64(v70, 0, v133.val[0]));
      v135.val[0] = vdivq_f64(v71, v72);
      v135.val[1] = vdivq_f64(vmlaq_f64(vmlaq_f64(v133.val[1], 0, v133.val[0]), 0, v133.val[2]), v72);
      v73 = &v118[v64];
      v135.val[2] = v110;
      vst3q_f64(v73, v135);
      v64 += 6;
    }

    while (v64 != 12);
    v74 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0x3FF0000000000000;
    v122 = v5;
    v123 = xmmword_254B8AAE0;
    v124 = 0;
    v125 = v6;
    v126 = 0x3FF0000000000000;
    v127 = v5;
    v128 = v6;
    v129 = 0x3FF0000000000000;
    v75 = vdupq_lane_s64(v100, 0);
    v76 = vdupq_lane_s64(v99, 0);
    v77 = vdupq_lane_s64(v102, 0);
    v78 = vdupq_lane_s64(v101, 0);
    v79 = vdupq_lane_s64(v103, 0);
    v80 = vdupq_lane_s64(v105, 0);
    do
    {
      v81 = (&v119 + v74 * 8);
      v136 = vld3q_f64(v81);
      v82 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v136.val[1], v108), v136.val[0], v77), v136.val[2], v78);
      v83 = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v136.val[1], v107), v136.val[0], v79), v136.val[2], v80);
      v136.val[0] = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v136.val[1], v109), v136.val[0], v75), v136.val[2], v76), v83);
      v136.val[1] = vdivq_f64(v82, v83);
      v136.val[2] = v110;
      v84 = &v111[v74];
      vst3q_f64(v84, v136);
      v74 += 6;
    }

    while (v74 != 12);
    v85 = 0;
    v86 = 0uLL;
    v87 = 0.0;
    do
    {
      v88 = *&v118[v85];
      v89 = *&v111[v85];
      v90 = vsubq_f64(v88, v89);
      v91 = vabdq_f64(v88, v89);
      v92 = vmulq_f64(v90, v90);
      if (v92.f64[1] + v90.f64[0] * v90.f64[0] > v87)
      {
        v87 = v92.f64[1] + v90.f64[0] * v90.f64[0];
      }

      v86 = vbslq_s8(vcgtq_f64(v91, v86), v91, v86);
      v85 += 3;
    }

    while (v85 != 12);
    *(a1 + 184) = vcvt_f32_f64(v86);
    v93 = *(a1 + 224) / v66;
    v94 = sqrt(v87) / v66;
    v95 = v94 / (fmaxf(v93, 0.0025) + 0.00000001);
    *(a1 + 180) = v95;
    v96 = *(a1 + 104);
    if (v96)
    {
      if (v68 <= 0.5)
      {
        LOBYTE(v96) = 0;
        v97 = 0;
      }

      else if (v68 <= 0.75)
      {
        v97 = 0;
        LOBYTE(v96) = 1;
      }

      else
      {
        LOBYTE(v96) = 1;
        v97 = 1;
      }

      if (v4 < 0.08)
      {
        LOBYTE(v96) = v96 | 2;
        if (v4 < 0.15)
        {
          v97 |= 2u;
        }
      }

      v98 = *(a1 + 168);
      if (v98 < 0.1)
      {
        LOBYTE(v96) = v96 | 4;
        if (v98 < 0.2)
        {
          v97 |= 4u;
        }
      }

      if (v95 > 1.8)
      {
        LOBYTE(v96) = v96 | 8;
        if (v95 > 3.0)
        {
          v97 |= 8u;
        }
      }
    }

    else
    {
      v97 = 0;
    }

    *(a1 + 74) = v96;
    *(a1 + 75) = v97;
  }
}

uint64_t sub_254B462D0(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(a1 + 32);

  return [v2 unlockWithCondition:1];
}

void sub_254B46A44(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 88) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 40) = 0u;
  v27 = 0;
  sub_254B3A90C((a2 + 48), &v27);
  *a2 = sparse_get_matrix_number_of_rows(a1);
  *(a2 + 8) = sparse_get_matrix_number_of_columns(a1);
  *(a2 + 16) = sparse_get_matrix_nonzero_count(a1);
  sub_254B35394(val, *(a2 + 8));
  sub_254B47E68(jndx, *(a2 + 8));
  column_end = 0;
  if (*a2)
  {
    v5 = 0;
    v22 = a1;
    do
    {
      v6 = sparse_extract_sparse_row_double(a1, v5, 0, &column_end, *(a2 + 8), val[0], jndx[0]);
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = 8 * v6;
        do
        {
          v10 = *(a2 + 80);
          v9 = *(a2 + 88);
          if (v10 >= v9)
          {
            v12 = *(a2 + 72);
            v13 = v10 - v12;
            v14 = (v10 - v12) >> 3;
            v15 = v14 + 1;
            if ((v14 + 1) >> 61)
            {
              sub_254B32E20();
            }

            v16 = v9 - v12;
            if (v16 >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              sub_254B35448(a2 + 72, v17);
            }

            v18 = v14;
            v19 = (8 * v14);
            v20 = &v19[-v18];
            *v19 = val[0][v7 / 8];
            v11 = v19 + 1;
            memcpy(v20, v12, v13);
            v21 = *(a2 + 72);
            *(a2 + 72) = v20;
            *(a2 + 80) = v11;
            *(a2 + 88) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v10 = val[0][v7 / 8];
            v11 = v10 + 1;
          }

          *(a2 + 80) = v11;
          v23 = jndx[0][v7 / 8];
          sub_254B3A90C(v4, &v23);
          ++v27;
          v7 += 8;
        }

        while (v8 != v7);
      }

      sub_254B3A90C(v4 + 3, &v27);
      ++v5;
      a1 = v22;
    }

    while (v5 < *a2);
  }

  if (jndx[0])
  {
    jndx[1] = jndx[0];
    operator delete(jndx[0]);
  }

  if (val[0])
  {
    val[1] = val[0];
    operator delete(val[0]);
  }
}

void sub_254B46C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_254B46CB8(v16);
  _Unwind_Resume(a1);
}

void *sub_254B46CB8(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_254B46D0C(const void **a1, void *a2)
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

uint64_t sub_254B46DEC(void *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "w");
  if (!v4)
  {
    std::operator+<char>();
    v13 = std::string::append(&v16, ".");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v18 = v13->__r_.__value_.__r.__words[2];
    v17 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C24C60](exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = v4;
  fprintf(v4, "%ld\t%ld\t%ld", *a1, a1[1], a1[2]);
  fputc(10, v5);
  v6 = a1[6];
  if (a1[7] != v6)
  {
    v7 = 0;
    do
    {
      fprintf(v5, "%d\t", *(v6 + 4 * v7++));
      v6 = a1[6];
    }

    while (v7 < (a1[7] - v6) >> 2);
  }

  fputc(10, v5);
  v8 = a1[3];
  if (a1[4] != v8)
  {
    v9 = 0;
    do
    {
      fprintf(v5, "%d\t", *(v8 + 4 * v9++));
      v8 = a1[3];
    }

    while (v9 < (a1[4] - v8) >> 2);
  }

  fputc(10, v5);
  v10 = a1[9];
  if (a1[10] != v10)
  {
    v11 = 0;
    do
    {
      fprintf(v5, "%0.32f\t", *(v10 + 8 * v11++));
      v10 = a1[9];
    }

    while (v11 < (a1[10] - v10) >> 3);
  }

  fputc(10, v5);

  return fclose(v5);
}

void sub_254B46FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B47028(void *a1, uint64_t a2)
{
  sub_254B46A44(a1, v3);
  sub_254B46DEC(v3, a2);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void *sub_254B470A8(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t sub_254B47160(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "w");
  if (!v4)
  {
    std::operator+<char>();
    v9 = std::string::append(&v12, ".");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v14 = v9->__r_.__value_.__r.__words[2];
    v13 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C24C60](exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = v4;
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      fprintf(v5, "%0.32f\n", *(v6 + 8 * v7++));
      v6 = *a1;
    }

    while (v7 < (a1[1] - *a1) >> 3);
  }

  return fclose(v5);
}

void sub_254B47290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B472D0(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "w");
  if (!v4)
  {
    std::operator+<char>();
    v9 = std::string::append(&v12, ".");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v14 = v9->__r_.__value_.__r.__words[2];
    v13 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C24C60](exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = v4;
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      fprintf(v5, "%d\n", *(v6 + 4 * v7++));
      v6 = *a1;
    }

    while (v7 < (a1[1] - *a1) >> 2);
  }

  return fclose(v5);
}

void sub_254B47400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B47440(uint64_t a1, const void **a2)
{
  v4 = *a1;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v30;
  sub_254B48270(&v30, v5 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v30.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 47;
  v8 = std::string::append(&v30, "cnstr_A0.txt");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v32 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_254B47028(v4, __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = &v30;
  sub_254B48270(&v30, v10 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v30.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = std::string::append(&v30, "cnstr_b0.txt");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v32 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160((a1 + 16), __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = &v30;
  sub_254B48270(&v30, v15 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    memmove(v16, v17, v15);
  }

  *(&v16->__r_.__value_.__l.__data_ + v15) = 47;
  v18 = std::string::append(&v30, "cnstr_ineq.txt");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_254B472D0((a1 + 40), __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = a2[1];
  }

  v21 = &v30;
  sub_254B48270(&v30, v20 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v30.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    memmove(v21, v22, v20);
  }

  *(&v21->__r_.__value_.__l.__data_ + v20) = 47;
  v23 = std::string::append(&v30, "cnstr_lb.txt");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v32 = v23->__r_.__value_.__r.__words[2];
  *__p = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160((a1 + 64), __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = a2[1];
  }

  v26 = &v30;
  sub_254B48270(&v30, v25 + 1);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = v30.__r_.__value_.__r.__words[0];
  }

  if (v25)
  {
    if (*(a2 + 23) >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    memmove(v26, v27, v25);
  }

  *(&v26->__r_.__value_.__l.__data_ + v25) = 47;
  v28 = std::string::append(&v30, "cnstr_ub.txt");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v32 = v28->__r_.__value_.__r.__words[2];
  *__p = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160((a1 + 88), __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_254B47804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B47858(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_254B47440(*(a1 + 40), a2);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = &v17;
  sub_254B48270(&v17, v6 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v17.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 47;
  v9 = std::string::append(&v17, "c.txt");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160((a1 + 48), __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if (!a3)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = &v17;
  sub_254B48270(&v17, v11 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v17.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    memmove(v12, v13, v11);
  }

  *(&v12->__r_.__value_.__l.__data_ + v11) = 47;
  v14 = std::string::append(&v17, "x.txt");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v19 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160(a3, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_254B47A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B47A54(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_254B47440(a1[5], a2);
  v6 = a1[6];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = &v23;
  sub_254B48270(&v23, v7 + 1);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v23.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
  v10 = std::string::append(&v23, "Q.txt");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v25 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_254B47028(v6, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = &v23;
  sub_254B48270(&v23, v12 + 1);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v23.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v13, v14, v12);
  }

  *(&v13->__r_.__value_.__l.__data_ + v12) = 47;
  v15 = std::string::append(&v23, "c.txt");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v25 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160(a1 + 7, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if (!a3)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = &v23;
  sub_254B48270(&v23, v17 + 1);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v23.__r_.__value_.__r.__words[0];
  }

  if (v17)
  {
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    memmove(v18, v19, v17);
  }

  *(&v18->__r_.__value_.__l.__data_ + v17) = 47;
  v20 = std::string::append(&v23, "x.txt");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v25 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_254B47160(a3, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_254B47CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B47D10(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_254B482FC(a1, a2 - v2);
  }
}

void *sub_254B47D40(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_254B3383C(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

uint64_t *sub_254B47DE0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x259C24E00);
  }

  return result;
}

void *sub_254B47E68(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B3540C(result, a2);
  }

  return result;
}

void sub_254B47EC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B47EE0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C24CB0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_254B48088(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C24CC0](v13);
  return a1;
}

void sub_254B48020(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C24CC0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x254B48000);
}

uint64_t sub_254B48088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_254B418D8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_254B48254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B48270(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254B418D8();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_254B482FC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_254B32E20();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_254B3383C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

double sub_254B4842C(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  result = 0.0;
  do
  {
    v4 = 0;
    v5 = 1.0;
    v6 = v2;
    v7 = v1;
    v8 = v2;
    v9 = 1.0;
    v10 = v1;
    do
    {
      v9 = v9 * *(a1 + 8 * (v7 - 9 * (v6 / 3)));
      v11 = *(a1 + 8 * (v10 - 9 * (v8 / 3)));
      ++v4;
      v10 += 7;
      v5 = v5 * v11;
      v8 += 2;
      v7 += 4;
      ++v6;
    }

    while (v4 != 3);
    result = result + v9 - v5;
    ++v2;
    v1 += 3;
  }

  while (v2 != 3);
  return result;
}

void sub_254B484C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_254B4842C(a2);
  v5 = 1.0;
  if (v4 != 0.0)
  {
    v5 = pow(fabs(v4), 0.333333333);
    if (v4 < 0.0)
    {
      v5 = -v5;
    }
  }

  v6 = 0;
  v7 = 1.0 / v5;
  do
  {
    *(a1 + v6) = v7 * *(a2 + v6);
    v6 += 8;
  }

  while (v6 != 72);
}

void sub_254B48550(void *a1, char *a2, int a3)
{
  if (a3)
  {
    v6 = &unk_2867002B0;
  }

  else
  {
    v6 = &unk_286700250;
  }

  sub_254B49448(v74, 9uLL);
  sub_254B49448(v73, 3uLL);
  sub_254B35394(__dst, 9uLL);
  v7 = __dst[0];
  memmove(__dst[0], a2, 0x48uLL);
  sub_254B48E7C(v74, v73, v7);
  if (a3)
  {
    *&v8 = 0x3BC79CA10C924223;
    while (1)
    {
      v9 = *(v73[0] + 1);
      v10 = *(v73[0] + 2);
      v11 = *(v73[0] + 3);
      if (*v73[0] != v10 || v9 != v11)
      {
        v13 = *(v73[0] + 4);
        v14 = *(v73[0] + 5);
        if ((*v73[0] != v13 || v9 != v14) && (v13 != v10 || v14 != v11))
        {
          break;
        }
      }

      if (*&v8 >= 0.00001)
      {
        break;
      }

      v17 = __dst[0];
      *(__dst[0] + 7) = *&v8 + *(__dst[0] + 7);
      *(v17 + 40) = vmlaq_n_f64(*(v17 + 40), xmmword_254B8B1E0, *&v8);
      *(v17 + 8) = vmlaq_n_f64(*(v17 + 8), xmmword_254B8B1F0, *&v8);
      *(v17 + 3) = *(v17 + 3) + *&v8 * 1.5;
      v59 = v8;
      sub_254B48E7C(v74, v73, v17);
      *(&v8 + 1) = *(&v59 + 1);
      *&v8 = *&v59 * 10.0;
    }
  }

  else
  {
    v18 = v73[0];
    v19 = *v73[0];
    v20 = *(v73[0] + 1);
    v21 = *(v73[0] + 2);
    v22 = *(v73[0] + 3);
    if (hypot(*v73[0] - v21, v20 - v22) < 0.00000001)
    {
      v23 = v18[4];
      v24 = v18[5];
      if (hypot(v19 - v23, v20 - v24) < 0.00000001 && hypot(v23 - v21, v24 - v22) < 0.00000001 && hypot(v19, v20) < 0.00000001)
      {
        v25 = 0;
        v26 = a2;
        do
        {
          v27 = 0;
          v28 = 3 * v25;
          v29 = a2;
          do
          {
            v30 = 0;
            v31 = v27 + v28;
            if (v25 == v27)
            {
              v32 = 1.0;
            }

            else
            {
              v32 = 0.0;
            }

            v33 = v32 + *&a2[8 * v27 + 8 * v28];
            *&a1[v31] = v33;
            v34 = v29;
            do
            {
              v35 = *v34;
              v34 += 3;
              v33 = v33 + *&v26[v30] * v35 * 0.5;
              *&a1[v31] = v33;
              v30 += 8;
            }

            while (v30 != 24);
            ++v27;
            ++v29;
          }

          while (v27 != 3);
          ++v25;
          v26 += 24;
        }

        while (v25 != 3);
        goto LABEL_58;
      }
    }
  }

  __a = 0;
  v69 = 0;
  sub_254B494C0(v71, 3uLL);
  v36 = 0;
  if (a3)
  {
    v37 = &unk_2867002B0;
  }

  else
  {
    v37 = &unk_286700250;
  }

  v38 = v37[2];
  do
  {
    v39 = v38(v6, *(v73[0] + v36), *(v73[0] + v36 + 8));
    v40 = v71[0] + v36;
    *v40 = v39;
    *(v40 + 1) = v41;
    v36 += 16;
  }

  while (v36 != 48);
  __lda = 3;
  sub_254B49544(&__a, 9uLL);
  sub_254B49544(&__work, 0x3CuLL);
  sub_254B400CC(__ipiv, 3uLL);
  v42 = 0;
  __lwork = (v67 - __work) >> 4;
  __info = 0;
  v43 = v74[0];
  v44 = __a;
  do
  {
    v44[v42] = *&v43[v42 * 16];
    ++v42;
  }

  while (v42 != 9);
  zgetrf_(&__lda, &__lda, v44, &__lda, __ipiv[0], &__info);
  zgetri_(&__lda, __a, &__lda, __ipiv[0], __work, &__lwork, &__info);
  sub_254B49448(__p, 9uLL);
  v45 = 0;
  for (i = 0; i != 3; ++i)
  {
    v47 = 0;
    for (j = 0; j != 3; ++j)
    {
      v49 = 0;
      v50 = 0.0;
      v51 = v45;
      v52 = v47;
      v53 = 0.0;
      do
      {
        v61[0] = sub_254B493EC((v74[0] + v51), (v71[0] + v49));
        v61[1] = v54;
        v60 = *(__a + v52);
        v53 = v53 + sub_254B493EC(v61, &v60);
        v50 = v50 + v55;
        v52 += 16;
        v51 += 48;
        v49 += 16;
      }

      while (v49 != 48);
      v56 = __p[0];
      v57 = (__p[0] + 48 * i + 16 * j);
      *v57 = v53;
      v57[1] = v50;
      v47 += 48;
    }

    v45 += 16;
  }

  for (k = 0; k != 144; k += 16)
  {
    *a1++ = *&v56[k];
  }

  __p[1] = v56;
  operator delete(v56);
  if (__ipiv[0])
  {
    __ipiv[1] = __ipiv[0];
    operator delete(__ipiv[0]);
  }

  if (__work)
  {
    v67 = __work;
    operator delete(__work);
  }

  if (__a)
  {
    v69 = __a;
    operator delete(__a);
  }

  if (v71[0])
  {
    v71[1] = v71[0];
    operator delete(v71[0]);
  }

LABEL_58:
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

  if (v74[0])
  {
    v74[1] = v74[0];
    operator delete(v74[0]);
  }
}

void sub_254B48A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  v39 = *(v37 - 192);
  if (v39)
  {
    *(v37 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v37 - 168);
  if (v40)
  {
    *(v37 - 160) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B48AE0(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  if (!a2)
  {
    *&v5[0] = 0x3FF0000000000000;
    *&v6 = 0x3FF0000000000000;
    v8 = 0x3FF0000000000000;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    if (v2 != 2 && v2 != 5 && vabdd_f64(*(a1 + 8 * v2), *(v5 + v2)) > 0.00000001)
    {
      v3 = 0;
    }

    ++v2;
  }

  while (v2 != 9);
  return v3 & 1;
}

void sub_254B48B98(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254B484C4(v4, a2);
  if (sub_254B48AE0(v4, 0))
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v3 = v6;
    *(a1 + 16) = v5;
    *(a1 + 40) = v3;
  }

  else
  {
    sub_254B48550(a1, v4, 1);
  }
}

void sub_254B48C38(uint64_t a1, __int128 *a2)
{
  v2 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v4 = a2[3];
  v10 = a2[2];
  v11 = v4;
  v12 = -(*&v8 + *&v10);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v5 = 1;
  do
  {
    while (v2 != 2 && v2 != 5 && vabdd_f64(*(&v8 + v2), *(v13 + v2)) > 0.00000001)
    {
      v5 = 0;
      if (v2++ == 8)
      {
        goto LABEL_12;
      }
    }

    ++v2;
  }

  while (v2 != 9);
  if (v5)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0u;
    *a1 = 0x3FF0000000000000;
    *(a1 + 32) = 0x3FF0000000000000;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0x3FF0000000000000;
    v7 = *(&v10 + 1);
    *(a1 + 16) = v9;
    *(a1 + 40) = v7;
    return;
  }

LABEL_12:
  sub_254B48550(a1, &v8, 0);
}

double sub_254B48D5C(double *a1, double *a2)
{
  v4 = 0;
  v5 = 0.0;
  v6 = a2;
  v7 = a2;
  do
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = *v9;
      v9 += 3;
      v5 = v5 + (v10 + v7[v8]) * (v10 + v7[v8]);
      ++v8;
    }

    while (v8 != 3);
    ++v4;
    v7 += 3;
    ++v6;
  }

  while (v4 != 3);
  v11 = sqrt(v5);
  if (v11 > 0.001)
  {
    printf("Matrix is not skew-symmetric by %f.\n", v11);
  }

  *a1 = (a2[7] - a2[5]) * 0.5;
  a1[1] = (a2[2] - a2[6]) * 0.5;
  a1[2] = (a2[3] - a2[1]) * 0.5;
  return v11;
}

double sub_254B48E40(uint64_t a1, float64x2_t *a2)
{
  result = a2[1].f64[0];
  v3 = *a2;
  v4 = vnegq_f64(*a2);
  *a1 = 0;
  *(a1 + 16) = v3.f64[1];
  *(a1 + 8) = -result;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3.f64[0];
  *(a1 + 64) = 0;
  return result;
}

void sub_254B48E7C(void *a1, uint64_t *a2, const void *a3)
{
  sub_254B49164(a1, 9uLL);
  sub_254B49164(a2, 3uLL);
  sub_254B35394(v39, 9uLL);
  sub_254B35394(v38, 3uLL);
  sub_254B35394(v37, 3uLL);
  sub_254B35394(v36, 9uLL);
  sub_254B35394(__vl, 9uLL);
  sub_254B35394(&__p, 0x78uLL);
  __ldvr = 3;
  __lda = 3;
  v6 = __p;
  v29 = 0;
  __lwork = (v34 - __p) >> 3;
  __jobvr = 78;
  __jobvl = 86;
  v7 = v39[0];
  memmove(v39[0], a3, 0x48uLL);
  dgeev_(&__jobvl, &__jobvr, &__lda, v7, &__lda, v38[0], v37[0], __vl[0], &__lda, v36[0], &__ldvr, v6, &__lwork, &v29);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v38[0];
  v12 = v37[0];
  v13 = *a2;
  v14 = __vl[0];
  v15 = *a1 + 8;
  do
  {
    v16 = v12[v8];
    v17 = (v13 + 16 * v8);
    *v17 = v11[v8];
    v17[1] = v16;
    if (*&v12[v8] == 0.0)
    {
      v18 = 0;
      v19 = (v15 + 16 * v10);
      do
      {
        *(v19 - 1) = *&v14[v10 + v18];
        *v19 = 0;
        v19 += 2;
        ++v18;
      }

      while (v18 != 3);
      v10 += 3;
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        v20 = 0;
        v21 = &v14[v10 + 3];
        v22 = (v15 + 16 * (v10 + 3));
        v23 = &v14[v10];
        v24 = (v15 + 16 * v10);
        do
        {
          v25 = -v21[v20];
          *(v24 - 1) = v23[v20];
          *v24 = v25;
          v26 = v21[v20];
          *(v22 - 1) = v23[v20];
          *v22 = v26;
          ++v20;
          v22 += 2;
          v24 += 2;
        }

        while (v20 != 3);
        v10 += 6;
      }

      v9 = 1;
    }

    ++v8;
  }

  while (v8 != 3);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (__vl[0])
  {
    __vl[1] = __vl[0];
    operator delete(__vl[0]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }
}

void sub_254B490D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v29 = *(v27 - 136);
  if (v29)
  {
    *(v27 - 128) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 112);
  if (v30)
  {
    *(v27 - 104) = v30;
    operator delete(v30);
  }

  v31 = *v26;
  if (*v26)
  {
    *(v26 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B49164(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_254B49194(a1, a2 - v2);
  }
}

void sub_254B49194(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_254B32E20();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254B36108(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

double sub_254B492A8(long double a1, long double a2)
{
  v4 = hypot(a1, a2);
  v5 = log(v4);
  atan2(a2, a1);
  return v5;
}

void sub_254B492F4(double a1, double a2)
{
  v2[0] = a1;
  v2[1] = a2;
  sub_254B4931C(v2);
}

void sub_254B4931C(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    exp(v1);
    return;
  }

  if (fabs(v1) == INFINITY)
  {
    if (v1 >= 0.0)
    {
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        return;
      }
    }

    else if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v2 = 1.0;
    }
  }

  v3 = v2;
  exp(v1);
  __sincos_stret(v3);
}

void *sub_254B49448(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B360CC(result, a2);
  }

  return result;
}

void sub_254B494A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B494C0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B360CC(result, a2);
  }

  return result;
}

void sub_254B49528(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B49544(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B360CC(result, a2);
  }

  return result;
}

void sub_254B495A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_254B495BC(uint64_t a1, double *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2[7];
  v4 = a2[8];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = v5 * v4 - v3 * v6;
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = v3 * v12 - v9 * v4;
  v25 = v8;
  v26 = v13;
  v14 = v9 * v6 - v5 * v12;
  v27 = v14;
  v15 = v13 * v11 + v10 * v8 + v7 * v14;
  if (fabs(v15) >= 2.22044605e-16)
  {
    v25 = v8 / v15;
    v26 = v13 / v15;
    v27 = v14 / v15;
    v28 = (v7 * v6 - v11 * v4) / v15;
    v29 = (v10 * v4 - v7 * v12) / v15;
    v30 = (v11 * v12 - v10 * v6) / v15;
    v31 = (v11 * v3 - v7 * v5) / v15;
    v32 = (v7 * v9 - v10 * v3) / v15;
    v33 = (v10 * v5 - v11 * v9) / v15;
  }

  for (i = 0; i != 3; ++i)
  {
    v17 = 0;
    v18 = &v25;
    do
    {
      v19 = 0;
      v20 = 0.0;
      v21 = v18;
      do
      {
        v22 = *v21;
        v21 += 3;
        v20 = v20 + *(a3 + v19) * v22;
        v19 += 8;
      }

      while (v19 != 24);
      *(v34 + 3 * i + v17++) = v20;
      ++v18;
    }

    while (v17 != 3);
    a3 += 24;
  }

  v23 = v34[3];
  *(a1 + 32) = v34[2];
  *(a1 + 48) = v23;
  *(a1 + 64) = v35;
  result = v34[1];
  *a1 = v34[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254B49738(float64_t *a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  __a = *a3;
  v46 = v7;
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v51 = v6;
  v52 = v9;
  v10 = *(a3 + 56);
  v47 = *(a3 + 48);
  v48 = v5;
  v49 = v8;
  v50 = v10;
  v53 = *(a3 + 64);
  __n = 3;
  __lda = 3;
  __lwork = 96;
  __k = 3;
  __info = 0;
  p_a = &__a;
  dgerqf_(&__lda, &__n, &__a, &__lda, __tau, __work, &__lwork, &__info);
  v12 = 0;
  v13 = a1;
  do
  {
    v14 = 0;
    v15 = p_a;
    do
    {
      v16 = 0.0;
      if (v14 >= v12)
      {
        v16 = *v15;
      }

      v13[v14++] = v16;
      v15 += 3;
    }

    while (v14 != 3);
    ++v12;
    v13 += 3;
    ++p_a;
  }

  while (v12 != 3);
  v35 = 3;
  result = dorgrq_(&__lda, &__n, &__k, &__a, &__lda, __tau, __work, &v35, &__info);
  v18 = 0;
  v19 = v46;
  v20 = v47;
  v21 = v48;
  *a2 = __a;
  *(a2 + 8) = v21;
  v22 = v49;
  v23 = v50;
  *(a2 + 48) = v20;
  *(a2 + 56) = v23;
  v24 = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v19;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 64) = v53;
  v25.f64[0] = *a1;
  v25.f64[1] = a1[4];
  __asm
  {
    FMOV            V1.2D, #-1.0
    FMOV            V2.2D, #1.0
  }

  v43 = vbslq_s8(vcgtzq_f64(v25), _Q2, _Q1);
  v32 = -1.0;
  if (a1[8] > 0.0)
  {
    v32 = 1.0;
  }

  v44 = v32;
  do
  {
    v33 = 0;
    v34 = *&v43.i64[v18];
    do
    {
      a1[v33] = *&v43.i64[v33] * a1[v33];
      *(a2 + v33 * 8) = v34 * *(a2 + v33 * 8);
      ++v33;
    }

    while (v33 != 3);
    ++v18;
    a2 += 24;
    a1 += 3;
  }

  while (v18 != 3);
  return result;
}

uint64_t sub_254B49930(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double a5)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  do
  {
    v8 = 0;
    v9 = a4;
    do
    {
      v10 = 0;
      v11 = 0.0;
      v12 = v9;
      do
      {
        v13 = *v12;
        v12 += 3;
        v11 = v11 + *(a3 + v10) * v13;
        v10 += 8;
      }

      while (v10 != 24);
      *&v18[3 * v7 + v8++] = v11;
      ++v9;
    }

    while (v8 != 3);
    ++v7;
    a3 += 24;
  }

  while (v7 != 3);
  result = sub_254B49738(a2, a1, v18);
  v15 = (a2 + 64);
  v16 = vld1q_dup_f64(v15);
  v17 = 0;
  if (a5 <= 0.0)
  {
    do
    {
      *(a2 + v17) = vdivq_f64(*(a2 + v17), v16);
      v17 += 16;
    }

    while (v17 != 64);
  }

  else
  {
    do
    {
      *(a2 + v17) = vdivq_f64(*(a2 + v17), v16);
      v17 += 16;
    }

    while (v17 != 64);
  }

  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

void sub_254B49A50(uint64_t a1, void *a2, uint64_t a3, float64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2[1] - *a2;
  if (v9)
  {
    v18 = 0x86BCA1AF286BCA1BLL * (v9 >> 4);
    if (sub_254B30264(a1))
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
    }

    else
    {
      v19 = 0;
    }

    v39 = a3;
    if (a3)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    sub_254B49D84((a1 + 24), v20 + v18);
    sub_254B49D84((a1 + 72), v20 + v18);
    sub_254B4A114(__p, v18);
    v21 = 0;
    v22 = 0;
    v44[1] = 0.0;
    v44[3] = 0.0;
    v46 = 0;
    v47 = 0;
    v48 = 0x3FF0000000000000;
    v23.f64[0] = a4;
    v44[2] = (a4 + -1.0) * 0.5;
    v23.f64[1] = a5 + -1.0;
    v24 = vmulq_f64(v23, xmmword_254B8B200);
    v44[0] = v24.f64[0];
    v45 = v24;
    v25 = v18 - 1;
    if (v18 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v18;
    }

    v27 = 72 * v20;
    v28 = v26;
    do
    {
      sub_254B49930(__p[0] + v21, *(a1 + 72) + v27, *a2 + v22, v44, 0.001);
      v27 += 72;
      v22 += 304;
      v21 += 72;
      --v28;
    }

    while (v28);
    if (v20)
    {
      sub_254B49930(v42, v43, v39, v44, 0.001);
      sub_254B495BC(*(a1 + 24) + 72 * v20, __p[0], v42);
    }

    else
    {
      v29 = *(a1 + 24);
      *v29 = 0x3FF0000000000000;
      v29[1] = 0;
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = 0x3FF0000000000000;
      v29[5] = 0;
      v29[6] = 0;
      v29[7] = 0;
      v29[8] = 0x3FF0000000000000;
    }

    if (v18 >= 2)
    {
      v30 = 0;
      v31 = 72 * v20 + 72;
      do
      {
        sub_254B495BC(*(a1 + 24) + v31, (__p[0] + v30 + 72), __p[0] + v30);
        v31 += 72;
        v30 += 72;
        --v25;
      }

      while (v25);
    }

    sub_254B49DC8(a1, v20 + v18, MEMORY[0x277CC0898]);
    v32 = 24 * v20;
    v33 = 112;
    v34 = v26;
    do
    {
      v35 = *a2 + v33;
      v36 = *a1 + v32;
      v37 = *v35;
      *(v36 + 16) = *(v35 + 16);
      *v36 = v37;
      v32 += 24;
      v33 += 304;
      --v34;
    }

    while (v34);
    sub_254B49E04(a1 + 96, v20 + v18, 1);
    *(a1 + 120) = a8;
    *(a1 + 128) = a9;
    v38 = (*(a1 + 72) + 72 * v20 + 40);
    do
    {
      *(v38 - 3) = *(v38 - 3) - a6;
      *v38 = *v38 - a7;
      v38 += 9;
      --v26;
    }

    while (v26);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}