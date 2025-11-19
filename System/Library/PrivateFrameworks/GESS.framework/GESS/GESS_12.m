void sub_24BD84B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  v62 = *(v60 - 200);
  if (v62)
  {
    *(v60 - 192) = v62;
    operator delete(v62);
  }

  v63 = *(v60 - 176);
  if (v63)
  {
    operator delete(v63);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD84D00(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_24BC8E01C();
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
      sub_24BD8677C(a1, v10);
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

void *sub_24BD84DD4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_24BD8677C(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD84E74(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_24BD8677C(a1, v4 >> 3);
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

uint64_t sub_24BD84F48(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v5 = a2;
  do
  {
    result = v5;
    v5 = *(v4 + 4 * v5);
  }

  while (result != v5);
  *(v4 + 4 * a2) = result;
  v7 = a3;
  do
  {
    v8 = v7;
    v7 = *(v4 + 4 * v7);
  }

  while (v8 != v7);
  *(v4 + 4 * a3) = v8;
  if (result != v8)
  {
    v9 = a1[3];
    v10 = *(v9 + 4 * result);
    v11 = *(v9 + 4 * v8);
    if (result <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = result;
    }

    if (result >= v8)
    {
      result = v8;
    }

    else
    {
      result = result;
    }

    *(v4 + 4 * v12) = result;
    if (v11 == v10)
    {
      ++*(v9 + 4 * result);
    }
  }

  return result;
}

size_t *sub_24BD84FBC(size_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v15 = result;
    if (v1 != v2)
    {
      sub_24BC8F4C8(result, 0xAAAAAAAAAAAAAAABLL * (v4 >> 3));
    }

    v6 = 8 * (v4 >> 3);
    v11 = 0;
    v12 = v6;
    v13 = v6;
    v14 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v3 >> 3))
    {
      v7 = result[1] - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      v9 = *v5;
      *v5 = v8;
      v5[1] = v6;
      v10 = v5[2];
      v5[2] = 0;
      v13 = v9;
      v14 = v10;
      v11 = v9;
      v12 = v9;
    }

    return sub_24BC91E14(&v11);
  }

  return result;
}

void sub_24BD850A8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BD85094);
}

void sub_24BD850B8(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_24BD87F84(a1, a2 - v3, a3);
  }
}

BOOL sub_24BD850E8(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, _DWORD *a6)
{
  v11 = (*(a2 + 8) - *a2) >> 4;
  v63 = v11;
  v12 = v11;
  sub_24BD85598(a4, v11);
  v53 = a6;
  *a6 = 0;
  v62 = a1;
  memset(v61, 0, sizeof(v61));
  v60[0] = &v63;
  v60[1] = &v63 + 1;
  v60[2] = a4;
  v60[3] = a2;
  v60[4] = a3;
  v57 = 0;
  v58 = 0;
  v13 = 3;
  v59 = 0;
  do
  {
    while (!v11)
    {
      if (++v13 == 9)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v14 = 0;
    v15 = *a1;
    do
    {
      if (*(v15 + 24 * v14 + 8) != *(v15 + 24 * v14))
      {
        LODWORD(v16) = 0;
        do
        {
          if (sub_24BD855C8(&v62, v14, v16, v13, &v57))
          {
            __p = 0;
            v55 = 0;
            v56 = 0;
            sub_24BD857D0(v60, &v57, &__p);
            v17 = __p;
            if (__p != v55)
            {
              sub_24BD3CAF0(v61, &__p);
              v17 = __p;
            }

            if (v17)
            {
              v55 = v17;
              operator delete(v17);
            }
          }

          v16 = (v16 + 1);
          v15 = *a1;
        }

        while (v16 < (*(*a1 + 24 * v14 + 8) - *(*a1 + 24 * v14)) >> 3);
      }

      ++v14;
    }

    while (v14 != v11);
    ++v13;
  }

  while (v13 != 9);
  v21 = 0;
  v22 = 0;
  v23 = *a1;
  do
  {
    v24 = *(v23 + 24 * v21);
    v25 = *(v23 + 24 * v21 + 8) - v24;
    if (v25)
    {
      v26 = 0;
      v27 = 0;
      v28 = v25 >> 3;
      do
      {
        v29 = (v24 + 8 * v26);
        if ((v29[1] & 1) == 0)
        {
          v30 = *(v23 + 24 * *v29);
          v31 = *(v23 + 24 * *v29 + 8);
          v32 = v31 - v30;
          if (v31 == v30)
          {
            goto LABEL_24;
          }

          v33 = 0;
          v34 = v32 >> 3;
          v35 = 1;
          while (v21 != *(v30 + 8 * v33))
          {
            v33 = v35;
            if (v34 <= v35++)
            {
              goto LABEL_24;
            }
          }

          v37 = v30 + 8 * v33;
          if (*(v37 + 4) == 1)
          {
            *(v29 + 5) = 1;
            *(v37 + 5) = 1;
          }
        }

        v26 = ++v27;
      }

      while (v28 > v27);
    }

    v22 = ++v21 >= v11;
  }

  while (v21 != v11);
  v38 = 0;
  do
  {
    v39 = *a1;
    v40 = *a1 + 24 * v38;
    v42 = *v40;
    v41 = *(v40 + 8);
    if (*v40 != v41)
    {
      v43 = v42 + 8;
      while (*(v43 - 3))
      {
        v44 = v43 == v41;
        v43 += 8;
        if (v44)
        {
          v42 = *(v40 + 8);
          goto LABEL_53;
        }
      }

      v42 = v43 - 8;
      if (v43 - 8 != v41 && v43 != v41)
      {
        do
        {
          if (v43[5])
          {
            v45 = *v43;
            *(v42 + 2) = *(v43 + 2);
            *v42 = v45;
            v42 += 8;
          }

          v43 += 8;
        }

        while (v43 != v41);
        v39 = *a1;
      }
    }

LABEL_53:
    if (v42 != *(v39 + 24 * v38 + 8))
    {
      v46 = *(v39 + 24 * v38 + 8);
      v47 = *(v40 + 8);
      v48 = v47 - v46;
      if (v47 != v46)
      {
        memmove(v42, v46, v48 - 2);
      }

      *(v40 + 8) = &v42[v48];
    }

    ++v38;
  }

  while (v38 != v12);
  v49 = 0;
  v18 = 0;
  v50 = *a1;
  do
  {
    if (*(v50 + 24 * v49 + 8) != *(v50 + 24 * v49))
    {
      LODWORD(v51) = 0;
      do
      {
        if ((sub_24BD855C8(&v62, v49, v51, 0, &v57) & 1) != 0 && (v58 - v57) <= 0x30)
        {
          __p = 0;
          v55 = 0;
          v56 = 0;
          sub_24BD857D0(v60, &v57, &__p);
          v52 = __p;
          if (__p != v55)
          {
            sub_24BD3CAF0(v61, &__p);
            v52 = __p;
          }

          if (v52)
          {
            v55 = v52;
            operator delete(v52);
          }

          ++v18;
        }

        v51 = (v51 + 1);
        v50 = *a1;
      }

      while (v51 < (*(*a1 + 24 * v49 + 8) - *(*a1 + 24 * v49)) >> 3);
    }

    ++v49;
  }

  while (v49 != v12);
LABEL_17:
  *v53 = v18;
  if (HIDWORD(v63) != (*(a4 + 1) - *a4) >> 4)
  {
    sub_24BD85598(a4, HIDWORD(v63));
  }

  v19 = v63;
  if (v63 != (*(a3 + 8) - *a3) >> 4)
  {
    sub_24BC97D30(a3, v63);
    v19 = v63;
  }

  if (v19 != (*(a2 + 8) - *a2) >> 4)
  {
    sub_24BC97D30(a2, v19);
  }

  sub_24BD85D70(a4);
  sub_24BD85E80(a3);
  sub_24BD85E80(a2);
  sub_24BD7AD48(a4, a2, a3);
  v22 = 1;
LABEL_24:
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  v60[0] = v61;
  sub_24BC8EE84(v60);
  return v22;
}

void sub_24BD85548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  a17 = &a22;
  sub_24BC8EE84(&a17);
  _Unwind_Resume(a1);
}

void sub_24BD85598(void *a1, unint64_t a2)
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
    sub_24BD8C4B4(a1, a2 - v2);
  }
}

uint64_t sub_24BD855C8(uint64_t **a1, unsigned int a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *a5;
  *(a5 + 8) = *a5;
  v10 = *(**a1 + 24 * a2);
  v11 = a2;
  do
  {
    if ((*(v10 + 8 * a3 + 4) & 1) != 0 || a4 && a4 <= (v9 - *a5) >> 3)
    {
      goto LABEL_30;
    }

    v12 = a3;
    v13 = v11 | (a3 << 32);
    v14 = *(a5 + 16);
    if (v9 >= v14)
    {
      v15 = (v9 - *a5) >> 3;
      if ((v15 + 1) >> 61)
      {
        sub_24BC8E01C();
      }

      v16 = v14 - *a5;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        sub_24BC91F60(a5, v18);
      }

      v19 = (8 * v15);
      *v19 = v13;
      v9 = (8 * v15 + 8);
      v20 = *(a5 + 8) - *a5;
      v21 = v19 - v20;
      memcpy(v19 - v20, *a5, v20);
      v22 = *a5;
      *a5 = v21;
      *(a5 + 8) = v9;
      *(a5 + 16) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v9++ = v13;
    }

    v23 = **a1;
    v24 = *(*(v23 + 24 * v11) + 8 * v12);
    *(a5 + 8) = v9;
    v10 = *(v23 + 24 * v24);
    v25 = *(v23 + 24 * v24 + 8) - v10;
    v26 = v25 >> 3;
    if (!(v25 >> 3))
    {
      goto LABEL_30;
    }

    v27 = 0;
    v28 = v25 & 0x7FFFFFFF8;
    v29 = 1;
    while (*(v10 + v27) != v11)
    {
      v27 += 8;
      ++v29;
      if (v28 == v27)
      {
        goto LABEL_30;
      }
    }

    if (v26 == 1)
    {
      goto LABEL_30;
    }

    a3 = v29 % v26;
    v11 = v24;
  }

  while (v24 != v8);
  v30 = *a5;
  if (a4 && a4 != (v9 - v30) >> 3)
  {
LABEL_30:
    result = 0;
    *(a5 + 8) = *a5;
    return result;
  }

  if (v30 == v9)
  {
    return 1;
  }

  result = 1;
  do
  {
    v32 = *v30;
    v33 = *(v30 + 1);
    v30 += 8;
    *(*(v23 + 24 * v32) + 8 * v33 + 4) = 1;
  }

  while (v30 != v9);
  return result;
}

void sub_24BD857D0(unsigned int **a1, char **a2, const void **a3)
{
  a3[1] = *a3;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = v5 >> 3;
  if ((v5 >> 3) >= 3)
  {
    v7 = a3;
    v8 = a1;
    while (v5 != 32)
    {
      v9 = v8[3];
      v10 = *v9;
      if (v6 < 6)
      {
        v50 = 0;
        v51 = 0uLL;
        v52 = v3;
        v53 = 0uLL;
        do
        {
          v54 = *v52;
          v52 += 8;
          v51 = vaddq_f32(v51, *(v10 + 16 * v54));
          v55 = *(*v8[4] + 16 * v54);
          v53 = vaddq_f32(v53, v55);
          ++v50;
        }

        while (v50 < v6);
        v56 = **v8;
        v57 = (v56 + 1);
        **v8 = v57;
        if (v57 > (*(v9 + 1) - v10) >> 4)
        {
          v89 = v53;
          v85 = v51;
          sub_24BC97D30(v9, v57);
          sub_24BC97D30(v8[4], **v8);
          v51 = v85;
          v53 = v89;
          v3 = *a2;
          v4 = a2[1];
          v10 = *v8[3];
        }

        v55.f32[0] = ((v4 - v3) >> 3);
        *(v10 + 16 * v56) = vdivq_f32(v51, vdupq_lane_s32(*v55.f32, 0));
        v58 = vmulq_f32(v53, v53);
        v58.i32[3] = 0;
        v59 = vpaddq_f32(v58, v58);
        v60 = vpaddq_f32(v59, v59);
        if (v60.f32[0] <= 0.0)
        {
          v61 = xmmword_24BFBD1C0;
        }

        else
        {
          v61 = vdivq_f32(v53, vsqrtq_f32(v60));
        }

        *(*v8[4] + 16 * v56) = v61;
        v62 = *a2;
        v63 = a2[1];
        if (v63 != *a2)
        {
          v64 = 0;
          v65 = v56;
          v66 = 1;
          do
          {
            v68 = v8[1];
            v67 = v8[2];
            v69 = *v68;
            v70 = (v69 + 1);
            *v68 = v70;
            v71 = *v67;
            if (v70 > (*(v67 + 1) - *v67) >> 4)
            {
              sub_24BD85598(v67, v70);
              v62 = *a2;
              v63 = a2[1];
              v71 = *v8[2];
            }

            v72 = *&v62[8 * v64];
            v64 = v66;
            v73 = *&v62[8 * (v66 % ((v63 - v62) >> 3))];
            v74 = (v71 + 16 * v69);
            *v74 = v72;
            v74[1] = v73;
            v74[2] = v65;
            v74[3] = v65;
            v76 = v7[1];
            v75 = v7[2];
            if (v76 >= v75)
            {
              v78 = *v7;
              v79 = v76 - *v7;
              v80 = (v79 >> 2) + 1;
              if (v80 >> 62)
              {
                sub_24BC8E01C();
              }

              v81 = v75 - v78;
              if (v81 >> 1 > v80)
              {
                v80 = v81 >> 1;
              }

              if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v82 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v82 = v80;
              }

              if (v82)
              {
                sub_24BC92E0C(v7, v82);
              }

              v83 = (4 * (v79 >> 2));
              *v83 = v69;
              v77 = v83 + 1;
              memcpy(0, v78, v79);
              v84 = *v7;
              *v7 = 0;
              v7[1] = v77;
              v7[2] = 0;
              if (v84)
              {
                operator delete(v84);
              }

              v8 = a1;
            }

            else
            {
              *v76 = v69;
              v77 = v76 + 1;
            }

            v7[1] = v77;
            v62 = *a2;
            v63 = a2[1];
            ++v66;
          }

          while (v64 < (v63 - *a2) >> 3);
        }

        return;
      }

      LODWORD(v11) = 0;
      v12 = -1;
      v13 = 2;
      v14 = INFINITY;
      do
      {
        v15 = 0.0;
        v16 = 4;
        v17 = v13;
        do
        {
          v18 = *(v10 + 16 * *&v3[8 * ((v17 - 1) % v6)]);
          v19 = vsubq_f32(*(v10 + 16 * *&v3[8 * ((v17 - 2) % v6)]), v18);
          v20 = vmulq_f32(v19, v19);
          v20.i32[3] = 0;
          v21 = vpaddq_f32(v20, v20);
          v22 = vpaddq_f32(v21, v21);
          v23 = xmmword_24BFBD1C0;
          if (v22.f32[0] > 0.0)
          {
            v23 = vdivq_f32(v19, vsqrtq_f32(v22));
          }

          v24 = vsubq_f32(*(v10 + 16 * *&v3[8 * (v17 % v6)]), v18);
          v25 = vmulq_f32(v24, v24);
          v25.i32[3] = 0;
          v26 = vpaddq_f32(v25, v25);
          v27 = vpaddq_f32(v26, v26);
          v28 = xmmword_24BFBD1C0;
          if (v27.f32[0] > 0.0)
          {
            v28 = vdivq_f32(v24, vsqrtq_f32(v27));
          }

          v29 = vmulq_f32(v23, v28);
          v29.i32[3] = 0;
          v30 = (acosf(vaddv_f32(*&vpaddq_f32(v29, v29))) * 180.0) / 3.14159265;
          v31 = fabs(v30 + -90.0) + v15;
          v15 = v31;
          ++v17;
          --v16;
        }

        while (v16);
        if (v14 > v15)
        {
          v12 = v11;
          v14 = v31;
        }

        v11 = (v11 + 1);
        ++v13;
      }

      while (v6 > v11);
      v8 = a1;
      v33 = a1[1];
      v32 = a1[2];
      v34 = *v33;
      v35 = (v34 + 1);
      *v33 = v35;
      v36 = *v32;
      if (v35 > (*(v32 + 1) - *v32) >> 4)
      {
        sub_24BD85598(v32, v35);
        v3 = *a2;
        v4 = a2[1];
        v36 = *a1[2];
      }

      v37 = 0;
      v5 = v4 - v3;
      v6 = (v4 - v3) >> 3;
      v38 = v36 + 16 * v34;
      do
      {
        v39 = &v3[8 * ((v12 + v37) % v6)];
        *(v38 + 4 * v37) = *v39;
        if (v37 && v37 != 3)
        {
          *v39 = -1;
        }

        ++v37;
      }

      while (v37 != 4);
      v40 = v3;
      v7 = a3;
      if (v3 != v4)
      {
        v40 = v3;
        while (*v40 != -1)
        {
          v40 += 8;
          if (v40 == v4)
          {
            goto LABEL_35;
          }
        }

        if (v40 != v4)
        {
          for (i = v40 + 8; i != v4; i += 8)
          {
            if (*i != -1)
            {
              *v40 = *i;
              *(v40 + 1) = *(i + 1);
              v40 += 8;
            }
          }
        }
      }

      if (v40 != v4)
      {
        a2[1] = v40;
        v5 = v40 - v3;
        v6 = (v40 - v3) >> 3;
        v4 = v40;
      }

LABEL_35:
      if (v6 <= 2)
      {
        return;
      }
    }

    v43 = v8[1];
    v42 = v8[2];
    v44 = *v43;
    v45 = (v44 + 1);
    *v43 = v45;
    v46 = *v42;
    if (v45 > (*(v42 + 1) - *v42) >> 4)
    {
      sub_24BD85598(v42, v45);
      v3 = *a2;
      v46 = *v8[2];
    }

    v47 = 0;
    v48 = v46 + 16 * v44;
    do
    {
      v49 = *v3;
      v3 += 8;
      *(v48 + v47) = v49;
      v47 += 4;
    }

    while (v47 != 16);
  }
}

void sub_24BD85D70(void *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v5 = v4 >> 4;
    v10 = a1;
    if (v1 != v2)
    {
      sub_24BCA1868(a1, v4 >> 4);
    }

    __p = 0;
    v7 = 16 * v5;
    v8 = 16 * v5;
    v9 = 0;
    if (v3 >> 4)
    {
      sub_24BD81724(a1, &__p);
      if (v8 != v7)
      {
        v8 += (v7 - v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD85E34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BD85E24);
}

void sub_24BD85E80(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v5 = v4 >> 4;
    v10 = a1;
    if (v1 != v2)
    {
      sub_24BCA1868(a1, v4 >> 4);
    }

    __p = 0;
    v7 = 16 * v5;
    v8 = 16 * v5;
    v9 = 0;
    if (v3 >> 4)
    {
      sub_24BCA20D0(a1, &__p);
      if (v8 != v7)
      {
        v8 += (v7 - v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD85F44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BD85F34);
}

BOOL sub_24BD85F90(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v25 = -1;
    v5 = strlen(off_27F078FB8[0]);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_24BC8DF40();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v24 = v5;
    if (v5)
    {
      memmove(&__p, off_27F078FB8[0], v5);
    }

    *(&__p + v6) = 0;
    sub_24BCB1F74(a1, &v25, &__p);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
    LOBYTE(v26) = 0;
    sub_24BC9FEFC(&__p, v7);
    if (*(a1 + 136) != *(a1 + 128))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v8 >> 6;
        v11 = 1 << v8;
        if ((*(__p + (v8 >> 6)) & (1 << v8)) == 0)
        {
          v26 = v9 - 1;
          if (*(sub_24BCB9024(a1 + 104, &v26) + 12) != -1)
          {
            *(__p + v10) |= v11;
            v26 = v9 - 1;
            v13 = sub_24BCB9024(a1 + 104, &v26);
            *(__p + ((*v13 >> 3) & 0x1FFFFFF8)) |= 1 << *v13;
            v26 = v9 - 1;
            v14 = sub_24BC9ECE4(a1, *(a1 + 180), v8);
            if ((*v14 & v15) == 0)
            {
              v16 = sub_24BCB9024(a1 + 104, &v26);
              v17 = sub_24BC9ECE4(a1, *(a1 + 180), *v16);
              if ((*v17 & v18) == 0)
              {
                v19 = (*(a1 + 32) + 16 * *a2);
                v21 = *v19;
                v20 = v19[1];
                if (v20)
                {
                  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v20);
                }

                if ((*(*(v21 + 40) + 8 * v10) & v11) != 0)
                {
                  v26 = v9 - 1;
                  sub_24BD774E0(a1, &v26, &v25);
                }
              }
            }
          }
        }

        v8 = v9;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v9++);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  return v2 != -1;
}

void sub_24BD8621C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD86254(uint64_t a1, float *a2, _DWORD *a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  LOBYTE(__p) = 0;
  sub_24BC9FEFC(&v42, v6);
  if (*(a1 + 136) != *(a1 + 128))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(v42 + (v7 >> 6)) & (1 << v7)) == 0)
      {
        LODWORD(__p) = v8 - 1;
        if (*(sub_24BCB9024(a1 + 104, &__p) + 12) != -1)
        {
          *(v42 + (v7 >> 6)) |= 1 << v7;
          LODWORD(__p) = v8 - 1;
          v10 = sub_24BCB9024(a1 + 104, &__p);
          *(v42 + ((*v10 >> 3) & 0x1FFFFFF8)) |= 1 << *v10;
          LODWORD(__p) = v8 - 1;
          v11 = sub_24BC9ECE4(a1, *(a1 + 180), v7);
          if ((*v11 & v12) == 0)
          {
            v13 = sub_24BCB9024(a1 + 104, &__p);
            v14 = sub_24BC9ECE4(a1, *(a1 + 180), *v13);
            if ((*v14 & v15) == 0)
            {
              __p = 0;
              v40 = 0;
              v41 = 0;
              *&v36[8] = 0;
              v37 = 0;
              v38 = 0;
              *v36 = v8 - 1;
              v16 = sub_24BCB9024(a1 + 104, v36);
              sub_24BCB1D48(a1, (v16 + 16), &__p);
              *v36 = v8 - 1;
              v17 = sub_24BCB9024(a1 + 104, v36);
              v18 = sub_24BCB9024(a1 + 104, v17);
              sub_24BCB1D48(a1, (v18 + 16), &v36[4]);
              v19 = __p;
              v21 = v40 - __p == 12 && v37 - *&v36[4] == 12;
              if (*&v36[4])
              {
                v37 = *&v36[4];
                operator delete(*&v36[4]);
                v19 = __p;
              }

              if (v19)
              {
                v40 = v19;
                operator delete(v19);
              }

              if (v21)
              {
                LODWORD(__p) = v8 - 1;
                v22 = sub_24BD865DC(a1, &__p);
                if (v22 > *a2 && *a2 + *a2 > v22)
                {
                  sub_24BCDAEE4(a1, __p);
                  v24 = v23;
                  v25 = sub_24BCB9024(a1 + 104, &__p);
                  sub_24BCDAEE4(a1, *(v25 + 8));
                  v27 = v26;
                  v28 = sub_24BCB9024(a1 + 104, &__p);
                  sub_24BCDAEE4(a1, *v28);
                  v30 = v29;
                  v31 = sub_24BCB9024(a1 + 104, &__p);
                  v32 = sub_24BCB9024(a1 + 104, v31);
                  sub_24BCDAEE4(a1, *(v32 + 8));
                  v34 = v24 + v33;
                  if (v34 > 60.0 && v34 < 120.0 && (v27 + v30) > 60.0 && (v27 + v30) < 120.0)
                  {
                    sub_24BD774E0(a1, &__p, a3);
                  }
                }
              }
            }
          }
        }
      }

      v7 = v8;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2) > v8++);
  }

  if (v42)
  {
    operator delete(v42);
  }

  return 1;
}

void sub_24BD8657C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BD865DC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_24BCB9024(a1 + 104, a2);
  v5 = *(sub_24BCB9024(a1 + 104, v4) + 12);
  v6 = (*(a1 + 8) + 16 * *(a1 + 176));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  v16 = *(*(v8 + 40) + 16 * v5);
  v9 = *(sub_24BCB9024(a1 + 104, a2) + 12);
  v10 = (*(a1 + 8) + 16 * *(a1 + 176));
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  v13 = vsubq_f32(v16, *(*(v12 + 40) + 16 * v9));
  v14 = vmulq_f32(v13, v13);
  v14.i32[3] = 0;
  return sqrtf(vaddv_f32(*&vpaddq_f32(v14, v14)));
}

uint64_t sub_24BD866B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_24BD866F4(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      operator new();
    }

    sub_24BC8DFE8();
  }

  *result = 0;
  result[1] = 20 * a3;
  result[2] = 20 * a3;
  result[3] = 0;
  return result;
}

void sub_24BD8677C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

