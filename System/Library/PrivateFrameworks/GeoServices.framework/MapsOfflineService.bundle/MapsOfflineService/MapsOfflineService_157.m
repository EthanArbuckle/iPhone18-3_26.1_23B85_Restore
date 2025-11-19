void sub_9B5DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9B5E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B5E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B5E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9B5E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9B5E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  sub_9A7C50(&a25);
  _Unwind_Resume(a1);
}

double sub_9B5EA4(uint64_t a1, void *a2)
{
  if (!sub_9BAF1C((a1 + 368), a2))
  {
    sub_7E9A4(v10);
    v5 = *(a1 + 80);
    v6 = *(v5 + 248);
    if (v6 >= *(v5 + 256))
    {
      v8 = sub_9B8AFC((v5 + 240), a2);
    }

    else
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = a2[1];
      if (v7 != *a2)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v8 = (v6 + 3);
      *(v5 + 248) = v6 + 3;
    }

    *(v5 + 248) = v8;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 80) + 248) - *(*(a1 + 80) + 240)) >> 3) - 1;
    v11 = a2;
    sub_9BB0E8((a1 + 368), a2)[5] = v9;
    result = sub_7EA60(v10) + *(a1 + 448);
    *(a1 + 448) = result;
  }

  return result;
}

void sub_9B6000(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 248) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_9B6020(uint64_t *a1, uint64_t a2, _OWORD *a3, int *a4, int a5)
{
  v9 = *a4;
  v79[0] = *a3;
  v79[1] = v9;
  v80 = a5;
  v10 = sub_9BB644(a1 + 51, v79);
  if (!v10)
  {
    sub_7E9A4(v78);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v39 = -1;
    v40 = -1;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = 0;
    v43 = -1935635296;
    v44[0] = 0;
    *(v44 + 7) = 0;
    memset(&v44[2], 0, 24);
    v45 = 0;
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v47 = 100;
    v49 = 0;
    v48 = 0;
    v50 = vnegq_f64(v11);
    v53 = 0;
    v51 = 0;
    v52 = 0;
    v56 = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    v70 = -1;
    v71 = -1;
    v72 = 0;
    v75 = 0;
    v73 = 0;
    v74 = 0;
    v76 = 0;
    v77 = 0;
    v55 = 0;
    v54 = 2;
    v37 = sub_9B6AA4(a1, a4);
    v38 = v12;
    sub_7E9A4(v36);
    sub_790648(&v83, a2);
    LODWORD(v18) = 0;
    v16 = 0u;
    v17 = 0u;
    v82 = 0;
    LOBYTE(__p) = 0;
    sub_4C63BC(&v27, &v83, 0, &v16, &__p);
    if (v82 < 0)
    {
      operator delete(__p);
    }

    sub_3EEA68(&v83);
    memset(v26, 0, sizeof(v26));
    v13 = sub_9AFDDC((a1 + 6), a1[1], a1[11], a5);
    sub_F4BDFC(v13, &v27, v26);
    v16 = 0uLL;
    *&v17 = 0;
    v83 = &v16;
    v84 = 0;
    if (v28 != v27)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 4) < 0x333333333333334)
      {
        operator new();
      }

      sub_1794();
    }

    v18 = 0;
    v19 = 0;
    *(&v17 + 1) = 0;
    sub_9B8E8C(&v17 + 8, v29, v30, 0xE21A291C077975B9 * ((v30 - v29) >> 3));
    v20 = v31;
    v21 = v32;
    *v22 = *v33;
    *&v22[14] = *&v33[14];
    if (SHIBYTE(v35) < 0)
    {
      sub_325C(&v23, v34, *(&v34 + 1));
    }

    else
    {
      v23 = v34;
      v24 = v35;
    }

    sub_9B8D08(v25, v26);
    sub_9AFBF4((a1 + 6), a1[1], (a1 + 13), a1[11], a5);
    sub_4E9DA4(&v83, &v37);
    memset(v15, 0, sizeof(v15));
    *&__p = v15;
    BYTE8(__p) = 0;
    operator new();
  }

  return v10[7];
}

void sub_9B68D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  sub_785D84(&a38);
  sub_9B90F0(&a41);
  sub_9B93D4(&a61);
  sub_419F70(&a64);
  sub_44FDEC(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t sub_9B6AA4(uint64_t a1, int *a2)
{
  v2 = a2[3];
  if (v2 == 2)
  {
    v6 = *a2;
    v3 = 0xFFFFFFFFLL;
    if (*a2 <= 1)
    {
      if (v6)
      {
        v4 = -1;
        if (v6 != 1)
        {
          return v4 | (v3 << 32);
        }

        v7 = sub_93D2F4(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "hall");
      }

      else
      {
        v7 = sub_502FF8(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "stop");
      }
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          v7 = sub_503310(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "access point");
          v8 = *(v7 - *v7 + 14);
        }

        else
        {
          v4 = -1;
          if (v6 != 4)
          {
            return v4 | (v3 << 32);
          }

          v7 = sub_503184(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "road access point");
          v8 = *(v7 - *v7 + 8);
        }

        goto LABEL_18;
      }

      v7 = sub_93D480(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "station");
    }

    v8 = *(v7 - *v7 + 6);
LABEL_18:
    v9 = v7 + v8;
    v10 = *v9;
    LODWORD(v9) = *(v9 + 4);
    if (v9 >= 0xFFFFFFFE)
    {
      v9 = 4294967294;
    }

    else
    {
      v9 = v9;
    }

    return v10 | (v9 << 32);
  }

  if (v2 == 1)
  {
    v4 = *a2;
    v3 = a2[1];
    return v4 | (v3 << 32);
  }

  return -1;
}

uint64_t sub_9B6C24(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  sub_9B8D08((a1 + 128), (a2 + 128));
  return a1;
}

void sub_9B6CFC(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void *sub_9B6D40(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9B6DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9B9438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B6E18(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  v6 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - v2) >> 3) + 1;
  if (v6 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3) > v6)
  {
    v6 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - v2) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * ((v3 - v2) >> 3);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *v8 = -1;
  *(v8 + 8) = 0x7FFFFFFF;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 100) = -1;
  *(v8 + 104) = -1;
  *(v8 + 157) = 0;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  v9 = v8 + 168;
  v10 = v8 - v5;
  *(v8 + 112) = 0u;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v8 - v5;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = *(v11 + 4);
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 7);
      *(v12 + 40) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 5) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = *(v11 + 10);
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      v15 = *(v11 + 88);
      *(v12 + 104) = *(v11 + 13);
      *(v12 + 88) = v15;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 112) = *(v11 + 7);
      *(v12 + 128) = *(v11 + 16);
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      v16 = *(v11 + 136);
      *(v12 + 152) = *(v11 + 19);
      *(v12 + 136) = v16;
      *(v11 + 18) = 0;
      *(v11 + 19) = 0;
      *(v11 + 17) = 0;
      LODWORD(v13) = *(v11 + 40);
      *(v12 + 164) = v11[164];
      *(v12 + 160) = v13;
      v11 += 168;
      v12 += 168;
    }

    while (v11 != v3);
    do
    {
      v2 = (sub_943834(v2) + 168);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

double sub_9B7070@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 - *a1);
  v4 = *v3;
  if (v4 >= 5)
  {
    if (v3[2])
    {
      v10 = *(a1 + v3[2]);
      if (v4 >= 9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = -1;
      if (v4 >= 9)
      {
LABEL_4:
        if (v3[4])
        {
          v5 = *(a1 + v3[4]) != 0;
          v6 = v3[3];
          if (!v6)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v5 = 0;
          v6 = v3[3];
          if (!v6)
          {
LABEL_13:
            v7 = 0;
            goto LABEL_14;
          }
        }

        goto LABEL_11;
      }
    }

    v5 = 0;
    if (v4 < 7)
    {
      goto LABEL_13;
    }

    v6 = v3[3];
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_11:
    v7 = (a1 + v6 + *(a1 + v6));
    goto LABEL_14;
  }

  v5 = 0;
  v7 = 0;
  v10 = -1;
LABEL_14:
  sub_509164(v7, &v11);
  v8 = v11;
  *a2 = v10;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  result = *&v14;
  *(a2 + 56) = v14;
  *(a2 + 72) = v15;
  return result;
}

void *sub_9B717C(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9B72B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9B7424(va);
  _Unwind_Resume(a1);
}

void sub_9B72C4(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 32) = v7[4];
      *(v8 + 16) = v10;
      v7[3] = 0;
      v7[4] = 0;
      v7[2] = 0;
      *(v8 + 40) = *(v7 + 5);
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v7 += 10;
      v8 += 80;
    }

    while (v7 != v4);
    do
    {
      v11 = v5[7];
      if (v11)
      {
        v12 = v5[8];
        v13 = v5[7];
        if (v12 != v11)
        {
          do
          {
            if (*(v12 - 1) < 0)
            {
              operator delete(*(v12 - 24));
            }

            v12 -= 32;
          }

          while (v12 != v11);
          v13 = v5[7];
        }

        v5[8] = v11;
        operator delete(v13);
      }

      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      v5 += 10;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t sub_9B7424(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9B74DC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t *sub_9B7574(unsigned int **a1, unsigned int **a2, uint64_t *a3, void (*a4)(uint64_t *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v17, *a1 + **a1);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v12 = sub_9B76EC(a3, &v17);
        v13 = __p[0];
        a3[1] = v12;
        if (v13)
        {
          v14 = __p[1];
          v15 = v13;
          if (__p[1] != v13)
          {
            do
            {
              if (*(v14 - 1) < 0)
              {
                operator delete(*(v14 - 3));
              }

              v14 -= 4;
            }

            while (v14 != v13);
            v15 = __p[0];
          }

          __p[1] = v13;
          operator delete(v15);
        }
      }

      else
      {
        v10 = v17;
        *(v9 + 8) = v18;
        *v9 = v10;
        v11 = v19;
        *(v9 + 32) = v20;
        *(v9 + 16) = v11;
        v20 = 0;
        v19 = 0uLL;
        *(v9 + 40) = v21;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 56) = 0;
        *(v9 + 56) = *__p;
        *(v9 + 72) = v23;
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        a3[1] = v9 + 80;
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19);
      }

      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(&v17, v8 + *v8);
    }
  }

  return a3;
}

