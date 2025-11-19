void sub_19D408CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D408D34(uint64_t a1)
{
  if (*(a1 + 120))
  {
    sub_19D408E18(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 288), 1, __A, *(a1 + 312));
    return *__A;
  }
}

void sub_19D408DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D408E18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D409090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D4090E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5 != *a2)
  {
    if (((v5 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 24);
  vDSP_vdivD(*(a1 + 24), 1, 0, 1, 0, 1, v6);
  v7 = *(a3 + 8);
  if (v7 != *a3)
  {
    if (((v7 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vdivD(*(a1 + 24), 1, 0, 1, 0, 1, *(a3 + 24));
  vDSP_vsubD(0, 1, 0, 1, 0, 1, v6);
  cblas_dnrm2_NEWLAPACK();
  return v8 * 2.23606798;
}

void sub_19D4093D4(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    operator delete(v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          operator delete(v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v2);
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v3);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D409450()
{
  if (!v0)
  {
    JUMPOUT(0x19D409448);
  }

  JUMPOUT(0x19D409440);
}

uint64_t sub_19D409460(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BC098;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BC040;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D4095A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D4095EC(uint64_t a1)
{
  *a1 = &unk_1F10BC040;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BC098;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D409688(void *__p)
{
  *__p = &unk_1F10BC040;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BC098;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D4097C4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D40A048(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v90, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v80 = a3;
  sub_19D3C6024(a2, &v94);
  sub_19D40A358(a2, v91);
  v7 = v92;
  if (v92 != v93)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v90, &v94[12 * v8]);
      v81 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_88:
      sub_19D3715C0(v90);
      v73 = v7[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v7[2];
          v75 = *v74 == v7;
          v7 = v74;
        }

        while (!v75);
      }

      v7 = v74;
      if (v74 == v93)
      {
        goto LABEL_94;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D40A480(a1, v90, &__B);
      sub_19D3709B0(v90, &__B);
      sub_19D2A3E48(v89, v89[1]);
      sub_19D2A3E48(v88, v88[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v87;
        v13 = __p;
        if (v87 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v87 = v11;
        operator delete(v13);
      }

      v16 = __B;
      if (*&__B != 0.0)
      {
        v17 = v85;
        v18 = __B;
        if (v85 != __B)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __B;
        }

        v85 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v90, v82);
      v22 = *(v21 + 8);
      if (*(v22 + 120))
      {
        sub_19D408E18(*(v21 + 8), v96);
        *&__B = 0.0;
        vDSP_dotprD(v96[0], 1, *(v22 + 256), 1, &__B, v97);
        v23 = __B;
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v24 = __B;
        v26 = *(v22 + 216);
        v25 = *(v22 + 220);
        v99 = 0.0;
        v100 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v101 = v26;
        v102 = v25;
        if (v26)
        {
          v29 = *(v22 + 220);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 192);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v96, &__B);
        if (__C != 0.0)
        {
          v99 = __C;
          operator delete(*&__C);
        }

        v62 = sub_19D4090E4(v22 + 8, v82, v82);
        v64 = v63;
        v65 = *(v22 + 24);
        __C = 0.0;
        vDSP_dotprD(__B, 1, __B, 1, &__C, __p);
        v66 = __C;
        if (*&__B != 0.0)
        {
          v85 = __B;
          operator delete(__B);
        }

        v67 = -(v66 - (v62 + 1.0 + v64) * (exp(-v62) * v65));
        if (v67 > 2.22044605e-16)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v69 = *(v22 + 16);
        if (v96[0])
        {
          v96[1] = v96[0];
          operator delete(v96[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v69 + v68);
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      else
      {
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v27 = *&__B;
        v28 = sqrt(sub_19D40A890(v22, v82));
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      v70 = *(*(v21 + 8) + 120);
      if (v70 > 0)
      {
        if (*(v21 + 56) != v70)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_85;
      }

LABEL_84:
      v71 = (*(*v21 + 8))(v21);
LABEL_85:
      v72 = *&v71;
      if (v82[0])
      {
        v82[1] = v82[0];
        operator delete(v82[0]);
      }

      v83 = v72;
      sub_19D3C6830((a1 + 64), v90, &v83);
      if (++v10 == v81)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_94:
  v76 = *(a1 + 72);
  sub_19D3BA6D0(v80, v76);
  *(v80 + 96) = v76[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v90, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v92, v93[0]);
  v77 = v94;
  if (v94)
  {
    v78 = v95;
    v79 = v94;
    if (v95 != v94)
    {
      do
      {
        v78 = sub_19D3715C0(v78 - 96);
      }

      while (v78 != v77);
      v79 = v94;
    }

    v95 = v77;
    operator delete(v79);
  }
}

void sub_19D409F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(v44 + 8, a43);
  sub_19D372E78((v45 - 240));
  _Unwind_Resume(a1);
}

void sub_19D40A048(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D40A770(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 120), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D40A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D40A32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D40A358(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D40A420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D40A480(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D40A610(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D40A6C0(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D40A550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D40A610@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D40A6C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D40A770(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    sub_19D408E18(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v5 = __C;
    sub_19D40A964(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D408D34(a1);
    sub_19D40A890(a1, a2);
    return v7;
  }
}

void sub_19D40A870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D40A890(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    sub_19D408E18(a1, __p);
    sub_19D40A964(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = sub_19D4090E4(a1 + 8, a2, a2);
    v9 = *(a1 + 24);
    return *(a1 + 16) + exp(-v8) * v9 * (v8 + 1.0 + v10);
  }
}

void sub_19D40A948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D40A964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 192, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D4090E4(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(-v6);
}

void sub_19D40AA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D40AA88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BC098;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BC0C8;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D40AD9C(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D40AE5C(uint64_t a1)
{
  v1 = sub_19D40B3C4(a1);

  operator delete(v1);
}

void sub_19D40AE84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D40B540(a1, v22);
}

void sub_19D40B2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D40B2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D40B304(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D40B320(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D40B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D40B364(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D40B388(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D40B3C4(uint64_t a1)
{
  *a1 = &unk_1F10BC0C8;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BC098;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D40B540(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D40B9DC(a1 + 64, v4, &__p);
}

void sub_19D40B930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D40B9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D40BDB8(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D40BF5C(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D40BF5C(a3, &__p);
    __break(1u);
  }
}

void sub_19D40BF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D40BF5C(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D40A770(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 120), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D40C2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D40C2E0(uint64_t a1)
{
  *a1 = &unk_1F10BBF80;
  v2 = *(a1 + 10696);
  if (v2)
  {
    v3 = *(a1 + 10704);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10696);
    }

    *(a1 + 10704) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10688));
  std::random_device::~random_device((a1 + 8144));
  std::random_device::~random_device((a1 + 5624));
  std::random_device::~random_device((a1 + 3096));
  v5 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 504) = &unk_1F10BC018;
  v6 = *(a1 + 520);
  if (v6)
  {
    *(a1 + 528) = v6;
    operator delete(v6);
  }

  sub_19D3E7E2C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D40C49C(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a2 + 24);
  *(a1 + 120) = v6 + 1;
  *(a1 + 124) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 104) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 104) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 96, v8 - v9);
    v6 = *(a1 + 120) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 124);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D40C5E0(a1, 1, 1);
}

void sub_19D40C5E0(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 128);
    v4 = *(a1 + 128);
    v6 = *(a1 + 120);
    *(a1 + 152) = v6;
    v7 = (*(a1 + 136) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 136) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 128, v6 - v7);
      v6 = *(a1 + 120);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 124);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D40C950(a1 + 96, &__p);
  if ((a1 + 160) != &__p)
  {
    sub_19D3C4E20((a1 + 160), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 184) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 160, &__p);
  if ((a1 + 192) != &__p)
  {
    sub_19D3C4E20((a1 + 192), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 216) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D40CE90(a1);
  if (a3)
  {
    sub_19D40CFD0(a1);
  }
}

void sub_19D40C904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D40C950(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D40CE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20)
  {
    operator delete(a20);
    if (!v26)
    {
LABEL_3:
      v29 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v29 = a24;
  if (!a24)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v29);
  if (!v25)
  {
LABEL_5:
    *(v27 + 8) = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);
  *(v27 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D40CE90(uint64_t a1)
{
  sub_19D3C88B4(a1 + 192, v6);
  sub_19D40D1F8(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 256) != &__p)
  {
    sub_19D3C4E20((a1 + 256), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 280) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 256);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D40CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D40CFD0(int32x2_t *a1)
{
  v2 = a1[15].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[28], 0, 0, 0);
  a1[31] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D40D1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D40D1F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D40D4D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D40D504(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = *(a2 + 8);
  v28 = &unk_1F10BB3E8;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = -1;
  v35 = 0x7FF0000000000000;
  v36 = -5;
  v37 = 0;
  sub_19D3CA020(&v28, v3 + 1);
  sub_19D373338(v26, *(a2 + 8) + 1);
  v4 = v26[0];
  v5 = __p[0];
  *v26[0] = 0xC01E000000000000;
  *v5 = 0x401E000000000000;
  v6 = *(a2 + 56);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 + 1;
    v9 = v6 + 1 > 1 ? v6 + 1 : 1;
    v10 = v9 - 1;
    if (v8 < 9)
    {
      goto LABEL_10;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v10 & 0xFFFFFFFC;
    v11 = v5 + 3;
    v12 = v4 + 24;
    __asm
    {
      FMOV            V0.2D, #-10.0
      FMOV            V1.2D, #10.0
    }

    v19 = v10 & 0xFFFFFFFC;
    do
    {
      *(v12 - 1) = _Q0;
      *v12 = _Q0;
      *(v11 - 1) = _Q1;
      *v11 = _Q1;
      v11 += 2;
      v12 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v10 != v7)
    {
LABEL_10:
      v20 = v4 + 8;
      v21 = v5 + 1;
      do
      {
        *&v20[8 * v7] = 0xC024000000000000;
        v21[v7++] = 0x4024000000000000;
      }

      while (v10 != v7);
    }
  }

  sub_19D3CA6A8(&v28, v26);
  sub_19D3CA7E0(&v28, __p);
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

  v23 = *(a2 + 64);
  v22 = *(a2 + 72);
  memset(v24, 0, sizeof(v24));
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v25 = *(a2 + 88);
  sub_19D40D910(&v28, &v38, v24);
}

void sub_19D40D870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D3C99D8(&a29);
    _Unwind_Resume(a1);
  }

  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D40D8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_19D36CF9C(&a21);
  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D40D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D40DCEC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D40DFE8(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D40DFE8(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D40DF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D40DFE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19D40F0F4(&v28, *a1);
  if (v32 != a2)
  {
    sub_19D3C4E20(v32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v33 = *(a2 + 24);
  v7 = *a2;
  v30 = exp(*v7 + *v7);
  v8 = v29;
  if (v29)
  {
    v9 = v31;
    if (v29 == 1 || (v31 - v7 - 8) < 0x10)
    {
      v10 = 0;
LABEL_7:
      v11 = &v7[8 * v10 + 8];
      v12 = &v9[8 * v10];
      v13 = v8 - v10;
      do
      {
        v14 = *v11++;
        *v12++ = exp(v14);
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v10 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v7 + 8);
    v20 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v31;
    do
    {
      v22 = *v19++;
      v24 = exp(*(&v22 + 1));
      *&v23 = exp(*&v22);
      *(&v23 + 1) = v24;
      *v21 = v23;
      v21 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_19D40C5E0(&v28, 0, a3);
  v15 = sub_19D40E254(&v28);
  v16 = v15;
  if (a3)
  {
    sub_19D40E47C(&v28, &v25);
    *a4 = v16;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v17 = v25;
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a4 + 32) = v27;
    *(a4 + 40) = 1;
    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }

  else
  {
    *a4 = v15;
    *(a4 + 8) = 0;
    *(a4 + 40) = 0;
  }

  return sub_19D3E7E2C(&v28);
}

double sub_19D40E254(uint64_t a1)
{
  sub_19D40D1F8(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 220) >= *(a1 + 216))
  {
    v3 = *(a1 + 216);
  }

  else
  {
    v3 = *(a1 + 220);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 120) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D40E424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D40E47C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v5 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a1 + 256);
  v42 = *(a1 + 248);
  v7 = *(a1 + 264);
  v24 = a2;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a1 + 280);
  sub_19D3C8D6C(a1 + 256, &__B);
  v9 = __N;
  v10 = (__N * v8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B, 1, 0, 1, v8, __N, 1uLL);
  vDSP_vsubD(v39, 1, 0, 1, 0, 1, v10);
  v11 = v8 | (v9 << 32);
  sub_19D3C4E20(&v39, 0, 0, 0);
  v12 = a1;
  v42 = v11;
  if (__B)
  {
    v37 = __B;
    operator delete(__B);
  }

  v13 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = 0;
  v22 = *(a1 + 120);
  if (v22)
  {
    v23 = 0;
    v14 = 0;
    do
    {
      v26 = 0;
      __A = v14;
      v15 = 0;
      do
      {
        v16 = *(v12 + 124);
        if (v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v32 = 0;
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v17 = *(v12 + 124);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v29 = 0;
        v31 = 0;
        v30 = 0;
        sub_19D40F650(a1 + 8, &v32, &__p, &__B);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v18 = &v39[__A * SHIDWORD(v42)];
        v19 = v37 - __B;
        if (__A == v15)
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          v20 = __N;
          vDSP_vsmulD(0, 1, &v18[8 * __A], 0, 1, __N);
          v21 = __A;
          v32 = 0x3FE0000000000000;
          vDSP_vsmulD(0, 1, &v32, 0, 1, v20);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
        }

        else
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          vDSP_vsmulD(0, 1, &v18[8 * v15], 0, 1, __N);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
          v21 = __A;
        }

        if (__B)
        {
          v37 = __B;
          operator delete(__B);
        }

        v15 = (v15 + 1);
        v26 += 8;
      }

      while (v15 <= v21);
      v14 = (v21 + 1);
      v23 += 8;
    }

    while (v14 != v22);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_19D40EF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v31)
  {
    operator delete(v31);
    if (!v32)
    {
LABEL_3:
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v30)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(v30);
  if (!v29)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    if (a19)
    {
      operator delete(a19);
    }

    v35 = *(v33 - 120);
    if (v35)
    {
      *(v33 - 112) = v35;
      operator delete(v35);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v29);
  goto LABEL_6;
}

void sub_19D40F074()
{
  if (!v0)
  {
    JUMPOUT(0x19D40F014);
  }

  JUMPOUT(0x19D40F00CLL);
}

void sub_19D40F080()
{
  if (!v0)
  {
    JUMPOUT(0x19D40F014);
  }

  JUMPOUT(0x19D40F00CLL);
}

void sub_19D40F08C()
{
  if (v0)
  {
    JUMPOUT(0x19D40F094);
  }

  JUMPOUT(0x19D40F008);
}

void sub_19D40F0A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:
  operator delete(v27);
  if (v25)
  {
LABEL_12:
    JUMPOUT(0x19D40F020);
  }

LABEL_13:
  JUMPOUT(0x19D40F024);
}

uint64_t sub_19D40F0F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_19D40F514(a1 + 8, a2 + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = *(a2 + 160);
  v10 = *(a2 + 168);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  v13 = *(a2 + 200);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v15 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v15;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v17 = *(a2 + 224);
  v16 = *(a2 + 232);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v19 = *(a2 + 256);
  v18 = *(a2 + 264);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  v21 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_19D40F3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = v10[36];
  if (v17)
  {
    v10[37] = v17;
    operator delete(v17);
    v18 = v10[32];
    if (!v18)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v10[32];
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v10[33] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10[29] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10[25] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10[21] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[17] = v22;
  operator delete(v22);
  v23 = *v11;
  if (!*v11)
  {
LABEL_8:
    sub_19D3E4054(a10);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v10[13] = v23;
  operator delete(v23);
  sub_19D3E4054(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D40F514(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 48);
  *(result + 56) = 0;
  *(result + 48) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_19D40F61C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D40F650(uint64_t a1@<X0>, uint64_t a2@<X1>, const double **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v7 != -1)
  {
    if (v7 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = sub_19D4090E4(a1, a2, a3);
  v10 = v9;
  v11 = exp(-v8);
  v12 = v8 + 1.0;
  MEMORY[0] = v11 * *(a1 + 16) * (v12 + v10 + v12 + v10);
  v13 = *(a2 + 8);
  if (v13 != *a2)
  {
    if (((v13 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v14);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsqD(0, 1, 0, 1, v14);
  v15 = *(a1 + 48);
  if (v15)
  {
    v17 = v11 * v12 * (1.66666667 * *(a1 + 16));
    v18 = 8;
    v19 = 0;
    v16 = *(a1 + 24);
    do
    {
      v20 = *v16++;
      v21 = v20;
      v22 = *v19++;
      *v18 = v17 * v22 / (v21 * v21);
      v18 += 8;
      --v15;
    }

    while (v15);

    operator delete(0);
  }
}

void sub_19D40F9FC(_Unwind_Exception *a1)
{
  if (v5)
  {
    operator delete(v5);
    if (!v4)
    {
LABEL_3:
      if (!v3)
      {
LABEL_8:
        *(v2 + 8) = v1;
        operator delete(v1);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v3);
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  operator delete(v4);
  if (!v3)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL sub_19D40FA6C(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_19D40FB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BC2D0;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BC2D0;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BC2D0;
  return sub_19D3715C0(v39);
}

void sub_19D410004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D4100AC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D410160();
}

void sub_19D4102D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D4102F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D41030C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D41033C(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BC140;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 176) = v18 + v17;
  sub_19D411214(a1 + 184, v18 + v17);
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 504) = &unk_1F10BC188;
  *(a1 + 512) = a1 + 176;
  *(a1 + 576) = 0x3FB999999999999ALL;
  *(a1 + 584) = 0;
  sub_19D3C21BC(a1 + 592);
  *(a1 + 10712) = 0;
  *(a1 + 10696) = 0u;
  if (sub_19D36F6A8(a1 + 32) >= 1)
  {
    sub_19D410B40();
  }

  sub_19D410CB0();
}

void sub_19D4109CC(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v1 + 592));
  v8 = *(v1 + 584);
  *(v1 + 584) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BC1D8;
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 528) = v9;
    operator delete(v9);
  }

  sub_19D3E7E2C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D410C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D410C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D410DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D410DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D410E24(uint64_t a1)
{
  v1 = sub_19D414FE0(a1);

  operator delete(v1);
}

__int128 **sub_19D410E4C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 584) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10696) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D410F90(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v5 = sub_19D413470(a1 + 176, &__p);
  v7 = sqrt(v6);
  v16 = v7;
  v17 = v5;
  v8 = v5 + *(a1 + 568) * v7;
  v15 = v8;
  v9 = *(a1 + 160);
  if (v9 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v17, &v16, &v15);
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    if (v19 != __p)
    {
      if (((v19 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v9 + 24) = v20;
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = v9 + 56;
    *(a1 + 160) = v9 + 56;
  }

  *(a1 + 160) = v10;
  v11 = *(a1 + 488);
  v12 = v11 + 1;
  *(a1 + 488) = v11 + 1;
  v13 = *(a1 + 464);
  v14 = (*(a1 + 472) - v13) >> 3;
  if (v11 + 1 <= v14)
  {
    if (v11 + 1 < v14)
    {
      *(a1 + 472) = v13 + 8 * v11 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 464, v11 + 1 - v14);
    v12 = *(a1 + 488);
    v13 = *(a1 + 464);
  }

  *(v13 + 8 * v12 - 8) = a3;
  sub_19D41519C(a1 + 176, &__p);
  sub_19D416204(a1 + 496, a1 + 176);
}

void sub_19D4111C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D411214(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_19D475EE0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    memset_pattern16(0, &unk_19D475740, 8 * a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = a2 + 1;
  if (a2 != -1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v5;
  MEMORY[0] = log(sqrt(*(a1 + 16)));
  if (a2)
  {
    v6 = *v4;
    if (a2 == 1 || (8 - v6) < 0x10)
    {
      v7 = 0;
LABEL_14:
      v8 = (8 * v7 + 8);
      v9 = v6 + v7;
      v10 = a2 - v7;
      do
      {
        v11 = *v9++;
        *v8++ = log(v11);
        --v10;
      }

      while (v10);
      return a1;
    }

    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v13 = 8;
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6;
    do
    {
      v16 = *v15++;
      v18 = log(*(&v16 + 1));
      *&v17 = log(*&v16);
      *(&v17 + 1) = v18;
      *v13 = v17;
      v13 += 16;
      v14 -= 2;
    }

    while (v14);
    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_19D411430(uint64_t a1)
{
  v2 = pow(*(*(a1 + 8) + 120), vcvtd_n_f64_s32(*(*(a1 + 8) + 124), 1uLL) + 2.0);
  v3 = log(v2 * 9.8696044 / (*(a1 + 72) * 3.0));
  *(a1 + 64) = sqrt(v3 + v3);

  sub_19D4114BC(a1);
}

void sub_19D4114BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[12];
  v2 = v1[13];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[15];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D411A34(v4);
      operator new();
    }

    if ((v1[15] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 120);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D4119AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D411A34(uint64_t a1)
{
  if (*(a1 + 120))
  {
    sub_19D411B18(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 288), 1, __A, *(a1 + 312));
    return *__A;
  }
}

void sub_19D411AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D411B18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D411D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D411DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (v5 != *a2)
  {
    if (((v5 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 24);
  vDSP_vdivD(*(a1 + 24), 1, 0, 1, 0, 1, v6);
  v7 = *(a3 + 8);
  if (v7 != *a3)
  {
    if (((v7 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vdivD(*(a1 + 24), 1, 0, 1, 0, 1, *(a3 + 24));
  vDSP_vsubD(0, 1, 0, 1, 0, 1, v6);
  cblas_dnrm2_NEWLAPACK();
  return v8 * 2.23606798;
}

void sub_19D4120D4(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    operator delete(v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
          operator delete(v1);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v2);
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v3);
  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D412150()
{
  if (!v0)
  {
    JUMPOUT(0x19D412148);
  }

  JUMPOUT(0x19D412140);
}

uint64_t sub_19D412160(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BC258;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BC200;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D4122A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D4122EC(uint64_t a1)
{
  *a1 = &unk_1F10BC200;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BC258;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D412388(void *__p)
{
  *__p = &unk_1F10BC200;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BC258;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D4124C4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D412D48(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v90, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v80 = a3;
  sub_19D3C6024(a2, &v94);
  sub_19D413058(a2, v91);
  v7 = v92;
  if (v92 != v93)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v90, &v94[12 * v8]);
      v81 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_88:
      sub_19D3715C0(v90);
      v73 = v7[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v7[2];
          v75 = *v74 == v7;
          v7 = v74;
        }

        while (!v75);
      }

      v7 = v74;
      if (v74 == v93)
      {
        goto LABEL_94;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D413180(a1, v90, &__B);
      sub_19D3709B0(v90, &__B);
      sub_19D2A3E48(v89, v89[1]);
      sub_19D2A3E48(v88, v88[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v87;
        v13 = __p;
        if (v87 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v87 = v11;
        operator delete(v13);
      }

      v16 = __B;
      if (*&__B != 0.0)
      {
        v17 = v85;
        v18 = __B;
        if (v85 != __B)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __B;
        }

        v85 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v90, v82);
      v22 = *(v21 + 8);
      if (*(v22 + 120))
      {
        sub_19D411B18(*(v21 + 8), v96);
        *&__B = 0.0;
        vDSP_dotprD(v96[0], 1, *(v22 + 256), 1, &__B, v97);
        v23 = __B;
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v24 = __B;
        v26 = *(v22 + 216);
        v25 = *(v22 + 220);
        v99 = 0.0;
        v100 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v101 = v26;
        v102 = v25;
        if (v26)
        {
          v29 = *(v22 + 220);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 192);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v96, &__B);
        if (__C != 0.0)
        {
          v99 = __C;
          operator delete(*&__C);
        }

        v62 = sub_19D411DE4(v22 + 8, v82, v82);
        v64 = v63;
        v65 = *(v22 + 24);
        __C = 0.0;
        vDSP_dotprD(__B, 1, __B, 1, &__C, __p);
        v66 = __C;
        if (*&__B != 0.0)
        {
          v85 = __B;
          operator delete(__B);
        }

        v67 = -(v66 - (v62 + 1.0 + v64) * (exp(-v62) * v65));
        if (v67 > 2.22044605e-16)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v69 = *(v22 + 16);
        if (v96[0])
        {
          v96[1] = v96[0];
          operator delete(v96[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v69 + v68);
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      else
      {
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v27 = *&__B;
        v28 = sqrt(sub_19D413590(v22, v82));
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      v70 = *(*(v21 + 8) + 120);
      if (v70 > 0)
      {
        if (*(v21 + 56) != v70)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_85;
      }

LABEL_84:
      v71 = (*(*v21 + 8))(v21);
LABEL_85:
      v72 = *&v71;
      if (v82[0])
      {
        v82[1] = v82[0];
        operator delete(v82[0]);
      }

      v83 = v72;
      sub_19D3C6830((a1 + 64), v90, &v83);
      if (++v10 == v81)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_94:
  v76 = *(a1 + 72);
  sub_19D3BA6D0(v80, v76);
  *(v80 + 96) = v76[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v90, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v92, v93[0]);
  v77 = v94;
  if (v94)
  {
    v78 = v95;
    v79 = v94;
    if (v95 != v94)
    {
      do
      {
        v78 = sub_19D3715C0(v78 - 96);
      }

      while (v78 != v77);
      v79 = v94;
    }

    v95 = v77;
    operator delete(v79);
  }
}

void sub_19D412C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(v44 + 8, a43);
  sub_19D372E78((v45 - 240));
  _Unwind_Resume(a1);
}

void sub_19D412D48(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D413470(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 120), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D413008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D41302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D413058(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D413120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D413180(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D413310(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D4133C0(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D413250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D413310@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D4133C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D413470(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    sub_19D411B18(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v5 = __C;
    sub_19D413664(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D411A34(a1);
    sub_19D413590(a1, a2);
    return v7;
  }
}

void sub_19D413570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D413590(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    sub_19D411B18(a1, __p);
    sub_19D413664(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = sub_19D411DE4(a1 + 8, a2, a2);
    v9 = *(a1 + 24);
    return *(a1 + 16) + exp(-v8) * v9 * (v8 + 1.0 + v10);
  }
}

void sub_19D413648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D413664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 192, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D411DE4(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(-v6);
}

void sub_19D413758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D413788(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BC258;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BC288;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D413A9C(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D413B5C(uint64_t a1)
{
  v1 = sub_19D4140C4(a1);

  operator delete(v1);
}

void sub_19D413B84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D414240(a1, v22);
}

void sub_19D413FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D413FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D414004(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D414020(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D414050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D414064(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D414088(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D4140C4(uint64_t a1)
{
  *a1 = &unk_1F10BC288;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BC258;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D414240(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D4146DC(a1 + 64, v4, &__p);
}

void sub_19D414630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D4146DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D414AB8(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D414C5C(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D414C5C(a3, &__p);
    __break(1u);
  }
}

void sub_19D414C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D414C5C(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D413470(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 120), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D414FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D414FE0(uint64_t a1)
{
  *a1 = &unk_1F10BC140;
  v2 = *(a1 + 10696);
  if (v2)
  {
    v3 = *(a1 + 10704);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10696);
    }

    *(a1 + 10704) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10688));
  std::random_device::~random_device((a1 + 8144));
  std::random_device::~random_device((a1 + 5624));
  std::random_device::~random_device((a1 + 3096));
  v5 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 504) = &unk_1F10BC1D8;
  v6 = *(a1 + 520);
  if (v6)
  {
    *(a1 + 528) = v6;
    operator delete(v6);
  }

  sub_19D3E7E2C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D41519C(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a2 + 24);
  *(a1 + 120) = v6 + 1;
  *(a1 + 124) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 104) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 104) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 96, v8 - v9);
    v6 = *(a1 + 120) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 124);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D4152E0(a1, 1, 1);
}

void sub_19D4152E0(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 128);
    v4 = *(a1 + 128);
    v6 = *(a1 + 120);
    *(a1 + 152) = v6;
    v7 = (*(a1 + 136) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 136) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 128, v6 - v7);
      v6 = *(a1 + 120);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 124);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D415650(a1 + 96, &__p);
  if ((a1 + 160) != &__p)
  {
    sub_19D3C4E20((a1 + 160), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 184) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 160, &__p);
  if ((a1 + 192) != &__p)
  {
    sub_19D3C4E20((a1 + 192), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 216) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D415B90(a1);
  if (a3)
  {
    sub_19D415CD0(a1);
  }
}

void sub_19D415604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D415650(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D415B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20)
  {
    operator delete(a20);
    if (!v26)
    {
LABEL_3:
      v29 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v29 = a24;
  if (!a24)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v29);
  if (!v25)
  {
LABEL_5:
    *(v27 + 8) = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);
  *(v27 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D415B90(uint64_t a1)
{
  sub_19D3C88B4(a1 + 192, v6);
  sub_19D415EF8(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 256) != &__p)
  {
    sub_19D3C4E20((a1 + 256), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 280) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 256);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D415C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D415CD0(int32x2_t *a1)
{
  v2 = a1[15].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[28], 0, 0, 0);
  a1[31] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D415EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D415EF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D4161D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D416204(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = *(a2 + 8);
  v28 = &unk_1F10BB3E8;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = -1;
  v35 = 0x7FF0000000000000;
  v36 = -5;
  v37 = 0;
  sub_19D3CA020(&v28, v3 + 1);
  sub_19D373338(v26, *(a2 + 8) + 1);
  v4 = v26[0];
  v5 = __p[0];
  *v26[0] = 0xC01E000000000000;
  *v5 = 0x401E000000000000;
  v6 = *(a2 + 56);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 + 1;
    v9 = v6 + 1 > 1 ? v6 + 1 : 1;
    v10 = v9 - 1;
    if (v8 < 9)
    {
      goto LABEL_10;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v10 & 0xFFFFFFFC;
    v11 = v5 + 3;
    v12 = v4 + 24;
    __asm
    {
      FMOV            V0.2D, #-10.0
      FMOV            V1.2D, #10.0
    }

    v19 = v10 & 0xFFFFFFFC;
    do
    {
      *(v12 - 1) = _Q0;
      *v12 = _Q0;
      *(v11 - 1) = _Q1;
      *v11 = _Q1;
      v11 += 2;
      v12 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v10 != v7)
    {
LABEL_10:
      v20 = v4 + 8;
      v21 = v5 + 1;
      do
      {
        *&v20[8 * v7] = 0xC024000000000000;
        v21[v7++] = 0x4024000000000000;
      }

      while (v10 != v7);
    }
  }

  sub_19D3CA6A8(&v28, v26);
  sub_19D3CA7E0(&v28, __p);
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

  v23 = *(a2 + 64);
  v22 = *(a2 + 72);
  memset(v24, 0, sizeof(v24));
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v25 = *(a2 + 88);
  sub_19D416610(&v28, &v38, v24);
}

void sub_19D416570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D3C99D8(&a29);
    _Unwind_Resume(a1);
  }

  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D4165F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_19D36CF9C(&a21);
  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D416610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D4169EC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D416CE8(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D416CE8(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D416C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D416CE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19D417DF4(&v28, *a1);
  if (v32 != a2)
  {
    sub_19D3C4E20(v32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v33 = *(a2 + 24);
  v7 = *a2;
  v30 = exp(*v7 + *v7);
  v8 = v29;
  if (v29)
  {
    v9 = v31;
    if (v29 == 1 || (v31 - v7 - 8) < 0x10)
    {
      v10 = 0;
LABEL_7:
      v11 = &v7[8 * v10 + 8];
      v12 = &v9[8 * v10];
      v13 = v8 - v10;
      do
      {
        v14 = *v11++;
        *v12++ = exp(v14);
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v10 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v7 + 8);
    v20 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v31;
    do
    {
      v22 = *v19++;
      v24 = exp(*(&v22 + 1));
      *&v23 = exp(*&v22);
      *(&v23 + 1) = v24;
      *v21 = v23;
      v21 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_19D4152E0(&v28, 0, a3);
  v15 = sub_19D416F54(&v28);
  v16 = v15;
  if (a3)
  {
    sub_19D41717C(&v28, &v25);
    *a4 = v16;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v17 = v25;
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a4 + 32) = v27;
    *(a4 + 40) = 1;
    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }

  else
  {
    *a4 = v15;
    *(a4 + 8) = 0;
    *(a4 + 40) = 0;
  }

  return sub_19D3E7E2C(&v28);
}

double sub_19D416F54(uint64_t a1)
{
  sub_19D415EF8(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 220) >= *(a1 + 216))
  {
    v3 = *(a1 + 216);
  }

  else
  {
    v3 = *(a1 + 220);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 120) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D417124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D41717C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v5 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a1 + 256);
  v42 = *(a1 + 248);
  v7 = *(a1 + 264);
  v24 = a2;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a1 + 280);
  sub_19D3C8D6C(a1 + 256, &__B);
  v9 = __N;
  v10 = (__N * v8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B, 1, 0, 1, v8, __N, 1uLL);
  vDSP_vsubD(v39, 1, 0, 1, 0, 1, v10);
  v11 = v8 | (v9 << 32);
  sub_19D3C4E20(&v39, 0, 0, 0);
  v12 = a1;
  v42 = v11;
  if (__B)
  {
    v37 = __B;
    operator delete(__B);
  }

  v13 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = 0;
  v22 = *(a1 + 120);
  if (v22)
  {
    v23 = 0;
    v14 = 0;
    do
    {
      v26 = 0;
      __A = v14;
      v15 = 0;
      do
      {
        v16 = *(v12 + 124);
        if (v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v32 = 0;
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v17 = *(v12 + 124);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v29 = 0;
        v31 = 0;
        v30 = 0;
        sub_19D418350(a1 + 8, &v32, &__p, &__B);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v18 = &v39[__A * SHIDWORD(v42)];
        v19 = v37 - __B;
        if (__A == v15)
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          v20 = __N;
          vDSP_vsmulD(0, 1, &v18[8 * __A], 0, 1, __N);
          v21 = __A;
          v32 = 0x3FE0000000000000;
          vDSP_vsmulD(0, 1, &v32, 0, 1, v20);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
        }

        else
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          vDSP_vsmulD(0, 1, &v18[8 * v15], 0, 1, __N);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
          v21 = __A;
        }

        if (__B)
        {
          v37 = __B;
          operator delete(__B);
        }

        v15 = (v15 + 1);
        v26 += 8;
      }

      while (v15 <= v21);
      v14 = (v21 + 1);
      v23 += 8;
    }

    while (v14 != v22);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_19D417C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v31)
  {
    operator delete(v31);
    if (!v32)
    {
LABEL_3:
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v30)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(v30);
  if (!v29)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    if (a19)
    {
      operator delete(a19);
    }

    v35 = *(v33 - 120);
    if (v35)
    {
      *(v33 - 112) = v35;
      operator delete(v35);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v29);
  goto LABEL_6;
}

void sub_19D417D74()
{
  if (!v0)
  {
    JUMPOUT(0x19D417D14);
  }

  JUMPOUT(0x19D417D0CLL);
}

void sub_19D417D80()
{
  if (!v0)
  {
    JUMPOUT(0x19D417D14);
  }

  JUMPOUT(0x19D417D0CLL);
}

void sub_19D417D8C()
{
  if (v0)
  {
    JUMPOUT(0x19D417D94);
  }

  JUMPOUT(0x19D417D08);
}

void sub_19D417DA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:
  operator delete(v27);
  if (v25)
  {
LABEL_12:
    JUMPOUT(0x19D417D20);
  }

LABEL_13:
  JUMPOUT(0x19D417D24);
}

uint64_t sub_19D417DF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_19D418214(a1 + 8, a2 + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = *(a2 + 160);
  v10 = *(a2 + 168);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  v13 = *(a2 + 200);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v15 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v15;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v17 = *(a2 + 224);
  v16 = *(a2 + 232);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v19 = *(a2 + 256);
  v18 = *(a2 + 264);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  v21 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_19D4180F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = v10[36];
  if (v17)
  {
    v10[37] = v17;
    operator delete(v17);
    v18 = v10[32];
    if (!v18)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v10[32];
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v10[33] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10[29] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10[25] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10[21] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[17] = v22;
  operator delete(v22);
  v23 = *v11;
  if (!*v11)
  {
LABEL_8:
    sub_19D3E4054(a10);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v10[13] = v23;
  operator delete(v23);
  sub_19D3E4054(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D418214(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 48);
  *(result + 56) = 0;
  *(result + 48) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_19D41831C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D418350(uint64_t a1@<X0>, uint64_t a2@<X1>, const double **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v7 != -1)
  {
    if (v7 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = sub_19D411DE4(a1, a2, a3);
  v10 = v9;
  v11 = exp(-v8);
  v12 = v8 + 1.0;
  MEMORY[0] = v11 * *(a1 + 16) * (v12 + v10 + v12 + v10);
  v13 = *(a2 + 8);
  if (v13 != *a2)
  {
    if (((v13 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v14);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsqD(0, 1, 0, 1, v14);
  v15 = *(a1 + 48);
  if (v15)
  {
    v17 = v11 * v12 * (1.66666667 * *(a1 + 16));
    v18 = 8;
    v19 = 0;
    v16 = *(a1 + 24);
    do
    {
      v20 = *v16++;
      v21 = v20;
      v22 = *v19++;
      *v18 = v17 * v22 / (v21 * v21);
      v18 += 8;
      --v15;
    }

    while (v15);

    operator delete(0);
  }
}

void sub_19D4186FC(_Unwind_Exception *a1)
{
  if (v5)
  {
    operator delete(v5);
    if (!v4)
    {
LABEL_3:
      if (!v3)
      {
LABEL_8:
        *(v2 + 8) = v1;
        operator delete(v1);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v3);
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  operator delete(v4);
  if (!v3)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL sub_19D41876C(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_19D418894(id *a1)
{

  operator delete(a1);
}

uint64_t sub_19D418940(uint64_t a1, void *a2)
{
  *a2 = &unk_1F10BC300;
  result = MEMORY[0x19EAFAD10](*(a1 + 8));
  a2[1] = result;
  a2[2] = *(a1 + 16);
  return result;
}

void sub_19D41899C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_19D4189E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000019D47872ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000019D47872ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000019D47872ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000019D47872ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_19D418A68(uint64_t *a1, uint64_t *a2)
{
  v10 = *a2;
  sub_19D3BA6D0(v11, a2 + 1);
  v11[12] = a2[13];
  sub_19D3BA6D0(v12, a2 + 14);
  v13 = *(a2 + 26);
  sub_19D3BA6D0(v8, v12);
  sub_19D3B412C(v8, &v9);
  sub_19D3715C0(v8);
  v4.n128_f64[0] = v13;
  if (*(a1 + 2) == 1)
  {
    v4.n128_f64[0] = -v13;
  }

  v5 = *a1;
  v6 = v9;
  (*(v5 + 16))(v4);
  if (v6)
  {
    CFRelease(v6);
  }

  sub_19D3715C0(v12);
  sub_19D3715C0(v11);
  return 0;
}

void sub_19D418B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_19D2C08B0(va);
  sub_19D3715C0(v15 + 112);
  sub_19D3715C0(v15 + 8);
  _Unwind_Resume(a1);
}

void sub_19D418B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3715C0(va);
  sub_19D3715C0(v3 + 112);
  sub_19D3715C0(v3 + 8);
  _Unwind_Resume(a1);
}

void *sub_19D418B94(void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
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

void sub_19D418E18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19D2ABE10(a1);
}

uint64_t sub_19D418E88(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F10BC390;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_19D418EB8(uint64_t a1, uint64_t a2)
{
  sub_19D3BA6D0(v6, (a2 + 8));
  v7 = *(a2 + 104);
  sub_19D3BA6D0(v8, (a2 + 112));
  v4 = *(a2 + 208);
  v9 = v4;
  if (*(a1 + 8) == 1)
  {
    v7 = -v7;
    v9 = -v4;
  }

  sub_19D3715C0(v8);
  sub_19D3715C0(v6);
  return 0;
}

uint64_t sub_19D418F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000019D4787B1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000019D4787B1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000019D4787B1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000019D4787B1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_19D418FD8(const __CFDictionary *a1@<X0>, const __CFString *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_19D3BCCCC(a1, a2);
  if (v6)
  {
    v7 = v6;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      a3 = __p;
      sub_19D2C6CD8(v7, __p);
      v11 = 1;
      if (v10 < 0)
      {
        sub_19D2AD6B8(a4, __p[0], __p[1]);
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_6:
    *a4 = *a3;
    *(a4 + 16) = a3[2];
    goto LABEL_8;
  }

  sub_19D2AD6B8(a4, *a3, a3[1]);
LABEL_8:
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D4190E0(id *a1)
{

  operator delete(a1);
}

uint64_t sub_19D41918C(uint64_t a1, void *a2)
{
  *a2 = &unk_1F10BC410;
  result = MEMORY[0x19EAFAD10](*(a1 + 8));
  a2[1] = result;
  a2[2] = *(a1 + 16);
  return result;
}

void sub_19D4191E8(id *a1)
{

  operator delete(a1);
}

uint64_t sub_19D41922C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000019D47885ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000019D47885ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000019D47885ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000019D47885ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_19D4192B4(uint64_t a1, uint64_t *a2)
{
  sub_19D3BA6D0(v4, a2);
  sub_19D3B412C(v4, &v5);
  sub_19D3715C0(v4);
  v3 = v5;
  (*(*a1 + 16))();
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_19D419350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D419364(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v4 = strlen(v3);
  if (v3)
  {
    v10 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_19D2C05B4(*MEMORY[0x1E695E650], &cf);
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v11 = v6;
  v7 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v12 = v7;
  v8[0] = &v11;
  v8[1] = 1;
  *a2 = sub_19D2C37DC(v8);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_19D4194D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D3BB1B4(va);
  _Unwind_Resume(a1);
}

void sub_19D4194E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  sub_19D3BB1B4(&a13);
  _Unwind_Resume(a1);
}

void sub_19D419500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_19D2ABE10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D419D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_19D41A99C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_19D41AC78(uint64_t a1, int a2)
{
  bzero(**(a1 + 40), 4 * *(a1 + 20) * a2);
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }
}

void sub_19D41B1D0(uint64_t a1, int a2)
{
  bzero(**(a1 + 40), *(a1 + 20) * a2);
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }
}

uint64_t sub_19D41B7D8(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BC520;
  *(a1 + 1016) = __src[7];
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  v7 = *(__src + 32);
  LODWORD(v17) = 1;
  v18 = vdupq_n_s64(1uLL);
  v20 = 0;
  v21 = 0;
  v19 = v7;
  sub_19D2AD9C0(a1 + 16, &v17, &v22);
  v8 = *(__src + 64);
  LODWORD(v17) = 9;
  v18 = vdupq_n_s64(1uLL);
  v20 = 0;
  v21 = 0;
  v19 = v8;
  sub_19D2AD9C0(a1 + 40, &v17, &v22);
  LODWORD(v9) = *(__src + 80);
  *(a1 + 1072) = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(__src[71] + 4 * v10);
      LODWORD(v17) = (*(__src[70] + 4 * v10) + 0.5);
      sub_19D2C7CE4(a1 + 1080, &v17);
      LODWORD(v17) = (v11 + 0.5);
      sub_19D2C7CE4(a1 + 1104, &v17);
      ++v10;
      v9 = *(a1 + 1072);
    }

    while (v10 < v9);
  }

  **(a1 + 1104) = v9 + **(a1 + 1104) - 1;
  v17 = __src[56];
  sub_19D2C7DFC(a1 + 1024, &v17);
  if (*(a1 + 1072) >= 2)
  {
    v12 = __src + 57;
    v13 = 1;
    do
    {
      v17 = *v12;
      sub_19D2C7DFC(a1 + 1024, &v17);
      v17 = v12[15];
      sub_19D2C7DFC(a1 + 1048, &v17);
      ++v13;
      ++v12;
    }

    while (v13 < *(a1 + 1072));
  }

  return a1;
}

void sub_19D41BA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v20 = *v18;
  if (*v18)
  {
    v14[139] = v20;
    operator delete(v20);
    v21 = *v17;
    if (!*v17)
    {
LABEL_3:
      v22 = *v16;
      if (!*v16)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v21 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  v14[136] = v21;
  operator delete(v21);
  v22 = *v16;
  if (!*v16)
  {
LABEL_4:
    v23 = *v15;
    if (!*v15)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v14[132] = v22;
  operator delete(v22);
  v23 = *v15;
  if (!*v15)
  {
LABEL_5:
    sub_19D38640C(v14);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v14[129] = v23;
  operator delete(v23);
  sub_19D38640C(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19D41BAF4(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 24);

  return v10(a2, a1);
}

int64x2_t sub_19D41BBF8(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 224))(a1);
  v5 = (*(*a1 + 216))(a1, 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 568);
  if (!v6)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  result = vdupq_n_s64(1uLL);
  *(v8 + 5) = result;
  v8[7] = v7;
  v8[8] = v4;
  v8[9] = v5;
  return result;
}

uint64_t sub_19D41BD54(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BC690;
  *(a1 + 1016) = __src[7];
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  v7 = *(__src + 32);
  LODWORD(v17) = 1;
  v18 = vdupq_n_s64(1uLL);
  v20 = 0;
  v21 = 0;
  v19 = v7;
  sub_19D2AD9C0(a1 + 16, &v17, &v22);
  v8 = *(__src + 64);
  LODWORD(v17) = 9;
  v18 = vdupq_n_s64(1uLL);
  v20 = 0;
  v21 = 0;
  v19 = v8;
  sub_19D2AD9C0(a1 + 40, &v17, &v22);
  LODWORD(v9) = *(__src + 80);
  *(a1 + 1072) = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(__src[71] + 4 * v10);
      LODWORD(v17) = (*(__src[70] + 4 * v10) + 0.5);
      sub_19D2C7CE4(a1 + 1080, &v17);
      LODWORD(v17) = (v11 + 0.5);
      sub_19D2C7CE4(a1 + 1104, &v17);
      ++v10;
      v9 = *(a1 + 1072);
    }

    while (v10 < v9);
  }

  **(a1 + 1104) = v9 + **(a1 + 1104) - 1;
  v17 = __src[56];
  sub_19D2C8478(a1 + 1024, &v17);
  if (*(a1 + 1072) >= 2)
  {
    v12 = __src + 57;
    v13 = 1;
    do
    {
      v17 = *v12;
      sub_19D2C8478(a1 + 1024, &v17);
      v17 = v12[15];
      sub_19D2C8478(a1 + 1048, &v17);
      ++v13;
      ++v12;
    }

    while (v13 < *(a1 + 1072));
  }

  return a1;
}

void sub_19D41BFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v20 = *v18;
  if (*v18)
  {
    v14[139] = v20;
    operator delete(v20);
    v21 = *v17;
    if (!*v17)
    {
LABEL_3:
      v22 = *v16;
      if (!*v16)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v21 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  v14[136] = v21;
  operator delete(v21);
  v22 = *v16;
  if (!*v16)
  {
LABEL_4:
    v23 = *v15;
    if (!*v15)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v14[132] = v22;
  operator delete(v22);
  v23 = *v15;
  if (!*v15)
  {
LABEL_5:
    sub_19D388648(v14);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v14[129] = v23;
  operator delete(v23);
  sub_19D388648(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_19D41C070(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 128);

  return v10(a2, a1);
}

int64x2_t sub_19D41C174(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 224))(a1);
  v5 = (*(*a1 + 216))(a1, 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 568);
  if (!v6)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 8);
      if (v9 <= a2)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  result = vdupq_n_s64(1uLL);
  *(v8 + 5) = result;
  v8[7] = v7;
  v8[8] = v4;
  v8[9] = v5;
  return result;
}

uint64_t sub_19D41C2D0(void *a1)
{
  *a1 = &unk_1F10BC520;
  v2 = a1[138];
  if (v2)
  {
    a1[139] = v2;
    operator delete(v2);
  }

  v3 = a1[135];
  if (v3)
  {
    a1[136] = v3;
    operator delete(v3);
  }

  v4 = a1[131];
  if (v4)
  {
    a1[132] = v4;
    operator delete(v4);
  }

  v5 = a1[128];
  if (v5)
  {
    a1[129] = v5;
    operator delete(v5);
  }

  return sub_19D38640C(a1);
}

void sub_19D41C360(void *a1)
{
  *a1 = &unk_1F10BC520;
  v2 = a1[138];
  if (v2)
  {
    a1[139] = v2;
    operator delete(v2);
  }

  v3 = a1[135];
  if (v3)
  {
    a1[136] = v3;
    operator delete(v3);
  }

  v4 = a1[131];
  if (v4)
  {
    a1[132] = v4;
    operator delete(v4);
  }

  v5 = a1[128];
  if (v5)
  {
    a1[129] = v5;
    operator delete(v5);
  }

  v6 = sub_19D38640C(a1);

  operator delete(v6);
}

uint64_t sub_19D41C3F4(void *a1)
{
  *a1 = &unk_1F10BC690;
  v2 = a1[138];
  if (v2)
  {
    a1[139] = v2;
    operator delete(v2);
  }

  v3 = a1[135];
  if (v3)
  {
    a1[136] = v3;
    operator delete(v3);
  }

  v4 = a1[131];
  if (v4)
  {
    a1[132] = v4;
    operator delete(v4);
  }

  v5 = a1[128];
  if (v5)
  {
    a1[129] = v5;
    operator delete(v5);
  }

  return sub_19D388648(a1);
}

void sub_19D41C484(void *a1)
{
  *a1 = &unk_1F10BC690;
  v2 = a1[138];
  if (v2)
  {
    a1[139] = v2;
    operator delete(v2);
  }

  v3 = a1[135];
  if (v3)
  {
    a1[136] = v3;
    operator delete(v3);
  }

  v4 = a1[131];
  if (v4)
  {
    a1[132] = v4;
    operator delete(v4);
  }

  v5 = a1[128];
  if (v5)
  {
    a1[129] = v5;
    operator delete(v5);
  }

  v6 = sub_19D388648(a1);

  operator delete(v6);
}

void sub_19D41C548(int a1)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = a1;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

uint64_t sub_19D41C578(uint64_t a1)
{
  v14 = 0;
  sub_19D306AF4(v8);
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  sub_19D2AE554(&v9, v3, v4);
  MEMORY[0x19EAFA260](v8, &v14);
  v5 = v14;
  v8[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v9 = v6;
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](&v13);
  return v5;
}

float sub_19D41C738(uint64_t a1)
{
  v14 = 0.0;
  sub_19D306AF4(v8);
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  sub_19D2AE554(&v9, v3, v4);
  MEMORY[0x19EAFA250](v8, &v14);
  v5 = v14;
  v8[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v9 = v6;
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](&v13);
  return v5;
}

size_t sub_19D41C90C(FILE *__stream, uint64_t a2, uint64_t a3)
{
  __ptr = -1;
  fread(&__ptr, 4uLL, 1uLL, __stream);
  v5 = __ptr;
  std::string::resize(a3, __ptr, 0);
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  return fread(v6, v5, 1uLL, __stream);
}

size_t sub_19D41C99C(FILE *__stream, _DWORD *a2, char a3)
{
  __ptr = a3;
  result = fwrite(&__ptr, 1uLL, 1uLL, __stream);
  ++*a2;
  return result;
}

size_t sub_19D41C9E8(FILE *__stream, _DWORD *a2, int a3)
{
  __ptr = a3;
  result = fwrite(&__ptr, 4uLL, 1uLL, __stream);
  *a2 += 4;
  return result;
}

size_t sub_19D41CA34(size_t __stream, _DWORD *a2, char a3, int a4)
{
  if (a4 >= 1)
  {
    v11 = v4;
    v12 = v5;
    v6 = a4;
    v9 = __stream;
    do
    {
      __ptr = a3;
      __stream = fwrite(&__ptr, 1uLL, 1uLL, v9);
      ++*a2;
      --v6;
    }

    while (v6);
  }

  return __stream;
}

size_t sub_19D41CAA8(FILE *__stream, _DWORD *a2, int *a3)
{
  __ptr = *a3;
  result = fwrite(&__ptr, 4uLL, 1uLL, __stream);
  *a2 += 4;
  return result;
}

size_t sub_19D41CAF8(FILE *__stream, _DWORD *a2, void *__ptr, uint64_t a4, int a5)
{
  v7 = a5;
  result = fwrite(__ptr, 4uLL, a5, __stream);
  if (result != v7)
  {
    sub_19D41C548(9);
  }

  *a2 += 4 * a5;
  return result;
}

size_t sub_19D41CB58(FILE *__stream, _DWORD *a2, float *a3, _WORD *__ptr, int a5)
{
  if (a5 >= 1)
  {
    v7 = __ptr;
    v8 = a5;
    do
    {
      v10 = *a3;
      if (*a3 <= -5.0)
      {
        LOWORD(v9) = -32767;
      }

      else if (v10 < 5.0 && (v9 = llroundf(v10 * 6553.6), v9 < 0x8000))
      {
        if (v9 <= -32767)
        {
          LOWORD(v9) = -32767;
        }
      }

      else
      {
        LOWORD(v9) = 0x7FFF;
      }

      *v7++ = v9;
      ++a3;
      --v8;
    }

    while (v8);
  }

  result = fwrite(__ptr, 2uLL, a5, __stream);
  if (result != a5)
  {
    sub_19D41C548(9);
  }

  *a2 += 2 * a5;
  return result;
}

size_t sub_19D41CC34(FILE *__stream, _DWORD *a2, float *a3, _BYTE *__ptr, int a5)
{
  if (a5 >= 1)
  {
    v7 = __ptr;
    v8 = a5;
    do
    {
      v10 = *a3;
      if (*a3 <= -5.0)
      {
        LOBYTE(v9) = -127;
      }

      else if (v10 < 5.0 && (v9 = llroundf(v10 * 25.6), v9 <= 127))
      {
        if (v9 <= -127)
        {
          LOBYTE(v9) = -127;
        }
      }

      else
      {
        LOBYTE(v9) = 127;
      }

      *v7++ = v9;
      ++a3;
      --v8;
    }

    while (v8);
  }

  result = fwrite(__ptr, 1uLL, a5, __stream);
  if (result != a5)
  {
    sub_19D41C548(9);
  }

  *a2 += a5;
  return result;
}

size_t sub_19D41CD10(FILE *__stream, _DWORD *a2, unint64_t a3, __n128 *__ptr, unsigned int a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  if (a5 >= 1)
  {
    if (a5 > 7 && (a3 + a5 <= __ptr || __ptr->n128_u64 + 4 * a5 <= a3))
    {
      v15 = a5 & 0x7FFFFFF8;
      v22 = (a3 + 4);
      v23 = __ptr + 1;
      v24 = vdupq_n_s32(0x3D200000u);
      __asm
      {
        FMOV            V4.4S, #-5.0
        FMOV            V5.4S, #5.0
      }

      v31 = v15;
      do
      {
        a12.i32[0] = *(v22 - 1);
        a13.i32[0] = *v22;
        v32 = vmovl_u8(*a12.i8).u64[0];
        v33 = vmovl_u8(*a13.i8).u64[0];
        a12 = vbslq_s8(vmovl_s16(vceq_s16(v32, 0x7F007F007F007FLL)), _Q5, vbslq_s8(vmovl_s16(vcgt_s16(vshr_n_s16(vshl_n_s16(v32, 8uLL), 8uLL), 0x7E007E007E007ELL)), vmulq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(a12, xmmword_19D475360), 0x18uLL), v24), _Q4));
        a13 = vbslq_s8(vmovl_s16(vceq_s16(v33, 0x7F007F007F007FLL)), _Q5, vbslq_s8(vmovl_s16(vcgt_s16(vshr_n_s16(vshl_n_s16(v33, 8uLL), 8uLL), 0x7E007E007E007ELL)), vmulq_f32(vcvtq_n_f32_s32(vqtbl1q_s8(a13, xmmword_19D475360), 0x18uLL), v24), _Q4));
        v23[-1] = a12;
        *v23 = a13;
        v22 += 2;
        v23 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v15 == a5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = (a3 + v15);
    v17 = a5 - v15;
    v18 = __ptr + v15;
    do
    {
      v20 = *v16++;
      v19 = v20;
      v21 = -5.0;
      if (v20 >= -126)
      {
        v21 = 5.0;
        if (v19 != 127)
        {
          v21 = v19 * 0.039062;
        }
      }

      *v18++ = v21;
      --v17;
    }

    while (v17);
  }

LABEL_14:
  result = fwrite(__ptr, 4uLL, a5, __stream);
  if (result != a5)
  {
    sub_19D41C548(9);
  }

  *a2 += 4 * a5;
  return result;
}

size_t sub_19D41CEA0(FILE *__stream, _DWORD *a2, int16x4_t *a3, int8x16_t *__ptr, int a5)
{
  if (a5 >= 1)
  {
    if (a5 > 7)
    {
      v7 = a5 & 0x7FFFFFF8;
      v8 = a3 + 1;
      v9 = __ptr + 1;
      v10 = vneg_f16(0x1000100010001);
      v11 = vdupq_n_s32(0x39200000u);
      __asm
      {
        FMOV            V3.4S, #-5.0
        FMOV            V4.4S, #5.0
      }

      v18 = v7;
      do
      {
        v19 = vbslq_s8(vmovl_s16(vceq_s16(*v8, 0x8000800080008000)), _Q4, vbslq_s8(vmovl_s16(vcgt_s16(*v8, v10)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v8)), v11), _Q3));
        v9[-1] = vbslq_s8(vmovl_s16(vceq_s16(v8[-1], 0x8000800080008000)), _Q4, vbslq_s8(vmovl_s16(vcgt_s16(v8[-1], v10)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(v8[-1])), v11), _Q3));
        *v9 = v19;
        v8 += 2;
        v9 += 2;
        v18 -= 8;
      }

      while (v18);
      if (v7 == a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
    }

    v21 = a5 - v7;
    v22 = &__ptr->i32[v7];
    v23 = a3 + v7;
    do
    {
      v25 = *v23++;
      v24 = v25;
      v26 = -5.0;
      if (v25 >= -32766)
      {
        v26 = 5.0;
        if (v24 != 0x7FFF)
        {
          v26 = v24 * 0.00015259;
        }
      }

      *v22++ = v26;
      --v21;
    }

    while (v21);
  }

LABEL_7:
  result = fwrite(__ptr, 4uLL, a5, __stream);
  if (result != a5)
  {
    sub_19D41C548(9);
  }

  *a2 += 4 * a5;
  return result;
}

uint64_t sub_19D41D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = &unk_1F10BC830;
  *(a1 + 8) = a2;
  sub_19D3955B4(a1 + 16, a3);
  v16 = *(a4 + 24);
  if (!v16)
  {
    goto LABEL_4;
  }

  if (v16 != a4)
  {
    v16 = (*(*v16 + 16))(v16);
LABEL_4:
    *(a1 + 160) = v16;
    goto LABEL_6;
  }

  *(a1 + 160) = a1 + 136;
  (*(**(a4 + 24) + 24))(*(a4 + 24), a1 + 136);
LABEL_6:
  v17 = *(a5 + 24);
  if (v17)
  {
    if (v17 == a5)
    {
      *(a1 + 192) = a1 + 168;
      (*(**(a5 + 24) + 24))(*(a5 + 24));
      goto LABEL_11;
    }

    v17 = (*(*v17 + 16))(v17);
  }

  *(a1 + 192) = v17;
LABEL_11:
  *(a1 + 200) = a6;
  *(a1 + 208) = a7;
  *(a1 + 216) = a8;
  *(a1 + 224) = *a9;
  v18 = *(a9 + 8);
  *(a1 + 248) = *(a9 + 24);
  *(a1 + 232) = v18;
  *(a1 + 264) = *(a9 + 40);
  *(a1 + 272) = *a10;
  *(a1 + 280) = *(a10 + 8);
  *(a1 + 288) = *(a10 + 16);
  return a1;
}

void sub_19D41D1A0(_Unwind_Exception *a1)
{
  sub_19D41D94C(v2);
  sub_19D2A3E48(v1 + 16, *(v1 + 24));
  _Unwind_Resume(a1);
}

void sub_19D41D1D8(uint64_t a1, int a2)
{
  *out = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *in = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  sub_19D41D34C(a1, a2, v14);
  memset(v13, 0, sizeof(v13));
  v4 = MEMORY[0x19EAF99C0](v14, v13);
  v39 = a2;
  v5 = *(a1 + 160);
  if (!v5 || ((*(*v5 + 48))(&v8), v39 = a2, (v6 = *(a1 + 192)) == 0))
  {
    sub_19D3D0FFC();
  }

  v7 = v9 * v10 * v11 * v12 / a2;
  (*(*v6 + 48))(&v8);
  BNNSFilterApplyBatch(v4, a2, in[1], v7, out[1], v9 * v10 * v11 * v12 / a2);
  if (v4)
  {
    BNNSFilterDestroy(v4);
  }
}

double sub_19D41D34C@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v24 = a2;
  v4 = *(a1 + 160);
  if (!v4 || ((*(*v4 + 48))(&v20), v24 = v20, v25 = v21, v26 = v22, v7 = v23, v27 = v23, v23 = 0, *a3 = 0u, *(a3 + 16) = 0u, *(a3 + 32) = 0u, *(a3 + 48) = 0u, *(a3 + 64) = 0u, *(a3 + 80) = 0u, *(a3 + 96) = 0u, *(a3 + 112) = 0u, *(a3 + 128) = 0u, *(a3 + 144) = 0u, *(a3 + 160) = 0u, *(a3 + 136) = v7, *(a3 + 144) = 65568, *(a3 + 164) = 1065353216, *(a3 + 72) = sub_19D41D9D8(&v24, 0), *(a3 + 8) = v25, *(a3 + 80) = sub_19D41D9D8(&v24, 1), *(a3 + 16) = *(&v25 + 1), *(a3 + 88) = sub_19D41D9D8(&v24, 2), *(a3 + 24) = v26, *(a3 + 4) = 196608, v8 = *(a1 + 264), v24 = *(a1 + 224), v25 = *(a1 + 232), v26 = *(a1 + 248), v27 = v8, *(a3 + 304) = 0u, *(a3 + 320) = 0u, *(a3 + 336) = 0u, *(a3 + 176) = 0u, *(a3 + 192) = 0u, *(a3 + 208) = 0u, *(a3 + 224) = 0u, *(a3 + 240) = 0u, *(a3 + 256) = 0u, *(a3 + 272) = 0u, *(a3 + 288) = 0u, *(a3 + 312) = v8, *(a3 + 320) = 65568, *(a3 + 340) = 1065353216, *(a3 + 248) = sub_19D41D9D8(&v24, 0), v18 = v25, *(a3 + 256) = sub_19D41D9D8(&v24, 1), v19 = __PAIR128__(*(&v25 + 1), v18), *(a3 + 264) = sub_19D41D9D8(&v24, 2), v17 = v26, *(a3 + 272) = sub_19D41D9D8(&v24, 3), v9 = __PAIR128__(*(&v26 + 1), v17), *(a3 + 184) = v19, *(a3 + 200) = v9, *(a3 + 328) = 0, *(a3 + 180) = 0x40000, v24 = a2, (v10 = *(a1 + 192)) == 0))
  {
    sub_19D3D0FFC();
  }

  (*(*v10 + 48))(&v20);
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v11 = v23;
  v27 = v23;
  v23 = 0;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 488) = v11;
  *(a3 + 496) = 65568;
  *(a3 + 516) = 1065353216;
  *(a3 + 424) = sub_19D41D9D8(&v24, 0);
  *(a3 + 360) = v25;
  *(a3 + 432) = sub_19D41D9D8(&v24, 1);
  *(a3 + 368) = *(&v25 + 1);
  *(a3 + 440) = sub_19D41D9D8(&v24, 2);
  *(a3 + 376) = v26;
  *(a3 + 356) = 196608;
  v12 = *(a1 + 280);
  v13 = *(a1 + 288);
  *(a3 + 656) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 0u;
  *(a3 + 704) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0u;
  *(a3 + 560) = 0u;
  *(a3 + 576) = 0u;
  *(a3 + 592) = 0u;
  *(a3 + 608) = 0u;
  *(a3 + 624) = 0u;
  *(a3 + 640) = 0u;
  *(a3 + 664) = v13;
  *(a3 + 672) = 65568;
  *(a3 + 692) = 1065353216;
  *(a3 + 600) = 1;
  *(a3 + 536) = v12;
  *(a3 + 532) = 0x10000;
  v14 = *(a1 + 200);
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  if (v14 - 1) <= 4 && ((0x1Bu >> (v14 - 1)))
  {
    *(a3 + 704) = dword_19D478940[v14 - 1];
  }

  *(a3 + 752) = sub_19D37F014(a1 + 16, 0);
  *(a3 + 760) = sub_19D37F014(a1 + 16, 1);
  v15 = *(a1 + 208);
  *(a3 + 768) = vdupq_n_s64(1uLL);
  *(a3 + 784) = v15;
  result = 0.0;
  *(a3 + 800) = 0u;
  *(a3 + 816) = 0u;
  *(a3 + 832) = 0;
  return result;
}

uint64_t sub_19D41D70C(uint64_t a1)
{
  *a1 = &unk_1F10BC830;
  v2 = a1 + 168;
  v3 = *(a1 + 192);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 160);
    if (v4 != a1 + 136)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 160);
  if (v4 == a1 + 136)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_19D2A3E48(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_19D41D824(char *a1)
{
  *a1 = &unk_1F10BC830;
  v2 = a1 + 168;
  v3 = *(a1 + 24);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 20);
    if (v4 != a1 + 136)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 20);
  if (v4 == a1 + 136)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_19D2A3E48((a1 + 16), *(a1 + 3));

  operator delete(a1);
}

uint64_t sub_19D41D94C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_19D41D9D8(_DWORD *a1, uint64_t a2)
{
  if (!*a1)
  {
    if (a2 != 3)
    {
      v3 = a2 + 1;
      goto LABEL_7;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = a2 - 1;
LABEL_7:
  v5 = sub_19D41D9D8(a1, v3);
  if (v3 < 0)
  {
    v6 = v3 + 4;
  }

  else
  {
    v6 = v3;
  }

  if (v6 >= 4)
  {
    sub_19D2AEA2C("array::at");
  }

  return *&a1[2 * v6 + 2] * v5;
}

uint64_t sub_19D41DA68(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11)
{
  *result = &unk_1F10BC4A0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  *(result + 48) = a8;
  *(result + 64) = 0;
  *(result + 56) = a9;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v11 = a10[1];
  if (v11 != *a10)
  {
    if (((v11 - *a10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 88) = a11;
  *result = &unk_1F10BC870;
  return result;
}

void sub_19D41DB40(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D41DB5C(uint64_t result)
{
  v3 = *(result + 56);
  if (v3 <= 9 && ((0x237u >> v3) & 1) != 0)
  {
    v5 = v1;
    v6 = v2;
    bzero(v4, 0x20uLL);
    v4[0] = 1;
    return BNNSDirectApplyFullyConnectedBatch();
  }

  return result;
}

uint64_t sub_19D41DDA4(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11)
{
  *result = &unk_1F10BC4C8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  *(result + 48) = a8;
  *(result + 64) = 0;
  *(result + 56) = a9;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v11 = a10[1];
  if (v11 != *a10)
  {
    if (((v11 - *a10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 88) = a11;
  *result = &unk_1F10BC898;
  return result;
}

void sub_19D41DE7C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D41DE98(uint64_t result)
{
  v3 = *(result + 56);
  if (v3 <= 9 && ((0x237u >> v3) & 1) != 0)
  {
    v5 = v1;
    v6 = v2;
    bzero(v4, 0x20uLL);
    v4[0] = 1;
    return BNNSDirectApplyFullyConnectedBatch();
  }

  return result;
}

void *sub_19D41E0EC(void *result)
{
  *result = &unk_1F10BC4A0;
  v1 = result[8];
  if (v1)
  {
    result[9] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D41E144(void *a1)
{
  *a1 = &unk_1F10BC4A0;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *sub_19D41E1A8(void *result)
{
  *result = &unk_1F10BC4C8;
  v1 = result[8];
  if (v1)
  {
    result[9] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}