__n128 sub_24BD867C4(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 20);
  v10 = (a2 - 40);
  v11 = (a2 - 60);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 2);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u32[0] = *(a2 - 4);
        if (result.n128_f32[0] < *(v12 + 16))
        {
          v197 = *(v12 + 16);
          v167 = *v12;
          v91 = *(a2 - 20);
          *(v12 + 16) = *(a2 - 4);
          *v12 = v91;
          result = v167;
          *(a2 - 4) = v197;
          *(a2 - 20) = v167;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v95 = *(v12 + 36);
      v96 = *(v12 + 56);
      if (v95 >= *(v12 + 16))
      {
        if (v96 < v95)
        {
          v137 = *(v12 + 36);
          result = *(v12 + 20);
          *(v12 + 20) = *(v12 + 40);
          *(v12 + 36) = *(v12 + 56);
          *(v12 + 40) = result;
          *(v12 + 56) = v137;
          if (*(v12 + 36) < *(v12 + 16))
          {
            v201 = *(v12 + 16);
            v173 = *v12;
            *v12 = *(v12 + 20);
            *(v12 + 16) = *(v12 + 36);
            result = v173;
            *(v12 + 20) = v173;
            *(v12 + 36) = v201;
          }
        }
      }

      else
      {
        if (v96 < v95)
        {
          v199 = *(v12 + 16);
          v169 = *v12;
          *v12 = *(v12 + 40);
          *(v12 + 16) = *(v12 + 56);
          result = v169;
          *(v12 + 40) = v169;
          v97 = v199;
          goto LABEL_183;
        }

        v203 = *(v12 + 16);
        v176 = *v12;
        *v12 = *(v12 + 20);
        *(v12 + 16) = *(v12 + 36);
        *(v12 + 20) = v176;
        *(v12 + 36) = v203;
        if (v96 < *(v12 + 36))
        {
          v97 = *(v12 + 36);
          result = *(v12 + 20);
          *(v12 + 20) = *(v12 + 40);
          *(v12 + 36) = *(v12 + 56);
          *(v12 + 40) = result;
LABEL_183:
          *(v12 + 56) = v97;
        }
      }

      result.n128_u32[0] = *(a2 - 4);
      if (result.n128_f32[0] >= *(v12 + 56))
      {
        return result;
      }

      result = *(v12 + 40);
      v142 = *(v12 + 56);
      v143 = *(a2 - 4);
      *(v12 + 40) = *v9;
      *(v12 + 56) = v143;
      *(a2 - 4) = v142;
      *v9 = result;
      result.n128_u32[0] = *(v12 + 56);
      if (result.n128_f32[0] >= *(v12 + 36))
      {
        return result;
      }

      v144 = *(v12 + 36);
      result = *(v12 + 20);
      *(v12 + 20) = *(v12 + 40);
      *(v12 + 36) = *(v12 + 56);
      *(v12 + 40) = result;
      *(v12 + 56) = v144;
LABEL_187:
      result.n128_u32[0] = *(v12 + 36);
      if (result.n128_f32[0] < *(v12 + 16))
      {
        v204 = *(v12 + 16);
        v177 = *v12;
        *v12 = *(v12 + 20);
        *(v12 + 16) = *(v12 + 36);
        result = v177;
        *(v12 + 20) = v177;
        *(v12 + 36) = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_24BD87778(v12, (v12 + 20), (v12 + 40), (v12 + 60), (a2 - 20), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 479)
    {
      v98 = (v12 + 20);
      v100 = v12 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v12;
          do
          {
            result.n128_u32[0] = *(v102 + 9);
            v103 = *(v102 + 4);
            v102 = v98;
            if (result.n128_f32[0] < v103)
            {
              v170 = *v98;
              v104 = v101;
              while (1)
              {
                v105 = v12 + v104;
                *(v105 + 20) = *(v12 + v104);
                *(v105 + 36) = *(v12 + v104 + 16);
                if (!v104)
                {
                  break;
                }

                v104 -= 20;
                if (result.n128_f32[0] >= *(v105 - 4))
                {
                  v106 = v12 + v104 + 20;
                  goto LABEL_129;
                }
              }

              v106 = v12;
LABEL_129:
              *v106 = v170;
              *(v106 + 16) = result.n128_u32[0];
            }

            v98 = (v102 + 20);
            v101 += 20;
          }

          while ((v102 + 20) != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          result.n128_u32[0] = *(a1 + 36);
          v138 = *(a1 + 16);
          a1 = v98;
          if (result.n128_f32[0] < v138)
          {
            v174 = *v98;
            v139 = v98;
            do
            {
              *v139 = *(v139 - 20);
              *(v139 + 4) = *(v139 - 1);
              v140 = *(v139 - 6);
              v139 = (v139 - 20);
            }

            while (result.n128_f32[0] < v140);
            *v139 = v174;
            *(v139 + 4) = result.n128_u32[0];
          }

          v98 = (v98 + 20);
        }

        while (a1 + 20 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v107 = (v14 - 2) >> 1;
        v108 = v107;
        do
        {
          v109 = v108;
          if (v107 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = v12 + 20 * v110;
            if (2 * v109 + 2 < v14 && *(v111 + 16) < *(v111 + 36))
            {
              v111 += 20;
              v110 = 2 * v109 + 2;
            }

            v112 = v12 + 20 * v109;
            v113 = *(v112 + 16);
            if (*(v111 + 16) >= v113)
            {
              v171 = *v112;
              do
              {
                v114 = v112;
                v112 = v111;
                v115 = *v111;
                *(v114 + 16) = *(v111 + 16);
                *v114 = v115;
                if (v107 < v110)
                {
                  break;
                }

                v116 = 2 * v110;
                v110 = (2 * v110) | 1;
                v111 = v12 + 20 * v110;
                v117 = v116 + 2;
                if (v117 < v14 && *(v111 + 16) < *(v111 + 36))
                {
                  v111 += 20;
                  v110 = v117;
                }
              }

              while (*(v111 + 16) >= v113);
              *v112 = v171;
              *(v112 + 16) = v113;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        v118 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 2);
        do
        {
          v119 = 0;
          v200 = *(v12 + 16);
          v172 = *v12;
          v120 = v12;
          do
          {
            v121 = v120 + 20 * v119;
            v122 = (v121 + 20);
            v123 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 >= v118)
            {
              v119 = v123;
            }

            else
            {
              v124 = *(v121 + 36);
              v125 = *(v121 + 56);
              v126 = (v121 + 40);
              if (v124 >= v125)
              {
                v119 = v123;
              }

              else
              {
                v122 = v126;
              }
            }

            v127 = *v122;
            *(v120 + 16) = v122[1].n128_u32[0];
            *v120 = v127;
            v120 = v122;
          }

          while (v119 <= ((v118 - 2) >> 1));
          a2 -= 20;
          if (v122 == a2)
          {
            result = v172;
            v122[1].n128_u32[0] = v200;
            *v122 = v172;
          }

          else
          {
            v128 = *a2;
            v122[1].n128_u32[0] = *(a2 + 16);
            *v122 = v128;
            result = v172;
            *(a2 + 16) = v200;
            *a2 = v172;
            v129 = v122[1].n128_i64 - v12 + 4;
            if (v129 >= 21)
            {
              v130 = (-2 - 0x3333333333333333 * (v129 >> 2)) >> 1;
              v131 = v12 + 20 * v130;
              result.n128_u32[0] = v122[1].n128_u32[0];
              if (*(v131 + 16) < result.n128_f32[0])
              {
                v147 = *v122;
                do
                {
                  v132 = v122;
                  v122 = v131;
                  v133 = *v131;
                  v132[1].n128_u32[0] = *(v131 + 16);
                  *v132 = v133;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = v12 + 20 * v130;
                }

                while (*(v131 + 16) < result.n128_f32[0]);
                *v122 = v147;
                v122[1].n128_u32[0] = result.n128_u32[0];
              }
            }
          }
        }

        while (v118-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 20 * (v14 >> 1));
    v17 = *(a2 - 4);
    if (v13 >= 0xA01)
    {
      v18 = v16[1].n128_f32[0];
      if (v18 >= *(v12 + 16))
      {
        if (v17 < v18)
        {
          v180 = v16[1].n128_u32[0];
          v150 = *v16;
          v22 = *v9;
          v16[1].n128_u32[0] = *(a2 - 4);
          *v16 = v22;
          *(a2 - 4) = v180;
          *v9 = v150;
          if (v16[1].n128_f32[0] < *(v12 + 16))
          {
            v181 = *(v12 + 16);
            v151 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u32[0];
            *v12 = v23;
            v16[1].n128_u32[0] = v181;
            *v16 = v151;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v178 = *(v12 + 16);
          v148 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 4);
          *v12 = v19;
          goto LABEL_26;
        }

        v184 = *(v12 + 16);
        v154 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u32[0];
        *v12 = v26;
        v16[1].n128_u32[0] = v184;
        *v16 = v154;
        if (*(a2 - 4) < v16[1].n128_f32[0])
        {
          v178 = v16[1].n128_u32[0];
          v148 = *v16;
          v27 = *v9;
          v16[1].n128_u32[0] = *(a2 - 4);
          *v16 = v27;
LABEL_26:
          *(a2 - 4) = v178;
          *v9 = v148;
        }
      }

      v28 = v12 + 20 * v15;
      v29 = (v28 - 20);
      v30 = *(v28 - 4);
      v31 = *(a2 - 24);
      if (v30 >= *(v12 + 36))
      {
        if (v31 < v30)
        {
          v185 = *(v28 - 4);
          v155 = *v29;
          v35 = *v10;
          *(v28 - 4) = *(a2 - 24);
          *v29 = v35;
          *(a2 - 24) = v185;
          *v10 = v155;
          if (*(v28 - 4) < *(v12 + 36))
          {
            v36 = *(v12 + 20);
            v37 = *(v12 + 36);
            v38 = v29[1].n128_i32[0];
            *(v12 + 20) = *v29;
            *(v12 + 36) = v38;
            v29[1].n128_u32[0] = v37;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = *(v12 + 20);
          v33 = *(v12 + 36);
          v34 = *(a2 - 24);
          *(v12 + 20) = *v10;
          *(v12 + 36) = v34;
          goto LABEL_38;
        }

        v41 = *(v12 + 20);
        v42 = *(v12 + 36);
        v43 = v29[1].n128_i32[0];
        *(v12 + 20) = *v29;
        *(v12 + 36) = v43;
        v29[1].n128_u32[0] = v42;
        *v29 = v41;
        if (*(a2 - 24) < v29[1].n128_f32[0])
        {
          v187 = v29[1].n128_i32[0];
          v157 = *v29;
          v44 = *v10;
          v29[1].n128_u32[0] = *(a2 - 24);
          *v29 = v44;
          v32 = v157;
          v33 = v187;
LABEL_38:
          *(a2 - 24) = v33;
          *v10 = v32;
        }
      }

      v45 = v12 + 20 * v15;
      v46 = (v45 + 20);
      v47 = *(v45 + 36);
      v48 = *(a2 - 44);
      if (v47 >= *(v12 + 56))
      {
        if (v48 < v47)
        {
          v188 = *(v45 + 36);
          v158 = *v46;
          v52 = *v11;
          *(v45 + 36) = *(a2 - 44);
          *v46 = v52;
          *(a2 - 44) = v188;
          *v11 = v158;
          if (*(v45 + 36) < *(v12 + 56))
          {
            v53 = *(v12 + 40);
            v54 = *(v12 + 56);
            v55 = v46[1].n128_i32[0];
            *(v12 + 40) = *v46;
            *(v12 + 56) = v55;
            v46[1].n128_u32[0] = v54;
            *v46 = v53;
          }
        }
      }

      else
      {
        if (v48 < v47)
        {
          v49 = *(v12 + 40);
          v50 = *(v12 + 56);
          v51 = *(a2 - 44);
          *(v12 + 40) = *v11;
          *(v12 + 56) = v51;
          goto LABEL_47;
        }

        v56 = *(v12 + 40);
        v57 = *(v12 + 56);
        v58 = v46[1].n128_i32[0];
        *(v12 + 40) = *v46;
        *(v12 + 56) = v58;
        v46[1].n128_u32[0] = v57;
        *v46 = v56;
        if (*(a2 - 44) < v46[1].n128_f32[0])
        {
          v189 = v46[1].n128_i32[0];
          v159 = *v46;
          v59 = *v11;
          v46[1].n128_u32[0] = *(a2 - 44);
          *v46 = v59;
          v49 = v159;
          v50 = v189;
LABEL_47:
          *(a2 - 44) = v50;
          *v11 = v49;
        }
      }

      v60 = v16[1].n128_f32[0];
      v61 = v46[1].n128_f32[0];
      if (v60 >= v29[1].n128_f32[0])
      {
        if (v61 < v60)
        {
          v191 = v16[1].n128_u32[0];
          v161 = *v16;
          *v16 = *v46;
          v16[1].n128_u32[0] = v46[1].n128_u32[0];
          v46[1].n128_u32[0] = v191;
          *v46 = v161;
          if (v16[1].n128_f32[0] < v29[1].n128_f32[0])
          {
            v192 = v29[1].n128_u32[0];
            v162 = *v29;
            *v29 = *v16;
            v29[1].n128_u32[0] = v16[1].n128_u32[0];
            v16[1].n128_u32[0] = v192;
            *v16 = v162;
          }
        }
      }

      else
      {
        if (v61 < v60)
        {
          v190 = v29[1].n128_u32[0];
          v160 = *v29;
          *v29 = *v46;
          v29[1].n128_u32[0] = v46[1].n128_u32[0];
          goto LABEL_56;
        }

        v193 = v29[1].n128_u32[0];
        v163 = *v29;
        *v29 = *v16;
        v29[1].n128_u32[0] = v16[1].n128_u32[0];
        v16[1].n128_u32[0] = v193;
        *v16 = v163;
        if (v46[1].n128_f32[0] < v16[1].n128_f32[0])
        {
          v190 = v16[1].n128_u32[0];
          v160 = *v16;
          *v16 = *v46;
          v16[1].n128_u32[0] = v46[1].n128_u32[0];
LABEL_56:
          v46[1].n128_u32[0] = v190;
          *v46 = v160;
        }
      }

      v194 = *(v12 + 16);
      v164 = *v12;
      v62 = *v16;
      *(v12 + 16) = v16[1].n128_u32[0];
      *v12 = v62;
      result = v164;
      v16[1].n128_u32[0] = v194;
      *v16 = v164;
      goto LABEL_58;
    }

    v20 = *(v12 + 16);
    if (v20 >= v16[1].n128_f32[0])
    {
      if (v17 < v20)
      {
        v182 = *(v12 + 16);
        v152 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 4);
        *v12 = v24;
        result = v152;
        *(a2 - 4) = v182;
        *v9 = v152;
        if (*(v12 + 16) < v16[1].n128_f32[0])
        {
          v183 = v16[1].n128_u32[0];
          v153 = *v16;
          v25 = *v12;
          v16[1].n128_u32[0] = *(v12 + 16);
          *v16 = v25;
          result = v153;
          *(v12 + 16) = v183;
          *v12 = v153;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v179 = v16[1].n128_u32[0];
      v149 = *v16;
      v21 = *v9;
      v16[1].n128_u32[0] = *(a2 - 4);
      *v16 = v21;
LABEL_35:
      result = v149;
      *(a2 - 4) = v179;
      *v9 = v149;
      goto LABEL_58;
    }

    v186 = v16[1].n128_u32[0];
    v156 = *v16;
    v39 = *v12;
    v16[1].n128_u32[0] = *(v12 + 16);
    *v16 = v39;
    result = v156;
    *(v12 + 16) = v186;
    *v12 = v156;
    if (*(a2 - 4) < *(v12 + 16))
    {
      v179 = *(v12 + 16);
      v149 = *v12;
      v40 = *v9;
      *(v12 + 16) = *(a2 - 4);
      *v12 = v40;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 16);
LABEL_61:
      v63 = 0;
      v145 = *v12;
      do
      {
        v64 = *(v12 + v63 + 36);
        v63 += 20;
      }

      while (v64 < result.n128_f32[0]);
      v65 = v12 + v63;
      v66 = a2;
      if (v63 == 20)
      {
        v69 = a2;
        while (v65 < v69)
        {
          v67 = v69 - 20;
          v70 = *(v69 - 4);
          v69 -= 20;
          if (v70 < result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 20;
          v68 = *(v66 - 4);
          v66 -= 20;
        }

        while (v68 >= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v65;
      if (v65 < v67)
      {
        v71 = v67;
        do
        {
          v195 = *(v12 + 16);
          v165 = *v12;
          v72 = *v71;
          *(v12 + 16) = *(v71 + 16);
          *v12 = v72;
          *(v71 + 16) = v195;
          *v71 = v165;
          do
          {
            v73 = *(v12 + 36);
            v12 += 20;
          }

          while (v73 < result.n128_f32[0]);
          do
          {
            v74 = *(v71 - 4);
            v71 -= 20;
          }

          while (v74 >= result.n128_f32[0]);
        }

        while (v12 < v71);
      }

      v75 = (v12 - 20);
      if (v12 - 20 != a1)
      {
        v76 = *v75;
        *(a1 + 16) = *(v12 - 4);
        *a1 = v76;
      }

      *v75 = v145;
      *(v12 - 4) = result.n128_u32[0];
      if (v65 < v67)
      {
        goto LABEL_82;
      }

      v77 = sub_24BD879C0(a1, v12 - 20, result);
      if (sub_24BD879C0(v12, a2, v78))
      {
        a2 = v12 - 20;
        if (!v77)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v77)
      {
LABEL_82:
        sub_24BD867C4(a1, v12 - 20, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 16);
      if (*(v12 - 4) < result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v146 = *v12;
      if (result.n128_f32[0] >= *(a2 - 4))
      {
        v81 = v12 + 20;
        do
        {
          v12 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *(v81 + 16);
          v81 += 20;
        }

        while (result.n128_f32[0] >= v82);
      }

      else
      {
        v79 = v12;
        do
        {
          v12 = v79 + 20;
          v80 = *(v79 + 36);
          v79 += 20;
        }

        while (result.n128_f32[0] >= v80);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v84 = a2;
        do
        {
          v83 = v84 - 20;
          v85 = *(v84 - 4);
          v84 -= 20;
        }

        while (result.n128_f32[0] < v85);
      }

      while (v12 < v83)
      {
        v196 = *(v12 + 16);
        v166 = *v12;
        v86 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v86;
        *(v83 + 16) = v196;
        *v83 = v166;
        do
        {
          v87 = *(v12 + 36);
          v12 += 20;
        }

        while (result.n128_f32[0] >= v87);
        do
        {
          v88 = *(v83 - 4);
          v83 -= 20;
        }

        while (result.n128_f32[0] < v88);
      }

      v89 = (v12 - 20);
      if (v12 - 20 != a1)
      {
        v90 = *v89;
        *(a1 + 16) = *(v12 - 4);
        *a1 = v90;
      }

      a4 = 0;
      *v89 = v146;
      *(v12 - 4) = result.n128_u32[0];
    }
  }

  result.n128_u32[0] = *(v12 + 36);
  v92 = *(a2 - 4);
  if (result.n128_f32[0] >= *(v12 + 16))
  {
    if (v92 >= result.n128_f32[0])
    {
      return result;
    }

    result = *(v12 + 20);
    v135 = *(v12 + 36);
    v136 = *(a2 - 4);
    *(v12 + 20) = *v9;
    *(v12 + 36) = v136;
    *(a2 - 4) = v135;
    *v9 = result;
    goto LABEL_187;
  }

  if (v92 >= result.n128_f32[0])
  {
    v202 = *(v12 + 16);
    v175 = *v12;
    *v12 = *(v12 + 20);
    *(v12 + 16) = *(v12 + 36);
    result = v175;
    *(v12 + 20) = v175;
    *(v12 + 36) = v202;
    result.n128_u32[0] = *(a2 - 4);
    if (result.n128_f32[0] >= *(v12 + 36))
    {
      return result;
    }

    result = *(v12 + 20);
    v94 = *(v12 + 36);
    v141 = *(a2 - 4);
    *(v12 + 20) = *v9;
    *(v12 + 36) = v141;
  }

  else
  {
    v198 = *(v12 + 16);
    v168 = *v12;
    v93 = *v9;
    *(v12 + 16) = *(a2 - 4);
    *v12 = v93;
    result = v168;
    v94 = v198;
  }

  *(a2 - 4) = v94;
  *v9 = result;
  return result;
}

__n128 sub_24BD87778(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_f32[0];
  v7 = a3[1].n128_f32[0];
  if (v6 >= a1[1].n128_f32[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u32[0];
      result = *a2;
      v11 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v11;
      *a3 = result;
      a3[1].n128_u32[0] = v10;
      if (a2[1].n128_f32[0] < a1[1].n128_f32[0])
      {
        v12 = a1[1].n128_u32[0];
        result = *a1;
        v13 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v13;
        *a2 = result;
        a2[1].n128_u32[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u32[0];
      result = *a1;
      v9 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u32[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u32[0];
    result = *a1;
    v15 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v15;
    *a2 = result;
    a2[1].n128_u32[0] = v14;
    if (a3[1].n128_f32[0] < a2[1].n128_f32[0])
    {
      v8 = a2[1].n128_u32[0];
      result = *a2;
      v16 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_f32[0] < a3[1].n128_f32[0])
  {
    v17 = a3[1].n128_u32[0];
    result = *a3;
    v18 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v18;
    *a4 = result;
    a4[1].n128_u32[0] = v17;
    if (a3[1].n128_f32[0] < a2[1].n128_f32[0])
    {
      v19 = a2[1].n128_u32[0];
      result = *a2;
      v20 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v20;
      *a3 = result;
      a3[1].n128_u32[0] = v19;
      if (a2[1].n128_f32[0] < a1[1].n128_f32[0])
      {
        v21 = a1[1].n128_u32[0];
        result = *a1;
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        *a2 = result;
        a2[1].n128_u32[0] = v21;
      }
    }
  }

  result.n128_u32[0] = a5[1].n128_u32[0];
  if (result.n128_f32[0] < a4[1].n128_f32[0])
  {
    v23 = a4[1].n128_i32[0];
    result = *a4;
    v24 = a5[1].n128_u32[0];
    *a4 = *a5;
    a4[1].n128_u32[0] = v24;
    *a5 = result;
    a5[1].n128_u32[0] = v23;
    result.n128_u32[0] = a4[1].n128_u32[0];
    if (result.n128_f32[0] < a3[1].n128_f32[0])
    {
      v25 = a3[1].n128_u32[0];
      result = *a3;
      v26 = a4[1].n128_u32[0];
      *a3 = *a4;
      a3[1].n128_u32[0] = v26;
      *a4 = result;
      a4[1].n128_u32[0] = v25;
      result.n128_u32[0] = a3[1].n128_u32[0];
      if (result.n128_f32[0] < a2[1].n128_f32[0])
      {
        v27 = a2[1].n128_u32[0];
        result = *a2;
        v28 = a3[1].n128_u32[0];
        *a2 = *a3;
        a2[1].n128_u32[0] = v28;
        *a3 = result;
        a3[1].n128_u32[0] = v27;
        result.n128_u32[0] = a2[1].n128_u32[0];
        if (result.n128_f32[0] < a1[1].n128_f32[0])
        {
          v29 = a1[1].n128_u32[0];
          result = *a1;
          v30 = a2[1].n128_u32[0];
          *a1 = *a2;
          a1[1].n128_u32[0] = v30;
          *a2 = result;
          a2[1].n128_u32[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BD879C0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 20);
      v8 = *(a1 + 36);
      v9 = *(a2 - 4);
      if (v8 < *(a1 + 16))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 20);
          *(a1 + 16) = *(a1 + 36);
          *(a1 + 20) = v36;
          *(a1 + 36) = v35;
          if (*(a2 - 4) >= *(a1 + 36))
          {
            return 1;
          }

          v10 = *(a1 + 36);
          v11 = *(a1 + 20);
          v37 = *(a2 - 4);
          *(a1 + 20) = *v7;
          *(a1 + 36) = v37;
        }

        else
        {
          v10 = *(a1 + 16);
          v11 = *a1;
          v12 = *(a2 - 4);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 4) = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 36);
      v25 = *(a1 + 20);
      v26 = *(a2 - 4);
      *(a1 + 20) = *v7;
      *(a1 + 36) = v26;
      *v7 = v25;
      *(a2 - 4) = v24;
LABEL_50:
      if (*(a1 + 36) < *(a1 + 16))
      {
        v55 = *(a1 + 16);
        v56 = *a1;
        *a1 = *(a1 + 20);
        *(a1 + 16) = *(a1 + 36);
        *(a1 + 20) = v56;
        *(a1 + 36) = v55;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_24BD87778(a1, (a1 + 20), (a1 + 40), (a1 + 60), (a2 - 20), a3);
      return 1;
    }

    v19 = *(a1 + 36);
    v20 = *(a1 + 16);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 36);
        v32 = *(a1 + 20);
        *(a1 + 20) = *(a1 + 40);
        *(a1 + 36) = *(a1 + 56);
        *(a1 + 40) = v32;
        *(a1 + 56) = v31;
        if (*(a1 + 36) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 20);
          *(a1 + 16) = *(a1 + 36);
          *(a1 + 20) = v34;
          *(a1 + 36) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v47 = *(a1 + 16);
      v48 = *a1;
      *a1 = *(a1 + 20);
      *(a1 + 16) = *(a1 + 36);
      *(a1 + 20) = v48;
      *(a1 + 36) = v47;
      if (v21 >= *(a1 + 36))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 36);
      v23 = *(a1 + 20);
      *(a1 + 20) = *(a1 + 40);
      *(a1 + 36) = *(a1 + 56);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 40);
      *(a1 + 16) = *(a1 + 56);
    }

    *(a1 + 40) = v23;
    *(a1 + 56) = v22;
LABEL_47:
    if (*(a2 - 4) >= *(a1 + 56))
    {
      return 1;
    }

    v49 = a2 - 20;
    v50 = *(a1 + 56);
    v51 = *(a1 + 40);
    v52 = *(a2 - 4);
    *(a1 + 40) = *(a2 - 20);
    *(a1 + 56) = v52;
    *v49 = v51;
    *(v49 + 16) = v50;
    if (*(a1 + 56) >= *(a1 + 36))
    {
      return 1;
    }

    v53 = *(a1 + 36);
    v54 = *(a1 + 20);
    *(a1 + 20) = *(a1 + 40);
    *(a1 + 36) = *(a1 + 56);
    *(a1 + 40) = v54;
    *(a1 + 56) = v53;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 4) < *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 4);
      *a1 = *(a2 - 20);
      *(a1 + 16) = v6;
      *(a2 - 20) = v5;
      *(a2 - 4) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 40;
  v14 = *(a1 + 36);
  v15 = *(a1 + 16);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 36);
      v28 = *(a1 + 20);
      *(a1 + 20) = *v13;
      *(a1 + 36) = *(a1 + 56);
      *v13 = v28;
      *(a1 + 56) = v27;
      if (*(a1 + 36) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 20);
        *(a1 + 16) = *(a1 + 36);
        *(a1 + 20) = v30;
        *(a1 + 36) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 20);
      *(a1 + 16) = *(a1 + 36);
      *(a1 + 20) = v39;
      *(a1 + 36) = v38;
      if (v16 >= *(a1 + 36))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 36);
      v18 = *(a1 + 20);
      *(a1 + 20) = *v13;
      *(a1 + 36) = *(a1 + 56);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 56);
    }

    *v13 = v18;
    *(a1 + 56) = v17;
  }

LABEL_33:
  v40 = a1 + 60;
  if (a1 + 60 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 16);
    if (v43 < *(v13 + 16))
    {
      v58 = *v40;
      v44 = v41;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 60) = *(a1 + v44 + 40);
        *(v45 + 76) = *(a1 + v44 + 56);
        if (v44 == -40)
        {
          break;
        }

        v44 -= 20;
        if (v43 >= *(v45 + 36))
        {
          v46 = a1 + v44 + 60;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v58;
      *(v46 + 16) = v43;
      if (++v42 == 8)
      {
        return v40 + 20 == a2;
      }
    }

    v13 = v40;
    v41 += 20;
    v40 += 20;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_24BD87E30(uint64_t *a1, unsigned int a2)
{
  v4 = a2;
  v5 = sub_24BCA123C(a1, a2);
  sub_24BCA123C(v5 + 3, v4);
  if (a2)
  {
    v6 = 0;
    v7 = *a1;
    v8 = a1[3];
    do
    {
      *(v7 + 4 * v6) = v6;
      *(v8 + 4 * v6++) = 0;
    }

    while (v4 != v6);
  }

  return a1;
}

void sub_24BD87E9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD87EB8(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

void sub_24BD87F84(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = *a3;
      v12 = 16 * a2;
      v13 = &v4[a2];
      do
      {
        *v4++ = v11;
        v12 -= 16;
      }

      while (v12);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21 = a1;
    if (v10)
    {
      sub_24BCA1868(a1, v10);
    }

    v14 = (16 * v8);
    __p = 0;
    v18 = 16 * v8;
    v20 = 0;
    v15 = 16 * a2;
    v16 = *a3;
    do
    {
      *v14++ = v16;
      v15 -= 16;
    }

    while (v15);
    v19 = 16 * v8 + 16 * a2;
    sub_24BCA20D0(a1, &__p);
    if (v19 != v18)
    {
      v19 += (v18 - v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD880AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD880E4(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v8;
          v9 = (a2 - v8) >> 4;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                return sub_24BD889A4(v8, v8 + 16, a2 - 16);
              case 4:
                result = sub_24BD889A4(v8, v8 + 16, v8 + 32);
                v50 = *(a2 - 16);
                v51 = *(v8 + 32);
                if (v50 < v51)
                {
                  *(v8 + 32) = v50;
                  *(a2 - 16) = v51;
                  v52 = *(v8 + 36);
                  *(v8 + 36) = *(a2 - 12);
                  *(a2 - 12) = v52;
                  v53 = *(v8 + 40);
                  *(v8 + 40) = *(a2 - 8);
                  *(a2 - 8) = v53;
                  v54 = *(v8 + 44);
                  *(v8 + 44) = *(a2 - 4);
                  *(a2 - 4) = v54;
                  v55 = *(v8 + 32);
                  v56 = *(v8 + 16);
                  if (v55 < v56)
                  {
                    *(v8 + 16) = v55;
                    *(v8 + 32) = v56;
                    v57 = *(v8 + 36);
                    v58 = *(v8 + 40);
                    v59 = *(v8 + 20);
                    *(v8 + 20) = v57;
                    *(v8 + 24) = v58;
                    *(v8 + 36) = v59;
                    v60 = *(v8 + 28);
                    v61 = *(v8 + 44);
                    *(v8 + 28) = v61;
                    v62 = *v8;
                    v63 = v55 < *v8;
                    *(v8 + 44) = v60;
                    if (v63)
                    {
                      *v8 = v55;
                      *(v8 + 16) = v62;
                      v64 = *(v8 + 4);
                      *(v8 + 4) = v57;
                      *(v8 + 8) = v58;
                      *(v8 + 20) = v64;
                      v65 = *(v8 + 12);
                      *(v8 + 12) = v61;
                      *(v8 + 28) = v65;
                    }
                  }
                }

                return result;
              case 5:

                return sub_24BD88AF8(v8, (v8 + 16), (v8 + 32), (v8 + 48), (a2 - 16));
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v45 = *(a2 - 16);
              v46 = *v8;
              if (v45 < *v8)
              {
                *v8 = v45;
                *(a2 - 16) = v46;
                v47 = *(v8 + 4);
                *(v8 + 4) = *(a2 - 12);
                *(a2 - 12) = v47;
                v48 = *(v8 + 8);
                *(v8 + 8) = *(a2 - 8);
                *(a2 - 8) = v48;
                v49 = *(v8 + 12);
                *(v8 + 12) = *(a2 - 4);
                *(a2 - 4) = v49;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v66 = v8 + 16;
            v68 = v8 == a2 || v66 == a2;
            if (a4)
            {
              if (!v68)
              {
                v69 = 0;
                v70 = v8;
                do
                {
                  v71 = v66;
                  v72 = *(v70 + 16);
                  v73 = *v70;
                  if (v72 < *v70)
                  {
                    v74 = *(v70 + 20);
                    v75 = *(v70 + 28);
                    v76 = v69;
                    while (1)
                    {
                      v77 = v8 + v76;
                      *(v77 + 16) = v73;
                      *(v77 + 20) = *(v8 + v76 + 4);
                      *(v77 + 28) = *(v8 + v76 + 12);
                      if (!v76)
                      {
                        break;
                      }

                      v73 = *(v77 - 16);
                      v76 -= 16;
                      if (v72 >= v73)
                      {
                        v78 = v8 + v76 + 16;
                        goto LABEL_88;
                      }
                    }

                    v78 = v8;
LABEL_88:
                    *v78 = v72;
                    *(v78 + 4) = v74;
                    *(v78 + 12) = v75;
                  }

                  v66 = v71 + 16;
                  v69 += 16;
                  v70 = v71;
                }

                while (v71 + 16 != a2);
              }
            }

            else if (!v68)
            {
              v114 = (v8 + 28);
              do
              {
                v115 = v66;
                v116 = *(v7 + 16);
                v117 = *v7;
                if (v116 < *v7)
                {
                  v118 = *(v7 + 20);
                  v119 = *(v7 + 28);
                  v120 = v114;
                  do
                  {
                    v121 = v120;
                    *(v120 - 3) = v117;
                    *(v120 - 1) = *(v120 - 3);
                    v122 = *(v120 - 4);
                    v120 -= 4;
                    *v121 = v122;
                    v117 = *(v121 - 11);
                  }

                  while (v116 < v117);
                  *(v120 - 3) = v116;
                  *(v120 - 1) = v118;
                  *v120 = v119;
                }

                v66 = v115 + 16;
                v114 += 4;
                v7 = v115;
              }

              while (v115 + 16 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v79 = (v9 - 2) >> 1;
              v80 = v79;
              do
              {
                v81 = v80;
                if (v79 >= v80)
                {
                  v82 = (2 * v80) | 1;
                  v83 = v8 + 16 * v82;
                  if (2 * v81 + 2 < v9 && *v83 < *(v83 + 16))
                  {
                    v83 += 16;
                    v82 = 2 * v81 + 2;
                  }

                  v84 = v8 + 16 * v81;
                  v85 = *v83;
                  v86 = *v84;
                  if (*v83 >= *v84)
                  {
                    v87 = *(v84 + 4);
                    v88 = *(v84 + 12);
                    do
                    {
                      v89 = v84;
                      v84 = v83;
                      *v89 = v85;
                      v89[1] = *(v83 + 4);
                      v89[2] = *(v83 + 8);
                      v89[3] = *(v83 + 12);
                      if (v79 < v82)
                      {
                        break;
                      }

                      v90 = 2 * v82;
                      v82 = (2 * v82) | 1;
                      v83 = v8 + 16 * v82;
                      v91 = v90 + 2;
                      if (v91 < v9 && *v83 < *(v83 + 16))
                      {
                        v83 += 16;
                        v82 = v91;
                      }

                      v85 = *v83;
                    }

                    while (*v83 >= v86);
                    *v84 = v86;
                    *(v84 + 4) = v87;
                    *(v84 + 12) = v88;
                  }
                }

                v80 = v81 - 1;
              }

              while (v81);
              do
              {
                v92 = 0;
                v93 = *v8;
                v94 = *(v8 + 4);
                v95 = *(v8 + 8);
                v96 = *(v8 + 12);
                v97 = v8;
                do
                {
                  v98 = v97;
                  v99 = &v97[4 * v92];
                  v97 = v99 + 4;
                  v100 = 2 * v92;
                  result = (2 * v92) | 1;
                  v92 = result;
                  v101 = v100 + 2;
                  if (v101 < v9)
                  {
                    v103 = *(v99 + 8);
                    v102 = v99 + 8;
                    if (*(v102 - 4) < v103)
                    {
                      v97 = v102;
                      v92 = v101;
                    }
                  }

                  *v98 = *v97;
                  v98[1] = v97[1];
                  v98[2] = v97[2];
                  v98[3] = v97[3];
                }

                while (v92 <= ((v9 - 2) >> 1));
                if (v97 == (a2 - 16))
                {
                  *v97 = v93;
                  v97[1] = v94;
                  v97[2] = v95;
                  v97[3] = v96;
                }

                else
                {
                  *v97 = *(a2 - 16);
                  v97[1] = *(a2 - 12);
                  v97[2] = *(a2 - 8);
                  v97[3] = *(a2 - 4);
                  *(a2 - 16) = v93;
                  *(a2 - 12) = v94;
                  *(a2 - 8) = v95;
                  *(a2 - 4) = v96;
                  v104 = (v97 - v8 + 16) >> 4;
                  v105 = v104 < 2;
                  v106 = v104 - 2;
                  if (!v105)
                  {
                    v107 = v106 >> 1;
                    v108 = (v8 + 16 * v107);
                    v109 = *v108;
                    v110 = *v97;
                    if (*v108 < *v97)
                    {
                      v111 = *(v97 + 1);
                      v112 = v97[3];
                      do
                      {
                        v113 = v97;
                        v97 = v108;
                        *v113 = v109;
                        v113[1] = *(v108 + 1);
                        v113[2] = *(v108 + 2);
                        v113[3] = *(v108 + 3);
                        if (!v107)
                        {
                          break;
                        }

                        v107 = (v107 - 1) >> 1;
                        v108 = (v8 + 16 * v107);
                        v109 = *v108;
                      }

                      while (*v108 < v110);
                      *v97 = v110;
                      *(v97 + 1) = v111;
                      v97[3] = v112;
                    }
                  }
                }

                a2 -= 16;
                v105 = v9-- <= 2;
              }

              while (!v105);
            }

            return result;
          }

          v10 = v9 >> 1;
          v11 = v8 + 16 * (v9 >> 1);
          if (v9 < 0x81)
          {
            result = sub_24BD889A4(v7 + 16 * (v9 >> 1), v7, a2 - 16);
          }

          else
          {
            sub_24BD889A4(v7, v7 + 16 * (v9 >> 1), a2 - 16);
            sub_24BD889A4(v7 + 16, v11 - 16, a2 - 32);
            sub_24BD889A4(v7 + 32, v7 + 16 + 16 * v10, a2 - 48);
            result = sub_24BD889A4(v11 - 16, v11, v7 + 16 + 16 * v10);
            v12 = *v7;
            *v7 = *v11;
            *v11 = v12;
            v13 = *(v7 + 4);
            *(v7 + 4) = *(v11 + 4);
            *(v11 + 4) = v13;
            v14 = *(v7 + 12);
            *(v7 + 12) = *(v11 + 12);
            *(v11 + 12) = v14;
          }

          --a3;
          v15 = *v7;
          if ((a4 & 1) != 0 || *(v7 - 16) < v15)
          {
            break;
          }

          if (v15 >= *(a2 - 16))
          {
            v33 = v7 + 16;
            do
            {
              v8 = v33;
              if (v33 >= a2)
              {
                break;
              }

              v33 += 16;
            }

            while (v15 >= *v8);
          }

          else
          {
            v8 = v7;
            do
            {
              v32 = *(v8 + 16);
              v8 += 16;
            }

            while (v15 >= v32);
          }

          v34 = a2;
          if (v8 < a2)
          {
            v34 = a2;
            do
            {
              v35 = *(v34 - 4);
              v34 -= 4;
            }

            while (v15 < v35);
          }

          v36 = *(v7 + 4);
          v37 = *(v7 + 12);
          if (v8 < v34)
          {
            v38 = *v8;
            v39 = *v34;
            do
            {
              *v8 = v39;
              *v34 = v38;
              v40 = *(v8 + 4);
              *(v8 + 4) = v34[1];
              *(v34 + 1) = v40;
              v41 = *(v8 + 8);
              *(v8 + 8) = v34[2];
              *(v34 + 2) = v41;
              v42 = *(v8 + 12);
              *(v8 + 12) = v34[3];
              *(v34 + 3) = v42;
              do
              {
                v43 = *(v8 + 16);
                v8 += 16;
                v38 = v43;
              }

              while (v15 >= v43);
              do
              {
                v44 = *(v34 - 4);
                v34 -= 4;
                v39 = v44;
              }

              while (v15 < v44);
            }

            while (v8 < v34);
          }

          if (v8 - 16 != v7)
          {
            *v7 = *(v8 - 16);
            *(v7 + 4) = *(v8 - 12);
            *(v7 + 8) = *(v8 - 8);
            *(v7 + 12) = *(v8 - 4);
          }

          a4 = 0;
          *(v8 - 16) = v15;
          *(v8 - 12) = v36;
          *(v8 - 4) = v37;
        }

        v16 = 0;
        v17 = *(v7 + 4);
        v18 = *(v7 + 12);
        do
        {
          v19 = *(v7 + v16 + 16);
          v16 += 16;
        }

        while (v19 < v15);
        v20 = v7 + v16;
        v21 = a2;
        if (v16 == 16)
        {
          v21 = a2;
          do
          {
            if (v20 >= v21)
            {
              break;
            }

            v23 = *(v21 - 4);
            v21 -= 4;
          }

          while (v23 >= v15);
        }

        else
        {
          do
          {
            v22 = *(v21 - 4);
            v21 -= 4;
          }

          while (v22 >= v15);
        }

        if (v20 >= v21)
        {
          v8 = v7 + v16;
        }

        else
        {
          v24 = *v21;
          v8 = v7 + v16;
          v25 = v21;
          do
          {
            *v8 = v24;
            *v25 = v19;
            v26 = *(v8 + 4);
            *(v8 + 4) = v25[1];
            *(v25 + 1) = v26;
            v27 = *(v8 + 8);
            *(v8 + 8) = v25[2];
            *(v25 + 2) = v27;
            v28 = *(v8 + 12);
            *(v8 + 12) = v25[3];
            *(v25 + 3) = v28;
            do
            {
              v29 = *(v8 + 16);
              v8 += 16;
              v19 = v29;
            }

            while (v29 < v15);
            do
            {
              v30 = *(v25 - 4);
              v25 -= 4;
              v24 = v30;
            }

            while (v30 >= v15);
          }

          while (v8 < v25);
        }

        if (v8 - 16 != v7)
        {
          *v7 = *(v8 - 16);
          *(v7 + 4) = *(v8 - 12);
          *(v7 + 8) = *(v8 - 8);
          *(v7 + 12) = *(v8 - 4);
        }

        *(v8 - 16) = v15;
        *(v8 - 12) = v17;
        *(v8 - 4) = v18;
        if (v20 >= v21)
        {
          break;
        }

LABEL_38:
        result = sub_24BD880E4(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }

      v31 = sub_24BD88D34(v7, v8 - 16);
      result = sub_24BD88D34(v8, a2);
      if (result)
      {
        break;
      }

      if (!v31)
      {
        goto LABEL_38;
      }
    }

    a2 = v8 - 16;
    if (!v31)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_24BD889A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 < *result)
  {
    if (v5 >= v3)
    {
      *result = v3;
      *a2 = v4;
      v16 = *(result + 4);
      *(result + 4) = *(a2 + 4);
      *(a2 + 4) = v16;
      v17 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      v6 = (a2 + 12);
      v18 = *(a2 + 12);
      *(a2 + 8) = v17;
      v19 = *(result + 12);
      *(result + 12) = v18;
      *(a2 + 12) = v19;
      if (*a3 >= v4)
      {
        return result;
      }

      *a2 = *a3;
      *a3 = v4;
      v20 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v20;
      v8 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
    }

    else
    {
      v6 = (result + 12);
      *result = v5;
      *a3 = v4;
      v7 = *(result + 4);
      *(result + 4) = *(a3 + 4);
      *(a3 + 4) = v7;
      v8 = *(result + 8);
      *(result + 8) = *(a3 + 8);
    }

    *(a3 + 8) = v8;
    v12 = (a3 + 12);
    goto LABEL_10;
  }

  if (v5 < v3)
  {
    *a2 = v5;
    *a3 = v3;
    v9 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v9;
    v10 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v10;
    v12 = (a2 + 12);
    v11 = *(a2 + 12);
    *(a2 + 12) = *(a3 + 12);
    *(a3 + 12) = v11;
    v13 = *result;
    if (*a2 < *result)
    {
      *result = *a2;
      *a2 = v13;
      v14 = *(result + 4);
      *(result + 4) = *(a2 + 4);
      *(a2 + 4) = v14;
      v15 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v15;
      v6 = (result + 12);
LABEL_10:
      v21 = *v6;
      *v6 = *v12;
      *v12 = v21;
    }
  }

  return result;
}

uint64_t sub_24BD88AF8(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  result = sub_24BD889A4(a1, a2, a3);
  v11 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 1);
    a3[1] = a4[1];
    *(a4 + 1) = v12;
    v13 = *(a3 + 2);
    a3[2] = a4[2];
    *(a4 + 2) = v13;
    v14 = *(a3 + 3);
    a3[3] = a4[3];
    *(a4 + 3) = v14;
    v15 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v16;
      v17 = *(a2 + 2);
      a2[2] = a3[2];
      *(a3 + 2) = v17;
      v18 = *(a2 + 3);
      a2[3] = a3[3];
      *(a3 + 3) = v18;
      v19 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v19;
        v20 = *(a1 + 1);
        a1[1] = a2[1];
        *(a2 + 1) = v20;
        v21 = *(a1 + 2);
        a1[2] = a2[2];
        *(a2 + 2) = v21;
        v22 = *(a1 + 3);
        a1[3] = a2[3];
        *(a2 + 3) = v22;
      }
    }
  }

  v23 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v23;
    v24 = *(a4 + 1);
    a4[1] = a5[1];
    *(a5 + 1) = v24;
    v25 = *(a4 + 2);
    a4[2] = a5[2];
    *(a5 + 2) = v25;
    v26 = *(a4 + 3);
    a4[3] = a5[3];
    *(a5 + 3) = v26;
    v27 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v27;
      v28 = *(a3 + 1);
      a3[1] = a4[1];
      *(a4 + 1) = v28;
      v29 = *(a3 + 2);
      a3[2] = a4[2];
      *(a4 + 2) = v29;
      v30 = *(a3 + 3);
      a3[3] = a4[3];
      *(a4 + 3) = v30;
      v31 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v31;
        v32 = *(a2 + 1);
        a2[1] = a3[1];
        *(a3 + 1) = v32;
        v33 = *(a2 + 2);
        a2[2] = a3[2];
        *(a3 + 2) = v33;
        v34 = *(a2 + 3);
        a2[3] = a3[3];
        *(a3 + 3) = v34;
        v35 = *a1;
        if (*a2 < *a1)
        {
          *a1 = *a2;
          *a2 = v35;
          v36 = *(a1 + 1);
          a1[1] = a2[1];
          *(a2 + 1) = v36;
          v37 = *(a1 + 2);
          a1[2] = a2[2];
          *(a2 + 2) = v37;
          v38 = *(a1 + 3);
          a1[3] = a2[3];
          *(a2 + 3) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BD88D34(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_24BD889A4(a1, a1 + 16, a2 - 16);
        break;
      case 4:
        sub_24BD889A4(a1, a1 + 16, a1 + 32);
        v21 = *(a2 - 16);
        v22 = *(a1 + 32);
        if (v21 < v22)
        {
          *(a1 + 32) = v21;
          *(a2 - 16) = v22;
          v23 = *(a1 + 36);
          *(a1 + 36) = *(a2 - 12);
          *(a2 - 12) = v23;
          v24 = *(a1 + 40);
          *(a1 + 40) = *(a2 - 8);
          *(a2 - 8) = v24;
          v25 = *(a1 + 44);
          *(a1 + 44) = *(a2 - 4);
          *(a2 - 4) = v25;
          v26 = *(a1 + 32);
          v27 = *(a1 + 16);
          if (v26 < v27)
          {
            *(a1 + 16) = v26;
            *(a1 + 32) = v27;
            v28 = *(a1 + 36);
            v29 = *(a1 + 40);
            v30 = *(a1 + 20);
            *(a1 + 20) = v28;
            *(a1 + 24) = v29;
            *(a1 + 36) = v30;
            v31 = *(a1 + 28);
            v32 = *(a1 + 44);
            *(a1 + 28) = v32;
            v33 = *a1;
            v34 = v26 < *a1;
            *(a1 + 44) = v31;
            if (v34)
            {
              *a1 = v26;
              *(a1 + 16) = v33;
              v35 = *(a1 + 4);
              *(a1 + 4) = v28;
              *(a1 + 8) = v29;
              *(a1 + 20) = v35;
              v36 = *(a1 + 12);
              *(a1 + 12) = v32;
              *(a1 + 28) = v36;
            }
          }
        }

        return 1;
      case 5:
        sub_24BD88AF8(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
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
    v5 = *(a2 - 16);
    v6 = *a1;
    if (v5 < *a1)
    {
      *a1 = v5;
      *(a2 - 16) = v6;
      v7 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 12);
      *(a2 - 12) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
      *(a2 - 8) = v8;
      v9 = *(a1 + 12);
      *(a1 + 12) = *(a2 - 4);
      *(a2 - 4) = v9;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 32);
  sub_24BD889A4(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 < *v10)
    {
      v16 = *(v11 + 4);
      v17 = *(v11 + 12);
      v18 = v12;
      while (1)
      {
        v19 = a1 + v18;
        *(v19 + 48) = v15;
        *(v19 + 52) = *(a1 + v18 + 36);
        *(v19 + 60) = *(a1 + v18 + 44);
        if (v18 == -32)
        {
          break;
        }

        v15 = *(v19 + 16);
        v18 -= 16;
        if (v14 >= v15)
        {
          v20 = a1 + v18 + 48;
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v14;
      *(v20 + 4) = v16;
      *(v20 + 12) = v17;
      if (++v13 == 8)
      {
        return v11 + 16 == a2;
      }
    }

    v10 = v11;
    v12 += 16;
    v11 += 16;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_24BD88F98(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_24BCADE5C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_24BD8901C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 4);
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 2);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v129 = *(v9 + 12);
                v130 = *v9;
                v131 = *(a2 - 12);
                if (v129 >= *v9)
                {
                  if (v131 >= v129)
                  {
                    return result;
                  }

                  *(v9 + 12) = v131;
                  *(a2 - 12) = v129;
                  v179 = *(v9 + 16);
                  *(v9 + 16) = *(a2 - 8);
                  *(a2 - 8) = v179;
                  v8 = (v9 + 20);
                  v180 = *(v9 + 20);
                  *(v9 + 20) = *(a2 - 4);
                  *(a2 - 4) = v180;
                  v181 = *(v9 + 12);
                  v182 = *v9;
                  if (v181 >= *v9)
                  {
                    return result;
                  }

                  *v9 = v181;
                  *(v9 + 12) = v182;
                  v183 = *(v9 + 4);
                  *(v9 + 4) = *(v9 + 16);
                  *(v9 + 16) = v183;
                  v132 = (v9 + 8);
                }

                else if (v131 >= v129)
                {
                  *v9 = v129;
                  *(v9 + 12) = v130;
                  v193 = *(v9 + 4);
                  *(v9 + 4) = *(v9 + 16);
                  *(v9 + 16) = v193;
                  v194 = *(a2 - 12);
                  if (v194 >= v130)
                  {
                    return result;
                  }

                  v132 = (v9 + 20);
                  *(v9 + 12) = v194;
                  *(v9 + 16) = *(a2 - 8);
                  *(a2 - 12) = v130;
                  *(a2 - 8) = v193;
                }

                else
                {
                  v132 = (v9 + 8);
                  *v9 = v131;
                  *(a2 - 12) = v130;
                  v133 = *(v9 + 4);
                  *(v9 + 4) = *(a2 - 8);
                  *(a2 - 8) = v133;
                }

                v195 = *v132;
                *v132 = *v8;
                *v8 = v195;
                return result;
              case 4:

                return sub_24BD89D64(v9, v9 + 12, v9 + 24, (a2 - 12));
              case 5:
                result = sub_24BD89D64(v9, v9 + 12, v9 + 24, (v9 + 36));
                v112 = *(a2 - 12);
                v113 = *(v9 + 36);
                if (v112 < v113)
                {
                  *(v9 + 36) = v112;
                  *(a2 - 12) = v113;
                  v114 = *(v9 + 40);
                  *(v9 + 40) = *(a2 - 8);
                  *(a2 - 8) = v114;
                  v115 = *(v9 + 44);
                  *(v9 + 44) = *(a2 - 4);
                  *(a2 - 4) = v115;
                  v116 = *(v9 + 36);
                  v117 = *(v9 + 24);
                  if (v116 < v117)
                  {
                    *(v9 + 24) = v116;
                    *(v9 + 36) = v117;
                    v118 = *(v9 + 40);
                    v119 = *(v9 + 44);
                    v120 = *(v9 + 28);
                    *(v9 + 28) = v118;
                    *(v9 + 32) = v119;
                    *(v9 + 40) = v120;
                    v121 = *(v9 + 12);
                    if (v116 < v121)
                    {
                      *(v9 + 12) = v116;
                      *(v9 + 24) = v121;
                      v122 = *(v9 + 16);
                      *(v9 + 16) = v118;
                      *(v9 + 20) = v119;
                      *(v9 + 28) = v122;
                      v123 = *v9;
                      if (v116 < *v9)
                      {
                        *v9 = v116;
                        *(v9 + 12) = v123;
                        v124 = *(v9 + 4);
                        *(v9 + 4) = v118;
                        *(v9 + 8) = v119;
                        *(v9 + 16) = v124;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v125 = *(a2 - 12);
              v126 = *v9;
              if (v125 < *v9)
              {
                *v9 = v125;
                *(a2 - 12) = v126;
                v127 = *(v9 + 4);
                *(v9 + 4) = *(a2 - 8);
                *(a2 - 8) = v127;
                v128 = *(v9 + 8);
                *(v9 + 8) = *(a2 - 4);
                *(a2 - 4) = v128;
              }

              return result;
            }
          }

          if (v10 <= 287)
          {
            v134 = v9 + 12;
            v136 = v9 == a2 || v134 == a2;
            if (a4)
            {
              if (!v136)
              {
                v137 = 0;
                v138 = v9;
                do
                {
                  v139 = v134;
                  v140 = *(v138 + 12);
                  v141 = *v138;
                  if (v140 < *v138)
                  {
                    v142 = *(v138 + 16);
                    v143 = v137;
                    while (1)
                    {
                      v144 = v9 + v143;
                      *(v144 + 12) = v141;
                      v145 = *(v9 + v143 + 8);
                      *(v144 + 16) = *(v9 + v143 + 4);
                      *(v144 + 20) = v145;
                      if (!v143)
                      {
                        break;
                      }

                      v141 = *(v144 - 12);
                      v143 -= 12;
                      if (v140 >= v141)
                      {
                        v146 = v9 + v143 + 12;
                        goto LABEL_138;
                      }
                    }

                    v146 = v9;
LABEL_138:
                    *v146 = v140;
                    *(v146 + 4) = v142;
                  }

                  v134 = v139 + 12;
                  v137 += 12;
                  v138 = v139;
                }

                while (v139 + 12 != a2);
              }
            }

            else if (!v136)
            {
              v184 = v9 + 20;
              do
              {
                v185 = v134;
                v186 = *(v7 + 12);
                v187 = *v7;
                if (v186 < *v7)
                {
                  v188 = *(v7 + 16);
                  v189 = v184;
                  do
                  {
                    v190 = v189;
                    *(v189 - 2) = v187;
                    v191 = *(v189 - 4);
                    v192 = *(v189 - 3);
                    v189 -= 3;
                    *(v190 - 1) = v191;
                    *v190 = v192;
                    v187 = *(v190 - 8);
                  }

                  while (v186 < v187);
                  *(v189 - 2) = v186;
                  *(v189 - 1) = v188;
                }

                v134 = v185 + 12;
                v184 += 12;
                v7 = v185;
              }

              while (v185 + 12 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v147 = (v11 - 2) >> 1;
              v148 = v147;
              do
              {
                v149 = v148;
                if (v147 >= v148)
                {
                  v150 = (2 * v148) | 1;
                  v151 = v9 + 12 * v150;
                  if (2 * v149 + 2 < v11 && *v151 < *(v151 + 12))
                  {
                    v151 += 12;
                    v150 = 2 * v149 + 2;
                  }

                  v152 = v9 + 12 * v149;
                  v153 = *v151;
                  v154 = *v152;
                  if (*v151 >= *v152)
                  {
                    v155 = *(v152 + 4);
                    do
                    {
                      v156 = v152;
                      v152 = v151;
                      *v156 = v153;
                      v156[1] = *(v151 + 4);
                      v156[2] = *(v151 + 8);
                      if (v147 < v150)
                      {
                        break;
                      }

                      v157 = 2 * v150;
                      v150 = (2 * v150) | 1;
                      v151 = v9 + 12 * v150;
                      v158 = v157 + 2;
                      if (v158 < v11 && *v151 < *(v151 + 12))
                      {
                        v151 += 12;
                        v150 = v158;
                      }

                      v153 = *v151;
                    }

                    while (*v151 >= v154);
                    *v152 = v154;
                    *(v152 + 4) = v155;
                  }
                }

                v148 = v149 - 1;
              }

              while (v149);
              v159 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
              do
              {
                v160 = 0;
                v161 = *v9;
                v162 = *(v9 + 4);
                v163 = *(v9 + 8);
                v164 = v9;
                do
                {
                  v165 = v164;
                  v166 = &v164[3 * v160];
                  v164 = v166 + 3;
                  v167 = 2 * v160;
                  v160 = (2 * v160) | 1;
                  v168 = v167 + 2;
                  if (v168 < v159)
                  {
                    v170 = *(v166 + 6);
                    v169 = v166 + 6;
                    if (*(v169 - 3) < v170)
                    {
                      v164 = v169;
                      v160 = v168;
                    }
                  }

                  *v165 = *v164;
                  v165[1] = v164[1];
                  result = v164[2];
                  v165[2] = result;
                }

                while (v160 <= ((v159 - 2) >> 1));
                if (v164 == (a2 - 12))
                {
                  *v164 = v161;
                  v164[1] = v162;
                  v164[2] = v163;
                }

                else
                {
                  *v164 = *(a2 - 12);
                  v164[1] = *(a2 - 8);
                  v164[2] = *(a2 - 4);
                  *(a2 - 12) = v161;
                  *(a2 - 8) = v162;
                  *(a2 - 4) = v163;
                  v171 = v164 - v9 + 12;
                  if (v171 >= 13)
                  {
                    v172 = (-2 - 0x5555555555555555 * (v171 >> 2)) >> 1;
                    v173 = (v9 + 12 * v172);
                    v174 = *v173;
                    v175 = *v164;
                    if (*v173 < *v164)
                    {
                      v176 = *(v164 + 1);
                      do
                      {
                        v177 = v164;
                        v164 = v173;
                        *v177 = v174;
                        v177[1] = *(v173 + 1);
                        v177[2] = *(v173 + 2);
                        if (!v172)
                        {
                          break;
                        }

                        v172 = (v172 - 1) >> 1;
                        v173 = (v9 + 12 * v172);
                        v174 = *v173;
                      }

                      while (*v173 < v175);
                      *v164 = v175;
                      *(v164 + 1) = v176;
                    }
                  }
                }

                a2 -= 12;
              }

              while (v159-- > 2);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = v9 + 12 * (v11 >> 1);
          v14 = *(a2 - 12);
          if (v10 >= 0x601)
          {
            v15 = *v13;
            v16 = *v9;
            if (*v13 >= *v9)
            {
              if (v14 >= v15)
              {
                goto LABEL_29;
              }

              *v13 = v14;
              *(a2 - 12) = v15;
              v23 = *(v13 + 4);
              *(v13 + 4) = *(a2 - 8);
              *(a2 - 8) = v23;
              v25 = (v13 + 8);
              v24 = *(v13 + 8);
              *(v13 + 8) = *(a2 - 4);
              *(a2 - 4) = v24;
              v26 = *v9;
              if (*v13 >= *v9)
              {
LABEL_29:
                v36 = v9 + 12 * v12;
                v38 = *(v36 - 12);
                v37 = v36 - 12;
                v39 = v38;
                v40 = *(v9 + 12);
                v41 = *(a2 - 24);
                if (v38 >= v40)
                {
                  if (v41 >= v39)
                  {
                    goto LABEL_42;
                  }

                  *v37 = v41;
                  *(a2 - 24) = v39;
                  v44 = *(v37 + 4);
                  *(v37 + 4) = *(a2 - 20);
                  *(a2 - 20) = v44;
                  v46 = (v37 + 8);
                  v45 = *(v37 + 8);
                  *(v37 + 8) = *(a2 - 16);
                  *(a2 - 16) = v45;
                  v47 = *(v9 + 12);
                  if (*v37 >= v47)
                  {
LABEL_42:
                    v56 = v12 + 1;
                    v57 = v9 + 12 * (v12 + 1);
                    v58 = *v57;
                    v59 = *(v9 + 24);
                    v60 = *(a2 - 36);
                    if (*v57 >= v59)
                    {
                      if (v60 < v58)
                      {
                        *v57 = v60;
                        *(a2 - 36) = v58;
                        v63 = *(v57 + 4);
                        *(v57 + 4) = *(a2 - 32);
                        *(a2 - 32) = v63;
                        v65 = (v57 + 8);
                        v64 = *(v57 + 8);
                        *(v57 + 8) = *(a2 - 28);
                        *(a2 - 28) = v64;
                        v58 = *v57;
                        v66 = *(v9 + 24);
                        if (*v57 < v66)
                        {
                          *(v9 + 24) = v58;
                          *v57 = v66;
                          v67 = *(v9 + 28);
                          *(v9 + 28) = *(v57 + 4);
                          *(v57 + 4) = v67;
                          v61 = (v9 + 32);
LABEL_51:
                          v72 = *v61;
                          *v61 = *v65;
                          *v65 = v72;
                          v58 = *v57;
                        }
                      }
                    }

                    else
                    {
                      if (v60 < v58)
                      {
                        v61 = (v9 + 32);
                        *(v9 + 24) = v60;
                        *(a2 - 36) = v59;
                        v62 = *(v9 + 28);
                        *(v9 + 28) = *(a2 - 32);
LABEL_50:
                        *(a2 - 32) = v62;
                        v65 = (a2 - 28);
                        goto LABEL_51;
                      }

                      *(v9 + 24) = v58;
                      *v57 = v59;
                      v68 = *(v9 + 28);
                      *(v9 + 28) = *(v57 + 4);
                      v61 = (v57 + 8);
                      v69 = *(v57 + 8);
                      *(v57 + 4) = v68;
                      v70 = *(v9 + 32);
                      *(v9 + 32) = v69;
                      *(v57 + 8) = v70;
                      v71 = *(a2 - 36);
                      if (v71 < v59)
                      {
                        *v57 = v71;
                        *(a2 - 36) = v59;
                        v62 = *(v57 + 4);
                        *(v57 + 4) = *(a2 - 32);
                        goto LABEL_50;
                      }

                      v58 = v59;
                    }

                    v73 = *v13;
                    v74 = *v37;
                    if (*v13 >= *v37)
                    {
                      if (v58 >= v73)
                      {
LABEL_62:
                        v83 = *v9;
                        *v9 = v73;
                        *v13 = v83;
                        v84 = *(v9 + 4);
                        *(v9 + 4) = *(v13 + 4);
                        *(v13 + 4) = v84;
                        v21 = (v9 + 8);
                        v30 = (v13 + 8);
                        goto LABEL_63;
                      }

                      *v13 = v58;
                      *v57 = v73;
                      v77 = *(v57 + 4);
                      v78 = *(v13 + 4);
                      *(v13 + 4) = v77;
                      *(v57 + 4) = v78;
                      if (v58 >= v74)
                      {
                        v73 = v58;
                        goto LABEL_62;
                      }

                      *v13 = v74;
                      v79 = *(v37 + 4);
                      *v37 = v58;
                      *(v37 + 4) = v77;
                      *(v13 + 4) = v79;
                      v75 = (v37 + 8);
                      v56 = v12;
                    }

                    else if (v58 >= v73)
                    {
                      *v37 = v73;
                      *v13 = v74;
                      v80 = *(v37 + 4);
                      *(v37 + 4) = *(v13 + 4);
                      *(v13 + 4) = v80;
                      if (v58 >= v74)
                      {
LABEL_61:
                        v73 = v74;
                        goto LABEL_62;
                      }

                      v75 = (v13 + 8);
                      *v13 = v58;
                      *(v13 + 4) = *(v57 + 4);
                      *v57 = v74;
                      *(v57 + 4) = v80;
                      v74 = v58;
                    }

                    else
                    {
                      v75 = (v37 + 8);
                      *v37 = v58;
                      *v57 = v74;
                      v76 = *(v37 + 4);
                      *(v37 + 4) = *(v57 + 4);
                      *(v57 + 4) = v76;
                      v74 = v73;
                    }

                    v81 = v9 + 12 * v56;
                    v82 = *v75;
                    *v75 = *(v81 + 8);
                    *(v81 + 8) = v82;
                    goto LABEL_61;
                  }

                  *(v9 + 12) = *v37;
                  *v37 = v47;
                  v48 = *(v9 + 16);
                  *(v9 + 16) = *(v37 + 4);
                  *(v37 + 4) = v48;
                  v42 = (v9 + 20);
                }

                else
                {
                  if (v41 >= v39)
                  {
                    *(v9 + 12) = v39;
                    *v37 = v40;
                    v51 = *(v9 + 16);
                    *(v9 + 16) = *(v37 + 4);
                    v42 = (v37 + 8);
                    v52 = *(v37 + 8);
                    *(v37 + 4) = v51;
                    v53 = *(v9 + 20);
                    *(v9 + 20) = v52;
                    *(v37 + 8) = v53;
                    v54 = *(a2 - 24);
                    if (v54 >= v40)
                    {
                      goto LABEL_42;
                    }

                    *v37 = v54;
                    *(a2 - 24) = v40;
                    v43 = *(v37 + 4);
                    *(v37 + 4) = *(a2 - 20);
                  }

                  else
                  {
                    v42 = (v9 + 20);
                    *(v9 + 12) = v41;
                    *(a2 - 24) = v40;
                    v43 = *(v9 + 16);
                    *(v9 + 16) = *(a2 - 20);
                  }

                  *(a2 - 20) = v43;
                  v46 = (a2 - 16);
                }

                v55 = *v42;
                *v42 = *v46;
                *v46 = v55;
                goto LABEL_42;
              }

              *v9 = *v13;
              *v13 = v26;
              v27 = *(v9 + 4);
              *(v9 + 4) = *(v13 + 4);
              *(v13 + 4) = v27;
              v17 = (v9 + 8);
            }

            else
            {
              if (v14 >= v15)
              {
                *v9 = v15;
                *v13 = v16;
                v33 = *(v9 + 4);
                *(v9 + 4) = *(v13 + 4);
                *(v13 + 4) = v33;
                v34 = *(a2 - 12);
                if (v34 >= v16)
                {
                  goto LABEL_29;
                }

                v17 = (v13 + 8);
                *v13 = v34;
                *(v13 + 4) = *(a2 - 8);
                *(a2 - 12) = v16;
                *(a2 - 8) = v33;
              }

              else
              {
                v17 = (v9 + 8);
                *v9 = v14;
                *(a2 - 12) = v16;
                v18 = *(v9 + 4);
                *(v9 + 4) = *(a2 - 8);
                *(a2 - 8) = v18;
              }

              v25 = (a2 - 4);
            }

            v35 = *v17;
            *v17 = *v25;
            *v25 = v35;
            goto LABEL_29;
          }

          v19 = *v9;
          v20 = *v13;
          if (*v9 >= *v13)
          {
            if (v14 < v19)
            {
              *v9 = v14;
              *(a2 - 12) = v19;
              v28 = *(v9 + 4);
              *(v9 + 4) = *(a2 - 8);
              *(a2 - 8) = v28;
              v30 = (v9 + 8);
              v29 = *(v9 + 8);
              *(v9 + 8) = *(a2 - 4);
              *(a2 - 4) = v29;
              v31 = *v13;
              if (*v9 < *v13)
              {
                *v13 = *v9;
                *v9 = v31;
                v32 = *(v13 + 4);
                *(v13 + 4) = *(v9 + 4);
                *(v9 + 4) = v32;
                v21 = (v13 + 8);
LABEL_63:
                v85 = *v21;
                *v21 = *v30;
                *v30 = v85;
              }
            }
          }

          else
          {
            if (v14 < v19)
            {
              v21 = (v13 + 8);
              *v13 = v14;
              *(a2 - 12) = v20;
              v22 = *(v13 + 4);
              *(v13 + 4) = *(a2 - 8);
              *(a2 - 8) = v22;
LABEL_37:
              v30 = (a2 - 4);
              goto LABEL_63;
            }

            *v13 = v19;
            *v9 = v20;
            v49 = *(v13 + 4);
            *(v13 + 4) = *(v9 + 4);
            *(v9 + 4) = v49;
            v50 = *(a2 - 12);
            if (v50 < v20)
            {
              v21 = (v9 + 8);
              *v9 = v50;
              *(v9 + 4) = *(a2 - 8);
              *(a2 - 12) = v20;
              *(a2 - 8) = v49;
              goto LABEL_37;
            }
          }

          --a3;
          v86 = *v9;
          if ((a4 & 1) != 0 || *(v9 - 12) < v86)
          {
            break;
          }

          if (v86 >= *(a2 - 12))
          {
            v102 = v9 + 12;
            do
            {
              v9 = v102;
              if (v102 >= a2)
              {
                break;
              }

              v102 += 12;
            }

            while (v86 >= *v9);
          }

          else
          {
            do
            {
              v101 = *(v9 + 12);
              v9 += 12;
            }

            while (v86 >= v101);
          }

          v103 = a2;
          if (v9 < a2)
          {
            v103 = a2;
            do
            {
              v104 = *(v103 - 3);
              v103 -= 3;
            }

            while (v86 < v104);
          }

          v105 = *(v7 + 4);
          if (v9 < v103)
          {
            v106 = *v9;
            v107 = *v103;
            do
            {
              *v9 = v107;
              *v103 = v106;
              v108 = *(v9 + 4);
              *(v9 + 4) = v103[1];
              *(v103 + 1) = v108;
              v109 = *(v9 + 8);
              *(v9 + 8) = v103[2];
              *(v103 + 2) = v109;
              do
              {
                v110 = *(v9 + 12);
                v9 += 12;
                v106 = v110;
              }

              while (v86 >= v110);
              do
              {
                v111 = *(v103 - 3);
                v103 -= 3;
                v107 = v111;
              }

              while (v86 < v111);
            }

            while (v9 < v103);
          }

          if (v9 - 12 != v7)
          {
            *v7 = *(v9 - 12);
            *(v7 + 4) = *(v9 - 8);
            *(v7 + 8) = *(v9 - 4);
          }

          a4 = 0;
          *(v9 - 12) = v86;
          *(v9 - 8) = v105;
        }

        v87 = 0;
        v88 = *(v9 + 4);
        do
        {
          v89 = *(v9 + v87 + 12);
          v87 += 12;
        }

        while (v89 < v86);
        v90 = v9 + v87;
        v91 = a2;
        if (v87 == 12)
        {
          v91 = a2;
          do
          {
            if (v90 >= v91)
            {
              break;
            }

            v93 = *(v91 - 3);
            v91 -= 3;
          }

          while (v93 >= v86);
        }

        else
        {
          do
          {
            v92 = *(v91 - 3);
            v91 -= 3;
          }

          while (v92 >= v86);
        }

        if (v90 >= v91)
        {
          v9 += v87;
        }

        else
        {
          v94 = *v91;
          v9 += v87;
          v95 = v91;
          do
          {
            *v9 = v94;
            *v95 = v89;
            v96 = *(v9 + 4);
            *(v9 + 4) = v95[1];
            *(v95 + 1) = v96;
            v97 = *(v9 + 8);
            *(v9 + 8) = v95[2];
            *(v95 + 2) = v97;
            do
            {
              v98 = *(v9 + 12);
              v9 += 12;
              v89 = v98;
            }

            while (v98 < v86);
            do
            {
              v99 = *(v95 - 3);
              v95 -= 3;
              v94 = v99;
            }

            while (v99 >= v86);
          }

          while (v9 < v95);
        }

        if (v9 - 12 != v7)
        {
          *v7 = *(v9 - 12);
          *(v7 + 4) = *(v9 - 8);
          *(v7 + 8) = *(v9 - 4);
        }

        *(v9 - 12) = v86;
        *(v9 - 8) = v88;
        if (v90 >= v91)
        {
          break;
        }

LABEL_87:
        result = sub_24BD8901C(v7, v9 - 12, a3, a4 & 1);
        a4 = 0;
      }

      v100 = sub_24BD89F1C(v7, v9 - 12);
      result = sub_24BD89F1C(v9, a2);
      if (result)
      {
        break;
      }

      if (!v100)
      {
        goto LABEL_87;
      }
    }

    a2 = v9 - 12;
    if (!v100)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_24BD89D64(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 >= v4)
    {
      v4 = *a3;
      goto LABEL_12;
    }

    *a2 = v6;
    *a3 = v4;
    v9 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v9;
    v11 = (a2 + 8);
    v10 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v10;
    v12 = *result;
    if (*a2 < *result)
    {
      *result = *a2;
      *a2 = v12;
      v13 = *(result + 4);
      *(result + 4) = *(a2 + 4);
      *(a2 + 4) = v13;
      v7 = (result + 8);
      v5 = *a3;
LABEL_10:
      v17 = *v7;
      *v7 = *v11;
      *v11 = v17;
      v4 = v5;
    }
  }

  else
  {
    if (v6 < v4)
    {
      v7 = (result + 8);
      *result = v6;
      *a3 = v5;
      v8 = *(result + 4);
      *(result + 4) = *(a3 + 4);
LABEL_9:
      *(a3 + 4) = v8;
      v11 = (a3 + 8);
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v5;
    v14 = *(result + 4);
    *(result + 4) = *(a2 + 4);
    v7 = (a2 + 8);
    v15 = *(a2 + 8);
    *(a2 + 4) = v14;
    v16 = *(result + 8);
    *(result + 8) = v15;
    *(a2 + 8) = v16;
    v4 = *a3;
    if (*a3 < v5)
    {
      *a2 = v4;
      *a3 = v5;
      v8 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      goto LABEL_9;
    }
  }

LABEL_12:
  if (*a4 < v4)
  {
    *a3 = *a4;
    *a4 = v4;
    v18 = *(a3 + 4);
    *(a3 + 4) = a4[1];
    a4[1] = v18;
    v19 = *(a3 + 8);
    *(a3 + 8) = a4[2];
    a4[2] = v19;
    v20 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v20;
      v21 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v21;
      v22 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v22;
      v23 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v23;
        v24 = *(result + 4);
        *(result + 4) = *(a2 + 4);
        *(a2 + 4) = v24;
        v25 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v25;
      }
    }
  }

  return result;
}

BOOL sub_24BD89F1C(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v22 = *(a1 + 12);
      v23 = *a1;
      v24 = *(a2 - 12);
      if (v22 >= *a1)
      {
        if (v24 >= v22)
        {
          return 1;
        }

        *(a1 + 12) = v24;
        *(a2 - 12) = v22;
        v33 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 8);
        *(a2 - 8) = v33;
        v35 = (a1 + 20);
        v34 = *(a1 + 20);
        *(a1 + 20) = *(a2 - 4);
        *(a2 - 4) = v34;
        v36 = *(a1 + 12);
        v37 = *a1;
        if (v36 >= *a1)
        {
          return 1;
        }

        *a1 = v36;
        *(a1 + 12) = v37;
        v38 = *(a1 + 4);
        *(a1 + 4) = *(a1 + 16);
        *(a1 + 16) = v38;
        v25 = (a1 + 8);
      }

      else
      {
        if (v24 >= v22)
        {
          *a1 = v22;
          *(a1 + 12) = v23;
          v43 = *(a1 + 4);
          *(a1 + 4) = *(a1 + 16);
          *(a1 + 16) = v43;
          v44 = *(a2 - 12);
          if (v44 >= v23)
          {
            return 1;
          }

          v25 = (a1 + 20);
          *(a1 + 12) = v44;
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 12) = v23;
          *(a2 - 8) = v43;
        }

        else
        {
          v25 = (a1 + 8);
          *a1 = v24;
          *(a2 - 12) = v23;
          v26 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 8);
          *(a2 - 8) = v26;
        }

        v35 = (a2 - 4);
      }

      v45 = *v25;
      *v25 = *v35;
      *v35 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_24BD89D64(a1, a1 + 12, a1 + 24, (a1 + 36));
        v9 = *(a2 - 12);
        v10 = *(a1 + 36);
        if (v9 < v10)
        {
          *(a1 + 36) = v9;
          *(a2 - 12) = v10;
          v11 = *(a1 + 40);
          *(a1 + 40) = *(a2 - 8);
          *(a2 - 8) = v11;
          v12 = *(a1 + 44);
          *(a1 + 44) = *(a2 - 4);
          *(a2 - 4) = v12;
          v13 = *(a1 + 36);
          v14 = *(a1 + 24);
          if (v13 < v14)
          {
            *(a1 + 24) = v13;
            *(a1 + 36) = v14;
            v15 = *(a1 + 40);
            v16 = *(a1 + 44);
            v17 = *(a1 + 28);
            *(a1 + 28) = v15;
            *(a1 + 32) = v16;
            *(a1 + 40) = v17;
            v18 = *(a1 + 12);
            if (v13 < v18)
            {
              *(a1 + 12) = v13;
              *(a1 + 24) = v18;
              v19 = *(a1 + 16);
              *(a1 + 16) = v15;
              *(a1 + 20) = v16;
              *(a1 + 28) = v19;
              v20 = *a1;
              if (v13 < *a1)
              {
                *a1 = v13;
                *(a1 + 12) = v20;
                v21 = *(a1 + 4);
                *(a1 + 4) = v15;
                *(a1 + 8) = v16;
                *(a1 + 16) = v21;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_24BD89D64(a1, a1 + 12, a1 + 24, (a2 - 12));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 12);
    v6 = *a1;
    if (v5 < *a1)
    {
      *a1 = v5;
      *(a2 - 12) = v6;
      v7 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 8);
      *(a2 - 8) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 4);
      *(a2 - 4) = v8;
    }

    return 1;
  }

LABEL_17:
  v27 = (a1 + 24);
  v28 = *(a1 + 24);
  v29 = *(a1 + 12);
  v30 = *a1;
  if (v29 < *a1)
  {
    if (v28 >= v29)
    {
      *a1 = v29;
      *(a1 + 12) = v30;
      v46 = *(a1 + 4);
      *(a1 + 4) = *(a1 + 16);
      *(a1 + 16) = v46;
      if (v28 >= v30)
      {
        goto LABEL_35;
      }

      v31 = (a1 + 20);
      *(a1 + 12) = v28;
      *(a1 + 16) = *(a1 + 28);
      *(a1 + 24) = v30;
      *(a1 + 28) = v46;
    }

    else
    {
      v31 = (a1 + 8);
      *a1 = v28;
      *(a1 + 24) = v30;
      v32 = *(a1 + 4);
      *(a1 + 4) = *(a1 + 28);
      *(a1 + 28) = v32;
    }

    v41 = (a1 + 32);
    goto LABEL_34;
  }

  if (v28 < v29)
  {
    *(a1 + 12) = v28;
    *(a1 + 24) = v29;
    v39 = *(a1 + 28);
    v40 = *(a1 + 16);
    *(a1 + 16) = v39;
    *(a1 + 28) = v40;
    if (v28 < v30)
    {
      v41 = (a1 + 20);
      *(a1 + 12) = v30;
      v42 = *(a1 + 4);
      *a1 = v28;
      *(a1 + 4) = v39;
      *(a1 + 16) = v42;
      v31 = (a1 + 8);
LABEL_34:
      v47 = *v31;
      *v31 = *v41;
      *v41 = v47;
    }
  }

LABEL_35:
  v48 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v49 = 0;
  v50 = 0;
  while (1)
  {
    v51 = *v48;
    v52 = *v27;
    if (*v48 < *v27)
    {
      v53 = *(v48 + 4);
      v54 = v49;
      while (1)
      {
        v55 = a1 + v54;
        *(v55 + 36) = v52;
        v56 = *(a1 + v54 + 32);
        *(v55 + 40) = *(a1 + v54 + 28);
        *(v55 + 44) = v56;
        if (v54 == -24)
        {
          break;
        }

        v52 = *(v55 + 12);
        v54 -= 12;
        if (v51 >= v52)
        {
          v57 = a1 + v54 + 36;
          goto LABEL_43;
        }
      }

      v57 = a1;
LABEL_43:
      *v57 = v51;
      *(v57 + 4) = v53;
      if (++v50 == 8)
      {
        return v48 + 12 == a2;
      }
    }

    v27 = v48;
    v49 += 12;
    v48 += 12;
    if (v48 == a2)
    {
      return 1;
    }
  }
}

void sub_24BD8A2EC(unsigned int *a1, unsigned int *a2, float32x4_t **a3, uint64_t a4, char a5)
{
  while (2)
  {
    v290 = a2 - 2;
    v285 = a2 - 6;
    v286 = a2 - 4;
    v9 = a1;
    v296 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                sub_24BD8B6D4(v9, v9 + 2, v290, a3);
                return;
              case 4:
                sub_24BD8B6D4(v9, v9 + 2, v9 + 4, a3);
                v113 = *(a2 - 2);
                v112 = a2 - 2;
                v114 = a3[2];
                v115 = a3[3]->i64[0];
                v116 = vsubq_f32(*(v115 + 16 * v113), *v114);
                v302 = **a3;
                v117 = vmulq_f32(v116, v302);
                v117.i32[3] = 0;
                v320 = *a3[1];
                v337 = vsubq_f32(*(v115 + 16 * v9[4]), *v114);
                v118 = vmulq_f32(v116, v320);
                v118.i32[3] = 0;
                v119 = atan2f(vaddv_f32(*&vpaddq_f32(v117, v117)), vaddv_f32(*&vpaddq_f32(v118, v118)));
                v120 = vmulq_f32(v337, v302);
                v120.i32[3] = 0;
                v121 = vmulq_f32(v337, v320);
                v121.i32[3] = 0;
                if (v119 > atan2f(vaddv_f32(*&vpaddq_f32(v120, v120)), vaddv_f32(*&vpaddq_f32(v121, v121))))
                {
                  v122 = *(v9 + 2);
                  v123 = *v112;
                  *(v9 + 10) = *(v112 + 2);
                  v9[4] = v123;
                  *v112 = v122;
                  *(v112 + 2) = WORD2(v122);
                  v124 = a3[2];
                  v125 = a3[3]->i64[0];
                  v126 = vsubq_f32(*(v125 + 16 * v9[4]), *v124);
                  v303 = **a3;
                  v127 = vmulq_f32(v126, v303);
                  v127.i32[3] = 0;
                  v321 = *a3[1];
                  v338 = vsubq_f32(*(v125 + 16 * v9[2]), *v124);
                  v128 = vmulq_f32(v126, v321);
                  v128.i32[3] = 0;
                  v129 = atan2f(vaddv_f32(*&vpaddq_f32(v127, v127)), vaddv_f32(*&vpaddq_f32(v128, v128)));
                  v130 = vmulq_f32(v338, v303);
                  v130.i32[3] = 0;
                  v131 = vmulq_f32(v338, v321);
                  v131.i32[3] = 0;
                  if (v129 > atan2f(vaddv_f32(*&vpaddq_f32(v130, v130)), vaddv_f32(*&vpaddq_f32(v131, v131))))
                  {
                    v132 = *(v9 + 1);
                    *(v9 + 6) = *(v9 + 10);
                    v9[2] = v9[4];
                    v9[4] = v132;
                    *(v9 + 10) = WORD2(v132);
                    v133 = a3[2];
                    v134 = a3[3]->i64[0];
                    v135 = vsubq_f32(*(v134 + 16 * v9[2]), *v133);
                    v304 = **a3;
                    v136 = vmulq_f32(v135, v304);
                    v136.i32[3] = 0;
                    v322 = *a3[1];
                    v339 = vsubq_f32(*(v134 + 16 * *v9), *v133);
                    v137 = vmulq_f32(v135, v322);
                    v137.i32[3] = 0;
                    v138 = atan2f(vaddv_f32(*&vpaddq_f32(v136, v136)), vaddv_f32(*&vpaddq_f32(v137, v137)));
                    v139 = vmulq_f32(v339, v304);
                    v139.i32[3] = 0;
                    v140 = vmulq_f32(v339, v322);
                    v140.i32[3] = 0;
                    if (v138 > atan2f(vaddv_f32(*&vpaddq_f32(v139, v139)), vaddv_f32(*&vpaddq_f32(v140, v140))))
                    {
                      v141 = *v9;
                      *v9 = v9[2];
                      *(v9 + 2) = *(v9 + 6);
                      v9[2] = v141;
                      *(v9 + 6) = WORD2(v141);
                    }
                  }
                }

                return;
              case 5:

                sub_24BD8B9CC(v9, v9 + 2, v9 + 4, v9 + 6, v290, a3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v101 = *(a2 - 2);
              v100 = a2 - 2;
              v102 = a3[2];
              v103 = a3[3]->i64[0];
              v104 = vsubq_f32(*(v103 + 16 * v101), *v102);
              v301 = **a3;
              v105 = vmulq_f32(v104, v301);
              v105.i32[3] = 0;
              v319 = *a3[1];
              v336 = vsubq_f32(*(v103 + 16 * *v9), *v102);
              v106 = vmulq_f32(v104, v319);
              v106.i32[3] = 0;
              v107 = atan2f(vaddv_f32(*&vpaddq_f32(v105, v105)), vaddv_f32(*&vpaddq_f32(v106, v106)));
              v108 = vmulq_f32(v336, v301);
              v108.i32[3] = 0;
              v109 = vmulq_f32(v336, v319);
              v109.i32[3] = 0;
              if (v107 > atan2f(vaddv_f32(*&vpaddq_f32(v108, v108)), vaddv_f32(*&vpaddq_f32(v109, v109))))
              {
                v110 = *v9;
                v111 = *v100;
                *(v9 + 2) = *(v100 + 2);
                *v9 = v111;
                *v100 = v110;
                *(v100 + 2) = WORD2(v110);
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            if (a5)
            {
              if (v9 != a2)
              {
                v142 = v9 + 2;
                if (v9 + 2 != a2)
                {
                  v143 = 0;
                  v144 = *a3;
                  v145 = v9;
                  do
                  {
                    v146 = v145[2];
                    v147 = *v145;
                    v145 = v142;
                    v148 = *a3[2];
                    v149 = a3[3]->i64[0];
                    v150 = vsubq_f32(*(v149 + 16 * v146), v148);
                    v151 = vsubq_f32(*(v149 + 16 * v147), v148);
                    v305 = *v144;
                    v152 = vmulq_f32(v150, *v144);
                    v152.i32[3] = 0;
                    v323 = *a3[1];
                    v340 = v151;
                    v153 = vmulq_f32(v150, v323);
                    v153.i32[3] = 0;
                    v154 = atan2f(vaddv_f32(*&vpaddq_f32(v152, v152)), vaddv_f32(*&vpaddq_f32(v153, v153)));
                    v155 = vmulq_f32(v340, v305);
                    v155.i32[3] = 0;
                    v156 = vmulq_f32(v340, v323);
                    v156.i32[3] = 0;
                    if (v154 > atan2f(vaddv_f32(*&vpaddq_f32(v155, v155)), vaddv_f32(*&vpaddq_f32(v156, v156))))
                    {
                      v157 = *v145;
                      v158 = *v145;
                      v159 = v143;
                      while (1)
                      {
                        v160 = v9 + v159;
                        *(v160 + 2) = *(v9 + v159);
                        *(v160 + 6) = *(v9 + v159 + 4);
                        if (!v159)
                        {
                          break;
                        }

                        v161 = a3[2];
                        v162 = a3[3]->i64[0];
                        v163 = vsubq_f32(*(v162 + 16 * v158), *v161);
                        v306 = **a3;
                        v164 = vmulq_f32(v163, v306);
                        v164.i32[3] = 0;
                        v324 = *a3[1];
                        v341 = vsubq_f32(*(v162 + 16 * *(v160 - 2)), *v161);
                        v165 = vmulq_f32(v163, v324);
                        v165.i32[3] = 0;
                        v166 = atan2f(vaddv_f32(*&vpaddq_f32(v164, v164)), vaddv_f32(*&vpaddq_f32(v165, v165)));
                        v167 = vmulq_f32(v341, v306);
                        v167.i32[3] = 0;
                        v168 = vmulq_f32(v341, v324);
                        v168.i32[3] = 0;
                        v159 -= 8;
                        if (v166 <= atan2f(vaddv_f32(*&vpaddq_f32(v167, v167)), vaddv_f32(*&vpaddq_f32(v168, v168))))
                        {
                          v169 = v9 + v159 + 8;
                          goto LABEL_78;
                        }
                      }

                      v169 = v9;
LABEL_78:
                      *v169 = v157;
                      *(v169 + 4) = WORD2(v157);
                      v144 = *a3;
                    }

                    v142 = v145 + 2;
                    v143 += 8;
                  }

                  while (v145 + 2 != a2);
                }
              }
            }

            else if (v9 != a2)
            {
              v259 = v9 + 2;
              if (v9 + 2 != a2)
              {
                v260 = *a3;
                do
                {
                  v261 = a1[2];
                  v262 = *a1;
                  a1 = v259;
                  v263 = *a3[2];
                  v264 = a3[3]->i64[0];
                  v265 = vsubq_f32(*(v264 + 16 * v261), v263);
                  v266 = vsubq_f32(*(v264 + 16 * v262), v263);
                  v314 = *v260;
                  v267 = vmulq_f32(v265, *v260);
                  v267.i32[3] = 0;
                  v331 = *a3[1];
                  v348 = v266;
                  v268 = vmulq_f32(v265, v331);
                  v268.i32[3] = 0;
                  v269 = atan2f(vaddv_f32(*&vpaddq_f32(v267, v267)), vaddv_f32(*&vpaddq_f32(v268, v268)));
                  v270 = vmulq_f32(v348, v314);
                  v270.i32[3] = 0;
                  v271 = vmulq_f32(v348, v331);
                  v271.i32[3] = 0;
                  if (v269 > atan2f(vaddv_f32(*&vpaddq_f32(v270, v270)), vaddv_f32(*&vpaddq_f32(v271, v271))))
                  {
                    v272 = *a1;
                    v273 = *a1;
                    v274 = a1;
                    do
                    {
                      v275 = v274;
                      v276 = *(v274 - 2);
                      v274 -= 2;
                      *v275 = v276;
                      *(v275 + 2) = *(v275 - 2);
                      v277 = a3[2];
                      v278 = a3[3]->i64[0];
                      v279 = vsubq_f32(*(v278 + 16 * v273), *v277);
                      v315 = **a3;
                      v280 = vmulq_f32(v279, v315);
                      v280.i32[3] = 0;
                      v332 = *a3[1];
                      v349 = vsubq_f32(*(v278 + 16 * *(v275 - 4)), *v277);
                      v281 = vmulq_f32(v279, v332);
                      v281.i32[3] = 0;
                      v282 = atan2f(vaddv_f32(*&vpaddq_f32(v280, v280)), vaddv_f32(*&vpaddq_f32(v281, v281)));
                      v283 = vmulq_f32(v349, v315);
                      v283.i32[3] = 0;
                      v284 = vmulq_f32(v349, v332);
                      v284.i32[3] = 0;
                    }

                    while (v282 > atan2f(vaddv_f32(*&vpaddq_f32(v283, v283)), vaddv_f32(*&vpaddq_f32(v284, v284))));
                    *v274 = v272;
                    *(v274 + 2) = WORD2(v272);
                    v260 = *a3;
                  }

                  v259 = a1 + 2;
                }

                while (a1 + 2 != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (v9 != a2)
            {
              v170 = (v10 - 2) >> 1;
              v295 = v170;
              do
              {
                v171 = v170;
                if (v295 >= v170)
                {
                  v172 = (2 * v170) | 1;
                  v173 = &a1[2 * v172];
                  if (2 * v170 + 2 >= v10)
                  {
                    v176 = a3[3]->i64[0];
                    v185 = *a3[2];
                    v184 = **a3;
                    v183 = *a3[1];
                  }

                  else
                  {
                    v175 = a3[2];
                    v174 = a3[3];
                    v176 = v174->i64[0];
                    v177 = vsubq_f32(*(v174->i64[0] + 16 * *v173), *v175);
                    v291 = vsubq_f32(*(v174->i64[0] + 16 * v173[2]), *v175);
                    v307 = *v175;
                    v325 = **a3;
                    v178 = vmulq_f32(v177, v325);
                    v178.i32[3] = 0;
                    v342 = *a3[1];
                    v179 = vmulq_f32(v177, v342);
                    v179.i32[3] = 0;
                    v180 = atan2f(vaddv_f32(*&vpaddq_f32(v178, v178)), vaddv_f32(*&vpaddq_f32(v179, v179)));
                    v181 = vmulq_f32(v291, v325);
                    v181.i32[3] = 0;
                    v182 = vmulq_f32(v291, v342);
                    v182.i32[3] = 0;
                    if (v180 > atan2f(vaddv_f32(*&vpaddq_f32(v181, v181)), vaddv_f32(*&vpaddq_f32(v182, v182))))
                    {
                      v173 += 2;
                      v172 = 2 * v171 + 2;
                    }

                    v184 = v325;
                    v183 = v342;
                    v185 = v307;
                  }

                  v326 = v184;
                  v343 = v183;
                  v186 = &a1[2 * v171];
                  v187 = vsubq_f32(*(v176 + 16 * *v173), v185);
                  v308 = vsubq_f32(*(v176 + 16 * *v186), v185);
                  v188 = vmulq_f32(v184, v187);
                  v188.i32[3] = 0;
                  v189 = vmulq_f32(v183, v187);
                  v189.i32[3] = 0;
                  v190 = atan2f(vaddv_f32(*&vpaddq_f32(v188, v188)), vaddv_f32(*&vpaddq_f32(v189, v189)));
                  v191 = vmulq_f32(v326, v308);
                  v191.i32[3] = 0;
                  v192 = vmulq_f32(v343, v308);
                  v192.i32[3] = 0;
                  if (v190 <= atan2f(vaddv_f32(*&vpaddq_f32(v191, v191)), vaddv_f32(*&vpaddq_f32(v192, v192))))
                  {
                    v287 = *v186;
                    v289 = v171;
                    v193 = *v186;
                    do
                    {
                      v194 = v186;
                      v186 = v173;
                      v195 = *v173;
                      *(v194 + 2) = *(v173 + 2);
                      *v194 = v195;
                      if (v295 < v172)
                      {
                        break;
                      }

                      v196 = 2 * v172;
                      v197 = *a3[2];
                      v198 = **a3;
                      v172 = (2 * v172) | 1;
                      v173 = &a1[2 * v172];
                      v199 = v196 + 2;
                      v200 = a3[3]->i64[0];
                      v201 = *a3[1];
                      v327 = v198;
                      v344 = v201;
                      if (v196 + 2 < v10)
                      {
                        v202 = vsubq_f32(*(v200 + 16 * *v173), v197);
                        v292 = vsubq_f32(*(v200 + 16 * v173[2]), v197);
                        v203 = vmulq_f32(v198, v202);
                        v203.i32[3] = 0;
                        v204 = vmulq_f32(v201, v202);
                        v204.i32[3] = 0;
                        v309 = *a3[2];
                        v205 = atan2f(vaddv_f32(*&vpaddq_f32(v203, v203)), vaddv_f32(*&vpaddq_f32(v204, v204)));
                        v206 = vmulq_f32(v327, v292);
                        v206.i32[3] = 0;
                        v207 = vmulq_f32(v344, v292);
                        v207.i32[3] = 0;
                        v208 = atan2f(vaddv_f32(*&vpaddq_f32(v206, v206)), vaddv_f32(*&vpaddq_f32(v207, v207)));
                        v197 = v309;
                        v198 = v327;
                        v201 = v344;
                        if (v205 > v208)
                        {
                          v173 += 2;
                          v172 = v199;
                        }
                      }

                      v209 = vsubq_f32(*(v200 + 16 * *v173), v197);
                      v310 = vsubq_f32(*(v200 + 16 * v193), v197);
                      v210 = vmulq_f32(v198, v209);
                      v210.i32[3] = 0;
                      v211 = vmulq_f32(v201, v209);
                      v211.i32[3] = 0;
                      v212 = atan2f(vaddv_f32(*&vpaddq_f32(v210, v210)), vaddv_f32(*&vpaddq_f32(v211, v211)));
                      v213 = vmulq_f32(v327, v310);
                      v213.i32[3] = 0;
                      v214 = vmulq_f32(v344, v310);
                      v214.i32[3] = 0;
                    }

                    while (v212 <= atan2f(vaddv_f32(*&vpaddq_f32(v213, v213)), vaddv_f32(*&vpaddq_f32(v214, v214))));
                    v171 = v289;
                    *v186 = v287;
                    *(v186 + 2) = WORD2(v287);
                    a2 = v296;
                  }
                }

                v170 = v171 - 1;
              }

              while (v171);
              do
              {
                v297 = a2;
                v215 = 0;
                v216 = *a1;
                v217 = a1;
                do
                {
                  v218 = v217;
                  v219 = &v217[2 * v215];
                  v217 = v219 + 2;
                  v220 = 2 * v215;
                  v215 = (2 * v215) | 1;
                  v221 = v220 + 2;
                  if (v220 + 2 < v10)
                  {
                    v223 = v219[4];
                    v222 = v219 + 4;
                    v224 = a3[2];
                    v225 = a3[3]->i64[0];
                    v226 = vsubq_f32(*(v225 + 16 * *(v222 - 2)), *v224);
                    v311 = **a3;
                    v227 = vmulq_f32(v226, v311);
                    v227.i32[3] = 0;
                    v328 = *a3[1];
                    v345 = vsubq_f32(*(v225 + 16 * v223), *v224);
                    v228 = vmulq_f32(v226, v328);
                    v228.i32[3] = 0;
                    v229 = atan2f(vaddv_f32(*&vpaddq_f32(v227, v227)), vaddv_f32(*&vpaddq_f32(v228, v228)));
                    v230 = vmulq_f32(v345, v311);
                    v230.i32[3] = 0;
                    v231 = vmulq_f32(v345, v328);
                    v231.i32[3] = 0;
                    if (v229 > atan2f(vaddv_f32(*&vpaddq_f32(v230, v230)), vaddv_f32(*&vpaddq_f32(v231, v231))))
                    {
                      v217 = v222;
                      v215 = v221;
                    }
                  }

                  v232 = *v217;
                  *(v218 + 2) = *(v217 + 2);
                  *v218 = v232;
                }

                while (v215 <= ((v10 - 2) >> 1));
                a2 = v297 - 2;
                if (v217 == v297 - 2)
                {
                  *v217 = v216;
                  *(v217 + 2) = WORD2(v216);
                }

                else
                {
                  v233 = *a2;
                  *(v217 + 2) = *(v297 - 2);
                  *v217 = v233;
                  *(v297 - 2) = WORD2(v216);
                  *a2 = v216;
                  v234 = (v217 - a1 + 8) >> 3;
                  v235 = v234 < 2;
                  v236 = v234 - 2;
                  if (!v235)
                  {
                    v237 = v236 >> 1;
                    v238 = &a1[2 * (v236 >> 1)];
                    v239 = a3[2];
                    v240 = a3[3]->i64[0];
                    v241 = vsubq_f32(*(v240 + 16 * *v238), *v239);
                    v312 = **a3;
                    v242 = vmulq_f32(v241, v312);
                    v242.i32[3] = 0;
                    v329 = *a3[1];
                    v346 = vsubq_f32(*(v240 + 16 * *v217), *v239);
                    v243 = vmulq_f32(v241, v329);
                    v243.i32[3] = 0;
                    v244 = atan2f(vaddv_f32(*&vpaddq_f32(v242, v242)), vaddv_f32(*&vpaddq_f32(v243, v243)));
                    v245 = vmulq_f32(v346, v312);
                    v245.i32[3] = 0;
                    v246 = vmulq_f32(v346, v329);
                    v246.i32[3] = 0;
                    if (v244 > atan2f(vaddv_f32(*&vpaddq_f32(v245, v245)), vaddv_f32(*&vpaddq_f32(v246, v246))))
                    {
                      v247 = *v217;
                      v248 = *v217;
                      do
                      {
                        v249 = v217;
                        v217 = v238;
                        v250 = *v238;
                        *(v249 + 2) = *(v238 + 2);
                        *v249 = v250;
                        if (!v237)
                        {
                          break;
                        }

                        v237 = (v237 - 1) >> 1;
                        v238 = &a1[2 * v237];
                        v251 = a3[2];
                        v252 = a3[3]->i64[0];
                        v253 = vsubq_f32(*(v252 + 16 * *v238), *v251);
                        v313 = **a3;
                        v254 = vmulq_f32(v253, v313);
                        v254.i32[3] = 0;
                        v330 = *a3[1];
                        v347 = vsubq_f32(*(v252 + 16 * v248), *v251);
                        v255 = vmulq_f32(v253, v330);
                        v255.i32[3] = 0;
                        v256 = atan2f(vaddv_f32(*&vpaddq_f32(v254, v254)), vaddv_f32(*&vpaddq_f32(v255, v255)));
                        v257 = vmulq_f32(v347, v313);
                        v257.i32[3] = 0;
                        v258 = vmulq_f32(v347, v330);
                        v258.i32[3] = 0;
                      }

                      while (v256 > atan2f(vaddv_f32(*&vpaddq_f32(v257, v257)), vaddv_f32(*&vpaddq_f32(v258, v258))));
                      *v217 = v247;
                      *(v217 + 2) = WORD2(v247);
                      a2 = v297 - 2;
                    }
                  }
                }

                v235 = v10-- <= 2;
              }

              while (!v235);
            }

            return;
          }

          v11 = v10 >> 1;
          v12 = &v9[2 * (v10 >> 1)];
          if (v10 < 0x81)
          {
            sub_24BD8B6D4(&a1[2 * (v10 >> 1)], a1, v290, a3);
          }

          else
          {
            sub_24BD8B6D4(a1, &a1[2 * (v10 >> 1)], v290, a3);
            sub_24BD8B6D4(a1 + 2, v12 - 2, v286, a3);
            sub_24BD8B6D4(a1 + 4, &a1[2 * v11 + 2], v285, a3);
            sub_24BD8B6D4(v12 - 2, &a1[2 * (v10 >> 1)], &a1[2 * v11 + 2], a3);
            v13 = *a1;
            v14 = *v12;
            *(a1 + 2) = *(v12 + 2);
            *a1 = v14;
            *v12 = v13;
            *(v12 + 2) = WORD2(v13);
          }

          --a4;
          v15 = a3[3]->i64[0];
          v16 = *a3[2];
          v17 = **a3;
          v18 = *a3[1];
          v298 = v16;
          v316 = v18;
          v333 = v17;
          if (a5)
          {
            break;
          }

          v19 = vsubq_f32(*(v15 + 16 * *(a1 - 2)), v16);
          v288 = vsubq_f32(*(v15 + 16 * *a1), v16);
          v20 = vmulq_f32(v19, v17);
          v20.i32[3] = 0;
          v21 = vmulq_f32(v19, v18);
          v21.i32[3] = 0;
          v22 = atan2f(vaddv_f32(*&vpaddq_f32(v20, v20)), vaddv_f32(*&vpaddq_f32(v21, v21)));
          v23 = vmulq_f32(v288, v333);
          v23.i32[3] = 0;
          v24 = vmulq_f32(v288, v316);
          v24.i32[3] = 0;
          v25 = atan2f(vaddv_f32(*&vpaddq_f32(v23, v23)), vaddv_f32(*&vpaddq_f32(v24, v24)));
          v18 = v316;
          v17 = v333;
          v16 = v298;
          if (v22 > v25)
          {
            break;
          }

          v64 = *a1;
          v65 = vsubq_f32(*(v15 + 16 * *a1), v298);
          v294 = vsubq_f32(*(v15 + 16 * *v290), v298);
          v66 = vmulq_f32(v333, v65);
          v66.i32[3] = 0;
          v67 = vmulq_f32(v316, v65);
          v67.i32[3] = 0;
          v68 = atan2f(vaddv_f32(*&vpaddq_f32(v66, v66)), vaddv_f32(*&vpaddq_f32(v67, v67)));
          v69 = vmulq_f32(v333, v294);
          v69.i32[3] = 0;
          v70 = vmulq_f32(v316, v294);
          v70.i32[3] = 0;
          if (v68 <= atan2f(vaddv_f32(*&vpaddq_f32(v69, v69)), vaddv_f32(*&vpaddq_f32(v70, v70))))
          {
            v75 = a1 + 2;
            do
            {
              v9 = v75;
              if (v75 >= a2)
              {
                break;
              }

              v75 += 2;
              v76 = vsubq_f32(*(v15 + 16 * *v9), v298);
              v77 = vmulq_f32(v333, v76);
              v77.i32[3] = 0;
              v78 = vmulq_f32(v316, v76);
              v78.i32[3] = 0;
            }

            while (v68 <= atan2f(vaddv_f32(*&vpaddq_f32(v77, v77)), vaddv_f32(*&vpaddq_f32(v78, v78))));
          }

          else
          {
            v9 = a1;
            do
            {
              v71 = v9[2];
              v9 += 2;
              v72 = vsubq_f32(*(v15 + 16 * v71), v298);
              v73 = vmulq_f32(v333, v72);
              v73.i32[3] = 0;
              v74 = vmulq_f32(v316, v72);
              v74.i32[3] = 0;
            }

            while (v68 <= atan2f(vaddv_f32(*&vpaddq_f32(v73, v73)), vaddv_f32(*&vpaddq_f32(v74, v74))));
          }

          v79 = a2;
          if (v9 < a2)
          {
            v79 = a2;
            do
            {
              v80 = *(v79 - 2);
              v79 -= 2;
              v81 = vsubq_f32(*(v15 + 16 * v80), v298);
              v82 = vmulq_f32(v333, v81);
              v82.i32[3] = 0;
              v83 = vmulq_f32(v316, v81);
              v83.i32[3] = 0;
            }

            while (v68 > atan2f(vaddv_f32(*&vpaddq_f32(v82, v82)), vaddv_f32(*&vpaddq_f32(v83, v83))));
          }

          while (v9 < v79)
          {
            v84 = *v9;
            v85 = *v79;
            *(v9 + 2) = *(v79 + 2);
            *v9 = v85;
            *v79 = v84;
            *(v79 + 2) = WORD2(v84);
            v86 = a3[3]->i64[0];
            v335 = *a3[2];
            v87 = vsubq_f32(*(v86 + 16 * v64), v335);
            v318 = **a3;
            v88 = vmulq_f32(v87, v318);
            v88.i32[3] = 0;
            v300 = *a3[1];
            v89 = vmulq_f32(v87, v300);
            v89.i32[3] = 0;
            v90 = atan2f(vaddv_f32(*&vpaddq_f32(v88, v88)), vaddv_f32(*&vpaddq_f32(v89, v89)));
            do
            {
              v91 = v9[2];
              v9 += 2;
              v92 = vsubq_f32(*(v86 + 16 * v91), v335);
              v93 = vmulq_f32(v318, v92);
              v93.i32[3] = 0;
              v94 = vmulq_f32(v300, v92);
              v94.i32[3] = 0;
            }

            while (v90 <= atan2f(vaddv_f32(*&vpaddq_f32(v93, v93)), vaddv_f32(*&vpaddq_f32(v94, v94))));
            do
            {
              v95 = *(v79 - 2);
              v79 -= 2;
              v96 = vsubq_f32(*(v86 + 16 * v95), v335);
              v97 = vmulq_f32(v318, v96);
              v97.i32[3] = 0;
              v98 = vmulq_f32(v300, v96);
              v98.i32[3] = 0;
            }

            while (v90 > atan2f(vaddv_f32(*&vpaddq_f32(v97, v97)), vaddv_f32(*&vpaddq_f32(v98, v98))));
          }

          if (v9 - 2 != a1)
          {
            v99 = *(v9 - 2);
            *(a1 + 2) = *(v9 - 2);
            *a1 = v99;
          }

          a5 = 0;
          *(v9 - 2) = v64;
          *(v9 - 2) = WORD2(v64);
        }

        v26 = *a1;
        v27 = *a1;
        v28 = vsubq_f32(*(v15 + 16 * v27), v16);
        v29 = vmulq_f32(v28, v17);
        v29.i32[3] = 0;
        v30 = vmulq_f32(v28, v18);
        v30.i32[3] = 0;
        v31 = atan2f(vaddv_f32(*&vpaddq_f32(v29, v29)), vaddv_f32(*&vpaddq_f32(v30, v30)));
        v32 = 0;
        do
        {
          v33 = vsubq_f32(*(v15 + 16 * a1[v32 + 2]), v298);
          v34 = vmulq_f32(v333, v33);
          v34.i32[3] = 0;
          v35 = vmulq_f32(v316, v33);
          v35.i32[3] = 0;
          v32 += 2;
        }

        while (atan2f(vaddv_f32(*&vpaddq_f32(v34, v34)), vaddv_f32(*&vpaddq_f32(v35, v35))) > v31);
        v36 = &a1[v32];
        v37 = v296;
        if (v32 == 2)
        {
          v37 = v296;
          do
          {
            if (v36 >= v37)
            {
              break;
            }

            v42 = *(v37 - 2);
            v37 -= 2;
            v43 = vsubq_f32(*(v15 + 16 * v42), v298);
            v44 = vmulq_f32(v333, v43);
            v44.i32[3] = 0;
            v45 = vmulq_f32(v316, v43);
            v45.i32[3] = 0;
          }

          while (atan2f(vaddv_f32(*&vpaddq_f32(v44, v44)), vaddv_f32(*&vpaddq_f32(v45, v45))) <= v31);
        }

        else
        {
          do
          {
            v38 = *(v37 - 2);
            v37 -= 2;
            v39 = vsubq_f32(*(v15 + 16 * v38), v298);
            v40 = vmulq_f32(v333, v39);
            v40.i32[3] = 0;
            v41 = vmulq_f32(v316, v39);
            v41.i32[3] = 0;
          }

          while (atan2f(vaddv_f32(*&vpaddq_f32(v40, v40)), vaddv_f32(*&vpaddq_f32(v41, v41))) <= v31);
        }

        v9 = &a1[v32];
        if (v36 < v37)
        {
          v46 = v37;
          do
          {
            v47 = *v9;
            v48 = *v46;
            *(v9 + 2) = *(v46 + 4);
            *v9 = v48;
            *v46 = v47;
            *(v46 + 4) = WORD2(v47);
            v49 = a3[3]->i64[0];
            v334 = *a3[2];
            v50 = vsubq_f32(*(v49 + 16 * v27), v334);
            v299 = *a3[1];
            v317 = **a3;
            v51 = vmulq_f32(v50, v317);
            v51.i32[3] = 0;
            v52 = vmulq_f32(v50, v299);
            v52.i32[3] = 0;
            v53 = atan2f(vaddv_f32(*&vpaddq_f32(v51, v51)), vaddv_f32(*&vpaddq_f32(v52, v52)));
            do
            {
              v54 = v9[2];
              v9 += 2;
              v55 = vsubq_f32(*(v49 + 16 * v54), v334);
              v56 = vmulq_f32(v317, v55);
              v56.i32[3] = 0;
              v57 = vmulq_f32(v299, v55);
              v57.i32[3] = 0;
            }

            while (atan2f(vaddv_f32(*&vpaddq_f32(v56, v56)), vaddv_f32(*&vpaddq_f32(v57, v57))) > v53);
            do
            {
              v58 = *(v46 - 8);
              v46 -= 8;
              v59 = vsubq_f32(*(v49 + 16 * v58), v334);
              v60 = vmulq_f32(v317, v59);
              v60.i32[3] = 0;
              v61 = vmulq_f32(v299, v59);
              v61.i32[3] = 0;
            }

            while (atan2f(vaddv_f32(*&vpaddq_f32(v60, v60)), vaddv_f32(*&vpaddq_f32(v61, v61))) <= v53);
          }

          while (v9 < v46);
        }

        if (v9 - 2 != a1)
        {
          v62 = *(v9 - 2);
          *(a1 + 2) = *(v9 - 2);
          *a1 = v62;
        }

        *(v9 - 2) = v26;
        *(v9 - 2) = WORD2(v26);
        a2 = v296;
        if (v36 >= v37)
        {
          break;
        }

LABEL_35:
        sub_24BD8A2EC(a1, v9 - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      v63 = sub_24BD8BF34(a1, v9 - 2, a3);
      if (sub_24BD8BF34(v9, v296, a3))
      {
        break;
      }

      if (!v63)
      {
        goto LABEL_35;
      }
    }

    a2 = v9 - 2;
    if (!v63)
    {
      continue;
    }

    break;
  }
}

void sub_24BD8B6D4(unsigned int *a1, unsigned int *a2, unsigned int *a3, float32x4_t **a4)
{
  v8 = a4[2];
  v9 = a4[3]->i64[0];
  v10 = vsubq_f32(*(v9 + 16 * *a2), *v8);
  v46 = vsubq_f32(*(v9 + 16 * *a1), *v8);
  v47 = *v8;
  v50 = **a4;
  v11 = vmulq_f32(v10, v50);
  v11.i32[3] = 0;
  v53 = *a4[1];
  v12 = vmulq_f32(v10, v53);
  v12.i32[3] = 0;
  v13 = atan2f(vaddv_f32(*&vpaddq_f32(v11, v11)), vaddv_f32(*&vpaddq_f32(v12, v12)));
  v14 = vmulq_f32(v46, v50);
  v14.i32[3] = 0;
  v15 = vmulq_f32(v46, v53);
  v15.i32[3] = 0;
  v16 = atan2f(vaddv_f32(*&vpaddq_f32(v14, v14)), vaddv_f32(*&vpaddq_f32(v15, v15)));
  v17 = vsubq_f32(*(v9 + 16 * *a3), v47);
  v18 = vmulq_f32(v50, v17);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v53, v17);
  v19.i32[3] = 0;
  v20 = atan2f(vaddv_f32(*&vpaddq_f32(v18, v18)), vaddv_f32(*&vpaddq_f32(v19, v19)));
  if (v13 <= v16)
  {
    if (v20 > v13)
    {
      v23 = *a2;
      v24 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v24;
      *a3 = v23;
      *(a3 + 2) = WORD2(v23);
      v25 = a4[2];
      v26 = a4[3]->i64[0];
      v27 = vsubq_f32(*(v26 + 16 * *a2), *v25);
      v48 = **a4;
      v28 = vmulq_f32(v27, v48);
      v28.i32[3] = 0;
      v51 = *a4[1];
      v54 = vsubq_f32(*(v26 + 16 * *a1), *v25);
      v29 = vmulq_f32(v27, v51);
      v29.i32[3] = 0;
      v30 = atan2f(vaddv_f32(*&vpaddq_f32(v28, v28)), vaddv_f32(*&vpaddq_f32(v29, v29)));
      v31 = vmulq_f32(v54, v48);
      v31.i32[3] = 0;
      v32 = vmulq_f32(v54, v51);
      v32.i32[3] = 0;
      if (v30 > atan2f(vaddv_f32(*&vpaddq_f32(v31, v31)), vaddv_f32(*&vpaddq_f32(v32, v32))))
      {
        v33 = *a1;
        v34 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *a1 = v34;
        *a2 = v33;
        *(a2 + 2) = WORD2(v33);
      }
    }
  }

  else
  {
    v21 = *a1;
    if (v20 <= v13)
    {
      v35 = *a2;
      *(a1 + 2) = *(a2 + 2);
      *a1 = v35;
      *(a2 + 2) = WORD2(v21);
      *a2 = v21;
      v36 = a4[2];
      v37 = a4[3]->i64[0];
      v38 = vsubq_f32(*(v37 + 16 * *a3), *v36);
      v49 = **a4;
      v39 = vmulq_f32(v38, v49);
      v39.i32[3] = 0;
      v52 = *a4[1];
      v55 = vsubq_f32(*(v37 + 16 * v21), *v36);
      v40 = vmulq_f32(v38, v52);
      v40.i32[3] = 0;
      v41 = atan2f(vaddv_f32(*&vpaddq_f32(v39, v39)), vaddv_f32(*&vpaddq_f32(v40, v40)));
      v42 = vmulq_f32(v55, v49);
      v42.i32[3] = 0;
      v43 = vmulq_f32(v55, v52);
      v43.i32[3] = 0;
      if (v41 > atan2f(vaddv_f32(*&vpaddq_f32(v42, v42)), vaddv_f32(*&vpaddq_f32(v43, v43))))
      {
        v44 = *a2;
        v45 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *a2 = v45;
        *a3 = v44;
        *(a3 + 2) = WORD2(v44);
      }
    }

    else
    {
      v22 = *a3;
      *(a1 + 2) = *(a3 + 2);
      *a1 = v22;
      *(a3 + 2) = WORD2(v21);
      *a3 = v21;
    }
  }
}

void sub_24BD8B9CC(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, float32x4_t **a6)
{
  sub_24BD8B6D4(a1, a2, a3, a6);
  v12 = a6[2];
  v13 = a6[3]->i64[0];
  v14 = vsubq_f32(*(v13 + 16 * *a4), *v12);
  v78 = vsubq_f32(*(v13 + 16 * *a3), *v12);
  v81 = *v12;
  v90 = **a6;
  v15 = vmulq_f32(v14, v90);
  v15.i32[3] = 0;
  v86 = *a6[1];
  v16 = vmulq_f32(v14, v86);
  v16.i32[3] = 0;
  v17 = atan2f(vaddv_f32(*&vpaddq_f32(v15, v15)), vaddv_f32(*&vpaddq_f32(v16, v16)));
  v18 = vmulq_f32(v78, v90);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v78, v86);
  v19.i32[3] = 0;
  if (v17 > atan2f(vaddv_f32(*&vpaddq_f32(v18, v18)), vaddv_f32(*&vpaddq_f32(v19, v19))))
  {
    v20 = *a3;
    v21 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *a3 = v21;
    *a4 = v20;
    *(a4 + 2) = WORD2(v20);
    v22 = a6[2];
    v13 = a6[3]->i64[0];
    v23 = vsubq_f32(*(v13 + 16 * *a3), *v22);
    v79 = vsubq_f32(*(v13 + 16 * *a2), *v22);
    v81 = *v22;
    v90 = **a6;
    v24 = vmulq_f32(v23, v90);
    v24.i32[3] = 0;
    v86 = *a6[1];
    v25 = vmulq_f32(v23, v86);
    v25.i32[3] = 0;
    v26 = atan2f(vaddv_f32(*&vpaddq_f32(v24, v24)), vaddv_f32(*&vpaddq_f32(v25, v25)));
    v27 = vmulq_f32(v79, v90);
    v27.i32[3] = 0;
    v28 = vmulq_f32(v79, v86);
    v28.i32[3] = 0;
    if (v26 > atan2f(vaddv_f32(*&vpaddq_f32(v27, v27)), vaddv_f32(*&vpaddq_f32(v28, v28))))
    {
      v29 = *a2;
      v30 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v30;
      *a3 = v29;
      *(a3 + 2) = WORD2(v29);
      v31 = a6[2];
      v13 = a6[3]->i64[0];
      v32 = vsubq_f32(*(v13 + 16 * *a2), *v31);
      v80 = vsubq_f32(*(v13 + 16 * *a1), *v31);
      v81 = *v31;
      v90 = **a6;
      v33 = vmulq_f32(v32, v90);
      v33.i32[3] = 0;
      v86 = *a6[1];
      v34 = vmulq_f32(v32, v86);
      v34.i32[3] = 0;
      v35 = atan2f(vaddv_f32(*&vpaddq_f32(v33, v33)), vaddv_f32(*&vpaddq_f32(v34, v34)));
      v36 = vmulq_f32(v80, v90);
      v36.i32[3] = 0;
      v37 = vmulq_f32(v80, v86);
      v37.i32[3] = 0;
      if (v35 > atan2f(vaddv_f32(*&vpaddq_f32(v36, v36)), vaddv_f32(*&vpaddq_f32(v37, v37))))
      {
        v38 = *a1;
        v39 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *a1 = v39;
        *a2 = v38;
        *(a2 + 2) = WORD2(v38);
        v13 = a6[3]->i64[0];
        v90 = **a6;
        v81 = *a6[2];
        v86 = *a6[1];
      }
    }
  }

  v40 = vsubq_f32(*(v13 + 16 * *a5), v81);
  v82 = vsubq_f32(*(v13 + 16 * *a4), v81);
  v41 = vmulq_f32(v40, v90);
  v41.i32[3] = 0;
  v42 = vmulq_f32(v40, v86);
  v42.i32[3] = 0;
  v43 = atan2f(vaddv_f32(*&vpaddq_f32(v41, v41)), vaddv_f32(*&vpaddq_f32(v42, v42)));
  v44 = vmulq_f32(v82, v90);
  v44.i32[3] = 0;
  v45 = vmulq_f32(v82, v86);
  v45.i32[3] = 0;
  if (v43 > atan2f(vaddv_f32(*&vpaddq_f32(v44, v44)), vaddv_f32(*&vpaddq_f32(v45, v45))))
  {
    v46 = *a4;
    v47 = *a5;
    *(a4 + 2) = *(a5 + 2);
    *a4 = v47;
    *a5 = v46;
    *(a5 + 2) = WORD2(v46);
    v48 = a6[2];
    v49 = a6[3]->i64[0];
    v50 = vsubq_f32(*(v49 + 16 * *a4), *v48);
    v83 = **a6;
    v51 = vmulq_f32(v50, v83);
    v51.i32[3] = 0;
    v87 = *a6[1];
    v91 = vsubq_f32(*(v49 + 16 * *a3), *v48);
    v52 = vmulq_f32(v50, v87);
    v52.i32[3] = 0;
    v53 = atan2f(vaddv_f32(*&vpaddq_f32(v51, v51)), vaddv_f32(*&vpaddq_f32(v52, v52)));
    v54 = vmulq_f32(v91, v83);
    v54.i32[3] = 0;
    v55 = vmulq_f32(v91, v87);
    v55.i32[3] = 0;
    if (v53 > atan2f(vaddv_f32(*&vpaddq_f32(v54, v54)), vaddv_f32(*&vpaddq_f32(v55, v55))))
    {
      v56 = *a3;
      v57 = *a4;
      *(a3 + 2) = *(a4 + 2);
      *a3 = v57;
      *a4 = v56;
      *(a4 + 2) = WORD2(v56);
      v58 = a6[2];
      v59 = a6[3]->i64[0];
      v60 = vsubq_f32(*(v59 + 16 * *a3), *v58);
      v84 = **a6;
      v61 = vmulq_f32(v60, v84);
      v61.i32[3] = 0;
      v88 = *a6[1];
      v92 = vsubq_f32(*(v59 + 16 * *a2), *v58);
      v62 = vmulq_f32(v60, v88);
      v62.i32[3] = 0;
      v63 = atan2f(vaddv_f32(*&vpaddq_f32(v61, v61)), vaddv_f32(*&vpaddq_f32(v62, v62)));
      v64 = vmulq_f32(v92, v84);
      v64.i32[3] = 0;
      v65 = vmulq_f32(v92, v88);
      v65.i32[3] = 0;
      if (v63 > atan2f(vaddv_f32(*&vpaddq_f32(v64, v64)), vaddv_f32(*&vpaddq_f32(v65, v65))))
      {
        v66 = *a2;
        v67 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *a2 = v67;
        *a3 = v66;
        *(a3 + 2) = WORD2(v66);
        v68 = a6[2];
        v69 = a6[3]->i64[0];
        v70 = vsubq_f32(*(v69 + 16 * *a2), *v68);
        v85 = **a6;
        v71 = vmulq_f32(v70, v85);
        v71.i32[3] = 0;
        v89 = *a6[1];
        v93 = vsubq_f32(*(v69 + 16 * *a1), *v68);
        v72 = vmulq_f32(v70, v89);
        v72.i32[3] = 0;
        v73 = atan2f(vaddv_f32(*&vpaddq_f32(v71, v71)), vaddv_f32(*&vpaddq_f32(v72, v72)));
        v74 = vmulq_f32(v93, v85);
        v74.i32[3] = 0;
        v75 = vmulq_f32(v93, v89);
        v75.i32[3] = 0;
        if (v73 > atan2f(vaddv_f32(*&vpaddq_f32(v74, v74)), vaddv_f32(*&vpaddq_f32(v75, v75))))
        {
          v76 = *a1;
          v77 = *a2;
          *(a1 + 2) = *(a2 + 2);
          *a1 = v77;
          *a2 = v76;
          *(a2 + 2) = WORD2(v76);
        }
      }
    }
  }
}

BOOL sub_24BD8BF34(unsigned int *a1, unsigned int *a2, float32x4_t **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_24BD8B6D4(a1, a1 + 2, a2 - 2, a3);
        break;
      case 4:
        sub_24BD8B6D4(a1, a1 + 2, a1 + 4, a3);
        v44 = *(a2 - 2);
        v43 = a2 - 2;
        v45 = a3[2];
        v46 = a3[3]->i64[0];
        v47 = vsubq_f32(*(v46 + 16 * v44), *v45);
        v77 = **a3;
        v48 = vmulq_f32(v47, v77);
        v48.i32[3] = 0;
        v83 = *a3[1];
        v89 = vsubq_f32(*(v46 + 16 * a1[4]), *v45);
        v49 = vmulq_f32(v47, v83);
        v49.i32[3] = 0;
        v50 = atan2f(vaddv_f32(*&vpaddq_f32(v48, v48)), vaddv_f32(*&vpaddq_f32(v49, v49)));
        v51 = vmulq_f32(v89, v77);
        v51.i32[3] = 0;
        v52 = vmulq_f32(v89, v83);
        v52.i32[3] = 0;
        if (v50 > atan2f(vaddv_f32(*&vpaddq_f32(v51, v51)), vaddv_f32(*&vpaddq_f32(v52, v52))))
        {
          v53 = *(a1 + 2);
          v54 = *v43;
          *(a1 + 10) = *(v43 + 2);
          a1[4] = v54;
          *v43 = v53;
          *(v43 + 2) = WORD2(v53);
          v55 = a3[2];
          v56 = a3[3]->i64[0];
          v57 = vsubq_f32(*(v56 + 16 * a1[4]), *v55);
          v78 = **a3;
          v58 = vmulq_f32(v57, v78);
          v58.i32[3] = 0;
          v84 = *a3[1];
          v90 = vsubq_f32(*(v56 + 16 * a1[2]), *v55);
          v59 = vmulq_f32(v57, v84);
          v59.i32[3] = 0;
          v60 = atan2f(vaddv_f32(*&vpaddq_f32(v58, v58)), vaddv_f32(*&vpaddq_f32(v59, v59)));
          v61 = vmulq_f32(v90, v78);
          v61.i32[3] = 0;
          v62 = vmulq_f32(v90, v84);
          v62.i32[3] = 0;
          if (v60 > atan2f(vaddv_f32(*&vpaddq_f32(v61, v61)), vaddv_f32(*&vpaddq_f32(v62, v62))))
          {
            v63 = *(a1 + 1);
            *(a1 + 6) = *(a1 + 10);
            a1[2] = a1[4];
            a1[4] = v63;
            *(a1 + 10) = WORD2(v63);
            v64 = a3[2];
            v65 = a3[3]->i64[0];
            v66 = vsubq_f32(*(v65 + 16 * a1[2]), *v64);
            v79 = **a3;
            v67 = vmulq_f32(v66, v79);
            v67.i32[3] = 0;
            v85 = *a3[1];
            v91 = vsubq_f32(*(v65 + 16 * *a1), *v64);
            v68 = vmulq_f32(v66, v85);
            v68.i32[3] = 0;
            v69 = atan2f(vaddv_f32(*&vpaddq_f32(v67, v67)), vaddv_f32(*&vpaddq_f32(v68, v68)));
            v70 = vmulq_f32(v91, v79);
            v70.i32[3] = 0;
            v71 = vmulq_f32(v91, v85);
            v71.i32[3] = 0;
            if (v69 > atan2f(vaddv_f32(*&vpaddq_f32(v70, v70)), vaddv_f32(*&vpaddq_f32(v71, v71))))
            {
              v72 = *a1;
              *a1 = a1[2];
              *(a1 + 2) = *(a1 + 6);
              a1[2] = v72;
              *(a1 + 6) = WORD2(v72);
            }
          }
        }

        return 1;
      case 5:
        sub_24BD8B9CC(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    v8 = a3[2];
    v9 = a3[3]->i64[0];
    v10 = vsubq_f32(*(v9 + 16 * *(a2 - 2)), *v8);
    v74 = **a3;
    v11 = vmulq_f32(v10, v74);
    v11.i32[3] = 0;
    v80 = *a3[1];
    v86 = vsubq_f32(*(v9 + 16 * *a1), *v8);
    v12 = vmulq_f32(v10, v80);
    v12.i32[3] = 0;
    v13 = atan2f(vaddv_f32(*&vpaddq_f32(v11, v11)), vaddv_f32(*&vpaddq_f32(v12, v12)));
    v14 = vmulq_f32(v86, v74);
    v14.i32[3] = 0;
    v15 = vmulq_f32(v86, v80);
    v15.i32[3] = 0;
    if (v13 > atan2f(vaddv_f32(*&vpaddq_f32(v14, v14)), vaddv_f32(*&vpaddq_f32(v15, v15))))
    {
      v16 = *a1;
      v17 = *v7;
      *(a1 + 2) = *(v7 + 2);
      *a1 = v17;
      *v7 = v16;
      *(v7 + 2) = WORD2(v16);
    }

    return 1;
  }

LABEL_11:
  v18 = a1 + 4;
  sub_24BD8B6D4(a1, a1 + 2, a1 + 4, a3);
  v19 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = a3[2];
    v23 = a3[3]->i64[0];
    v24 = vsubq_f32(*(v23 + 16 * *v19), *v22);
    v75 = **a3;
    v25 = vmulq_f32(v24, v75);
    v25.i32[3] = 0;
    v81 = *a3[1];
    v87 = vsubq_f32(*(v23 + 16 * *v18), *v22);
    v26 = vmulq_f32(v24, v81);
    v26.i32[3] = 0;
    v27 = atan2f(vaddv_f32(*&vpaddq_f32(v25, v25)), vaddv_f32(*&vpaddq_f32(v26, v26)));
    v28 = vmulq_f32(v87, v75);
    v28.i32[3] = 0;
    v29 = vmulq_f32(v87, v81);
    v29.i32[3] = 0;
    if (v27 > atan2f(vaddv_f32(*&vpaddq_f32(v28, v28)), vaddv_f32(*&vpaddq_f32(v29, v29))))
    {
      v30 = *v19;
      v31 = *v19;
      v32 = v20;
      while (1)
      {
        v33 = a1 + v32;
        *(v33 + 6) = *(a1 + v32 + 16);
        *(v33 + 14) = *(a1 + v32 + 20);
        if (v32 == -16)
        {
          break;
        }

        v34 = a3[2];
        v35 = a3[3]->i64[0];
        v36 = vsubq_f32(*(v35 + 16 * v31), *v34);
        v76 = **a3;
        v37 = vmulq_f32(v36, v76);
        v37.i32[3] = 0;
        v82 = *a3[1];
        v88 = vsubq_f32(*(v35 + 16 * *(v33 + 2)), *v34);
        v38 = vmulq_f32(v36, v82);
        v38.i32[3] = 0;
        v39 = atan2f(vaddv_f32(*&vpaddq_f32(v37, v37)), vaddv_f32(*&vpaddq_f32(v38, v38)));
        v40 = vmulq_f32(v88, v76);
        v40.i32[3] = 0;
        v41 = vmulq_f32(v88, v82);
        v41.i32[3] = 0;
        v32 -= 8;
        if (v39 <= atan2f(vaddv_f32(*&vpaddq_f32(v40, v40)), vaddv_f32(*&vpaddq_f32(v41, v41))))
        {
          v42 = a1 + v32 + 24;
          goto LABEL_19;
        }
      }

      v42 = a1;
LABEL_19:
      *v42 = v30;
      *(v42 + 4) = WORD2(v30);
      if (++v21 == 8)
      {
        return v19 + 2 == a2;
      }
    }

    v18 = v19;
    v20 += 8;
    v19 += 2;
    if (v19 == a2)
    {
      return 1;
    }
  }
}

void sub_24BD8C4B4(uint64_t a1, unint64_t a2)
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
      sub_24BC8E01C();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_24BCA1868(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    sub_24BD81724(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD8C5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD8C5FC(double *a1, double *a2, double *a3, double *a4)
{
  v8 = acos(-1.0);
  v9 = cos(v8 * 0.444444444);
  v10 = a3[1];
  v11 = *a3 - *a2;
  v12 = v10 - a2[1];
  v13 = a3[2];
  v14 = v13 - a2[2];
  v15 = *a1 - *a3;
  v16 = a1[1] - v10;
  v17 = a1[2] - v13;
  v18 = v12 * v17 - v14 * v16;
  v19 = v14 * v15 - v11 * v17;
  v20 = v11 * v16 - v12 * v15;
  v21 = sqrt(v19 * v19 + v18 * v18 + v20 * v20);
  if (v21 == 0.0)
  {
    return 0;
  }

  v22 = a4[2] - v13;
  v23 = a4[1] - v10;
  v24 = -v12;
  v25 = *a4 - *a3;
  v26 = v23 * -v14 + v12 * v22;
  v27 = v22 * -v11 + v14 * v25;
  v28 = v25 * v24 + v11 * v23;
  v29 = sqrt(v27 * v27 + v26 * v26 + v28 * v28);
  return fabs(v29) < 1.0e-11 || v19 / v21 * (v27 / v29) + v18 / v21 * (v26 / v29) + v20 / v21 * (v28 / v29) < v9;
}

BOOL sub_24BD8C740(double *a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = a1[1];
  v5 = a2[2];
  v6 = a1[2];
  v7 = a3[1];
  v8 = a3[2];
  v9 = sqrt((v3 - v4) * (v3 - v4) + (*a2 - *a1) * (*a2 - *a1) + (v5 - v6) * (v5 - v6));
  v10 = sqrt((v7 - v3) * (v7 - v3) + (*a3 - *a2) * (*a3 - *a2) + (v8 - v5) * (v8 - v5));
  v11 = sqrt((v7 - v4) * (v7 - v4) + (*a3 - *a1) * (*a3 - *a1) + (v8 - v6) * (v8 - v6));
  return ((v11 + v9 + v10) * 0.5 - v11) * (((v11 + v9 + v10) * 0.5 - v10) * (((v11 + v9 + v10) * 0.5 - v9) * 8.0)) / (v11 * (v9 * v10)) < 0.02;
}

void *sub_24BD8C7F8(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BD8C814(unsigned int a1, float a2)
{
  v3 = a1 * a1;
  v4 = 3 * (a1 * a1 + a1);
  sub_24BC95764(&v39, (v4 + 6));
  sub_24BCA123C(&__p, (2 * v4));
  v5 = 0;
  v6 = v39;
  v7 = v39;
  v8 = a2;
  *(v39 + 2) = a2;
  v9 = v7 + 8;
  *v6 = 0;
  v10 = a1;
  v11 = 1;
  while (1)
  {
    if (a1)
    {
      v12 = __sincosf_stret((((v5 / a1) * -2.0) * 1.4835) + 1.4835);
      v13 = 0;
      v14 = &v9[12 * v11];
      do
      {
        v15 = v13 * 6.28318531 / a1;
        v16 = __sincosf_stret(v15);
        v8 = a2;
        *(v14 - 1) = vmul_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v16.__sinval), LODWORD(v16.__cosval)), v12.__cosval), a2);
        *v14 = v12.__sinval * a2;
        v14 += 3;
        ++v13;
      }

      while (a1 != v13);
      v11 += v13;
    }

    if (v5++ == a1)
    {
      v18 = v6 + 3 * v11;
      *v18 = 0;
      v18[2] = -v8;
      if (a1)
      {
        v19 = (__p + 8);
        v20 = 2;
        v21 = a1;
        do
        {
          *(v19 - 2) = 0;
          *(v19 - 1) = v20 - 1;
          if (--v21)
          {
            v22 = v20;
          }

          else
          {
            v22 = 1;
          }

          *v19 = v22;
          v19 += 3;
          ++v20;
        }

        while (v21);
        v23 = 0;
        v24 = 0;
        v25 = __p;
        v26 = a1;
        v27 = a1;
        do
        {
          v28 = v24++ * a1 + 1;
          v29 = v24 * a1 + 1;
          v30 = -8 - 12 * v27;
          v31 = &v25[12 * v27];
          v32 = 1;
          do
          {
            *v31 = v23 + v32;
            *(v31 + 1) = v26 + v32;
            if (v32 == a1)
            {
              v33 = 0;
            }

            else
            {
              v33 = v32;
            }

            *(v31 + 2) = v33 + v29;
            *(v31 + 3) = v23 + v32;
            *(v31 + 4) = v33 + v29;
            *(v31 + 5) = v33 + v28;
            v27 += 2;
            v30 -= 24;
            ++v32;
            v31 += 24;
          }

          while (v32 - a1 != 1);
          v26 += a1;
          v23 += a1;
        }

        while (v24 != a1);
        v34 = __p - v30;
        v35 = 1;
        do
        {
          if (--v10)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          *(v34 - 2) = v36 + v3 + 1;
          *(v34 - 1) = v3 + v35;
          *v34 = v3 + 1 + a1;
          v34 += 3;
          ++v35;
        }

        while (v10);
      }

      sub_24BD51FA4();
    }
  }
}

void sub_24BD8CAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  v21 = *(v19 + 8);
  if (v21)
  {
    sub_24BC9EC78(v21);
  }

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

void sub_24BD8CAE8(_OWORD *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0u;
  a1[1] = 0u;
  sub_24BD51FA4();
}

void sub_24BD8CCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  __cxa_free_exception(v24);
  v26 = *(v23 + 24);
  if (v26)
  {
    sub_24BC9EC78(v26);
  }

  v27 = *(v23 + 8);
  if (v27)
  {
    sub_24BC9EC78(v27);
  }

  _Unwind_Resume(a1);
}