uint64_t sub_9B76EC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 80 * v2;
  *v6 = *a2;
  __p = 0;
  v15 = 80 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = 80 * v2 + 80;
  v17 = 0;
  sub_9B72C4(a1, &__p);
  v7 = a1[1];
  v8 = v15;
  while (1)
  {
    v9 = v16;
    if (v16 == v8)
    {
      break;
    }

    v16 -= 80;
    v10 = *(v9 - 24);
    if (v10)
    {
      v11 = *(v9 - 16);
      v12 = *(v9 - 24);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = *(v9 - 24);
      }

      *(v9 - 16) = v10;
      operator delete(v12);
    }

    if (*(v9 - 41) < 0)
    {
      operator delete(*(v9 - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_9B78B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9B7424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B78C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  v6 = 0x8E38E38E38E38E39 * ((v3 - v2) >> 4) + 1;
  if (v6 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - v2) >> 4) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - v2) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - v2) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((v3 - v2) >> 4);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *v8 = -1;
  *(v8 + 8) = 0x7FFFFFFF;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 100) = -1;
  *(v8 + 104) = -1;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  v9 = v8 + 144;
  v10 = v8 - v5;
  *(v8 + 136) = 0;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v8 - v5;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = *(v11 + 4);
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 7);
      *(v12 + 40) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 5) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = *(v11 + 10);
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      v15 = *(v11 + 88);
      *(v12 + 98) = *(v11 + 98);
      *(v12 + 88) = v15;
      *(v12 + 128) = 0;
      *(v12 + 136) = 0;
      *(v12 + 120) = *(v11 + 120);
      *(v12 + 136) = *(v11 + 17);
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      *(v11 + 17) = 0;
      v11 += 144;
      v12 += 144;
    }

    while (v11 != v3);
    do
    {
      v2 = (sub_943718(v2) + 144);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

uint64_t sub_9B7AE4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  v6 = 0xF0F0F0F0F0F0F0F1 * ((v3 - v2) >> 3) + 1;
  if (v6 > 0x1E1E1E1E1E1E1E1)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - v2) >> 3) > v6)
  {
    v6 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - v2) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v7 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * ((v3 - v2) >> 3);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *v8 = -1;
  *(v8 + 8) = 0x7FFFFFFF;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 100) = -1;
  v9 = v8 + 136;
  v10 = v8 - v5;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v8 - v5;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = *(v11 + 4);
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 7);
      *(v12 + 40) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 5) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = *(v11 + 10);
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      v15 = *(v11 + 88);
      *(v12 + 103) = *(v11 + 103);
      *(v12 + 88) = v15;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 112) = *(v11 + 7);
      *(v12 + 128) = *(v11 + 16);
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      v11 += 136;
      v12 += 136;
    }

    while (v11 != v3);
    do
    {
      v2 = (sub_943558(v2) + 136);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void sub_9B7CE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if ((*(v3 - 41) & 0x80000000) == 0)
        {
LABEL_6:
          v4 = *(v3 - 80);
          if (v4 == -1)
          {
            goto LABEL_3;
          }

LABEL_10:
          (off_266F5B0[v4])(&v5, v3 - 112);
          goto LABEL_3;
        }
      }

      else if ((*(v3 - 41) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(v3 - 64));
      v4 = *(v3 - 80);
      if (v4 != -1)
      {
        goto LABEL_10;
      }

LABEL_3:
      *(v3 - 80) = -1;
      v3 -= 128;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t *sub_9B7DAC(uint64_t *a1)
{
  if (*a1)
  {
    sub_9B7CE4(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9B7DE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = &v2[-*a1];
  v4 = 0x66FD0EB66FD0EB67 * (v3 >> 3) + 1;
  if (v4 > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - v1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - v1) >> 3)) >= 0x2F149902F14990)
  {
    v6 = 0x5E293205E29320;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  bzero(v7, 0x288uLL);
  *(v7 + 48) = -1;
  *(v7 + 60) = -1;
  *(v7 + 64) = -1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = -1;
  *(v7 + 98) = -1;
  *(v7 + 144) = -1;
  *(v7 + 147) = -1;
  *(v7 + 151) = 0;
  *(v7 + 159) = 0u;
  *(v7 + 175) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0;
  *(v7 + 259) = -1;
  *(v7 + 256) = -1;
  *(v7 + 263) = 0u;
  *(v7 + 287) = 0;
  *(v7 + 279) = 0;
  *(v7 + 320) = 0;
  *(v7 + 312) = 0;
  *(v7 + 296) = 0u;
  *(v7 + 368) = -1;
  *(v7 + 371) = -1;
  *(v7 + 391) = 0;
  *(v7 + 375) = 0u;
  *(v7 + 399) = 0;
  *(v7 + 424) = 0;
  *(v7 + 408) = 0u;
  *(v7 + 432) = 0;
  *(v7 + 480) = -1;
  *(v7 + 483) = -1;
  *(v7 + 503) = 0;
  *(v7 + 487) = 0u;
  *(v7 + 511) = 0;
  *(v7 + 544) = 0;
  *(v7 + 536) = 0;
  *(v7 + 520) = 0u;
  *(v7 + 552) = 0x7FFF;
  *(v7 + 554) = 2;
  *(v7 + 556) = 2;
  *(v7 + 568) = 0u;
  *(v7 + 584) = 0u;
  *(v7 + 600) = 0u;
  *(v7 + 616) = 0u;
  *(v7 + 626) = 0u;
  *(v7 + 664) = 0u;
  *(v7 + 680) = 0u;
  v8 = v7 + 696;
  v9 = v7 - v3;
  *(v7 + 648) = 0u;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      v12 = sub_9B8048(v11, v10);
      v10 += 696;
      v11 = v12 + 696;
    }

    while (v10 != v2);
    do
    {
      sub_9357A0(v1);
      v1 += 696;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  a1[1] = v8;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

uint64_t sub_9B8048(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v6 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 96) = v6;
  *(a1 + 136) = -1;
  v7 = *(a2 + 136);
  if (v7 != -1)
  {
    v22 = a1 + 104;
    (off_266F5D8[v7])(&v22, a2 + 104);
    *(a1 + 136) = v7;
  }

  *(a1 + 144) = *(a2 + 144);
  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v8;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  *(a1 + 176) = *(a2 + 176);
  v9 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v9;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  v10 = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 208) = v10;
  *(a1 + 248) = -1;
  v11 = *(a2 + 248);
  if (v11 != -1)
  {
    v22 = a1 + 216;
    (off_266F5D8[v11])(&v22, a2 + 216);
    *(a1 + 248) = v11;
  }

  *(a1 + 256) = *(a2 + 256);
  v12 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v12;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 264) = 0;
  *(a1 + 288) = *(a2 + 288);
  v13 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v13;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = 0;
  *(a1 + 360) = -1;
  v14 = *(a2 + 360);
  if (v14 != -1)
  {
    v22 = a1 + 328;
    (off_266F5D8[v14])(&v22, a2 + 328);
    *(a1 + 360) = v14;
  }

  *(a1 + 368) = *(a2 + 368);
  v15 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = v15;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  *(a1 + 400) = *(a2 + 400);
  v16 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 408) = v16;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 408) = 0;
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = 0;
  *(a1 + 472) = -1;
  v17 = *(a2 + 472);
  if (v17 != -1)
  {
    v22 = a1 + 440;
    (off_266F5D8[v17])(&v22, a2 + 440);
    *(a1 + 472) = v17;
  }

  *(a1 + 480) = *(a2 + 480);
  v18 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 488) = v18;
  *(a2 + 496) = 0u;
  *(a2 + 488) = 0;
  *(a1 + 512) = *(a2 + 512);
  v19 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 520) = v19;
  *(a2 + 528) = 0u;
  *(a2 + 520) = 0;
  *(a1 + 544) = *(a2 + 544);
  v20 = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 552) = v20;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = 0;
  *(a2 + 592) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 664) = 0;
  *(a2 + 648) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 688) = 0;
  *(a2 + 672) = 0u;
  return a1;
}

double sub_9B83F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x13B13B13B13B13BLL)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 4) > v5)
  {
    v5 = 0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - v1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v7 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * (v3 >> 4);
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 0u;
  *(v12 + 176) = 0u;
  *(v12 + 192) = 0u;
  *(v12 + 48) = -1;
  *(v12 + 60) = -1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 131) = -1;
  *(v12 + 128) = -1;
  *(v12 + 151) = 0;
  *(v12 + 135) = 0;
  *(v12 + 143) = 0;
  *(v12 + 159) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 168) = 0;
  *(v12 + 192) = 0;
  v8 = v12 - v3;
  sub_9B8590(a1, v1, v2, v12 - v3);
  v9 = *a1;
  *a1 = v8;
  v10 = (208 * v4 + 208);
  *(a1 + 1) = v10;
  if (v9)
  {
    operator delete(v9);
    *&v10 = 208 * v4 + 208;
  }

  return *&v10;
}

void sub_9B857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9B8710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = *(v6 + v7);
      *(v11 + 16) = *(v6 + v7 + 16);
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      v12 = *(v6 + v7 + 24);
      *(v11 + 40) = *(v6 + v7 + 40);
      *(v11 + 24) = v12;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      *(v10 + 24) = 0;
      *(v11 + 48) = *(v6 + v7 + 48);
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 64) = 0;
      *(v11 + 64) = *(v6 + v7 + 64);
      *(v11 + 80) = *(v6 + v7 + 80);
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(a4 + v7 + 88) = 0;
      *(v11 + 120) = -1;
      v13 = *(v6 + v7 + 120);
      if (v13 != -1)
      {
        v15 = a4 + v7 + 88;
        result = (off_266F5D8[v13])(&v15, v10 + 88);
        *(v11 + 120) = v13;
      }

      *(v11 + 128) = *(v10 + 128);
      v8 = *(v10 + 136);
      *(v11 + 152) = *(v10 + 152);
      *(v11 + 136) = v8;
      *(v10 + 144) = 0;
      *(v10 + 152) = 0;
      *(v10 + 136) = 0;
      *(v11 + 160) = *(v10 + 160);
      v9 = *(v10 + 168);
      *(v11 + 184) = *(v10 + 184);
      *(v11 + 168) = v9;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = 0;
      *(v11 + 192) = *(v10 + 192);
      *(v11 + 200) = *(v10 + 200);
      v7 += 208;
    }

    while (v10 + 208 != a3);
    while (v6 != a3)
    {
      result = sub_935DD4(v6);
      v6 += 208;
    }
  }

  return result;
}

uint64_t sub_9B8710(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    sub_935DD4(i - 208);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_9B8764(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0x86BCA1AF286BCA1BLL * (v3 >> 4) + 1;
  if (v4 > 0xD79435E50D7943)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0xD79435E50D79436 * ((*(a1 + 16) - v1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - v1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v6 = 0xD79435E50D7943;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xD79435E50D7943)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *(v7 + 248) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *&dword_8[v7 / 4] = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *v7 = -1;
  *(v7 + 8) = 0x7FFFFFFF;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = -1;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 232) = -1;
  *(v7 + 235) = -1;
  *(v7 + 247) = 0;
  *(v7 + 255) = 0;
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *(v7 + 296) = 0;
  v8 = v7 + 304;
  v9 = v7 - v3;
  *(v7 + 239) = 0;
  *(v7 + 263) = 0;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v7 - v3;
    do
    {
      sub_9B895C(v11, v10);
      v10 += 38;
      v11 = v12 + 304;
    }

    while (v10 != v2);
    do
    {
      sub_9432AC(v1);
      v1 += 38;
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

__n128 sub_9B895C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  v4 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 64) = v4;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
  v5 = *(a2 + 11);
  *(a1 + 104) = a2[13];
  *(a1 + 88) = v5;
  a2[12] = 0;
  a2[13] = 0;
  a2[11] = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = *(a2 + 7);
  *(a1 + 128) = a2[16];
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 17);
  v6 = a2[20];
  *(a1 + 152) = a2[19];
  a2[18] = 0;
  a2[19] = 0;
  a2[17] = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 160) = v6;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = a2[23];
  a2[21] = 0;
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = 0;
  *(a1 + 224) = -1;
  v7 = *(a2 + 56);
  if (v7 != -1)
  {
    v8 = a1;
    v11 = a1 + 192;
    (off_266F5D8[v7])(&v11, a2 + 24);
    a1 = v8;
    *(v8 + 224) = v7;
  }

  *(a1 + 232) = a2[29];
  v9 = *(a2 + 15);
  *(a1 + 256) = a2[32];
  *(a1 + 240) = v9;
  a2[31] = 0;
  a2[32] = 0;
  a2[30] = 0;
  *(a1 + 264) = *(a2 + 264);
  result = *(a2 + 17);
  *(a1 + 288) = a2[36];
  *(a1 + 272) = result;
  a2[35] = 0;
  a2[36] = 0;
  a2[34] = 0;
  *(a1 + 296) = *(a2 + 296);
  return result;
}