void sub_24BD8CD94(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_24BD8C814(0x20u, 0.5);
}

void sub_24BD8CE4C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_24BC9EC78(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    sub_24BC9EC78(v5);
  }

  _Unwind_Resume(a1);
}

double sub_24BD8CE88(void *a1)
{
  *&result = 0x20000000200;
  *a1 = 0x20000000200;
  return result;
}

double sub_24BD8CE94(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24BD8CEA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  return a1;
}

void sub_24BD8CF20(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_24BC95764(&v18, 0xC00000uLL);
  v3 = 0;
  v4 = 0;
  while (1)
  {
    snprintf(__str, 3uLL, "%02zu", v4);
    v5 = strlen(__str);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      break;
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memcpy(&__dst, __str, v5);
    }

    __dst.__r_.__value_.__s.__data_[v6] = 0;
    v7 = std::string::append(&__dst, ".png");
    v8 = v7->__r_.__value_.__r.__words[0];
    v19[0] = v7->__r_.__value_.__l.__size_;
    *(v19 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
    v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__r.__words[0] = v8;
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v19 + 7);
    __p.__r_.__value_.__l.__size_ = v19[0];
    *(&__p.__r_.__value_.__s + 23) = v9;
    sub_24BCBBCB8(&__p, a2, &v20);
    if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&pn, v20.__pn_.__r_.__value_.__l.__data_, v20.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(v20.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      pn = v20.__pn_;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v20.__pn_.__r_.__value_.__r.__words[0] = 0;
    LODWORD(v20.__pn_.__r_.__value_.__r.__words[1]) = 0;
    v20.__pn_.__r_.__value_.__r.__words[2] = 0;
    sub_24BCCA6F0(&__p, &pn);
    sub_24BD23084(&__p, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = 0;
    v11 = v20.__pn_.__r_.__value_.__r.__words[2];
    v12 = v18 + v3;
    do
    {
      *&v12[v10] = *(v11 + v10);
      v10 += 4;
    }

    while (v10 != 3145728);
    MEMORY[0x24C254890]();
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    ++v4;
    v3 += 3145728;
    if (v4 == 16)
    {
      *&v20.__pn_.__r_.__value_.__l.__data_ = xmmword_24BFED0A0;
      memset(v13, 0, sizeof(v13));
      sub_24BCC9910(v13, &v20, &v20.__pn_.__r_.__value_.__r.__words[2], 4uLL);
      sub_24BCCA338();
    }
  }

  sub_24BC8DF40();
}

void sub_24BD8D238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD8D2FC(uint64_t a1, void *a2, _OWORD *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 64) = a2;
  *(a1 + 88) = 0u;
  v5 = (a1 + 88);
  *(a1 + 136) = 0u;
  v6 = a1 + 136;
  *(a1 + 184) = 0u;
  v18 = (a1 + 184);
  *(a1 + 232) = 0u;
  v17 = (a1 + 232);
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = *a3;
  *(a1 + 272) = 0;
  *v23 = 0u;
  v24 = 0;
  v27[16] = 0;
  v27[17] = 0;
  v26 = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BCDED78(v27);
  v16 = a2[17];
  v15 = a2[16];
  v19 = (a2[14] - a2[13]) >> 2;
  sub_24BD8D78C(v5, v19);
  sub_24BD3EC5C((a1 + 112), v19);
  if (v19)
  {
    v7 = 0;
    do
    {
      v8 = (*(*(a1 + 64) + 8) + 16 * *(*(a1 + 64) + 176));
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v9);
      }

      v11 = 0;
      v20 = *(*(v10 + 40) + 16 * v7);
      do
      {
        *&__p[v11] = *(&__p[-2] + v11);
        ++v11;
      }

      while (v11 != 3);
      v12 = *(a1 + 112) + 24 * v7;
      *v12 = *__p;
      *(v12 + 16) = v22;
      ++v7;
    }

    while (v7 != v19);
  }

  sub_24BCB29DC(v6, v19, 0);
  v13 = -858993459 * ((v16 - v15) >> 2);
  v14 = v13 >> 1;
  sub_24BD8D78C((a1 + 160), v14);
  sub_24BC8CAB0(v18, v14);
  sub_24BC8CAB0((a1 + 208), v13);
  sub_24BC8CAB0(v17, v14);
  sub_24BD8EA90();
}

void sub_24BD8D6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v31 = *a14;
  if (*a14)
  {
    *(v28 + 240) = v31;
    operator delete(v31);
  }

  v32 = *(v28 + 208);
  if (v32)
  {
    *(v28 + 216) = v32;
    operator delete(v32);
  }

  v33 = *a15;
  if (*a15)
  {
    *(v28 + 192) = v33;
    operator delete(v33);
  }

  v34 = *(v28 + 160);
  if (v34)
  {
    *(v28 + 168) = v34;
    operator delete(v34);
  }

  if (*v29)
  {
    operator delete(*v29);
  }

  v35 = *(v28 + 112);
  if (v35)
  {
    *(v28 + 120) = v35;
    operator delete(v35);
  }

  v36 = *a10;
  if (*a10)
  {
    *(v28 + 96) = v36;
    operator delete(v36);
  }

  v37 = *(v28 + 80);
  if (v37)
  {
    sub_24BC9EC78(v37);
  }

  sub_24BC9F10C(v28 + 24);
  v38 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void sub_24BD8D78C(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BD8E8C4(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 80 * a2;
  }
}

void sub_24BD8D7CC(uint64_t a1)
{
  v102 = 0u;
  v103 = 0;
  v108 = 0;
  v109 = 0;
  v105 = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BCDED78(v106);
  v2 = *(a1 + 64);
  v4 = v2[13];
  v3 = v2[14];
  v6 = v2[16];
  v5 = v2[17];
  v7 = llroundf(*(a1 + 256) * ((v2[20] - v2[19]) >> 2));
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = (*(*v8 + 48))(v8);
    if (v7 < 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      goto LABEL_73;
    }
  }

  else if (v7 < 1)
  {
    goto LABEL_73;
  }

  sub_24BD8DF48(a1);
  v11 = *(a1 + 48);
  if (v11 && ((*(*v11 + 48))(v11) & 1) != 0)
  {
    goto LABEL_73;
  }

  v74 = v4;
  v75 = v3;
  v81 = *(a1 + 64);
  v82 = -1;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = a1 + 88;
  v87 = a1 + 112;
  v88 = a1 + 136;
  v89 = a1 + 160;
  v90 = a1 + 184;
  v91 = a1 + 208;
  v92 = a1 + 232;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0;
  v97 = v98;
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v12 = -858993459 * ((v5 - v6) >> 2);
  sub_24BC9FEFC(__p, v12);
  memset(v79, 0, sizeof(v79));
  if (-858993459 * ((v5 - v6) >> 2))
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v78 = v13;
      v15 = *sub_24BCB9024(*(a1 + 64) + 104, &v78);
      v16 = __p[0];
      v17 = v15 >> 6;
      v18 = 1 << v15;
      if ((v18 & *(__p[0] + v17)) == 0)
      {
        *(__p[0] + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        v16[v17] |= v18;
        if (sub_24BD8F508(&v81, &v78, v79))
        {
          v19 = *(a1 + 72);
          v20 = v78;
          v21 = *(a1 + 208);
          v22 = *(v21 + 4 * v78);
          v23 = *(v19 + 24) + 32 * v22;
          *v23 = *(**(v19 + 16) + 4 * v22);
          *(v23 + 12) = -1;
          *(v23 + 4) = -1;
          *(v23 + 20) = v22;
          *(v23 + 24) = -1;
          *(v23 + 28) = 0;
          sub_24BD8E1D8(*v19, *(v21 + 4 * v20));
        }

        v24 = *(a1 + 48);
        if (v24)
        {
          if ((*(*v24 + 48))(v24))
          {
            break;
          }
        }
      }

      v14 = ++v13 < v12;
      if (v12 == v13)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v14 = 0;
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (!v14)
  {
    v108 = 0;
    v109 = 0;
    v105 = std::chrono::system_clock::now().__d_.__rep_;
    sub_24BCDED78(v107);
    rep = std::chrono::system_clock::now().__d_.__rep_;
    sub_24BCDED78(v106);
    v25 = *(a1 + 72);
    v26 = *v25;
    if (**v25)
    {
      v27 = v7 < 1;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      while (1)
      {
        v28 = *(v25[3] + 32 * v26[1] + 20);
        LODWORD(v79[0]) = *(*(a1 + 232) + 4 * v28);
        v29 = *(a1 + 64);
        LODWORD(__p[0]) = v79[0];
        v30 = sub_24BCB9024(v29 + 104, __p);
        v31 = *(a1 + 72);
        if (*(v30 + 12) != -1 && *(v31[3] + 32 * v28 + 20) != -1)
        {
          break;
        }

        v49 = *v31;
        sub_24BD8E24C(*v31, v28, -3.4028e38);
        v50 = v31[3] + 32 * sub_24BD8E2F8(v49);
        *v50 = 0;
        *(v50 + 4) = -1;
        *(v50 + 12) = -1;
        *(v50 + 20) = -1;
        *(v50 + 28) = 0;
LABEL_52:
        v25 = *(a1 + 72);
        v26 = *v25;
        if (**v25)
        {
          v58 = v7 < 1;
        }

        else
        {
          v58 = 1;
        }

        if (v58)
        {
          goto LABEL_57;
        }
      }

      if (*(*(a1 + 184) + 4 * v28) >= 3.4028e38)
      {
        goto LABEL_57;
      }

      v32 = *(sub_24BCB9024(*(a1 + 64) + 104, v79) + 12);
      v78 = v32;
      v33 = *(a1 + 64);
      v34 = sub_24BCB9024(v33 + 104, v79);
      v35 = *(sub_24BCB9024(v33 + 104, v34) + 12);
      v77 = v35;
      v36 = sub_24BD8FD38(&v81, v79);
      v37 = v36;
      if (*(a1 + 268) == 1 && v36 >= 1)
      {
        sub_24BD8E120(a1, &v78, &v77);
      }

      if (*(a1 + 269) != 1 || *(a1 + 56) == -1 || v37 < 1)
      {
LABEL_49:
        v57 = *(a1 + 48);
        if (v57 && ((*(*v57 + 48))(v57) & 1) != 0)
        {
          goto LABEL_67;
        }

        v7 -= v37;
        goto LABEL_52;
      }

      v38 = *(a1 + 64);
      LODWORD(__p[0]) = v32;
      v39 = v35;
      if (*sub_24BCB9014((v38 + 104), __p) != -1 || (v51 = *(a1 + 64), LODWORD(__p[0]) = v35, *sub_24BCB9014((v51 + 104), __p) == -1))
      {
        v40 = *(a1 + 64);
        LODWORD(__p[0]) = v32;
        if (*sub_24BCB9014((v40 + 104), __p) == -1)
        {
          goto LABEL_49;
        }

        v41 = *(a1 + 64);
        LODWORD(__p[0]) = v35;
        if (*sub_24BCB9014((v41 + 104), __p) != -1)
        {
          goto LABEL_49;
        }

        v42 = *(*(a1 + 64) + 8);
        v43 = (v42 + 16 * *(a1 + 56));
        v45 = *v43;
        v44 = v43[1];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v44);
          v42 = *(*(a1 + 64) + 8);
        }

        *(*(v45 + 40) + 4 * v32) = v32;
        v46 = (v42 + 16 * *(a1 + 56));
        v48 = *v46;
        v47 = v46[1];
        v39 = v32;
        if (!v47)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v52 = *(*(a1 + 64) + 8);
        v53 = (v52 + 16 * *(a1 + 56));
        v55 = *v53;
        v54 = v53[1];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v54);
          v52 = *(*(a1 + 64) + 8);
        }

        *(*(v55 + 40) + 4 * v32) = v35;
        v56 = (v52 + 16 * *(a1 + 56));
        v48 = *v56;
        v47 = v56[1];
        if (!v47)
        {
          goto LABEL_48;
        }
      }

      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v47);