void **sub_9B8AFC(void ***a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v2)
  {
    v2 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = (8 * (a1[1] - *a1));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v6 >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = (v5 + 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v5 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v11;
      v12[2] = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 3;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v8[1] = v13;
        operator delete(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_9B8CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

void *sub_9B8D08(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9B8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_9B8FA8(&a11);
  *(v11 + 8) = v12;
  sub_60B854(&a9);
  _Unwind_Resume(a1);
}

void sub_9B8E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3BCBADC7F10D15)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9B8F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 1096;
    v15 = -v12;
    do
    {
      v14 = sub_3EEA68(v14) - 1096;
      v15 += 1096;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_3EEC50(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9B8FA8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 14;
        sub_9B9010(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_9B9010(uint64_t a1, void **a2)
{
  v3 = a2[10];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a2[8];
  a2[8] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a2[5];
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = a2[3];
  a2[3] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = a2[1];
    v11 = *a2;
    if (v10 != v9)
    {
      v12 = a2[1];
      do
      {
        v14 = *(v12 - 5);
        v12 -= 40;
        v13 = v14;
        if (v14)
        {
          *(v10 - 4) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *a2;
    }

    a2[1] = v9;

    operator delete(v11);
  }
}

uint64_t sub_9B90F0(uint64_t a1)
{
  v2 = a1 + 128;
  v3 = *(a1 + 128);
  if (v3)
  {
    for (i = *(a1 + 136); i != v3; sub_9B9010(v2, i))
    {
      i -= 14;
    }

    *(a1 + 136) = v3;
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_3EEA68(v6 - 1096);
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 8);
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v9 -= 80;
        sub_3ED230(v9);
      }

      while (v9 != v8);
      v10 = *a1;
    }

    *(a1 + 8) = v8;
    operator delete(v10);
  }

  return a1;
}

void **sub_9B91D8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_9B90F0(v3 - 152);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9B9234(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (a1[1] - *a1) >> 7 << 7;
  sub_7E4D94(v15, a2);
  v6 = 7808 * v2 + 7808;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_78A944(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v8);
    do
    {
      sub_78B5C0(v7);
      v7 += 7808;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9B93C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E5740(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B93D4(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_9B9010(a1, i))
    {
      i -= 14;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9B9438(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        v4 = *(i - 80);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266F5B0[v4])(&v6, i - 112);
        goto LABEL_3;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    v4 = *(i - 80);
    if (v4 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(i - 80) = -1;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9B9510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = *(v6 + v7);
      *(a4 + v7 + 16) = 0;
      *(v11 + 48) = -1;
      v12 = *(v6 + v7 + 48);
      if (v12 != -1)
      {
        v14 = a4 + v7 + 16;
        (off_266F5D8[v12])(&v14, v10 + 16);
        *(v11 + 48) = v12;
      }

      *(v11 + 56) = *(v10 + 56);
      v8 = *(v10 + 64);
      *(v11 + 80) = *(v10 + 80);
      *(v11 + 64) = v8;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(v10 + 64) = 0;
      *(v11 + 88) = *(v10 + 88);
      v9 = *(v10 + 96);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v9;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 96) = 0;
      *(v11 + 120) = *(v10 + 120);
      v7 += 128;
    }

    while (v10 + 128 != a3);
    for (; v6 != a3; v6 += 128)
    {
      if (*(v6 + 119) < 0)
      {
        operator delete(*(v6 + 96));
        if ((*(v6 + 87) & 0x80000000) == 0)
        {
LABEL_11:
          v13 = *(v6 + 48);
          if (v13 == -1)
          {
            goto LABEL_8;
          }

LABEL_15:
          (off_266F5B0[v13])(&v15, v6 + 16);
          goto LABEL_8;
        }
      }

      else if ((*(v6 + 87) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(v6 + 64));
      v13 = *(v6 + 48);
      if (v13 != -1)
      {
        goto LABEL_15;
      }

LABEL_8:
      *(v6 + 48) = -1;
    }
  }
}

uint64_t sub_9B96A0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 7;
  v5 = v4 + 1;
  if ((v4 + 1) >> 57)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v5)
  {
    v5 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v14 = (v4 << 7);
  v9 = *a3;
  *v14 = *a2;
  v14[1] = v9;
  sub_55F1E8((v4 << 7) + 16, a4);
  v10 = a1[1];
  v11 = (v4 << 7) + *a1 - v10;
  sub_9B9510(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = (v4 << 7) + 128;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return (v4 << 7) + 128;
}

void sub_9B97C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9B9438(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_9B97D4(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_9B9B54(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_9B9ED4(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_9BA254(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = a2[1];
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = __ROR8__(v3, 32);
  v8 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v7 ^ (v7 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v7 ^ (v7 >> 33))) >> 33));
  v9 = ((v8 ^ (v8 >> 33)) + ((((v6 ^ (v6 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v6 ^ (v6 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v6 ^ (v6 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v10 = vcnt_s8(v2);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v2)
    {
      v11 = v9 % *&v2;
    }
  }

  else
  {
    v11 = v9 & (*&v2 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  result = *v12;
  if (*v12)
  {
    if (v10.u32[0] < 2uLL)
    {
      v14 = *&v2 - 1;
      while (1)
      {
        v15 = result[1];
        if (v15 == v9)
        {
          if (*(result + 1) == __PAIR128__(v3, v4))
          {
            return result;
          }
        }

        else if ((v15 & v14) != v11)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v16 = result[1];
      if (v16 == v9)
      {
        if (*(result + 1) == __PAIR128__(v3, v4))
        {
          return result;
        }
      }

      else
      {
        if (v16 >= *&v2)
        {
          v16 %= *&v2;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_9BA408(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = __ROR8__(v2, 32);
  v7 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) >> 33));
  v8 = ((v7 ^ (v7 >> 33)) + ((((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = ((v7 ^ (v7 >> 33)) + ((((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v5 ^ (v5 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (*(v13 + 1) == __PAIR128__(v2, v3))
        {
          return v13;
        }
      }

      else if ((v14 & (*&v9 - 1)) != v11)
      {
        goto LABEL_23;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_23;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (*(v13 + 1) != __PAIR128__(v2, v3))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t *sub_9BA81C(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_9BAB9C(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void *sub_9BAF1C(void *a1, uint64_t a2)
{
  v4 = sub_3B4B4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v7);
  if (!v9)
  {
    return v9;
  }

  v9 = *v9;
  if (!v9)
  {
    return v9;
  }

  v10 = *(a2 + 8) - *a2;
  if (v6.u32[0] < 2uLL)
  {
    v11 = *&v5 - 1;
    while (1)
    {
      v16 = v9[1];
      if (v16 == v4)
      {
        v18 = v9[2];
        v17 = v9[3];
        if (v17 - v18 == v10)
        {
          if (v18 == v17)
          {
            return v9;
          }

          for (i = *a2; *v18 == *i && *(v18 + 1) == i[1] && *(v18 + 2) == i[2]; i += 3)
          {
            v18 += 12;
            if (v18 == v17)
            {
              return v9;
            }
          }
        }
      }

      else if ((v16 & v11) != v7)
      {
        return 0;
      }

      v9 = *v9;
      if (!v9)
      {
        return v9;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 != v4)
    {
      break;
    }

    v14 = v9[2];
    v13 = v9[3];
    if (v13 - v14 == v10)
    {
      if (v14 == v13)
      {
        return v9;
      }

      for (j = *a2; *v14 == *j && *(v14 + 1) == j[1] && *(v14 + 2) == j[2]; j += 3)
      {
        v14 += 12;
        if (v14 == v13)
        {
          return v9;
        }
      }
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      return v9;
    }
  }

  if (v12 >= *&v5)
  {
    v12 %= *&v5;
  }

  if (v12 == v7)
  {
    goto LABEL_12;
  }

  return 0;
}

void *sub_9BB0E8(void *a1, uint64_t a2)
{
  v4 = sub_3B4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_35;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_35:
    sub_9BB4C8();
  }

  v11 = *(a2 + 8) - *a2;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = result[1];
      if (v16 == v5)
      {
        v18 = result[2];
        v17 = result[3];
        if (v17 - v18 == v11)
        {
          if (v18 == v17)
          {
            return result;
          }

          for (i = *a2; *v18 == *i && *(v18 + 1) == i[1] && *(v18 + 2) == i[2]; i += 3)
          {
            v18 += 12;
            if (v18 == v17)
            {
              return result;
            }
          }
        }
      }

      else if ((v16 & (*&v6 - 1)) != v8)
      {
        goto LABEL_35;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_35;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_35;
    }
  }

  v14 = result[2];
  v13 = result[3];
  if (v13 - v14 != v11)
  {
    goto LABEL_12;
  }

  if (v14 != v13)
  {
    for (j = *a2; *v14 == *j && *(v14 + 1) == j[1] && *(v14 + 2) == j[2]; j += 3)
    {
      v14 += 12;
      if (v14 == v13)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

void sub_9BB4B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_9BB5B8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void **sub_9BB5DC(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
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

uint64_t **sub_9BB644(void *a1, uint64_t a2)
{
  v4 = sub_9BB888(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v10[1];
        if (v12 != v6)
        {
          if ((v12 & v11) != v8)
          {
            return 0;
          }

          goto LABEL_11;
        }

        v13 = *(v10 + 7);
        v14 = *(a2 + 12);
        if (v13 != -1 && v14 == v13)
        {
          v26 = &v25;
          if (((off_266F628[v13])(&v26, v10 + 2, a2) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v14 != v13)
        {
          goto LABEL_11;
        }

        v16 = *(v10 + 11);
        v17 = *(a2 + 28);
        if (v16 == -1 || v17 != v16)
        {
          if (v17 != v16)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v26 = &v25;
          if (((off_266F628[v16])(&v26, v10 + 4, a2 + 16) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if (*(v10 + 48) == *(a2 + 32))
        {
          return v10;
        }

LABEL_11:
        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v18 = v10[1];
      if (v18 == v6)
      {
        v19 = *(v10 + 7);
        v20 = *(a2 + 12);
        if (v19 != -1 && v20 == v19)
        {
          v26 = &v25;
          if (((off_266F628[v19])(&v26, v10 + 2, a2) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else if (v20 != v19)
        {
          goto LABEL_29;
        }

        v22 = *(v10 + 11);
        v23 = *(a2 + 28);
        if (v22 == -1 || v23 != v22)
        {
          if (v23 != v22)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v26 = &v25;
          if (((off_266F628[v22])(&v26, v10 + 4, a2 + 16) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(v10 + 48) == *(a2 + 32))
        {
          return v10;
        }
      }

      else
      {
        if (v18 >= *&v5)
        {
          v18 %= *&v5;
        }

        if (v18 != v8)
        {
          return 0;
        }
      }

LABEL_29:
      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

uint64_t sub_9BB888(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  v3 = (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v4 = 0x385FFF1BDCLL;
  if (v2 != -1)
  {
    v4 = (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  }

  if (v2 == 2)
  {
    v5 = (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
    v7 = 0xFF51AFD7ED558CCDLL * (*(a2 + 1) ^ (*(a2 + 1) >> 33));
    v6 = (v5 << 6) + 2654435769u + (v5 >> 2) + ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) >> 33));
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v5 = (a2[1] + 2654435769 + (((*a2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((*a2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2)) ^ (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
    v6 = a2[2] + 2654435769 + (v5 << 6) + (v5 >> 2);
  }

  v4 = ((v3 << 6) + 2654435769u + (v3 >> 2) + (v6 ^ v5)) ^ v3;
LABEL_8:
  v8 = a2[7];
  v9 = v8 + 2654435769;
  if (v8 == -1)
  {
    v9 = 2654435768;
  }

  v10 = ((v4 >> 2) + (v4 << 6) + v9) ^ v4;
  if (v8 == 2)
  {
    v11 = (a2[4] + 0x388152A534) ^ 0xDEADBEEFLL;
    v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (*(a2 + 5) ^ (*(a2 + 5) >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (*(a2 + 5) ^ (*(a2 + 5) >> 33))) >> 33));
    v12 = (v11 << 6) + 2654435769u + (v11 >> 2) + (v13 ^ (v13 >> 33));
    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v11 = (a2[5] + 2654435769 + (((a2[4] + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((a2[4] + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2)) ^ (a2[4] + 0x388152A534) ^ 0xDEADBEEFLL;
    v12 = a2[6] + 2654435769 + (v11 << 6) + (v11 >> 2);
LABEL_14:
    v10 ^= (v10 << 6) + 2654435769u + (v10 >> 2) + (v12 ^ v11);
  }

  return ((v10 << 6) + 2654435769u + (v10 >> 2) + *(a2 + 32)) ^ v10;
}

BOOL sub_9BBA70(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 == *a3 && (v3 = *(a3 + 4), a2[2] == HIDWORD(v3)))
  {
    return a2[1] == v3;
  }

  else
  {
    return 0;
  }
}

void ***sub_9BBAAC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_9B90F0(v4 - 152);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t **sub_9BBB24(void *a1, uint64_t a2)
{
  v4 = sub_9BB888(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_48;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_48:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 != v5)
      {
        if ((v11 & (*&v6 - 1)) != v8)
        {
          goto LABEL_48;
        }

        goto LABEL_12;
      }

      v12 = *(v10 + 7);
      v13 = *(a2 + 12);
      if (v12 != -1 && v13 == v12)
      {
        v25 = &v24;
        if (((off_266F628[v12])(&v25, v10 + 2, a2) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v13 != v12)
      {
        goto LABEL_12;
      }

      v15 = *(v10 + 11);
      v16 = *(a2 + 28);
      if (v15 == -1 || v16 != v15)
      {
        if (v16 != v15)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v25 = &v24;
        if (((off_266F628[v15])(&v25, v10 + 4, a2 + 16) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (*(v10 + 48) == *(a2 + 32))
      {
        return v10;
      }

LABEL_12:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_48;
      }
    }
  }

  while (1)
  {
    v17 = v10[1];
    if (v17 != v5)
    {
      if (v17 >= *&v6)
      {
        v17 %= *&v6;
      }

      if (v17 != v8)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }

    v18 = *(v10 + 7);
    v19 = *(a2 + 12);
    if (v18 != -1 && v19 == v18)
    {
      v25 = &v24;
      if (((off_266F628[v18])(&v25, v10 + 2, a2) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v19 != v18)
    {
      goto LABEL_30;
    }

    v21 = *(v10 + 11);
    v22 = *(a2 + 28);
    if (v21 == -1 || v22 != v21)
    {
      break;
    }

    v25 = &v24;
    if ((off_266F628[v21])(&v25, v10 + 4, a2 + 16))
    {
      goto LABEL_46;
    }

LABEL_30:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_48;
    }
  }

  if (v22 != v21)
  {
    goto LABEL_30;
  }

LABEL_46:
  if (*(v10 + 48) != *(a2 + 32))
  {
    goto LABEL_30;
  }

  return v10;
}

void sub_9BBF98()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3280 = 0u;
  *algn_27B3290 = 0u;
  dword_27B32A0 = 1065353216;
  sub_3A9A34(&xmmword_27B3280, v0);
  sub_3A9A34(&xmmword_27B3280, v3);
  sub_3A9A34(&xmmword_27B3280, __p);
  sub_3A9A34(&xmmword_27B3280, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3258 = 0;
    qword_27B3260 = 0;
    qword_27B3250 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9BC1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3268)
  {
    qword_27B3270 = qword_27B3268;
    operator delete(qword_27B3268);
  }

  _Unwind_Resume(exception_object);
}

void sub_9BC28C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  nullsub_1(&v53);
  v10 = sub_92FC60(a3, a1, 0, "line");
  v11 = (v10 - *v10);
  if (*v11 >= 0xFu && (v12 = v11[7]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
    v54 = 0uLL;
    v55 = 0;
    sub_943AEC(&v54, *v13);
    v46[0] = v13 + 1;
    v56 = &v13[*v13 + 1];
    sub_943E24(v46, &v56, &v54, sub_509164);
    v14 = v54;
    v15 = v55;
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
  }

  *__p = v14;
  v50 = v15;
  sub_9D6590(__p, a4 + 968, &v51);
  v16 = __p[0];
  if (__p[0])
  {
    v17 = __p[1];
    v18 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v19 = *(v17 - 3);
        if (v19)
        {
          v20 = *(v17 - 2);
          v21 = *(v17 - 3);
          if (v20 != v19)
          {
            do
            {
              if (*(v20 - 1) < 0)
              {
                operator delete(*(v20 - 24));
              }

              v20 -= 32;
            }

            while (v20 != v19);
            v21 = *(v17 - 3);
          }

          *(v17 - 2) = v19;
          operator delete(v21);
        }

        v22 = (v17 - 64);
        if (*(v17 - 41) < 0)
        {
          operator delete(*v22);
        }

        v17 -= 64;
      }

      while (v22 != v16);
      v18 = __p[0];
    }

    __p[1] = v16;
    operator delete(v18);
  }

  v23 = sub_92FC60(a3, a1, 0, "line");
  v24 = *(v23 + *(v23 - *v23 + 6));
  nullsub_1(&v48);
  v25 = sub_93E04C(a2, v24, 0, "system");
  v26 = (v25 - *v25);
  if (*v26 >= 7u && (v27 = v26[3]) != 0)
  {
    v28 = (v25 + v27 + *(v25 + v27));
    v54 = 0uLL;
    v55 = 0;
    sub_943AEC(&v54, *v28);
    v56 = v28 + 1;
    v53 = &v28[*v28 + 1];
    sub_943E24(&v56, &v53, &v54, sub_509164);
    v29 = v54;
    v30 = v55;
  }

  else
  {
    v30 = 0;
    v29 = 0uLL;
  }

  *v46 = v29;
  v47 = v30;
  sub_9D6590(v46, a4 + 968, __p);
  v31 = v46[0];
  if (v46[0])
  {
    v32 = v46[1];
    v33 = v46[0];
    if (v46[1] != v46[0])
    {
      do
      {
        v34 = *(v32 - 3);
        if (v34)
        {
          v35 = *(v32 - 2);
          v36 = *(v32 - 3);
          if (v35 != v34)
          {
            do
            {
              if (*(v35 - 1) < 0)
              {
                operator delete(*(v35 - 24));
              }

              v35 -= 32;
            }

            while (v35 != v34);
            v36 = *(v32 - 3);
          }

          *(v32 - 2) = v34;
          operator delete(v36);
        }

        v37 = (v32 - 64);
        if (*(v32 - 41) < 0)
        {
          operator delete(*v37);
        }

        v32 -= 64;
      }

      while (v37 != v31);
      v33 = v46[0];
    }

    v46[1] = v31;
    operator delete(v33);
  }

  sub_9BC758(&v51, __p, a5);
  v38 = __p[0];
  if (__p[0])
  {
    v39 = __p[1];
    v40 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_51:
      __p[1] = v38;
      operator delete(v40);
      goto LABEL_52;
    }

    while (1)
    {
      if (*(v39 - 1) < 0)
      {
        operator delete(*(v39 - 3));
        v41 = v39 - 7;
        if (*(v39 - 33) < 0)
        {
LABEL_49:
          operator delete(*v41);
        }
      }

      else
      {
        v41 = v39 - 7;
        if (*(v39 - 33) < 0)
        {
          goto LABEL_49;
        }
      }

      v39 = v41;
      if (v41 == v38)
      {
        v40 = __p[0];
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  v42 = v51;
  if (!v51)
  {
    return;
  }

  v43 = v52;
  v44 = v51;
  if (v52 != v51)
  {
    while (1)
    {
      if (*(v43 - 1) < 0)
      {
        operator delete(*(v43 - 3));
        v45 = v43 - 7;
        if (*(v43 - 33) < 0)
        {
LABEL_60:
          operator delete(*v45);
        }
      }

      else
      {
        v45 = v43 - 7;
        if (*(v43 - 33) < 0)
        {
          goto LABEL_60;
        }
      }

      v43 = v45;
      if (v45 == v42)
      {
        v44 = v51;
        break;
      }
    }
  }

  v52 = v42;
  operator delete(v44);
}

void sub_9BC6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_941AEC(va1);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9BC6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_9354C4(va);
  sub_9354C4(va1);
  _Unwind_Resume(a1);
}

void sub_9BC6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_941AEC(&a9);
  sub_9354C4(&a17);
  _Unwind_Resume(a1);
}

void sub_9BC708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9BC758(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  sub_9D45F0(a2, v9);
  *v7 = *v9;
  v8 = v10;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  sub_9D45F0(a1, v9);
  *v5 = *v9;
  v6 = v10;
  v9[1] = 0;
  v10 = 0;
  v9[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  HIBYTE(v10) = 1;
  LOWORD(v9[0]) = 32;
  sub_2A8074(v9, v7, v5, a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        return;
      }

LABEL_13:
      operator delete(v7[0]);
      return;
    }
  }

  else if ((SHIBYTE(v6) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v5[0]);
  if (SHIBYTE(v8) < 0)
  {
    goto LABEL_13;
  }
}

void sub_9BC87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_9BC8E0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D45F0(a1, v3);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_9BC958(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  nullsub_1(&v27);
  v8 = sub_93E04C(a2, a1, 0, "system");
  v9 = (v8 - *v8);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    sub_943AEC(v32, *v11);
    v31 = v11 + 1;
    v30 = &v11[*v11 + 1];
    sub_943E24(&v31, &v30, v32, sub_509164);
    v12 = *v32;
    v13 = v33;
  }

  else
  {
    v13 = 0;
    v12 = 0uLL;
  }

  *v25 = v12;
  v26 = v13;
  sub_9D6590(v25, a3 + 968, &v28);
  sub_9D45F0(&v28, v32);
  *a4 = *v32;
  *(a4 + 16) = v33;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  if (v35 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }
  }

  v14 = v28;
  if (v28)
  {
    v15 = v29;
    v16 = v28;
    if (v29 == v28)
    {
LABEL_18:
      v29 = v14;
      operator delete(v16);
      goto LABEL_19;
    }

    while (1)
    {
      if (*(v15 - 1) < 0)
      {
        operator delete(*(v15 - 3));
        v17 = v15 - 7;
        if (*(v15 - 33) < 0)
        {
LABEL_16:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = v15 - 7;
        if (*(v15 - 33) < 0)
        {
          goto LABEL_16;
        }
      }

      v15 = v17;
      if (v17 == v14)
      {
        v16 = v28;
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v18 = v25[0];
  if (v25[0])
  {
    v19 = v25[1];
    v20 = v25[0];
    if (v25[1] != v25[0])
    {
      do
      {
        v21 = *(v19 - 3);
        if (v21)
        {
          v22 = *(v19 - 2);
          v23 = *(v19 - 3);
          if (v22 != v21)
          {
            do
            {
              if (*(v22 - 1) < 0)
              {
                operator delete(*(v22 - 24));
              }

              v22 -= 32;
            }

            while (v22 != v21);
            v23 = *(v19 - 3);
          }

          *(v19 - 2) = v21;
          operator delete(v23);
        }

        v24 = (v19 - 64);
        if (*(v19 - 41) < 0)
        {
          operator delete(*v24);
        }

        v19 -= 64;
      }

      while (v24 != v18);
      v20 = v25[0];
    }

    v25[1] = v18;
    operator delete(v20);
  }
}

void sub_9BCB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9BCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_9354C4(&a14);
  sub_941AEC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9BCBDC(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v2 = *a1 + 168 * a2;
  v3 = *(v2 + 104);
  if (v3 == -1)
  {
    goto LABEL_10;
  }

  v4 = a1[3];
  if (0x8E38E38E38E38E39 * ((a1[4] - v4) >> 4) <= v3)
  {
    sub_6FAB4();
  }

  v5 = v4 + 144 * v3;
  if (*(v5 + 113) == 1)
  {
    return *(v5 + 112);
  }

  v7 = *(v5 + 104);
  if (v7 != -1)
  {
    v8 = a1[6];
    if (0xF0F0F0F0F0F0F0F1 * ((a1[7] - v8) >> 3) <= v7)
    {
      sub_6FAB4();
    }

    v9 = v8 + 136 * v7;
    if (*(v9 + 106))
    {
      return *(v9 + 105);
    }
  }

LABEL_10:
  if (*(v2 + 161) == 1)
  {
    return *(v2 + 160);
  }

  return 0;
}

void *sub_9BCCEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2 == -1)
  {
    return (a1 + 16);
  }

  v3 = (*(a2 + 24) + 144 * v2);
  v4 = v3 + 2;
  if (v3[2] == v3[3] && ((v6 = v3[13], v6 == -1) || (v7 = *(a2 + 48) + 136 * v6, v8 = *(v7 + 16), v9 = *(v7 + 24), v4 = (v7 + 16), v8 == v9)))
  {
    return (a1 + 16);
  }

  else
  {
    return v4;
  }
}

void sub_9BCD50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 104);
  if (v3 == -1 || (v4 = (*(a2 + 24) + 144 * v3), v5 = v4 + 2, v4[2] == v4[3]) && ((v7 = v4[13], v7 == -1) || (v8 = *(a2 + 48) + 136 * v7, v9 = *(v8 + 16), v10 = *(v8 + 24), v5 = (v8 + 16), v9 == v10)))
  {
    v6 = (a1 + 16);
  }

  else
  {
    v6 = v5;
  }

  sub_9D43A4(v6, a3);
}

uint64_t sub_9BCDB4(unsigned int a1, int a2)
{
  if (a1 > 9)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x10E) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x270) != 0)
  {
    return 1;
  }

  if (a1 == 7)
  {
    return 2;
  }

LABEL_8:
  if ((a2 - 2) < 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  if (a1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_9BCE28(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v2 = *(*a1 + 168 * a2 + 104);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = a1[3];
  if (0x8E38E38E38E38E39 * ((a1[4] - v3) >> 4) <= v2)
  {
    sub_6FAB4();
  }

  v4 = *(v3 + 144 * v2 + 104);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = a1[6];
  if (0xF0F0F0F0F0F0F0F1 * ((a1[7] - v5) >> 3) <= v4)
  {
    sub_6FAB4();
  }

  return *(v5 + 136 * v4 + 104);
}

uint64_t sub_9BCEF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  while (*(v1 + 2000) == *(v1 + 2008) || *v1 > 8u || ((1 << *v1) & 0x144) == 0)
  {
    v1 += 5704;
    if (v1 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_9BCF58(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 28;
  do
  {
    v3 = *(v2 - 24) != 0x7FFFFFFF && *(v2 - 20) == 1;
    result = v3;
    if (v3)
    {
      break;
    }

    v3 = v2 == v1;
    v2 += 28;
  }

  while (!v3);
  return result;
}

uint64_t sub_9BCFA4(unint64_t a1, uint64_t a2)
{
  v2 = sub_2C9210(a2, a1, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 >= 9u)
  {
    v4 = v3[4];
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = *(v2 + v4);
    if (v5 <= 4)
    {
      LODWORD(v4) = 2u >> v5;
      return v4 & 1;
    }
  }

  return 0;
}

uint64_t sub_9BD018(unint64_t a1, uint64_t a2)
{
  v2 = sub_2C9210(a2, a1, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 >= 9u)
  {
    v4 = v3[4];
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = *(v2 + v4);
    if (v5 <= 4)
    {
      LODWORD(v4) = 0x14u >> v5;
      return v4 & 1;
    }
  }

  return 0;
}

uint64_t sub_9BD0A4(unint64_t a1, uint64_t a2)
{
  v2 = sub_2C9210(a2, a1, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 >= 9u)
  {
    v4 = v3[4];
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = *(v2 + v4);
    if (v5 <= 4)
    {
      LODWORD(v4) = 8u >> v5;
      return v4 & 1;
    }
  }

  return 0;
}

uint64_t sub_9BD118(void *a1)
{
  sub_9D4074(&v8, a1);
  v6 = v8;
  v7 = v9;
  sub_9D4040(v1, v5);
  v2 = 0;
  while (sub_9D427C(&v6, v5))
  {
    v3 = *(sub_9D42B8(&v6) + 1888);
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }

    v2 += v3;
    sub_9D40D8(&v6);
  }

  return v2;
}

unint64_t sub_9BD1AC(unint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_9BDE80(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_9BDA94(v10, v53);
      v10 = v53 + 1;
      result = sub_9BDA94(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_9BD1AC(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= v83)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= v69)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v67) = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL sub_9BDA94(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 12; ; i += 4)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 4;
      if (v40 == 4)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 8);
      v40 -= 4;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

int *sub_9BDE80(int *a1, int *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[v6];
        if (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v8 = *v7;
          v10 = &a1[v5];
          v11 = *v10;
          if (*v7 >= *v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v8 = v7[1];
          v9 = *v7 < v8;
          if (*v7 > v8)
          {
            v8 = *v7;
          }

          if (v9)
          {
            ++v7;
            v6 = 2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2;
          }

          v10 = &a1[v5];
          v11 = *v10;
          if (v8 >= *v10)
          {
LABEL_22:
            while (1)
            {
              *v10 = v8;
              v10 = v7;
              if (v4 < v6)
              {
                break;
              }

              v13 = (2 * v6) | 1;
              v7 = &a1[v13];
              v6 = 2 * v6 + 2;
              if (v6 < v3)
              {
                v8 = *v7;
                v12 = v7[1];
                if (*v7 <= v12)
                {
                  v8 = v7[1];
                }

                if (*v7 >= v12)
                {
                  v6 = v13;
                }

                else
                {
                  ++v7;
                }

                if (v8 < v11)
                {
                  break;
                }
              }

              else
              {
                v8 = *v7;
                v6 = v13;
                if (*v7 < v11)
                {
                  break;
                }
              }
            }

            *v10 = v11;
          }
        }
      }

      v9 = v5-- <= 0;
    }

    while (!v9);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v15 = *a1;
      i = a2;
      do
      {
        v16 = *i;
        if (*i < v15)
        {
          *i = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v17 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v17;
        v18 = a1[1];
        if (a2 - a1 == 8)
        {
          v19 = a1 + 1;
          v20 = 1;
          if (v18 >= v17)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v21 = a1[2];
          v22 = v18 < v21;
          if (v18 <= v21)
          {
            v18 = a1[2];
          }

          if (v22)
          {
            v19 = a1 + 2;
          }

          else
          {
            v19 = a1 + 1;
          }

          if (v22)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          if (v18 >= v17)
          {
LABEL_48:
            v23 = a1;
            while (1)
            {
              *v23 = v18;
              v23 = v19;
              if (((v3 - 2) >> 1) < v20)
              {
                break;
              }

              v25 = (2 * v20) | 1;
              v19 = &a1[v25];
              v20 = 2 * v20 + 2;
              if (v20 < v3)
              {
                v18 = *v19;
                v24 = v19[1];
                if (*v19 <= v24)
                {
                  v18 = v19[1];
                }

                if (*v19 >= v24)
                {
                  v20 = v25;
                }

                else
                {
                  ++v19;
                }

                if (v18 < v17)
                {
                  break;
                }
              }

              else
              {
                v18 = *v19;
                v20 = v25;
                if (*v19 < v17)
                {
                  break;
                }
              }
            }

            *v23 = v17;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v27 = 0;
      v28 = *a1;
      v29 = (v3 - 2) >> 1;
      v30 = a1;
      do
      {
        while (1)
        {
          v37 = &v30[v27];
          v36 = v37 + 1;
          v38 = (2 * v27) | 1;
          v27 = 2 * v27 + 2;
          if (v27 < v3)
          {
            break;
          }

          v27 = v38;
          *v30 = *v36;
          v30 = v37 + 1;
          if (v38 > v29)
          {
            goto LABEL_73;
          }
        }

        v33 = v37[2];
        v32 = v37 + 2;
        v31 = v33;
        v34 = *(v32 - 1);
        v35 = v34 < v33;
        if (v34 > v33)
        {
          v31 = *(v32 - 1);
        }

        if (v35)
        {
          v36 = v32;
        }

        else
        {
          v27 = v38;
        }

        *v30 = v31;
        v30 = v36;
      }

      while (v27 <= v29);
LABEL_73:
      if (v36 == --a2)
      {
        *v36 = v28;
      }

      else
      {
        *v36 = *a2;
        *a2 = v28;
        v39 = (v36 - a1 + 4) >> 2;
        v9 = v39 < 2;
        v40 = v39 - 2;
        if (!v9)
        {
          v41 = v40 >> 1;
          v42 = &a1[v41];
          v43 = *v42;
          v44 = *v36;
          if (*v42 < *v36)
          {
            do
            {
              *v36 = v43;
              v36 = v42;
              if (!v41)
              {
                break;
              }

              v41 = (v41 - 1) >> 1;
              v42 = &a1[v41];
              v43 = *v42;
            }

            while (*v42 < v44);
            *v36 = v44;
          }
        }
      }

      v9 = v3-- <= 2;
    }

    while (!v9);
  }

  return i;
}

void sub_9BE1C8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B32D8 = 0u;
  unk_27B32E8 = 0u;
  dword_27B32F8 = 1065353216;
  sub_3A9A34(&xmmword_27B32D8, v0);
  sub_3A9A34(&xmmword_27B32D8, v3);
  sub_3A9A34(&xmmword_27B32D8, __p);
  sub_3A9A34(&xmmword_27B32D8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B32B0 = 0;
    qword_27B32B8 = 0;
    qword_27B32A8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9BE410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B32C0)
  {
    qword_27B32C8 = qword_27B32C0;
    operator delete(qword_27B32C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_9BE608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_9BE670(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*(a2 + 300))
    {
      v3 = *a2;
      v4 = *(a2 + 8);
      if (*a2 != v4)
      {
        do
        {
          sub_9BE6DC(a1, v3, *(a2 + 300));
          v3 += 3296;
        }

        while (v3 != v4);
      }
    }
  }
}

void sub_9BE6DC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 36);
  if (v3 == 0x7FFFFFFF)
  {
    v4 = *(a2 + 40);
    if (v4 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a3 < 0)
    {
      v25 = -5;
    }

    else
    {
      v25 = 5;
    }

    *(a2 + 36) = a3 / -10 + v3 + (((-103 * (v25 + a3 % 10)) >> 15) & 1) + ((-103 * (v25 + a3 % 10)) >> 10);
    v4 = *(a2 + 40);
    if (v4 == 0x7FFFFFFF)
    {
LABEL_3:
      v5 = *(a2 + 24);
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  if (a3 < 0)
  {
    v26 = -5;
  }

  else
  {
    v26 = 5;
  }

  *(a2 + 40) = a3 / -10 + v4 + (((-103 * (v26 + a3 % 10)) >> 15) & 1) + ((-103 * (v26 + a3 % 10)) >> 10);
  v5 = *(a2 + 24);
  if (v5 == 0x7FFFFFFF)
  {
LABEL_4:
    v6 = *(a2 + 28);
    if (v6 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_49:
  if (a3 < 0)
  {
    v27 = -5;
  }

  else
  {
    v27 = 5;
  }

  *(a2 + 24) = a3 / -10 + v5 + (((-103 * (v27 + a3 % 10)) >> 15) & 1) + ((-103 * (v27 + a3 % 10)) >> 10);
  v6 = *(a2 + 28);
  if (v6 != 0x7FFFFFFF)
  {
LABEL_5:
    if (a3 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    *(a2 + 28) = a3 / -10 + v6 + (((-103 * (v7 + a3 % 10)) >> 15) & 1) + ((-103 * (v7 + a3 % 10)) >> 10);
  }

LABEL_9:
  v8 = *(a2 + 1080);
  v9 = *(a2 + 1088);
  if (v8 != v9)
  {
    if (a3 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = a3 / -10 + (((-103 * (v10 + a3 % 10)) >> 15) & 1) + ((-103 * (v10 + a3 % 10)) >> 10);
    do
    {
      if (*v8 == 0x7FFFFFFF)
      {
        v12 = v8[1];
        if (v12 != 0x7FFFFFFF)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v8 += v11;
        v12 = v8[1];
        if (v12 != 0x7FFFFFFF)
        {
LABEL_19:
          v8[1] = v12 + v11;
        }
      }

      v8 += 3;
    }

    while (v8 != v9);
  }

  v13 = *(a2 + 1104);
  v14 = *(a2 + 1112);
  if (v13 != v14)
  {
    if (a3 < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    v16 = a3 / -10 + (((-103 * (v15 + a3 % 10)) >> 15) & 1) + ((-103 * (v15 + a3 % 10)) >> 10);
    do
    {
      if (*v13 == 0x7FFFFFFF)
      {
        v17 = v13[1];
        if (v17 != 0x7FFFFFFF)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *v13 += v16;
        v17 = v13[1];
        if (v17 != 0x7FFFFFFF)
        {
LABEL_30:
          v13[1] = v17 + v16;
        }
      }

      v13 += 3;
    }

    while (v13 != v14);
  }

  v18 = *a2;
  v19 = *(a2 + 8);
  if (*a2 != v19)
  {
    do
    {
      v21 = *v18;
      v22 = v18[1];
      while (v21 != v22)
      {
        v23 = *(v21 + 8);
        for (i = *(v21 + 16); v23 != i; v23 += 5704)
        {
          sub_9BEAF4(a1, v23, a3);
        }

        v21 += 104;
      }

      v18 += 4;
    }

    while (v18 != v19);
  }
}

void sub_9BEAF4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  if (v3 != 0x7FFFFFFF)
  {
    if (a3 < 0)
    {
      v4 = -5;
    }

    else
    {
      v4 = 5;
    }

    *(a2 + 40) = a3 / -10 + v3 + (((-103 * (v4 + a3 % 10)) >> 15) & 1) + ((-103 * (v4 + a3 % 10)) >> 10);
  }

  if (*(a2 + 792) != 1)
  {
    return;
  }

  v5 = *(a2 + 116);
  if (v5 == 0x7FFFFFFF)
  {
    v6 = *(a2 + 120);
    if (v6 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a3 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    *(a2 + 116) = a3 / -10 + v5 + (((-103 * (v12 + a3 % 10)) >> 15) & 1) + ((-103 * (v12 + a3 % 10)) >> 10);
    v6 = *(a2 + 120);
    if (v6 == 0x7FFFFFFF)
    {
LABEL_9:
      v7 = *(a2 + 88);
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  if (a3 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  *(a2 + 120) = a3 / -10 + v6 + (((-103 * (v13 + a3 % 10)) >> 15) & 1) + ((-103 * (v13 + a3 % 10)) >> 10);
  v7 = *(a2 + 88);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_10:
    v8 = *(a2 + 92);
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (a3 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  *(a2 + 88) = a3 / -10 + v7 + (((-103 * (v14 + a3 % 10)) >> 15) & 1) + ((-103 * (v14 + a3 % 10)) >> 10);
  v8 = *(a2 + 92);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_11:
    v9 = *(a2 + 152);
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_26:
  if (a3 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  *(a2 + 92) = a3 / -10 + v8 + (((-103 * (v15 + a3 % 10)) >> 15) & 1) + ((-103 * (v15 + a3 % 10)) >> 10);
  v9 = *(a2 + 152);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_12:
    v10 = *(a2 + 440);
    v11 = *(a2 + 448);
    if (v10 == v11)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

LABEL_30:
  if (a3 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  *(a2 + 152) = a3 / -10 + v9 + (((-103 * (v16 + a3 % 10)) >> 15) & 1) + ((-103 * (v16 + a3 % 10)) >> 10);
  v10 = *(a2 + 440);
  v11 = *(a2 + 448);
  if (v10 != v11)
  {
LABEL_34:
    if (a3 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    v18 = a3 / -10 + (((-103 * (v17 + a3 % 10)) >> 15) & 1) + ((-103 * (v17 + a3 % 10)) >> 10);
    do
    {
      if (*v10 == 0x7FFFFFFF)
      {
        v19 = v10[1];
        if (v19 != 0x7FFFFFFF)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v10 += v18;
        v19 = v10[1];
        if (v19 != 0x7FFFFFFF)
        {
LABEL_43:
          v10[1] = v19 + v18;
        }
      }

      v10 += 7;
    }

    while (v10 != v11);
  }

LABEL_44:
  v20 = *(a2 + 464);
  v21 = *(a2 + 472);
  if (v20 != v21)
  {
    if (a3 < 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = 5;
    }

    v23 = a3 / -10 + (((-103 * (v22 + a3 % 10)) >> 15) & 1) + ((-103 * (v22 + a3 % 10)) >> 10);
    do
    {
      if (*v20 == 0x7FFFFFFF)
      {
        v24 = v20[1];
        if (v24 != 0x7FFFFFFF)
        {
          goto LABEL_54;
        }
      }

      else
      {
        *v20 += v23;
        v24 = v20[1];
        if (v24 != 0x7FFFFFFF)
        {
LABEL_54:
          v20[1] = v24 + v23;
        }
      }

      v20 += 7;
    }

    while (v20 != v21);
  }

  v25 = *(a2 + 488);
  v26 = *(a2 + 496);
  if (v25 != v26)
  {
    if (a3 < 0)
    {
      v27 = -5;
    }

    else
    {
      v27 = 5;
    }

    v28 = a3 / -10 + (((-103 * (v27 + a3 % 10)) >> 15) & 1) + ((-103 * (v27 + a3 % 10)) >> 10);
    do
    {
      if (*v25 == 0x7FFFFFFF)
      {
        v29 = v25[1];
        if (v29 != 0x7FFFFFFF)
        {
          goto LABEL_65;
        }
      }

      else
      {
        *v25 += v28;
        v29 = v25[1];
        if (v29 != 0x7FFFFFFF)
        {
LABEL_65:
          v25[1] = v29 + v28;
        }
      }

      v25 += 7;
    }

    while (v25 != v26);
  }
}

void sub_9BF048()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3330 = 0u;
  unk_27B3340 = 0u;
  dword_27B3350 = 1065353216;
  sub_3A9A34(&xmmword_27B3330, v0);
  sub_3A9A34(&xmmword_27B3330, v3);
  sub_3A9A34(&xmmword_27B3330, __p);
  sub_3A9A34(&xmmword_27B3330, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3308 = 0;
    qword_27B3310 = 0;
    qword_27B3300 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9BF290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3318)
  {
    qword_27B3320 = qword_27B3318;
    operator delete(qword_27B3318);
  }

  _Unwind_Resume(exception_object);
}

void sub_9BF33C(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = sub_3AF4C0(a2);
  sub_21E2C18(v4, 5, *(a3 + 968));
}

void sub_9BF3AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_9BF67C(a5, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  v23 = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  v10 = *(a1 + 48);
  v26 = *(a1 + 32);
  v19 = a1;
  v11 = *a1;
  v22 = a2 + 3;
  v24 = a2 + 36;
  v25 = v11;
  v27 = v10;
  v28 = *(a1 + 64);
  v29 = *(a1 + 80);
  v12 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (0xEEEEEEEEEEEEEEEFLL * ((a4[1] - *a4) >> 4) <= v15)
      {
        sub_6FAB4();
      }

      v16 = *(*a4 + v13);
      v17 = a5[1];
      if (v17 >= a5[2])
      {
        v18 = sub_9C0F60(a5);
      }

      else
      {
        bzero(a5[1], 0x428uLL);
        sub_9C11B8(v17 + 56);
        *(v17 + 1032) = 0u;
        *(v17 + 1048) = 0u;
        *(v17 + 1016) = 0u;
        v18 = v17 + 1064;
      }

      a5[1] = v18;
      *(v18 - 1064) = v16;
      if (!v16)
      {
        if (0xDAB7EC1DD3431B57 * ((a2[1] - *a2) >> 5))
        {
          sub_9BF860(v19, *a2, v12 + v14, &v22, v18 - 1064);
        }

        sub_6FAB4();
      }

      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      sub_9BFE20(v18, v12 + v14, __p, v18 - 1064);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      ++v15;
      v12 = *a3;
      v14 += 48;
      v13 += 240;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  }
}

void sub_9BF610(_Unwind_Exception *a1)
{
  sub_1AB28(v2 + 8);
  *(v1 + 8) = v2;
  sub_9C1268(v1);
  _Unwind_Resume(a1);
}

void sub_9BF630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_9C1268(v17);
    _Unwind_Resume(a1);
  }

  sub_9C1268(v17);
  _Unwind_Resume(a1);
}

void *sub_9BF67C(void *result, unint64_t a2)
{
  if (0x133F84CFE133F84DLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x3D980F6603D981)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9BF958(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9BF998(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  sub_A21D28(v75, a2);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v20 = vnegq_f64(v6);
  while (1)
  {
    sub_A21D2C(v75, v65);
    v7 = sub_A21B4C(v75, v65);
    sub_98ED24(v65);
    if (!v7)
    {
      return sub_98ED24(v75);
    }

    v8 = sub_A21B20(v75);
    if (*(v8 + 8) == -1)
    {
      goto LABEL_2;
    }

    if ((*(v8 + 39) & 0x8000000000000000) != 0)
    {
      if (!*(v8 + 24))
      {
        goto LABEL_2;
      }
    }

    else if (!*(v8 + 39))
    {
      goto LABEL_2;
    }

    v9 = sub_A21B20(v75);
    sub_9C12C4(v65, v9 + 8);
    if (*sub_A21B20(v75) == 2)
    {
      v10 = sub_A21B20(v75);
      if (*(v10 + 2152) != *(v10 + 2160))
      {
        v11 = sub_A21B20(v75);
        if (&__p != (v11 + 2152))
        {
          sub_35354C(&__p, *(v11 + 2152), *(v11 + 2160), 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 2160) - *(v11 + 2152)) >> 2));
        }
      }
    }

    v21 = -1;
    v22 = 0x7FFFFFFF;
    v23 = -1;
    v24 = -1;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0;
    v27 = -1935635296;
    v28[0] = 0;
    *(v28 + 7) = 0;
    memset(&v28[2], 0, 24);
    v29 = 0;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = 100;
    v32 = 0;
    v33 = 0;
    v34 = v20;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v39 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v53 = -1;
    v54 = -1;
    v55 = 0;
    v56 = 0;
    v58 = 0;
    v57 = 0;
    v59 = 0;
    v60 = 0;
    sub_A186C4(v75, a3, &v63);
    sub_44FDEC(&v21);
    sub_9BFF50(&v63, &v21);
    sub_9C13A0(v67, &v21);
    sub_9C1568(v68, v61);
    sub_53D784(v69, v62);
    v69[160] = v62[160];
    sub_53A868(v62);
    sub_973B5C(v61);
    sub_973C60(&v21);
    v12 = sub_A21B20(v75);
    if (*(v12 + 2224) != *(v12 + 2232))
    {
      v13 = sub_A21B20(v75);
      sub_9C019C((v13 + 2224), &v63, &v21);
      sub_9C04E0(v74, &v21);
      sub_974F1C(&v21);
    }

    if (__p != v71 || sub_9C1704(v67) || v74[0] != v74[1])
    {
      v14 = sub_A21B20(v75);
      v72 = *(v14 + 2176);
      v73 = *(v14 + 2192);
      v15 = a4[128];
      if (v15 >= a4[129])
      {
        v16 = sub_9C17E8(a4 + 127, v65);
      }

      else
      {
        sub_9C193C(a4[128], v65);
        v16 = v15 + 2128;
        a4[128] = v15 + 2128;
      }

      a4[128] = v16;
    }

    v17 = v64;
    if (!v64 || atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      sub_974F1C(v74);
      v18 = __p;
      if (!__p)
      {
        goto LABEL_26;
      }

LABEL_25:
      v71 = v18;
      operator delete(v18);
      goto LABEL_26;
    }

    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    sub_974F1C(v74);
    v18 = __p;
    if (__p)
    {
      goto LABEL_25;
    }

LABEL_26:
    sub_53A868(v69);
    sub_973B5C(v68);
    sub_973C60(v67);
    if (v66 < 0)
    {
      operator delete(v65[1]);
    }

LABEL_2:
    sub_A21708(v75);
  }
}

void sub_9BFD78(_Unwind_Exception *a1)
{
  *(v1 + 1024) = v2;
  sub_1F1A8(&STACK[0x4D8]);
  sub_9C27F4(&STACK[0x4E8]);
  sub_98ED24((v3 - 248));
  _Unwind_Resume(a1);
}

_BYTE *sub_9BFE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 8;
  result = (a4 + 32);
  if (a4 + 32 != a2 + 24)
  {
    v9 = *(a2 + 47);
    if (*(a4 + 55) < 0)
    {
      if (v9 >= 0)
      {
        v11 = (a2 + 24);
      }

      else
      {
        v11 = *(a2 + 24);
      }

      if (v9 >= 0)
      {
        v12 = *(a2 + 47);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      result = sub_13B38(result, v11, v12);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      result = sub_13A68(result, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v10 = *(a2 + 24);
      *(a4 + 48) = *(a2 + 40);
      *result = v10;
    }
  }

  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13)
  {
    v14 = a3;
  }

  else
  {
    v14 = a2;
  }

  if (v7 != v14)
  {
    v15 = *(v14 + 23);
    if (*(a4 + 31) < 0)
    {
      if (v15 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *v14;
      }

      if (v15 >= 0)
      {
        v18 = *(v14 + 23);
      }

      else
      {
        v18 = v14[1];
      }

      return sub_13B38(v7, v17, v18);
    }

    else if ((*(v14 + 23) & 0x80) != 0)
    {
      v19 = *v14;
      v20 = v14[1];

      return sub_13A68(v7, v19, v20);
    }

    else
    {
      v16 = *v14;
      *(v7 + 16) = v14[2];
      *v7 = v16;
    }
  }

  return result;
}

uint64_t sub_9BFF50@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_9C0638(a2);
  if ((*(**a1 + 64))(*a1, 5, 2))
  {
    (*(**a1 + 24))(v5);
    sub_53D784(a2 + 256, v5);
    sub_53D784(a2 + 416, v6);
    *(a2 + 576) = v6[160];
    sub_53A868(v6);
    sub_53A868(v5);
  }

  if ((*(**a1 + 64))(*a1, 4, 1))
  {
    (*(**a1 + 32))(v5);
    sub_53D784(a2 + 680, v5);
    *(a2 + 840) = v6[0];
    sub_53A868(v5);
  }

  if ((*(**a1 + 64))(*a1, 6, 2))
  {
    (*(**a1 + 40))(v5);
    sub_53D784(a2 + 96, v5);
    sub_53A868(v5);
  }

  sub_9C0710((a2 + 48), a1, 2, 2);
  sub_9C0710((a2 + 632), a1, 2, 1);
  return sub_9C0710((a2 + 24), a1, 1, 2);
}

uint64_t sub_9C019C@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_18:
    bzero(a3, 0x4B0uLL);

    return sub_9C2868(a3);
  }

  else
  {
    v7 = v4 + 696;
    do
    {
      v8 = *(v7 - 8);
      if (*(v7 - 8))
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 == v5;
      }

      v7 += 696;
    }

    while (!v9);
    while (1)
    {
      v10 = *(v4 + 8);
      if (v10 == 1)
      {
        break;
      }

      v4 += 696;
      if (v4 == v5)
      {
        if (!v8)
        {
          goto LABEL_18;
        }

        break;
      }
    }

    sub_974500(a3, a1);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    memset(__p, 0, sizeof(__p));
    sub_64B998(&v14);
    *(a3 + 24) = 0;
    v11 = *(a3 + 32);
    if (v11)
    {
      *(a3 + 40) = v11;
      operator delete(v11);
    }

    *(a3 + 32) = *&__p[1];
    *(a3 + 48) = __p[3];
    memset(&__p[1], 0, 24);
    sub_53D784(a3 + 56, &v14);
    sub_53A868(&v14);
    result = (*(**a2 + 80))(*a2, a3);
    if (v10 != 1)
    {
      v32 = 0;
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
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_64B998(__p);
      sub_64B998(&v22);
      LOBYTE(v32) = 0;
      sub_53D784(a3 + 216, __p);
      sub_53D784(a3 + 376, &v22);
      *(a3 + 536) = v32;
      sub_53A868(&v22);
      sub_53A868(__p);
      v32 = 0;
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
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_64B998(__p);
      sub_64B998(&v22);
      LOBYTE(v32) = 0;
      sub_53D784(a3 + 544, __p);
      sub_53D784(a3 + 704, &v22);
      *(a3 + 864) = v32;
      sub_53A868(&v22);
      sub_53A868(__p);
      v32 = 0;
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
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_64B998(__p);
      sub_64B998(&v22);
      LOBYTE(v32) = 0;
      sub_53D784(a3 + 872, __p);
      sub_53D784(a3 + 1032, &v22);
      *(a3 + 1192) = v32;
      sub_53A868(&v22);
      return sub_53A868(__p);
    }
  }

  return result;
}

void sub_9C0478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(&a9);
  sub_974F1C(v9);
  _Unwind_Resume(a1);
}

void sub_9C04BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    sub_974F1C(v11);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9C04ACLL);
}

char **sub_9C04E0(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        sub_53A868((v5 - 176));
        sub_53A868((v5 - 336));
        sub_53A868((v5 - 504));
        sub_53A868((v5 - 664));
        v5 -= 696;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  v7 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = a1[4];
  a1[3] = v7;
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  *(a1 + 2) = *(a2 + 32);
  a1[6] = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_53D784((a1 + 7), a2 + 56);
  sub_53D784((a1 + 27), a2 + 216);
  sub_53D784((a1 + 47), a2 + 376);
  *(a1 + 536) = *(a2 + 536);
  sub_53D784((a1 + 68), a2 + 544);
  sub_53D784((a1 + 88), a2 + 704);
  *(a1 + 864) = *(a2 + 864);
  sub_53D784((a1 + 109), a2 + 872);
  sub_53D784((a1 + 129), a2 + 1032);
  *(a1 + 1192) = *(a2 + 1192);
  return a1;
}

uint64_t sub_9C0638(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  sub_64B998(a1 + 416);
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  sub_64B998(a1 + 680);
  *(a1 + 840) = 0;
  return a1;
}

void sub_9C06A4(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_973B5C(v3);
  sub_973C60(v1);
  _Unwind_Resume(a1);
}

void sub_9C06C4(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 32));
  sub_53A868((v1 + 12));
  sub_5C0ED8(v1 + 9);
  sub_5C0ED8(v1 + 6);
  sub_5C0ED8(v1 + 3);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_9C0710(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = (*(**a2 + 64))(*a2, a3, a4);
  if (result)
  {
    (*(**a2 + 16))(v11);
    if (!sub_4D1F6C(v11) || (*(**a2 + 72))(*a2, a3, a4))
    {
      v9 = a1[1];
      if (v9 >= a1[2])
      {
        v10 = sub_5C489C(a1, v11);
      }

      else
      {
        sub_55BD50(a1[1], v11);
        v10 = v9 + 160;
        a1[1] = v9 + 160;
      }

      a1[1] = v10;
    }

    return sub_53A868(v11);
  }

  return result;
}

void sub_9C0830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_53A868(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9C085C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1064;
    sub_9C0DEC(i - 1064);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_9C08B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 48) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v2 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v2;
  v3 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v3;
  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0u;
  v5 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v5;
  *(a2 + 144) = 0u;
  *(a2 + 136) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 160) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a2 + 184) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a2 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 232) = *(a2 + 232);
  v6 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v6;
  v7 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v7;
  v8 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v8;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0u;
  v9 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v9;
  *(a2 + 304) = 0u;
  *(a2 + 296) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 336) = 0;
  *(a2 + 320) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 360) = 0;
  *(a2 + 344) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 384) = 0;
  *(a2 + 368) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 392) = 0u;
  v10 = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a1 + 416) = v10;
  LODWORD(v10) = *(a2 + 424);
  *(a1 + 428) = *(a2 + 428);
  *(a1 + 424) = v10;
  v11 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v11;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0u;
  v12 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v12;
  *(a2 + 464) = 0u;
  *(a2 + 456) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a2 + 496) = 0;
  *(a2 + 480) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 520) = 0;
  *(a2 + 504) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 568) = 0;
  *(a2 + 552) = 0u;
  v13 = *(a2 + 576);
  *(a2 + 576) = 0;
  *(a1 + 576) = v13;
  LODWORD(v13) = *(a2 + 584);
  *(a1 + 588) = *(a2 + 588);
  *(a1 + 584) = v13;
  v14 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v14;
  *(a2 + 592) = 0;
  *(a2 + 600) = 0u;
  v15 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v15;
  *(a2 + 624) = 0u;
  *(a2 + 616) = 0;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = 0;
  *(a2 + 640) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 680) = 0;
  *(a2 + 664) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a2 + 688) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  v16 = *(a2 + 736);
  *(a2 + 736) = 0;
  *(a1 + 736) = v16;
  LODWORD(v16) = *(a2 + 744);
  *(a1 + 748) = *(a2 + 748);
  *(a1 + 744) = v16;
  v17 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 752) = v17;
  *(a2 + 752) = 0;
  *(a2 + 760) = 0u;
  v18 = *(a2 + 776);
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 776) = v18;
  *(a2 + 784) = 0u;
  *(a2 + 776) = 0;
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  *(a2 + 800) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 840) = 0;
  *(a2 + 824) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 864) = 0;
  *(a2 + 848) = 0u;
  *(a1 + 888) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  v19 = *(a2 + 896);
  *(a2 + 896) = 0;
  *(a1 + 896) = v19;
  LODWORD(v19) = *(a2 + 904);
  *(a1 + 908) = *(a2 + 908);
  *(a1 + 904) = v19;
  v20 = *(a2 + 912);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 912) = v20;
  *(a2 + 912) = 0;
  *(a2 + 928) = 0;
  *(a2 + 920) = 0;
  result = *(a2 + 936);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 936) = result;
  *(a2 + 952) = 0;
  *(a2 + 944) = 0;
  *(a2 + 936) = 0;
  return result;
}

uint64_t sub_9C0DEC(uint64_t a1)
{
  v2 = *(a1 + 1040);
  if (v2)
  {
    v3 = *(a1 + 1048);
    v4 = *(a1 + 1040);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        sub_53A868(v3 - 184);
        sub_53A868(v3 - 344);
        v3 -= 344;
      }

      while (v3 != v2);
      v4 = *(a1 + 1040);
    }

    *(a1 + 1048) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 1016);
  if (v5)
  {
    v6 = *(a1 + 1024);
    v7 = *(a1 + 1016);
    if (v6 != v5)
    {
      v8 = v6 - 2120;
      do
      {
        sub_974F1C((v8 + 920));
        v10 = *(v8 + 872);
        if (v10)
        {
          *(v8 + 880) = v10;
          operator delete(v10);
        }

        sub_53A868(v8 + 704);
        sub_973B5C((v8 + 608));
        sub_973C60((v8 + 24));
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v9 = v8 - 8;
        v8 -= 2128;
      }

      while (v9 != v5);
      v7 = *(a1 + 1016);
    }

    *(a1 + 1024) = v5;
    operator delete(v7);
  }

  sub_53A868(a1 + 856);
  sub_53A868(a1 + 696);
  sub_53A868(a1 + 536);
  sub_53A868(a1 + 376);
  sub_53A868(a1 + 216);
  sub_53A868(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_9C0F60(uint64_t *a1)
{
  v1 = 0x133F84CFE133F84DLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x3D980F6603D980)
  {
    sub_1794();
  }

  if (0x267F099FC267F09ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x267F099FC267F09ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x133F84CFE133F84DLL * ((a1[2] - *a1) >> 3)) >= 0x1ECC07B301ECC0)
  {
    v4 = 0x3D980F6603D980;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x3D980F6603D980)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  bzero(v5, 0x428uLL);
  sub_9C11B8(1064 * v1 + 56);
  v6 = *a1;
  v7 = a1[1];
  v8 = v5 - &v7[-*a1];
  v9 = 0uLL;
  *(v5 + 1032) = 0u;
  *(v5 + 1048) = 0u;
  *(v5 + 1016) = 0u;
  if (v7 != v6)
  {
    v10 = (v6 + 56);
    v11 = v5 - 8 * ((v7 - v6) >> 3) + 56;
    do
    {
      *(v11 - 56) = *(v10 - 56);
      v12 = v11 - 56;
      v13 = *(v10 - 48);
      *(v11 - 32) = *(v10 - 32);
      *(v11 - 48) = v13;
      *(v10 - 40) = v9;
      *(v10 - 48) = 0;
      v14 = *(v10 - 24);
      *(v11 - 8) = *(v10 - 8);
      *(v11 - 24) = v14;
      *(v10 - 16) = v9;
      *(v10 - 24) = 0;
      sub_9C08B0(v11, v10);
      v9 = 0uLL;
      *(v15 + 976) = 0;
      *(v15 + 960) = 0u;
      *(v15 + 960) = *(v10 + 960);
      *(v12 + 1024) = *(v10 + 968);
      *(v10 + 976) = 0;
      *(v10 + 960) = 0u;
      *(v15 + 1000) = 0;
      *(v12 + 1040) = 0u;
      *(v12 + 1040) = *(v10 + 984);
      *(v15 + 1000) = *(v10 + 1000);
      *(v10 + 1000) = 0;
      *(v10 + 984) = 0u;
      v16 = v10 + 1008;
      v10 += 1064;
      v11 = v15 + 1064;
    }

    while (v16 != v7);
    do
    {
      sub_9C0DEC(v6);
      v6 += 1064;
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v8;
  a1[1] = v5 + 1064;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5 + 1064;
}

void sub_9C119C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB28(v2 + 8);
  sub_9C085C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C11B8(uint64_t a1)
{
  sub_64B998(a1);
  sub_64B998(v2 + 160);
  sub_64B998(a1 + 320);
  sub_64B998(a1 + 480);
  sub_64B998(a1 + 640);
  sub_64B998(a1 + 800);
  return a1;
}

void sub_9C1208(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void **sub_9C1268(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_9C0DEC(v3 - 1064);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9C12C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
  }

  sub_9C0638(a1 + 32);
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 904) = 0xFFFFFFFF00000000;
  *(a1 + 912) = 0x8000000080000000;
  *(a1 + 920) = -1;
  sub_9C2868(a1 + 928);
  return a1;
}

void sub_9C1360(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 888) = v6;
    operator delete(v6);
  }

  sub_9750B4((v2 + 32));
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9C13A0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 32) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = (a1 + 48);
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    if (v13 != v12)
    {
      do
      {
        v13 = sub_53A868(v13 - 160);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 56) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = (a1 + 72);
  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 72);
    if (v17 != v16)
    {
      do
      {
        v17 = sub_53A868(v17 - 160);
      }

      while (v17 != v16);
      v18 = *v15;
    }

    *(a1 + 80) = v16;
    operator delete(v18);
    *v15 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  sub_53D784(a1 + 96, a2 + 96);
  sub_53D784(a1 + 256, a2 + 256);
  sub_53D784(a1 + 416, a2 + 416);
  *(a1 + 576) = *(a2 + 576);
  return a1;
}

void *sub_9C1568(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 3);
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    a1[4] = v8;
    operator delete(v10);
    *v7 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = (a1 + 6);
  v12 = a1[6];
  if (v12)
  {
    v13 = a1[7];
    v14 = a1[6];
    if (v13 != v12)
    {
      do
      {
        v13 = sub_53A868(v13 - 160);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    a1[7] = v12;
    operator delete(v14);
    *v11 = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = (a1 + 9);
  v16 = a1[9];
  if (v16)
  {
    v17 = a1[10];
    v18 = a1[9];
    if (v17 != v16)
    {
      do
      {
        v17 = sub_53A868(v17 - 160);
      }

      while (v17 != v16);
      v18 = *v15;
    }

    a1[10] = v16;
    operator delete(v18);
    *v15 = 0;
    a1[10] = 0;
    a1[11] = 0;
  }

  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return a1;
}

BOOL sub_9C1704(void *a1)
{
  if (*a1 != a1[1] || a1[3] != a1[4] || a1[6] != a1[7] || a1[9] != a1[10])
  {
    return 1;
  }

  if (sub_4D1F6C(a1 + 12) && sub_4D1F6C(a1 + 32) && sub_4D1F6C(a1 + 52) && a1[73] == a1[74] && a1[76] == a1[77] && a1[79] == a1[80] && a1[82] == a1[83])
  {
    return !sub_4D1F6C(a1 + 85);
  }

  return 1;
}

uint64_t sub_9C17E8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x133F84CFE133F84DLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1ECC07B301ECC0)
  {
    sub_1794();
  }

  if (0x267F099FC267F09ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x267F099FC267F09ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x133F84CFE133F84DLL * ((a1[2] - *a1) >> 4)) >= 0xF6603D980F660)
  {
    v5 = 0x1ECC07B301ECC0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1ECC07B301ECC0)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_9C193C(v11, a2);
  v6 = 2128 * v2 + 2128;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_9C1AE4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_9C1928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9C271C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C193C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  sub_9738C8(a1 + 32, a2 + 32);
  sub_973A4C((a1 + 616), (a2 + 616));
  sub_55BD50(a1 + 712, a2 + 712);
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = 0;
  *(a1 + 896) = 0;
  *(a1 + 888) = 0;
  v5 = *(a2 + 880);
  v6 = *(a2 + 888);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 904) = v7;
  sub_974500(a1 + 928, a2 + 928);
  return a1;
}

void sub_9C1A84(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 888) = v5;
    operator delete(v5);
  }

  sub_9750B4((v2 + 32));
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_9C1AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0u;
      *(v7 + 8) = 0;
      sub_9C1C00(a4 + 32, v7 + 32);
      *(a4 + 896) = 0;
      *(a4 + 880) = 0u;
      *(a4 + 880) = *(v7 + 880);
      *(a4 + 896) = *(v7 + 896);
      *(v7 + 896) = 0;
      *(v7 + 880) = 0u;
      v9 = *(v7 + 904);
      *(a4 + 920) = *(v7 + 920);
      *(a4 + 904) = v9;
      sub_9C209C(a4 + 928, v7 + 928);
      v7 += 2128;
      a4 += 2128;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_974F1C((v6 + 928));
      v10 = *(v6 + 880);
      if (v10)
      {
        *(v6 + 888) = v10;
        operator delete(v10);
      }

      sub_53A868(v6 + 712);
      sub_973B5C((v6 + 616));
      sub_973C60((v6 + 32));
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      v6 += 2128;
    }
  }
}

__n128 sub_9C1C00(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 48) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a2 + 96) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a2 + 120) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 144) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 168) = *(a2 + 168);
  v2 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a1 + 192) = v2;
  v3 = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 200) = v3;
  v4 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v4;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0u;
  v5 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v5;
  *(a2 + 240) = 0u;
  *(a2 + 232) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 256) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 296) = 0;
  *(a2 + 280) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a2 + 304) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0u;
  v6 = *(a2 + 352);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a1 + 352) = v6;
  LODWORD(v6) = *(a2 + 360);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 360) = v6;
  v7 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v7;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0u;
  v8 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 392) = v8;
  *(a2 + 400) = 0u;
  *(a2 + 392) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 432) = 0;
  *(a2 + 416) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 480) = 0;
  *(a2 + 464) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a2 + 488) = 0u;
  v9 = *(a2 + 512);
  *(a2 + 504) = 0;
  *(a2 + 512) = 0;
  *(a1 + 512) = v9;
  LODWORD(v9) = *(a2 + 520);
  *(a1 + 524) = *(a2 + 524);
  *(a1 + 520) = v9;
  v10 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 528) = v10;
  *(a2 + 528) = 0;
  *(a2 + 536) = 0u;
  v11 = *(a2 + 552);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 552) = v11;
  *(a2 + 560) = 0u;
  *(a2 + 552) = 0;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 600) = 0;
  *(a2 + 584) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a2 + 608) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  *(a2 + 752) = 0u;
  v12 = *(a2 + 776);
  *(a2 + 776) = 0;
  *(a1 + 776) = v12;
  LODWORD(v12) = *(a2 + 784);
  *(a1 + 788) = *(a2 + 788);
  *(a1 + 784) = v12;
  v13 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v13;
  *(a2 + 792) = 0;
  *(a2 + 808) = 0;
  *(a2 + 800) = 0;
  result = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 816) = result;
  *(a2 + 832) = 0;
  *(a2 + 824) = 0;
  *(a2 + 816) = 0;
  *(a1 + 840) = *(a2 + 840);
  return result;
}