LABEL_48:
      *(*(v48 + 40) + 4 * v35) = v39;
      goto LABEL_49;
    }

LABEL_57:
    if (((v75 - v74) & 0x3FFFFFFFCLL) != 0)
    {
      v59 = 0;
      v60 = 0;
      v61 = ((v75 - v74) >> 2);
      while (1)
      {
        v62 = *(a1 + 64);
        LODWORD(__p[0]) = v60;
        if (*sub_24BCB9014((v62 + 104), __p) != -1)
        {
          v63 = (*(a1 + 112) + v59);
          v64 = *v63;
          v65 = v63[1].f64[0];
          v66 = (*(*(a1 + 64) + 8) + 16 * *(*(a1 + 64) + 176));
          v68 = *v66;
          v67 = v66[1];
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            v76 = v64;
            sub_24BC9EC78(v67);
            v64 = v76;
          }

          *&v69 = vcvt_f32_f64(v64);
          *&v70 = v65;
          *(&v69 + 1) = v70;
          *(*(v68 + 40) + 16 * v60) = v69;
        }

        v71 = *(a1 + 48);
        if (v71)
        {
          if ((*(*v71 + 48))(v71))
          {
            break;
          }
        }

        ++v60;
        v59 += 24;
        if (v61 == v60)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
LABEL_66:
      v108 = 0;
      v109 = 0;
      v105 = std::chrono::system_clock::now().__d_.__rep_;
      sub_24BCDED78(v107);
    }
  }

LABEL_67:
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  sub_24BCC8A84(&v97, v98[0]);
  for (i = 0; i != -48; i -= 24)
  {
    v73 = *(&v94 + i + 8);
    if (v73)
    {
      *(&v95 + i) = v73;
      operator delete(v73);
    }
  }

LABEL_73:
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102);
  }
}

void sub_24BD8DEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_24BD8E860(&a21);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BD8DF48(void *a1)
{
  v2 = (*(a1[8] + 160) - *(a1[8] + 152)) >> 2;
  sub_24BCB2008(v33, 3uLL);
  if (!v2)
  {
    v5 = v33[0];
    if (!v33[0])
    {
      return;
    }

    goto LABEL_10;
  }

  v3 = 0;
  do
  {
    v4 = a1[8];
    LODWORD(v31[0]) = v3;
    sub_24BCD567C(v4, v31, v33);
    v5 = v33[0];
    v6 = a1[14];
    v7 = (v6 + 24 * *(v33[0] + 4));
    v8 = (v6 + 24 * *v33[0]);
    v9 = v8[1];
    v10 = *v7 - *v8;
    v11 = v7[1] - v9;
    v12 = v8[2];
    v13 = v7[2] - v12;
    v14 = (v6 + 24 * *(v33[0] + 8));
    v15 = *v8 - *v14;
    v16 = v9 - v14[1];
    v17 = v12 - v14[2];
    v18 = v11 * v17 - v13 * v16;
    v19 = v13 * v15 - v10 * v17;
    v20 = v10 * v16 - v11 * v15;
    v21 = sqrt(v19 * v19 + v18 * v18 + v20 * v20);
    if (v21 != 0.0)
    {
      v22 = 0;
      v23 = v18 / v21;
      v24 = v19 / v21;
      v25.f64[0] = v20 / v21;
      v26 = v9 * v24 + v23 * *v8 + v25.f64[0] * v12;
      v31[0] = v23 * v23;
      v31[1] = v23 * v24;
      v31[2] = v23 * v25.f64[0];
      v31[3] = v24 * v24;
      v31[4] = v24 * v25.f64[0];
      v31[5] = v25.f64[0] * v25.f64[0];
      v31[6] = -(v26 * v23);
      v31[7] = -(v26 * v24);
      v25.f64[1] = v26;
      v27.f64[1] = v26;
      v27.f64[0] = -v26;
      v32 = vmulq_f64(v25, v27);
      v28 = a1[11];
      do
      {
        v29 = 0;
        v30 = v28 + 80 * v5[v22];
        do
        {
          *(v30 + v29 * 8) = vaddq_f64(*&v31[v29], *(v30 + v29 * 8));
          v29 += 2;
        }

        while (v29 != 10);
        ++v22;
      }

      while (v22 != 3);
    }

    ++v3;
  }

  while (v3 != v2);
  if (v5)
  {
LABEL_10:
    v33[1] = v5;
    operator delete(v5);
  }
}