__n128 sub_9C209C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  v2 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a2 + 80) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 104) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 128) = *(a2 + 128);
  v3 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 152) = v3;
  v4 = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 160) = v4;
  v5 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v5;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0u;
  v6 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v6;
  *(a2 + 200) = 0u;
  *(a2 + 192) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 280) = 0;
  *(a2 + 264) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 288) = *(a2 + 288);
  v7 = *(a2 + 312);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a1 + 312) = v7;
  v8 = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 320) = v8;
  v9 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v9;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0u;
  v10 = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 352) = v10;
  *(a2 + 360) = 0u;
  *(a2 + 352) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 392) = 0;
  *(a2 + 376) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 448) = *(a2 + 448);
  v11 = *(a2 + 472);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a1 + 472) = v11;
  v12 = *(a2 + 480);
  *(a1 + 484) = *(a2 + 484);
  *(a1 + 480) = v12;
  v13 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 488) = v13;
  *(a2 + 488) = 0;
  *(a2 + 496) = 0u;
  v14 = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 512) = v14;
  *(a2 + 520) = 0u;
  *(a2 + 512) = 0;
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = 0;
  *(a2 + 592) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  v15 = *(a2 + 640);
  *(a2 + 640) = 0;
  *(a1 + 640) = v15;
  LODWORD(v15) = *(a2 + 648);
  *(a1 + 652) = *(a2 + 652);
  *(a1 + 648) = v15;
  v16 = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 656) = v16;
  *(a2 + 656) = 0;
  *(a2 + 664) = 0u;
  v17 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 680) = v17;
  *(a2 + 688) = 0u;
  *(a2 + 680) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  *(a2 + 752) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 792) = 0;
  *(a2 + 776) = 0u;
  v18 = *(a2 + 800);
  *(a2 + 800) = 0;
  *(a1 + 800) = v18;
  LODWORD(v18) = *(a2 + 808);
  *(a1 + 812) = *(a2 + 812);
  *(a1 + 808) = v18;
  v19 = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 816) = v19;
  *(a2 + 816) = 0;
  *(a2 + 824) = 0u;
  v20 = *(a2 + 840);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 840) = v20;
  *(a2 + 848) = 0u;
  *(a2 + 840) = 0;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a2 + 896) = 0u;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a2 + 936) = 0;
  *(a2 + 920) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  v21 = *(a2 + 968);
  *(a2 + 968) = 0;
  *(a1 + 968) = v21;
  LODWORD(v21) = *(a2 + 976);
  *(a1 + 980) = *(a2 + 980);
  *(a1 + 976) = v21;
  v22 = *(a2 + 984);
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 984) = v22;
  *(a2 + 984) = 0;
  *(a2 + 992) = 0u;
  v23 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v23;
  *(a2 + 1016) = 0u;
  *(a2 + 1008) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1048) = 0;
  *(a2 + 1032) = 0u;
  *(a1 + 1072) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = 0;
  *(a2 + 1056) = 0u;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1080) = *(a2 + 1080);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1096) = 0;
  *(a2 + 1080) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = 0;
  *(a2 + 1104) = 0u;
  v24 = *(a2 + 1128);
  *(a2 + 1128) = 0;
  *(a1 + 1128) = v24;
  LODWORD(v24) = *(a2 + 1136);
  *(a1 + 1140) = *(a2 + 1140);
  *(a1 + 1136) = v24;
  v25 = *(a2 + 1144);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1144) = v25;
  *(a2 + 1144) = 0;
  *(a2 + 1160) = 0;
  *(a2 + 1152) = 0;
  result = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = result;
  *(a2 + 1184) = 0;
  *(a2 + 1176) = 0;
  *(a2 + 1168) = 0;
  *(a1 + 1192) = *(a2 + 1192);
  return result;
}

void **sub_9C271C(void **a1)
{
  sub_9C2750(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9C2750(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2128;
    sub_974F1C((i - 1200));
    v4 = *(i - 1248);
    if (v4)
    {
      *(i - 1240) = v4;
      operator delete(v4);
    }

    sub_53A868(i - 1416);
    sub_973B5C((i - 1512));
    sub_973C60((i - 2096));
    if (*(i - 2097) < 0)
    {
      operator delete(*(i - 2120));
    }
  }
}

uint64_t sub_9C27F4(uint64_t a1)
{
  sub_974F1C((a1 + 928));
  v2 = *(a1 + 880);
  if (v2)
  {
    *(a1 + 888) = v2;
    operator delete(v2);
  }

  sub_53A868(a1 + 712);
  sub_973B5C((a1 + 616));
  sub_973C60((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_9C2868(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_64B998(a1 + 56);
  sub_64B998(a1 + 216);
  sub_64B998(a1 + 376);
  *(a1 + 536) = 0;
  sub_64B998(a1 + 544);
  sub_64B998(a1 + 704);
  *(a1 + 864) = 0;
  sub_64B998(a1 + 872);
  sub_64B998(a1 + 1032);
  *(a1 + 1192) = 0;
  return a1;
}

void sub_9C28DC(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 109));
  sub_53A868((v1 + 88));
  sub_53A868((v1 + 68));
  sub_53A868((v1 + 47));
  sub_53A868((v1 + 27));
  sub_9749E0((v1 + 3));
  sub_974A1C(v1);
  _Unwind_Resume(a1);
}

void sub_9C2948(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
    sub_974A1C(v1);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9C2930);
}

void sub_9C296C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3388 = 0u;
  unk_27B3398 = 0u;
  dword_27B33A8 = 1065353216;
  sub_3A9A34(&xmmword_27B3388, v0);
  sub_3A9A34(&xmmword_27B3388, v3);
  sub_3A9A34(&xmmword_27B3388, __p);
  sub_3A9A34(&xmmword_27B3388, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3360 = 0;
    qword_27B3368 = 0;
    qword_27B3358 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9C2BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3370)
  {
    qword_27B3378 = qword_27B3370;
    operator delete(qword_27B3370);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C2C60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_3B0030(a2);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 11;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 11;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  operator new();
}

void sub_9C2D50(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 48) = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void sub_9C2D94(uint64_t a1, void **a2, void *a3, int *a4)
{
  if (!*(*a1 + 11688))
  {
    return;
  }

  v8 = *a4;
  *(a1 + 32) = *a4;
  *(a1 + 24) = v8;
  if ((a1 + 32) == a4)
  {
    *(a1 + 64) = a4[8];
    *(a1 + 120) = *(a4 + 88);
    if (!*(a1 + 160))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  sub_61532C((a1 + 40), *(a4 + 1), *(a4 + 2), (*(a4 + 2) - *(a4 + 1)) >> 3);
  *(a1 + 64) = a4[8];
  sub_146EC((a1 + 72), *(a4 + 5), *(a4 + 6), (*(a4 + 6) - *(a4 + 5)) >> 2);
  v9 = *(a4 + 87);
  if (*(a1 + 119) < 0)
  {
    if (v9 >= 0)
    {
      v11 = a4 + 16;
    }

    else
    {
      v11 = *(a4 + 8);
    }

    if (v9 >= 0)
    {
      v12 = *(a4 + 87);
    }

    else
    {
      v12 = *(a4 + 9);
    }

    sub_13B38(a1 + 96, v11, v12);
    *(a1 + 120) = *(a4 + 88);
    if (!*(a1 + 160))
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if ((*(a4 + 87) & 0x80) == 0)
  {
    v10 = *(a4 + 4);
    *(a1 + 112) = *(a4 + 10);
    *(a1 + 96) = v10;
    *(a1 + 120) = *(a4 + 88);
    if (!*(a1 + 160))
    {
      goto LABEL_23;
    }

LABEL_18:
    v13 = *(a1 + 152);
    if (v13)
    {
      do
      {
        v14 = *v13;
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }

    *(a1 + 152) = 0;
    v15 = *(a1 + 144);
    if (v15)
    {
      bzero(*(a1 + 136), 8 * v15);
    }

    *(a1 + 160) = 0;
    goto LABEL_23;
  }

  sub_13A68((a1 + 96), *(a4 + 8), *(a4 + 9));
  *(a1 + 120) = *(a4 + 88);
  if (*(a1 + 160))
  {
    goto LABEL_18;
  }

LABEL_23:
  v16 = *(a1 + 176);
  v21 = a2;
    ;
  }

  *(a1 + 184) = v16;
  sub_9C341C(a1 + 200);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v18 = a3[1];
  if (v18 != *a3)
  {
    if (((v18 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *a2;
  v19 = v21[1];
  if (*v21 != v19)
  {
    do
    {
      sub_9C3A5C(a1, v20, &v22);
      v20 += 412;
    }

    while (v20 != v19);
  }

  if (v21 + 27 != (a1 + 176))
  {
    sub_9C58D8(v21 + 27, *(a1 + 176), *(a1 + 184), 0x823EE08FB823EE09 * ((*(a1 + 184) - *(a1 + 176)) >> 3));
  }

  if (v21 != a1)
  {
    sub_9C63F8(v21 + 30, *(a1 + 240), *(a1 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 248) - *(a1 + 240)) >> 4));
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}