void sub_24BD8E104(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_24BD8E120(uint64_t a1, _DWORD *a2, int *a3)
{
  v4 = 0;
  v12 = *MEMORY[0x277D85DE8];
  ++*(a1 + 272);
  v5 = *a3;
  v11[0] = *a2;
  v11[1] = v5;
  do
  {
    v6 = v11[v4];
    v7 = *(a1 + 64);
    v10 = v11[v4];
    result = sub_24BCB9014((v7 + 104), &v10);
    if (*result == -1)
    {
      *(*a1 + 4 * v6) = *(a1 + 272);
    }

    ++v4;
  }

  while (v4 != 2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD8E1D8(uint64_t result, unsigned int a2)
{
  v2 = **(result + 16);
  v3 = v2 + 32 * a2;
  *(v3 + 24) = 0;
  *(v3 + 4) = -1;
  *(v3 + 16) = -1;
  *(v3 + 28) = 0;
  v4 = *(result + 4);
  if (v4 == -1)
  {
    *(v3 + 8) = a2;
    *(v3 + 12) = a2;
  }

  else
  {
    v5 = v2 + 32 * v4;
    v6 = *(v5 + 8);
    *(v2 + 32 * v6 + 12) = a2;
    *(v3 + 8) = v6;
    *(v3 + 12) = v4;
    *(v5 + 8) = a2;
    if (*v3 >= *v5)
    {
      goto LABEL_6;
    }
  }

  *(result + 4) = a2;
LABEL_6:
  ++*result;
  return result;
}

uint64_t sub_24BD8E24C(uint64_t result, unsigned int a2, float a3)
{
  v3 = a2;
  v4 = **(result + 16);
  v5 = v4 + 32 * a2;
  if (*v5 >= a3)
  {
    v7 = result;
    *v5 = a3;
    v8 = *(v5 + 4);
    if (v8 != -1 && *(v4 + 32 * v8) > a3)
    {
      sub_24BD8E454(result, a2, v8);
      result = sub_24BD8E4F0(v7, v8);
      v4 = **(v7 + 16);
      a3 = *(v4 + 32 * v3);
    }

    if (a3 < *(v4 + 32 * *(v7 + 4)))
    {
      *(v7 + 4) = a2;
    }
  }

  return result;
}

uint64_t sub_24BD8E2F8(uint64_t a1)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  v1 = *(a1 + 4);
  if (v1 != -1)
  {
    v3 = **(a1 + 16);
    v4 = v3 + 32 * v1;
    v5 = *(v4 + 16);
    if (v5 != -1)
    {
      sub_24BC8CAB0(&__p, *(v4 + 24));
      v3 = **(a1 + 16);
      v6 = v3 + 32 * v1;
      v8 = *(v6 + 24);
      v7 = (v6 + 24);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = __p;
        do
        {
          v10[v9] = v5;
          v5 = *(v3 + 32 * v5 + 12);
          ++v9;
          v11 = *v7;
        }

        while (v9 < v11);
        if (v11 >= 1)
        {
          v12 = __p;
          v13 = *(a1 + 4);
          v14 = v3 + 32 * v13;
          v17 = *(v14 + 8);
          v15 = (v14 + 8);
          v16 = v17;
          do
          {
            v18 = *v12++;
            *(v3 + 32 * v16 + 12) = v18;
            v19 = (v3 + 32 * v18);
            v19[2] = v16;
            v19[3] = v13;
            *v15 = v18;
            v19[1] = -1;
            v16 = v18;
            --v11;
          }

          while (v11);
        }
      }
    }

    v21 = *(v3 + 32 * v1 + 8);
    v20 = *(v3 + 32 * v1 + 12);
    *(v3 + 32 * v21 + 12) = v20;
    *(v3 + 32 * v20 + 8) = v21;
    if (v1 == v20)
    {
      *(a1 + 4) = -1;
    }

    else
    {
      *(a1 + 4) = v20;
      sub_24BD8E570(a1);
    }

    --*a1;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  return v1;
}

void sub_24BD8E438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD8E454(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = **(result + 16);
  v4 = v3 + 32 * a2;
  v5 = *(v4 + 12);
  if (v5 == a2)
  {
    v6 = a3;
    *(v3 + 32 * a3 + 16) = -1;
  }

  else
  {
    v7 = *(v4 + 8);
    *(v3 + 32 * v5 + 8) = v7;
    *(v3 + 32 * v7 + 12) = v5;
    v6 = a3;
    v8 = v3 + 32 * a3;
    v10 = *(v8 + 16);
    v9 = (v8 + 16);
    if (v10 == a2)
    {
      *v9 = *(v4 + 12);
    }
  }

  --*(v3 + 32 * v6 + 24);
  v11 = *(result + 4);
  v12 = v3 + 32 * v11;
  v13 = *(v12 + 12);
  *(v3 + 32 * v13 + 8) = a2;
  *(v4 + 8) = v11;
  *(v4 + 12) = v13;
  *(v12 + 12) = a2;
  *(v4 + 4) = -1;
  *(v4 + 28) = 0;
  return result;
}

uint64_t sub_24BD8E4F0(uint64_t result, unsigned int a2)
{
  v2 = **(result + 16) + 32 * a2;
  v3 = *(v2 + 4);
  if (v3 != -1)
  {
    v4 = result;
    while (1)
    {
      v5 = v3;
      if ((*(v2 + 28) & 1) == 0)
      {
        break;
      }

      result = sub_24BD8E454(v4, a2, v3);
      v2 = **(v4 + 16) + 32 * v5;
      v3 = *(v2 + 4);
      a2 = v5;
      if (v3 == -1)
      {
        return result;
      }
    }

    *(v2 + 28) = 1;
  }

  return result;
}

void sub_24BD8E570(uint64_t a1)
{
  __b = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v2 = vcvtmd_s64_f64(log(*a1) / 0.481211825);
  v3 = (v2 + 2);
  sub_24BC8CAB0(&__b, v3);
  if (v2 >= -1)
  {
    memset(__b, 255, 4 * (v2 + 2));
  }

  v4 = 0;
  v5 = *(a1 + 4);
  v6 = v5;
  do
  {
    v6 = *(**(a1 + 16) + 32 * v6 + 12);
    ++v4;
  }

  while (v6 != v5);
  sub_24BC8CAB0(&__p, v4);
  v7 = __p;
  v8 = **(a1 + 16);
  v9 = v4;
  do
  {
    *v7++ = v5;
    v5 = *(v8 + 32 * v5 + 12);
    --v9;
  }

  while (v9);
  v10 = 0;
  v11 = __b;
  do
  {
    v12 = *(__p + v10);
    v13 = *(**(a1 + 16) + 32 * v12 + 24);
    for (i = v11[v13]; i != -1; i = v19[1])
    {
      v15 = **(a1 + 16);
      v16 = *(v15 + 32 * i);
      v17 = *(v15 + 32 * v12);
      if (v16 >= v17)
      {
        v18 = i;
      }

      else
      {
        v18 = v12;
      }

      if (v16 < v17)
      {
        LODWORD(v12) = i;
      }

      sub_24BD8E7DC(a1, v18, v12);
      v11 = __b;
      v19 = __b + 4 * v13;
      *v19 = -1;
      ++v13;
    }

    v11[v13] = v12;
    ++v10;
  }

  while (v4 != v10);
  *(a1 + 4) = -1;
  if (v2 >= -1)
  {
    v20 = v11;
    v21 = 0xFFFFFFFFLL;
    do
    {
      v22 = *v20;
      if (v22 != -1)
      {
        v23 = **(a1 + 16);
        if (v21 == 0xFFFFFFFFLL)
        {
          *(v23 + 32 * v22 + 12) = v22;
          *(v23 + 32 * *v20 + 8) = v22;
LABEL_23:
          *(a1 + 4) = v22;
          v21 = v22;
          goto LABEL_24;
        }

        v24 = v23 + 32 * v21;
        v25 = *(v24 + 8);
        *(v23 + 32 * v25 + 12) = v22;
        *(v23 + 32 * *v20 + 8) = v25;
        v26 = *v20;
        *(v24 + 8) = v26;
        *(v23 + 32 * v26 + 12) = v21;
        v22 = *v20;
        if (*(v23 + 32 * v22) < *v24)
        {
          goto LABEL_23;
        }
      }

LABEL_24:
      ++v20;
      --v3;
    }

    while (v3);
  }

  if (!__p || (v28 = __p, operator delete(__p), (v11 = __b) != 0))
  {
    v31 = v11;
    operator delete(v11);
  }
}

void sub_24BD8E7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t sub_24BD8E7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = **(result + 16);
  v4 = v3 + 32 * a2;
  v5 = *(v4 + 12);
  v7 = *(v4 + 8);
  v6 = (v4 + 8);
  *(v3 + 32 * v7 + 12) = v5;
  *(v3 + 32 * v5 + 8) = v7;
  v8 = v3 + 32 * a3;
  v9 = *(v8 + 16);
  if (v9 == -1)
  {
    *(v8 + 16) = a2;
    LODWORD(v9) = a2;
  }

  else
  {
    v10 = v3 + 32 * v9;
    v11 = *(v10 + 8);
    *(v3 + 32 * v11 + 12) = a2;
    *v6 = v11;
    v6 = (v10 + 8);
  }

  *v6 = a2;
  *(v4 + 12) = v9;
  *(v4 + 4) = a3;
  ++*(v8 + 24);
  *(v4 + 28) = 0;
  return result;
}

uint64_t sub_24BD8E860(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  sub_24BCC8A84(a1 + 160, *(a1 + 168));
  for (i = 0; i != -48; i -= 24)
  {
    v4 = *(a1 + i + 128);
    if (v4)
    {
      *(a1 + i + 136) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_24BD8E8C4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 80 * ((80 * a2 - 80) / 0x50) + 80;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      sub_24BC8E01C();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24BD8EA38(a1, v9);
    }

    v11 = 80 * v6;
    v12 = 80 * ((80 * a2 - 80) / 0x50) + 80;
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

void sub_24BD8EA38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BD8EAFC(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96258;
  sub_24BD8EBFC(a1 + 3, a2);
}

void sub_24BD8EB78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD8EBFC(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v2 = (a2[1] - *a2) >> 2;
  v3 = 0;
  v4 = -1;
  v5 = -1;
  v6 = -1;
  v7 = 0;
  sub_24BD8ED04(a1 + 3, v2, &v3);
  operator new();
}

void sub_24BD8ECD8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    sub_24BC9EC78(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD8ED04(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    sub_24BD8ED34(a1, a2 - v3, a3);
  }
}

void sub_24BD8ED34(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 5)
  {
    if (a2)
    {
      v12 = 32 * a2;
      v13 = &v5[2 * a2];
      do
      {
        v14 = a3[1];
        *v5 = *a3;
        v5[1] = v14;
        v5 += 2;
        v12 -= 32;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 5);
    if (v8 >> 59)
    {
      sub_24BC8E01C();
    }

    v9 = v7 >> 5;
    v10 = v6 - *a1;
    if (v10 >> 4 > v8)
    {
      v8 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_24BD8EE54(a1, v11);
    }

    v15 = 32 * v9;
    v16 = 32 * v9 + 32 * a2;
    v17 = 32 * a2;
    v18 = v15;
    do
    {
      v19 = a3[1];
      *v18 = *a3;
      v18[1] = v19;
      v18 += 2;
      v17 -= 32;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
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

void sub_24BD8EE54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BD8EEBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

double sub_24BD8EF10(uint64_t a1)
{
  result = NAN;
  *(a1 + 24) = 0xFFFFFFFF00000000;
  return result;
}

void sub_24BD8EF20(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    a2[4] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {

    sub_24BC9EC78(v4);
  }
}

uint64_t sub_24BD8EF74(unsigned int *a1)
{
  v29 = sub_24BCB9024(*a1 + 104, a1 + 4);
  v2 = *a1;
  v3 = sub_24BCB9024(*a1 + 104, a1 + 4);
  v28 = sub_24BCB9024(v2 + 104, v3);
  v4 = sub_24BCB9024(*a1 + 104, a1 + 4);
  v5 = *a1;
  v6 = sub_24BCB9024(*a1 + 104, a1 + 4);
  v7 = sub_24BCB9024(v5 + 104, v6);
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = &a1[6 * v8 + 26];
    *(v11 + 8) = *v11;
    v12 = v29;
    if ((v9 & 1) == 0)
    {
      v12 = v28;
    }

    v32 = *(v12 + 12);
    sub_24BCB9454(v31, (*a1 + 104), &v32);
    v30 = -1;
    while (1)
    {
      result = sub_24BCB947C(v31);
      v30 = result;
      if (result == -1)
      {
        break;
      }

      if (result != a1[4])
      {
        v14 = sub_24BCB9024(*a1 + 104, a1 + 4);
        if (v30 != *v14)
        {
          v15 = sub_24BC9ECE4(*a1, *(*a1 + 180), v30);
          if ((v16 & *v15) != 0 || *(sub_24BCB9024(*a1 + 104, &v30) + 16) != *(v4 + 16) && *(sub_24BCB9024(*a1 + 104, &v30) + 16) != *(v7 + 16))
          {
            v18 = *(v11 + 8);
            v17 = *(v11 + 16);
            if (v18 >= v17)
            {
              v20 = (v18 - *v11) >> 2;
              if ((v20 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v21 = v17 - *v11;
              v22 = v21 >> 1;
              if (v21 >> 1 <= (v20 + 1))
              {
                v22 = v20 + 1;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v23 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                sub_24BC92E0C(v11, v23);
              }

              v24 = (4 * v20);
              *v24 = v30;
              v19 = 4 * v20 + 4;
              v25 = *(v11 + 8) - *v11;
              v26 = v24 - v25;
              memcpy(v24 - v25, *v11, v25);
              v27 = *v11;
              *v11 = v26;
              *(v11 + 8) = v19;
              *(v11 + 16) = 0;
              if (v27)
              {
                operator delete(v27);
              }
            }

            else
            {
              *v18 = v30;
              v19 = (v18 + 1);
            }

            *(v11 + 8) = v19;
          }
        }
      }
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
  return result;
}

void sub_24BD8F1C8(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v52 = __PAIR64__(a3, a2);
  v47 = 0;
  v48 = 0;
  __p = 0;
  sub_24BD914A8(&__p, &v52, &v53, 2uLL);
  v6 = 0;
  v7 = (a1 + 13);
  v8 = 1;
  v9 = &v49;
  do
  {
    v10 = v8;
    if (&v49 != v7)
    {
      sub_24BCA2A30(v9, v7[3 * v6], v7[3 * v6 + 1], (v7[3 * v6 + 1] - v7[3 * v6]) >> 2);
    }

    v11 = *v9;
    v12 = v9[1];
    v13 = 126 - 2 * __clz((v12 - *v9) >> 2);
    v14 = v12 == *v9;
    v52 = a1;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    sub_24BD9151C(v11, v12, &v52, v15, 1);
    v8 = 0;
    v9 = &v50 + 1;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
  v16 = v49;
  if (v49 != *(&v49 + 1))
  {
    v17 = *(&v50 + 1);
    while (v17 != v51)
    {
      v18 = *a1;
      v19 = sub_24BCB9024(*a1 + 104, v16);
      LODWORD(v18) = *(sub_24BCB9024(v18 + 104, v19) + 12);
      v20 = *a1;
      v21 = sub_24BCB9024(*a1 + 104, v17);
      if (v18 >= *(sub_24BCB9024(v20 + 104, v21) + 12))
      {
        v22 = *a1;
        v23 = sub_24BCB9024(*a1 + 104, v17);
        LODWORD(v22) = *(sub_24BCB9024(v22 + 104, v23) + 12);
        v24 = *a1;
        v25 = sub_24BCB9024(*a1 + 104, v16);
        if (v22 >= *(sub_24BCB9024(v24 + 104, v25) + 12))
        {
          v26 = a1[24];
          v27 = a1[25];
          if (v26 >= v27)
          {
            v31 = a1[23];
            v32 = (v26 - v31) >> 4;
            v33 = v32 + 1;
            if ((v32 + 1) >> 60)
            {
              sub_24BC8E01C();
            }

            v34 = v27 - v31;
            if (v34 >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              sub_24BCA1868((a1 + 23), v35);
            }

            v36 = (16 * v32);
            v37 = *v16;
            v38 = *v17;
            *v36 = a2;
            v36[1] = a3;
            v36[2] = v37;
            v36[3] = v38;
            v30 = 16 * v32 + 16;
            v39 = a1[23];
            v40 = a1[24] - v39;
            v41 = (16 * v32 - v40);
            memcpy(v41, v39, v40);
            v42 = a1[23];
            a1[23] = v41;
            a1[24] = v30;
            a1[25] = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            v28 = *v16;
            v29 = *v17;
            *v26 = a2;
            v26[1] = a3;
            v26[2] = v28;
            v26[3] = v29;
            v30 = (v26 + 4);
          }

          a1[24] = v30;
          break;
        }

        ++v17;
      }

      else
      {
        ++v16;
      }

      if (v16 == *(&v49 + 1))
      {
        break;
      }
    }
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v44 = *(&v50 + i + 8);
    if (v44)
    {
      *(&v51 + i) = v44;
      operator delete(v44);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_24BD8F4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = 0;
  while (1)
  {
    v15 = *(&a13 + v14 + 24);
    if (v15)
    {
      *(&a13 + v14 + 32) = v15;
      operator delete(v15);
    }

    v14 -= 24;
    if (v14 == -48)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

BOOL sub_24BD8F508(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = sub_24BCB9024(*a1 + 104, a2);
  v7 = *a1;
  v8 = sub_24BCB9024(*a1 + 104, a2);
  v9 = sub_24BCB9024(v7 + 104, v8);
  v10 = v9;
  v11 = 0;
  v12 = *(*a1[11] + 4 * *a2);
  v13 = *a1[6];
  v14 = (v13 + 80 * *(v6 + 12));
  v15 = v13 + 80 * *(v9 + 12);
  v16 = *a1[9];
  v17 = *a1[10];
  v63 = v14[1];
  v64 = v14[2];
  v65 = v14[3];
  v66 = v14[4];
  v62 = *v14;
  do
  {
    *(&v62 + v11) = vaddq_f64(*(v15 + v11), *(&v62 + v11));
    v11 += 16;
  }

  while (v11 != 80);
  v18 = (v16 + 80 * v12);
  v18[1] = v63;
  v18[2] = v64;
  v18[3] = v65;
  v18[4] = v66;
  *v18 = v62;
  v19 = *(v6 + 12);
  v20 = *a1[8];
  v21 = (1 << v19) & *(v20 + ((v19 >> 3) & 0x1FFFFFF8));
  v22 = *(v9 + 12);
  v23 = (1 << v22) & *(v20 + ((v22 >> 3) & 0x1FFFFFF8));
  if (v23)
  {
    v24 = v21 != 0;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    if ((v21 != 0) == (v23 != 0))
    {
      v27 = v18[2].f64[0];
      v28 = v18->f64[0] * (v18[1].f64[1] * v18[2].f64[1] - v27 * v27) - v18->f64[1] * (v18->f64[1] * v18[2].f64[1] - v27 * v18[1].f64[0]) + v18[1].f64[0] * (v18->f64[1] * v27 - v18[1].f64[1] * v18[1].f64[0]);
      if (fabs(v28) <= 2.22044605e-16)
      {
        v41 = *a1[7];
        v42 = (v41 + 24 * v19);
        v43 = (v41 + 24 * v22);
        v44 = (v42[1].f64[0] + v43[1].f64[0]) * 0.5;
        __asm { FMOV            V2.2D, #0.5 }

        *a3 = vmulq_f64(vaddq_f64(*v42, *v43), _Q2);
        *(a3 + 16) = v44;
        v50 = 0;
        v51 = sub_24BD8F8FC(v18->f64, a3);
        *(v17 + 4 * v12) = v51;
        v52 = *(v10 + 12);
        LODWORD(v62.f64[0]) = *(v6 + 12);
        HIDWORD(v62.f64[0]) = v52;
        do
        {
          v53 = *(v62.f64 + v50);
          v54 = sub_24BD8F8FC(v18->f64, (*a1[7] + 24 * v53));
          if (v54 < *(v17 + 4 * v12))
          {
            v55 = (*a1[7] + 24 * v53);
            *a3 = *v55;
            *(a3 + 8) = v55[1];
            *(a3 + 16) = v55[2];
            v56 = v54;
            *(v17 + 4 * v12) = v56;
          }

          v50 += 4;
        }

        while (v50 != 8);
      }

      else
      {
        sub_24BD8F964(v18->f64, v62.f64, v28);
        v29 = 0;
        v30 = v63.f64[1];
        v31 = v63.f64[0];
        *(a3 + 16) = v63.f64[0];
        *&v30 = v30;
        *(v17 + 4 * v12) = LODWORD(v30);
        v32 = v62;
        *a3 = v62;
        v33 = *a1[7];
        v34 = (v33 + 24 * *(v10 + 12));
        v35 = (v33 + 24 * *(v6 + 12));
        v36 = v35[1].f64[0];
        v37 = v34[1].f64[0] - v36;
        v38 = *v34;
        v39 = *v35;
        v62 = vsubq_f64(*v34, *v35);
        v63.f64[0] = v37;
        v60 = vsubq_f64(v32, v39);
        v61 = v31 - v36;
        while (1)
        {
          v40 = v60.f64[v29] / v62.f64[v29] + -0.5;
          if (fabsf(v40) > 20.0)
          {
            break;
          }

          if (++v29 == 3)
          {
            goto LABEL_25;
          }
        }

        if (v40 > 0.0)
        {
          v57 = v34;
        }

        else
        {
          v38.f64[0] = v39.f64[0];
          v57 = v35;
        }

        *a3 = v38.f64[0];
        *(a3 + 8) = v57->f64[1];
        *(a3 + 16) = v57[1].f64[0];
      }
    }

    else
    {
      if (!v21)
      {
        LODWORD(v19) = *(v9 + 12);
      }

      v25 = (*a1[7] + 24 * v19);
      *a3 = *v25;
      *(a3 + 8) = v25[1];
      *(a3 + 16) = v25[2];
      v26 = sub_24BD8F8FC(v18->f64, a3);
      *(v17 + 4 * v12) = v26;
    }
  }

LABEL_25:
  v58 = *MEMORY[0x277D85DE8];
  return !v24;
}

double sub_24BD8F8FC(double *a1, double *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  return a1[9] + v2 * (v2 * a1[3] + a1[1] * *a2 + a1[4] * v3) + (a1[1] * v2 + *a1 * *a2 + a1[2] * v3) * *a2 + (v2 * a1[4] + a1[2] * *a2 + a1[5] * v3) * v3 + (v2 * a1[7] + a1[6] * *a2 + a1[8] * v3) * 2.0;
}

double sub_24BD8F964@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v3 = 1.0 / a3;
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[2];
  v6 = a1[3];
  v8 = v3 * (v6 * v4 - v5 * v5);
  v9 = a1[1];
  v10 = v3 * (v7 * v5 - v9 * v4);
  v11 = v3 * (v9 * v5 - v7 * v6);
  v12 = v3 * (*a1 * v4 - v7 * v7);
  v13 = v3 * (v9 * v7 - *a1 * v5);
  v14 = v3 * (*a1 * v6 - v9 * v9);
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  v18 = a1[9];
  v19 = v10 * v16 + v8 * v15 + v11 * v17;
  v20 = v12 * v16 + v10 * v15 + v13 * v17;
  v21 = v16 * v13 + v11 * v15 + v14 * v17;
  result = -v21;
  *a2 = -v19;
  a2[1] = -v20;
  a2[2] = -v21;
  a2[3] = v18 + -(v20 * v16) - v15 * v19 - v17 * v21;
  return result;
}

uint64_t sub_24BD8FA14(uint64_t a1, unsigned int *a2)
{
  sub_24BCB9454(v16, (*a1 + 104), a2);
  while (1)
  {
    result = sub_24BCB947C(v16);
    v15 = result;
    if (result == -1)
    {
      break;
    }

    if (*(*(*(a1 + 8) + 24) + 32 * *(**(a1 + 88) + 4 * result) + 20) == -1)
    {
      v5 = sub_24BCB9024(*a1 + 104, &v15);
      v4 = a1 + 160;
    }

    else
    {
      v4 = a1 + 160;
      v5 = &v15;
    }

    sub_24BD87EB8(v4, v5);
  }

  memset(v14, 0, sizeof(v14));
  v6 = *(a1 + 160);
  v7 = (a1 + 168);
  if (v6 != (a1 + 168))
  {
    do
    {
      result = sub_24BD8F508(a1, v6 + 7, v14);
      v8 = *(v6 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v6 + 2);
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
    v6 = *(a1 + 160);
  }

  if (v6 != v7)
  {
    do
    {
      result = *(a1 + 8);
      v11 = (**(a1 + 88) + 4 * v6[7]);
      if (*(*(result + 24) + 32 * *v11 + 20) != -1)
      {
        result = sub_24BD8FB98(result, v11);
      }

      v12 = *(v6 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v6 + 2);
          v10 = *v13 == v6;
          v6 = v13;
        }

        while (!v10);
      }

      v6 = v13;
    }

    while (v13 != v7);
  }

  return result;
}

uint64_t sub_24BD8FB98(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(**(a1 + 16) + 4 * v2);
  v4 = *(*(a1 + 24) + 32 * v2);
  v5 = *a1;
  if (v3 <= v4)
  {
    return sub_24BD8E24C(v5, v2, v3);
  }

  else
  {
    return sub_24BD91440(v5, v2, v3);
  }
}

uint64_t sub_24BD8FBC4(double *a1)
{
  v2 = 0;
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = 0x100000000;
  v3 = (a1 + 13);
  while (2)
  {
    v4 = &v3[3 * *(v21 + v2)];
    v5 = *v4;
    v6 = v4[1];
    while (v5 != v6)
    {
      v7 = *a1;
      v8 = sub_24BCB9024(*a1 + 104, v5);
      v9 = *(sub_24BCB9024(*&v7 + 104, v8) + 12);
      v10 = *a1;
      v11 = sub_24BCB9024(*a1 + 104, v5);
      v12 = sub_24BCB9024(*&v10 + 104, (v11 + 8));
      v13 = *(sub_24BCB9024(*&v10 + 104, v12) + 12);
      v14 = 3 * v9;
      v15 = 3 * v13;
      LODWORD(v9) = sub_24BD8C740(a1 + 3, (**(a1 + 7) + 24 * v9), (**(a1 + 7) + 24 * v13));
      v16 = *(a1 + 7);
      v17 = sub_24BCB9024(*a1 + 104, v5);
      v18 = sub_24BD8C740((*v16 + 24 * *(v17 + 12)), (**(a1 + 7) + 8 * v14), (**(a1 + 7) + 8 * v15));
      if (v9 && !v18)
      {
        result = 0;
        goto LABEL_10;
      }

      ++v5;
    }

    v2 += 4;
    if (v2 != 8)
    {
      continue;
    }

    break;
  }

  result = 1;
LABEL_10:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD8FD38(void **a1, unsigned int *a2)
{
  v147[1] = *MEMORY[0x277D85DE8];
  *(a1 + 4) = *a2;
  v137 = *(sub_24BCB9024((*a1 + 13), a2) + 12);
  v4 = *a1;
  v5 = sub_24BCB9024((*a1 + 13), a2);
  v6 = sub_24BCB9024(v4 + 104, v5);
  v7 = *(v6 + 12);
  v136 = *(v6 + 12);
  v8 = *a1[8];
  if ((*(v8 + ((v137 >> 3) & 0x1FFFFFF8)) >> v137) & 1) != 0 && ((*(v8 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7))
  {
    v9 = *MEMORY[0x277D85DE8];

    return sub_24BD90B14(a1);
  }

  sub_24BD8F508(a1, a2, (a1 + 3));
  sub_24BD8EF74(a1);
  v11 = *a1;
  v12 = sub_24BC9ECE4(*a1, *(*a1 + 45), *a2);
  if ((v13 & *v12) == 0)
  {
    v14 = sub_24BCB9024(v11 + 104, a2);
    v15 = sub_24BC9ECE4(v11, *(v11 + 180), *v14);
    if ((v16 & *v15) == 0)
    {
      v117 = sub_24BCD93B0(*a1, &v137);
      v18 = sub_24BCD93B0(*a1, &v136);
      if (v117)
      {
        v135 = *a2;
        v134 = *sub_24BCB9024((*a1 + 13), &v135);
        if (v18 && (v19 = *a1, v20 = sub_24BC9ECE4(*a1, *(*a1 + 45), *a2), (v21 & *v20) == 0))
        {
          v62 = sub_24BCB9024(v19 + 104, a2);
          v63 = sub_24BC9ECE4(v19, *(v19 + 180), *v62);
          v22 = (v64 & *v63) == 0;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v135 = *sub_24BCB9024((*a1 + 13), a2);
        v22 = 0;
        v134 = *sub_24BCB9024((*a1 + 13), &v135);
      }

      v23 = *a1;
      v24 = sub_24BCB9024((*a1 + 13), &v135);
      HIDWORD(v133) = *(sub_24BCB9024(v23 + 104, v24) + 12);
      LODWORD(v133) = *(sub_24BCB9024((*a1 + 13), &v135) + 12);
      sub_24BD8F1C8(a1, v133, HIDWORD(v133));
      if (a1[23] != a1[24])
      {
        v25 = sub_24BD90B14(a1);
        goto LABEL_18;
      }

      if (v22)
      {
        v28 = 0;
        LOWORD(v132) = 0;
        v138 = __PAIR64__(v134, v135);
        v147[0] = 0x100000000;
        do
        {
          v29 = *(v147 + v28);
          v30 = sub_24BCB9024((*a1 + 13), &v138 + v29);
          v31 = sub_24BCB9024((*a1 + 13), &v138 + v29);
          v32 = *a1;
          v33 = sub_24BCB9024((*a1 + 13), (v30 + 8));
          v34 = sub_24BC9ECE4(v32, *(v32 + 180), *v33);
          if ((v35 & *v34) != 0)
          {
            v36 = *a1;
            v37 = sub_24BCB9024((*a1 + 13), (v31 + 4));
            v38 = sub_24BC9ECE4(v36, *(v36 + 180), *v37);
            v40 = (v39 & *v38) != 0;
          }

          else
          {
            v40 = 0;
          }

          *(&v132 + v29) = v40;
          v28 += 4;
        }

        while (v28 != 8);
        if ((v132 & 1) == 0 && (v132 & 0x100) == 0)
        {
          goto LABEL_33;
        }

        v41 = v132 == BYTE1(v132);
        v42 = v132 != BYTE1(v132);
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      if (v117 || v18 || a1[14] - a1[13] != 4 || a1[17] - a1[16] != 4) && (sub_24BD9125C(a1))
      {
        v132 = *(sub_24BCB9024((*a1 + 13), &v135) + 16);
        v131 = *(sub_24BCB9024((*a1 + 13), &v134) + 16);
        v130 = *(sub_24BCB9024((*a1 + 13), &v135) + 8);
        v129 = *(sub_24BCB9024((*a1 + 13), &v130) + 8);
        v128 = *(sub_24BCB9024((*a1 + 13), &v134) + 8);
        v127 = *(sub_24BCB9024((*a1 + 13), &v128) + 8);
        v43 = *a1;
        v44 = sub_24BCB9024((*a1 + 13), &v130);
        v126 = *(sub_24BCB9024(v43 + 104, v44) + 12);
        v45 = *a1;
        v46 = sub_24BCB9024((*a1 + 13), &v128);
        v47 = *(sub_24BCB9024(v45 + 104, v46) + 12);
        v125 = v47;
        v48 = *sub_24BCB9024((*a1 + 13), &v129);
        v124 = v48;
        v49 = *sub_24BCB9024((*a1 + 13), &v128);
        v123 = v49;
        v50 = *sub_24BCB9024((*a1 + 13), &v130);
        v122 = v50;
        v51 = *sub_24BCB9024((*a1 + 13), &v127);
        v121 = v51;
        if (v41)
        {
          v52 = 0;
          v138 = __PAIR64__(v130, v135);
          v139 = v129;
          v140 = v134;
          v141 = v128;
          v142 = v127;
          v143 = v48;
          v144 = v50;
          v145 = v49;
          v146 = v51;
          do
          {
            v53 = a1[1];
            v54 = *(*a1[11] + 4 * *(&v138 + v52));
            if (*(v53[3] + 32 * v54 + 20) != -1)
            {
              v55 = *v53;
              sub_24BD8E24C(*v53, v54, -3.4028e38);
              v56 = v53[3] + 32 * sub_24BD8E2F8(v55);
              *v56 = 0;
              *(v56 + 4) = -1;
              *(v56 + 12) = -1;
              *(v56 + 20) = -1;
              *(v56 + 28) = 0;
            }

            v57 = sub_24BCB9024((*a1 + 13), (&v138 + v52));
            *v57 = -1;
            *(v57 + 8) = -1;
            *(v57 + 16) = -1;
            v52 += 4;
          }

          while (v52 != 40);
          v58 = 0;
          v138 = v133;
          v139 = v126;
          v140 = v47;
          do
          {
            *sub_24BCB9014(*a1 + 13, (&v138 + v58)) = -1;
            v58 += 4;
          }

          while (v58 != 16);
          v59 = 0;
          v138 = __PAIR64__(v131, v132);
          do
          {
            *sub_24BCB9038((*a1 + 13), (&v138 + v59)) = -1;
            v59 += 4;
          }

          while (v59 != 8);
          v61 = a1[21];
          v60 = a1 + 21;
          v26 = (*(v60 - 4) + 2);
          *(v60 - 4) = 0;
          *(v60 - 38) = -1;
          *(v60 - 7) = *(v60 - 8);
          *(v60 - 4) = *(v60 - 5);
          sub_24BCC8A84((v60 - 1), v61);
          *v60 = 0;
          v60[1] = 0;
          *(v60 - 1) = v60;
          v60[3] = v60[2];
          goto LABEL_19;
        }

        if (!sub_24BCD93B0(*a1, &v133 + 1) && a1[3 * v117 + 13] == a1[3 * v117 + 14])
        {
          *sub_24BCB9038((*a1 + 13), &v132) = -1;
          *sub_24BCB9038((*a1 + 13), &v131) = -1;
          v81 = sub_24BCB9024((*a1 + 13), &v135);
          *v81 = -1;
          *(v81 + 8) = -1;
          *(v81 + 16) = -1;
          v82 = sub_24BCB9024((*a1 + 13), &v130);
          *v82 = -1;
          *(v82 + 8) = -1;
          *(v82 + 16) = -1;
          v83 = sub_24BCB9024((*a1 + 13), &v129);
          *v83 = -1;
          *(v83 + 8) = -1;
          *(v83 + 16) = -1;
          v84 = sub_24BCB9024((*a1 + 13), &v134);
          *v84 = -1;
          *(v84 + 8) = -1;
          *(v84 + 16) = -1;
          v85 = sub_24BCB9024((*a1 + 13), &v128);
          *v85 = -1;
          *(v85 + 8) = -1;
          *(v85 + 16) = -1;
          v86 = sub_24BCB9024((*a1 + 13), &v127);
          *v86 = -1;
          *(v86 + 8) = -1;
          *(v86 + 16) = -1;
          *sub_24BCB9014(*a1 + 13, &v133) = -1;
          *sub_24BCB9014(*a1 + 13, &v133 + 1) = -1;
          v87 = 0;
          *sub_24BCB9014(*a1 + 13, &v126) = -1;
          v138 = __PAIR64__(v130, v135);
          v139 = v129;
          v140 = v134;
          v141 = v128;
          v142 = v127;
          do
          {
            v88 = a1[1];
            v89 = *(*a1[11] + 4 * *(&v138 + v87));
            if (*(v88[3] + 32 * v89 + 20) != -1)
            {
              v90 = *v88;
              sub_24BD8E24C(*v88, v89, -3.4028e38);
              v91 = v88[3] + 32 * sub_24BD8E2F8(v90);
              *v91 = 0;
              *(v91 + 4) = -1;
              *(v91 + 12) = -1;
              *(v91 + 20) = -1;
              *(v91 + 28) = 0;
            }

            v87 += 4;
          }

          while (v87 != 24);
          *(a1 + 38) += 2;
          v25 = sub_24BD913A4(a1);
        }

        else if (sub_24BD8FBC4(a1))
        {
          v65 = v133;
          v66 = (*a1[7] + 24 * v133);
          *v66 = a1[3];
          v66[1] = a1[4];
          v66[2] = a1[5];
          v67 = (*a1[9] + 80 * *(*a1[11] + 4 * *(a1 + 4)));
          v68 = (*a1[6] + 80 * v65);
          *v68 = *v67;
          v69 = v67[1];
          v70 = v67[2];
          v71 = v67[4];
          v68[3] = v67[3];
          v68[4] = v71;
          v68[1] = v69;
          v68[2] = v70;
          sub_24BCB50D4(*a1, &v133, &v133 + 1);
          sub_24BCB9074((*a1 + 13), &v124, &v122);
          sub_24BCB9074((*a1 + 13), &v123, &v121);
          v72 = &a1[3 * v117];
          v73 = v72[13];
          v74 = v72[14];
          while (v73 != v74)
          {
            sub_24BCB90C8(*a1 + 13, v73++, &v133);
          }

          sub_24BCB90F0(*a1 + 13, &v126, &v122);
          sub_24BCB90F0(*a1 + 13, &v125, &v123);
          sub_24BCB90F0(*a1 + 13, &v133, &v124);
          sub_24BD8FA14(a1, &v133);
          if (v42)
          {
            v75 = sub_24BC9ECE4(*a1, *(*a1 + 45), v124);
            if ((v76 & *v75) != 0 && (v77 = sub_24BC9ECE4(*a1, *(*a1 + 45), v122), (v78 & *v77) != 0))
            {
              v79 = &v122;
              v80 = &v124;
            }

            else
            {
              v79 = &v123;
              v80 = &v121;
            }

            v92 = *v79;
            LODWORD(v138) = *v80;
            HIDWORD(v138) = v92;
            v120 = *(sub_24BCB9024((*a1 + 13), &v138 + 1) + 12);
            v119 = *(sub_24BCB9024((*a1 + 13), &v138) + 4);
            v118 = *(sub_24BCB9024((*a1 + 13), &v138 + 1) + 8);
            sub_24BCB9048((*a1 + 13), &v119, &v118);
            sub_24BCB90F0(*a1 + 13, &v133, &v118);
            v93 = 0;
            v147[0] = v138;
            do
            {
              v94 = a1[1];
              v95 = *(*a1[11] + 4 * *(v147 + v93));
              if (*(v94[3] + 32 * v95 + 20) != -1)
              {
                v96 = *v94;
                sub_24BD8E24C(*v94, v95, -3.4028e38);
                v97 = v94[3] + 32 * sub_24BD8E2F8(v96);
                *v97 = 0;
                *(v97 + 4) = -1;
                *(v97 + 12) = -1;
                *(v97 + 20) = -1;
                *(v97 + 28) = 0;
              }

              v98 = sub_24BCB9024((*a1 + 13), (v147 + v93));
              *v98 = -1;
              *(v98 + 8) = -1;
              *(v98 + 16) = -1;
              v93 += 4;
            }

            while (v93 != 8);
            *sub_24BCB9014(*a1 + 13, &v120) = -1;
          }

          v99 = 0;
          v138 = __PAIR64__(v130, v135);
          v139 = v127;
          do
          {
            v100 = a1[1];
            v101 = *(*a1[11] + 4 * *(&v138 + v99));
            if (*(v100[3] + 32 * v101 + 20) != -1)
            {
              v102 = *v100;
              sub_24BD8E24C(*v100, v101, -3.4028e38);
              v103 = v100[3] + 32 * sub_24BD8E2F8(v102);
              *v103 = 0;
              *(v103 + 4) = -1;
              *(v103 + 12) = -1;
              *(v103 + 20) = -1;
              *(v103 + 28) = 0;
            }

            v99 += 4;
          }

          while (v99 != 12);
          *sub_24BCB9038((*a1 + 13), &v132) = -1;
          *sub_24BCB9038((*a1 + 13), &v131) = -1;
          v104 = sub_24BCB9024((*a1 + 13), &v135);
          *v104 = -1;
          *(v104 + 8) = -1;
          *(v104 + 16) = -1;
          v105 = sub_24BCB9024((*a1 + 13), &v130);
          *v105 = -1;
          *(v105 + 8) = -1;
          *(v105 + 16) = -1;
          v106 = sub_24BCB9024((*a1 + 13), &v129);
          *v106 = -1;
          *(v106 + 8) = -1;
          *(v106 + 16) = -1;
          v107 = sub_24BCB9024((*a1 + 13), &v134);
          *v107 = -1;
          *(v107 + 8) = -1;
          *(v107 + 16) = -1;
          v108 = sub_24BCB9024((*a1 + 13), &v128);
          *v108 = -1;
          *(v108 + 8) = -1;
          *(v108 + 16) = -1;
          v109 = sub_24BCB9024((*a1 + 13), &v127);
          *v109 = -1;
          *(v109 + 8) = -1;
          *(v109 + 16) = -1;
          *sub_24BCB9014(*a1 + 13, &v133 + 1) = -1;
          v110 = *a1[11];
          *(v110 + 4 * v122) = *(v110 + 4 * v124);
          *(v110 + 4 * v121) = *(v110 + 4 * v123);
          v111 = *a1[12];
          *(v111 + 4 * *(v110 + 4 * v124)) = v124;
          v112 = v123;
          *(v111 + 4 * *(v110 + 4 * v123)) = v123;
          v113 = a1[1];
          v114 = (v110 + 4 * v124);
          v115 = *(v113 + 24);
          if (*(v115 + 32 * *v114 + 20) == -1)
          {
            sub_24BD91404(v113, v114);
            v113 = a1[1];
            v112 = v123;
            v110 = *a1[11];
            v115 = *(v113 + 24);
          }

          v116 = (v110 + 4 * v112);
          if (*(v115 + 32 * *v116 + 20) == -1)
          {
            sub_24BD91404(v113, v116);
          }

          *(a1 + 38) += 2;
          v25 = sub_24BD913A4(a1);
        }

        else
        {
          v25 = sub_24BD90B14(a1);
        }

LABEL_18:
        v26 = v25;
LABEL_19:
        v27 = *MEMORY[0x277D85DE8];
        return v26;
      }

LABEL_33:
      v25 = sub_24BD90B14(a1);
      goto LABEL_18;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return sub_24BD90BA0(a1, a2);
}