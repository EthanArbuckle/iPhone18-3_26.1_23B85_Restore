void sub_D102A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a24);
    sub_D10F8C(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a24);
  sub_D10F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_D10300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D10314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a24);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a24);
  _Unwind_Resume(a1);
}

void sub_D10360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D10374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D10388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3EEA68(v5 + 8);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D103A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

double sub_D103B8@<D0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[146] == 4)
  {
    if (a2[2])
    {
      v4 = a2[3] == -1;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v9 = sub_6EECC();
      if (v9)
      {
        if (a2[146] == 4)
        {
          sub_D10D0C(a1, a2);
        }

        sub_5AF20();
      }

      if (!sub_7E7E4(3u))
      {
        goto LABEL_36;
      }

      sub_19594F8(&v23);
      sub_4A5C(&v23, "Inconsistent hiking tour lookup parameters provided to hiking tour lookup module; failing solution.", 99);
      if ((v33 & 0x10) != 0)
      {
        v18 = v32;
        if (v32 < v29)
        {
          v32 = v29;
          v18 = v29;
        }

        v19 = &v28;
      }

      else
      {
        if ((v33 & 8) == 0)
        {
          v10 = 0;
          v22 = 0;
LABEL_66:
          *(&__dst + v10) = 0;
          sub_7E854(&__dst, 3u);
          goto LABEL_31;
        }

        v19 = &v26;
        v18 = v27;
      }

      v20 = *v19;
      v10 = v18 - *v19;
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v22 = v18 - *v19;
      if (v10)
      {
        memmove(&__dst, v20, v10);
      }

      goto LABEL_66;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_52:
      v13 = a3;
      v14 = 17;
      return sub_D11644(v14, v13);
    }

    sub_19594F8(&v23);
    sub_4A5C(&v23, "Provided place request parameters are not valid; skipping solution in hiking tour lookup module.", 96);
    if ((v33 & 0x10) != 0)
    {
      v15 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v15 = v29;
      }

      v16 = v28;
      v5 = v15 - v28;
      if (v15 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v5 = 0;
        v22 = 0;
LABEL_47:
        *(&__dst + v5) = 0;
        sub_7E854(&__dst, 2u);
        if (v22 < 0)
        {
          operator delete(__dst);
        }

        if (v31 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_52;
      }

      v16 = v26;
      v5 = v27 - v26;
      if (v27 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v22 = v5;
    if (v5)
    {
      memmove(&__dst, v16, v5);
    }

    goto LABEL_47;
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v23);
    sub_4A5C(&v23, "Unknown type of place request parameters provided; skipping solution in hiking tour lookup module.", 98);
    if ((v33 & 0x10) != 0)
    {
      v11 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v11 = v29;
      }

      v12 = v28;
      v6 = v11 - v28;
      if (v11 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v6 = 0;
        v22 = 0;
LABEL_30:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 2u);
LABEL_31:
        if (v22 < 0)
        {
          operator delete(__dst);
        }

        if (v31 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_36;
      }

      v12 = v26;
      v6 = v27 - v26;
      if (v27 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_44:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v22 = v6;
    if (v6)
    {
      memmove(&__dst, v12, v6);
    }

    goto LABEL_30;
  }

LABEL_36:
  v13 = a3;
  v14 = 1;
  return sub_D11644(v14, v13);
}

void sub_D10BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  sub_3EEA68(&a49);
  _Unwind_Resume(a1);
}

void sub_D10C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a48);
  _Unwind_Resume(a1);
}

void sub_D10D0C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = -1;
  v16 = 0xFFFF;
  v17 = -1;
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  *&v22[4] = 0u;
  v20 = 0x7FFFFFFF;
  v21 = 0x7FFFFFFF;
  *v22 = 0x7FFFFFFF7FFFFFFFLL;
  v23 = 0x8000000080000000;
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v28 = 0x7FFFFFFF;
  v29 = 0x8000000080000000;
  v30 = 0;
  v31 = 0;
  v32 = xmmword_2266550;
  v33 = -1;
  v34 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0x7FFFFFFF;
  *&v38[4] = 0u;
  v37 = 0x7FFFFFFF;
  *v38 = 0x7FFFFFFF7FFFFFFFLL;
  v39 = 0x8000000080000000;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v43 = 0;
  v44 = 0x7FFFFFFF;
  v45 = 0x8000000080000000;
  v46 = 0;
  v47 = 0;
  v48 = xmmword_2266550;
  v49 = 0x7FFFFFFF;
  v50 = 0x7FFFFFFF7FFFFFFFLL;
  v52 = 0;
  v51 = 0u;
  v53 = 0x8000000080000000;
  v54 = 0x7FFFFFFF;
  v55 = 0x7FFFFFFFFFFFFFFFLL;
  v56 = 0x8000000080000000;
  v57 = 0x7FFFFFFF;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  *&v4 = 0x8000000080000000;
  *(&v4 + 1) = 0x8000000080000000;
  v72 = 0u;
  v73 = v4;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v74 = v4;
  v75 = 0u;
  sub_7E9A4(v5);
  sub_11613A0(*(a1 + 8), *(a2 + 8));
}

void **sub_D10F8C(void **a1)
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
        v5 = v3 - 1104;
        sub_3EEA68((v3 - 1096));
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

void *sub_D10FF4(void *result, unint64_t a2)
{
  if (0xF128CFC4A33F128DLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x3B5CC0ED7303B6)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

_DWORD *sub_D11158(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3B5CC0ED7303B5)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 4) >= 0x1DAE6076B981DALL)
  {
    v5 = 0x3B5CC0ED7303B5;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x3B5CC0ED7303B5)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  *v6 = *a2;
  sub_4C6AE8(1104 * v2 + 8, (a2 + 2));
  v7 = *a1;
  v8 = a1[1];
  v9 = 1104 * v2 - (v8 - *a1);
  if (v8 != *a1)
  {
    v10 = 1104 * v2 - 16 * ((v8 - *a1) >> 4) + 8;
    v11 = *a1;
    do
    {
      *(v10 - 8) = *v11;
      sub_4C6AE8(v10, (v11 + 2));
      v11 += 276;
      v10 = v12 + 1104;
    }

    while (v11 != v8);
    do
    {
      sub_3EEA68((v7 + 2));
      v7 += 276;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = (v6 + 276);
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6 + 276;
}

uint64_t sub_D11300(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  else
  {
    return sub_4D6530((a1 + 8));
  }
}

BOOL sub_D11318(uint64_t a1, void *a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 1632) - *(a1 + 1624)) >> 4);
  v3 = 0xF128CFC4A33F128DLL * ((a2[1] - *a2) >> 4);
  if (v2 == v3 || !sub_7E7E4(1u))
  {
    return v2 == v3;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The hiking tour lookup module output has a different number of solutions than there are place request parameters in the hiking tour lookup module request: ", 155);
  v4 = std::ostream::operator<<();
  sub_4A5C(v4, " != ", 4);
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memmove(&__p, v7, v5);
    }

    goto LABEL_14;
  }

  if ((v21 & 8) != 0)
  {
    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v5 = 0;
  v10 = 0;
LABEL_14:
  *(&__p + v5) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return v2 == v3;
}

void sub_D11600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

double sub_D11644@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 128) = -1;
  *(a2 + 136) = 0xFFFF;
  *(a2 + 144) = -1;
  *(a2 + 146) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 166) = 0;
  *(a2 + 176) = 0x7FFFFFFF;
  *(a2 + 192) = 0u;
  *(a2 + 184) = 0x7FFFFFFF;
  *(a2 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 208) = 0x8000000080000000;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 268) = 0x7FFFFFFF;
  *(a2 + 272) = 0x8000000080000000;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = xmmword_2266550;
  *(a2 + 320) = -1;
  *(a2 + 322) = 0;
  *(a2 + 342) = 0;
  *(a2 + 328) = 0u;
  *(a2 + 352) = 0x7FFFFFFF;
  *(a2 + 368) = 0u;
  *(a2 + 360) = 0x7FFFFFFF;
  *(a2 + 364) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 384) = 0x8000000080000000;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 444) = 0x7FFFFFFF;
  *(a2 + 448) = 0x8000000080000000;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 480) = xmmword_2266550;
  *(a2 + 496) = 0x7FFFFFFF;
  *(a2 + 500) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 528) = 0;
  *(a2 + 512) = 0u;
  *(a2 + 536) = 0x8000000080000000;
  *(a2 + 544) = 0x7FFFFFFF;
  *(a2 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 560) = 0x8000000080000000;
  *(a2 + 568) = 0x7FFFFFFF;
  *(a2 + 768) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *(a2 + 800) = 0u;
  *(a2 + 816) = v3;
  *(a2 + 1088) = 0u;
  *(a2 + 1072) = 0u;
  *(a2 + 1056) = 0u;
  *(a2 + 1040) = 0u;
  *(a2 + 1008) = 0u;
  *(a2 + 1024) = 0u;
  *(a2 + 976) = 0u;
  *(a2 + 992) = 0u;
  *(a2 + 944) = 0u;
  *(a2 + 960) = 0u;
  *(a2 + 912) = 0u;
  *(a2 + 928) = 0u;
  *(a2 + 880) = 0u;
  *(a2 + 896) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  *(a2 + 832) = v3;
  *a2 = a1;
  return result;
}

uint64_t sub_D117AC@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  v4 = (a2 + 24);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  strcpy(a2, "HikingTourLookupModule");
  *(a2 + 23) = 22;
  v10 = 1;
  v5 = sub_CCEBC0((a2 + 24), "Runtime", &v10, a1);
  v6 = v5;
  v7 = *(a2 + 40);
  *(a2 + 32) = v5;
  v9 = 1;
  if (v5 >= v7)
  {
    result = sub_D118C8(v4, "Runtime.HikingTourLookup", &v9, a1 + 1);
  }

  else
  {
    sub_D11A7C(v5, "Runtime.HikingTourLookup", &v9, a1 + 1);
    result = v6 + 48;
  }

  *(a2 + 32) = result;
  return result;
}

void sub_D1189C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D118C8(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_D11A7C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_D11A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D11A7C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_D11BD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v7);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 66) = 0u;
  *(a2 + 82) = 1;
  *(a2 + 88) = 0;
  v4 = *(a1 + 16);
  *&v5 = *(a1 + 32);
  sub_E6359C(v6, v4);
}

void sub_D123A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a31);
  if (a15)
  {
    operator delete(a15);
    sub_D130AC(v31);
    _Unwind_Resume(a1);
  }

  sub_D130AC(v31);
  _Unwind_Resume(a1);
}

void sub_D1247C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a2 + 16))
  {
    operator new();
  }
}

void sub_D12734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D12758(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  v6[0] = &v7;
  v3 = *(a2 + 8);
  if (v3 != -1)
  {
    v10[0] = v6;
    (off_2673750[v3])(v10);
    sub_5F328(v10);
    v9 = 8;
    strcpy(__dst, "any_mode");
    v5 = sub_5F5AC(a3, __dst);
    sub_5ADDC(v6, v5);
    if (v9 < 0)
    {
      operator delete(__dst[0]);
    }

    operator new();
  }

  sub_5AF20();
}

void sub_D12DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 105) < 0)
  {
    operator delete(*(v9 - 128));
  }

  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D12DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_5BC80(&__p);
  if (*(v34 - 129) < 0)
  {
    operator delete(*(v34 - 152));
  }

  sub_5C010(&a17);
  sub_5C010(v34 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_D12F1C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(a1 + 16);
        v7 = v5;
        if (v6 != v5)
        {
          do
          {
            v6 = sub_44FDEC(v6 - 440);
          }

          while (v6 != v5);
          v7 = *v4;
        }

        *(a1 + 16) = v5;
        operator delete(v7);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_26:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v15 = *(a2 + 32);
      v16 = *(a2 + 48);
      v17 = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 48) = v16;
      *(a1 + 64) = v17;
      *(a1 + 32) = v15;
      goto LABEL_27;
    }

    v11 = (a1 + 8);
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(a1 + 16);
      v14 = v12;
      if (v13 != v12)
      {
        do
        {
          v13 = sub_44FDEC(v13 - 440);
        }

        while (v13 != v12);
        v14 = *v11;
      }

      *(a1 + 16) = v12;
      operator delete(v14);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_26;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_27:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D130AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 440;
          sub_44FDEC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_D13168(uint64_t **a1)
{
  v1 = **a1;
  v3 = -1;
  v4 = 0x7FFFFFFF;
  return sub_D1378C(v1, &v3);
}

uint64_t sub_D131A4(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v5 = sub_E80868(*a2);
  v6 = v3;
  return sub_D1378C(v2, &v5);
}

void sub_D131EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(*a1 + 8);
  sub_E8328C(*a2, &v27);
  v3 = *(*v2 + 8);
  if (*v3 == -1 && v3[1] == -1)
  {
    goto LABEL_44;
  }

  for (i = v3 + 110; i != *(*v2 + 16); i += 110)
  {
    v7 = *i;
    v8 = i[1];
    if (v7 == -1 && v8 == -1)
    {
      v5 = 0;
    }

    else
    {
      v10 = sqrt(((*v3 - v7) * (*v3 - v7) + (v3[1] - v8) * (v3[1] - v8))) / 100.0 * 100.0;
      if (v10 >= 4.50359963e15)
      {
        if (v10 < 9.22337204e18)
        {
LABEL_17:
          v5 = v10;
          goto LABEL_6;
        }
      }

      else
      {
        v10 = (((v10 + v10) + 1) >> 1);
        if (v10 < 9.22337204e18)
        {
          goto LABEL_17;
        }
      }

      v5 = 0x7FFFFFFFFFFFFFFELL;
    }

LABEL_6:
    v6 = v2[1];
    if (*v6 > v5)
    {
      v5 = *v6;
    }

    *v6 = v5;
  }

  v11 = v27;
  if (v27 != v28)
  {
    v12 = sub_1218A44(v52, 0, 0);
    if (!sub_194DB28(v12, v27))
    {
      goto LABEL_43;
    }

    v13 = v55 & 0xFFFFFFFFFFFFFFFELL;
    if ((*((v55 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v13 + 8))
      {
        goto LABEL_25;
      }
    }

    else if (!*(v13 + 23))
    {
LABEL_25:
      if (v53)
      {
        v14 = *(*(v54 + 8 * v53) + 32);
        if (!v14)
        {
          v14 = &off_2734B00;
        }

        v15 = *(v14 + 7) / 10000000.0;
        v16 = -1;
        if (v15 <= 180.0)
        {
          v17 = *(v14 + 6) / 10000000.0;
          if (fabs(v17) <= 85.0511288 && v15 >= -180.0)
          {
            v18 = sin(fmin(fmax(v17, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v19) = ((log((v18 + 1.0) / (1.0 - v18)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v19 >= 0xFFFFFFFE)
            {
              v19 = 4294967294;
            }

            else
            {
              v19 = v19;
            }

            v16 = ((v15 + 180.0) / 360.0 * 4294967300.0) | (v19 << 32);
          }
        }

        v20 = v2[1];
        v21 = v3[1] - HIDWORD(v16);
        v22 = sqrt(((*v3 - v16) * (*v3 - v16) + v21 * v21)) / 100.0 * 100.0;
        if (v22 >= 4.50359963e15)
        {
          if (v22 < 9.22337204e18)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v22 = (((v22 + v22) + 1) >> 1);
          if (v22 < 9.22337204e18)
          {
LABEL_37:
            v23 = v22;
LABEL_40:
            if (*v20 > v23)
            {
              v23 = *v20;
            }

            *v20 = v23;
            goto LABEL_43;
          }
        }

        v23 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_40;
      }

LABEL_43:
      sub_1218EBC(v52);
LABEL_44:
      v11 = v27;
      goto LABEL_45;
    }

    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v40 = 0u;
    v34 = 0x1312D0000000000;
    v33 = 0;
    v29 = 0x4039000000000000;
    v30 = 5000;
    v31 = xmmword_2297CF0;
    v32 = xmmword_2297D00;
    v35 = 0x3FF199999999999ALL;
    v37 = 0xA00002710;
    v39 = 2;
    *&v40 = 0x4049000000000000;
    HIDWORD(v40) = 2000;
    v41 = 0x3FF0000000000000;
    v51 = 0;
    v36 = 0x3E800002710;
    v38 = 0x3200000064;
    v42 = 0xBB800000258;
    v43 = xmmword_22AC298;
    *&v47 = 0x3FD999999999999ALL;
    v46 = unk_22AC2C8;
    v45 = xmmword_22AC2B8;
    v44 = unk_22AC2A8;
    operator new();
  }

LABEL_45:
  if (v11)
  {
    v24 = v28;
    v25 = v11;
    if (v28 != v11)
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v11);
      v25 = v27;
    }

    v28 = v11;
    operator delete(v25);
  }
}

void sub_D13720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    a40 = __p;
    operator delete(__p);
    sub_1218EBC(v40 - 128);
    sub_1A104(&a10);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(v40 - 128);
  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_D1376C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1378C(uint64_t result, unsigned int *a2)
{
  v2 = result;
  v3 = *result;
  if (*a2 != -1 || a2[1] != -1)
  {
    v5 = *(v3 + 8);
    if (*v5 != -1 || v5[1] != -1)
    {
      result = sub_D138D8(a2, *(v3 + 8), 0);
      **(v2 + 8) += result;
      v3 = *v2;
    }
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v7 != v6 && v7 + 110 != v6)
  {
    v9 = *(v2 + 8);
    v10 = *v9;
    do
    {
      v13 = *v7;
      v14 = v7[1];
      v15 = v13 == -1 && v14 == -1;
      if (v15 || ((v16 = v7[110], result = v7[111], v16 == -1) ? (v17 = result == -1) : (v17 = 0), v17))
      {
        v11 = 0;
      }

      else
      {
        v18 = sqrt(((v13 - v16) * (v13 - v16) + (v14 - result) * (v14 - result))) / 100.0 * 100.0;
        if (v18 >= 4.50359963e15)
        {
          if (v18 < 9.22337204e18)
          {
LABEL_28:
            v11 = v18;
            goto LABEL_15;
          }
        }

        else
        {
          v18 = (((v18 + v18) + 1) >> 1);
          if (v18 < 9.22337204e18)
          {
            goto LABEL_28;
          }
        }

        v11 = 0x7FFFFFFFFFFFFFFELL;
      }

LABEL_15:
      v10 += v11;
      *v9 = v10;
      v12 = v7 + 220;
      v7 += 110;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_D138D8(unsigned int *a1, unsigned int *a2, int a3)
{
  if (!a3 || (v3 = a1[2], v3 == 0x7FFFFFFF) || (v4 = a2[2], v4 == 0x7FFFFFFF))
  {
    v5 = 0;
  }

  else
  {
    v5 = fabs((v3 - v4));
  }

  v6 = sqrt(((*a1 - *a2) * (*a1 - *a2) + (a1[1] - a2[1]) * (a1[1] - a2[1]) + v5 * v5)) / 100.0 * 100.0;
  if (v6 >= 4.50359963e15)
  {
    if (v6 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    v6 = (((v6 + v6) + 1) >> 1);
    if (v6 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  return v6;
}

uint64_t sub_D139A0(uint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E838F0(*a2);
  **v2 = result;
  return result;
}

BOOL sub_D139D0(_BOOL8 ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E81C04(*a2);
  **v2 = result;
  return result;
}

unint64_t sub_D13A00(unint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E83954(*a2);
  **v2 = result;
  return result;
}

uint64_t sub_D13A34(uint64_t ***a1)
{
  v1 = *a1;
  result = sub_6910B0();
  **v1 = result;
  return result;
}

void sub_D13A68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v5);
  *a2 = 1;
  bzero((a2 + 8), 0x368uLL);
  sub_4E3D18((a2 + 8));
  sub_4E3D18((a2 + 56));
  *(a2 + 112) = 0u;
  *(a2 + 104) = -1;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 424) = 0;
  *(a2 + 556) = 0;
  *(a2 + 544) = 0;
  *(a2 + 552) = 0;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 524) = 0u;
  *(a2 + 608) = 0x3FF0000000000000;
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 640) = 5;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0x7FFFFFFF;
  *(a2 + 784) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 761) = 0u;
  *(a2 + 800) = -1;
  *(a2 + 808) = 0x7FFFFFFF;
  *(a2 + 812) = 0;
  *(a2 + 820) = 0;
  *(a2 + 824) = -1;
  *(a2 + 832) = -1;
  *(a2 + 840) = 0;
  *(a2 + 848) = 0;
  *(a2 + 872) = 0;
  *(a2 + 880) = 0;
  *(a2 + 888) = 0;
  *(a2 + 896) = 0u;
  *(a2 + 912) = 0;
  sub_485B58(v4, *(a1 + 392));
}

void sub_D15FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49AD08(&STACK[0x200]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D16318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49A8F8(&STACK[0x350]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D16340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

uint64_t sub_D1635C(uint64_t a1, uint64_t a2)
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
        v5 = sub_4547F0(v5 - 552);
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v8 = (a1 + 48);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 48);
    if (v10 != v9)
    {
      do
      {
        v10 = sub_4547F0(v10 - 552);
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 56) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v12;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  v13 = (a1 + 96);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 104);
    v16 = *(a1 + 96);
    if (v15 != v14)
    {
      v17 = *(a1 + 104);
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *v13;
    }

    *(a1 + 104) = v14;
    operator delete(v16);
    *v13 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v20 = (a1 + 120);
  v21 = *(a1 + 120);
  if (v21)
  {
    v22 = *(a1 + 128);
    v23 = *(a1 + 120);
    if (v22 != v21)
    {
      do
      {
        v22 = sub_49AEC0(v22 - 30);
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 128) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 168) == *(a2 + 168))
  {
    if (*(a1 + 168))
    {
      v24 = *(a1 + 144);
      if (v24)
      {
        *(a1 + 152) = v24;
        operator delete(v24);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
      }

      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
    }
  }

  else if (*(a1 + 168))
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      *(a1 + 152) = v25;
      operator delete(v25);
    }

    *(a1 + 168) = 0;
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t sub_D165F8(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v9 = *a2;
  v8[0] = 0;
  *__p = v3;
  v11 = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v12 = *(a2 + 10);
  sub_D1E024(a1, v8);
  if (v8[0] == 1)
  {
    sub_D1D6D4(&v9);
    return a1;
  }

  v5 = __p[0];
  if (!__p[0])
  {
    return a1;
  }

  v6 = __p[1];
  v7 = __p[0];
  if (__p[1] != __p[0])
  {
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      v6 -= 4;
    }

    while (v6 != v5);
    v7 = __p[0];
  }

  __p[1] = v5;
  operator delete(v7);
  return a1;
}

void sub_D166D4(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    sub_435B54(v4, &v17);
    v5 = std::string::append(&v17, " ", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v9 = *(a1 + 1);
    v8 = a1 + 8;
    v7 = v9;
    v10 = v8[23];
    if (v10 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    if (v10 >= 0)
    {
      v12 = v8[23];
    }

    else
    {
      v12 = *(v8 + 1);
    }

    v13 = std::string::append(&v18, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
    *a2 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_14:
      operator delete(v17.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(v18.__r_.__value_.__l.__data_);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  else if (a1[31] < 0)
  {
    v15 = *(a1 + 1);
    v16 = *(a1 + 2);

    sub_325C(a2, v15, v16);
  }

  else
  {
    *a2 = *(a1 + 8);
    *(a2 + 16) = *(a1 + 3);
  }
}

void sub_D16800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_D1684C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_D1CD64(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 552;
  }

  else
  {
    sub_49D2CC(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 552;
    *(a1 + 8) = v3 + 552;
    return v3;
  }
}

void sub_D168B4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_49ABAC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 4 * a2;
  }
}

uint64_t sub_D168E0(uint64_t *a1, unsigned int a2)
{
  v2 = a2 / 1000000000.0 * *a1;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      return (v3 >> 1);
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
    return (v3 >> 1);
  }

  return v2;
}

uint64_t sub_D16958(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (a1 != a2)
  {
    sub_146EC((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  sub_3E428((a1 + 152), a2 + 152);
  return a1;
}

uint64_t sub_D169E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 16) = v5;
  v9 = (a1 + 72);
  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  v10 = *(a2 + 6);
  v11 = *(a1 + 152);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v10;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  if (v11)
  {
    operator delete(v11);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = a2[19];
  *(a1 + 160) = *(a2 + 10);
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  return a1;
}

uint64_t sub_D16AC4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_49C304(v7, v4);
        v4 = (v4 + 552);
        v7 += 552;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 552;
      sub_4547F0(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_D16B54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v13 = a2;
      if (v5 == a2)
      {
LABEL_14:
        a1[1] = v13;
        return a2;
      }
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a2;
      v9 = *a1 + a3;
      do
      {
        v11 = (v8 + v7);
        v12 = *(v8 + v7);
        if (v12)
        {
          v11[1] = v12;
          operator delete(v12);
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
        }

        v10 = (v9 + v7);
        *v11 = *(v9 + v7);
        v11[2] = *(v9 + v7 + 16);
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        v8 += 24;
        v9 += 24;
      }

      while (v9 + v7 != v5);
      v5 = a1[1];
      v13 = v8 - v6;
      if (v5 == v13)
      {
        goto LABEL_14;
      }
    }

    v14 = v5;
    do
    {
      v16 = *(v14 - 24);
      v14 -= 24;
      v15 = v16;
      if (v16)
      {
        *(v5 - 16) = v15;
        operator delete(v15);
      }

      v5 = v14;
    }

    while (v14 != v13);
    goto LABEL_14;
  }

  return a2;
}

uint64_t sub_D16C58(uint64_t a1, uint64_t a2)
{
  sub_4F3734(a1, a2);
  sub_4F3734(a1 + 136, a2 + 136);
  v4 = *(a1 + 272);
  if (v4)
  {
    sub_614F28(a1 + 272, v4);
    operator delete(*(a1 + 272));
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  v5 = *(a1 + 304);
  if (v5)
  {
    v6 = *(a1 + 312);
    v7 = *(a1 + 304);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 304);
    }

    *(a1 + 312) = v5;
    operator delete(v7);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  v9 = *(a1 + 328);
  if (v9)
  {
    *(a1 + 336) = v9;
    operator delete(v9);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v10 = *(a1 + 352);
  if (v10)
  {
    v11 = *(a1 + 360);
    v12 = *(a1 + 352);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = *(a1 + 352);
    }

    *(a1 + 360) = v10;
    operator delete(v12);
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 376) = *(a2 + 376);
  sub_D1D064(a1 + 384, (a2 + 384));
  v14 = (a1 + 568);
  if (*(a1 + 591) < 0)
  {
    operator delete(*v14);
  }

  v15 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *v14 = v15;
  *(a2 + 591) = 0;
  *(a2 + 568) = 0;
  v16 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *v16 = v17;
  *(a2 + 615) = 0;
  *(a2 + 592) = 0;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  v18 = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 640) = v18;
  v19 = *(a2 + 652);
  *(a1 + 665) = *(a2 + 665);
  *(a1 + 652) = v19;
  return a1;
}

void sub_D16E88()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_7E9A4(v4);
  *v2 = 1;
  bzero((v2 + 8), 0x368uLL);
  sub_4E3D18((v2 + 8));
  sub_4E3D18((v2 + 56));
  *(v2 + 112) = 0u;
  *(v2 + 104) = -1;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 424) = 0;
  *(v2 + 556) = 0;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0;
  *(v2 + 560) = 0u;
  *(v2 + 576) = 0u;
  *(v2 + 592) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 524) = 0u;
  *(v2 + 608) = 0x3FF0000000000000;
  *(v2 + 632) = 0;
  *(v2 + 616) = 0u;
  *(v2 + 640) = 5;
  *(v2 + 648) = 0u;
  *(v2 + 664) = 0u;
  *(v2 + 680) = 0u;
  *(v2 + 696) = 0x7FFFFFFF;
  *(v2 + 784) = 0u;
  *(v2 + 704) = 0u;
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0u;
  *(v2 + 752) = 0u;
  *(v2 + 761) = 0u;
  *(v2 + 800) = -1;
  *(v2 + 808) = 0x7FFFFFFF;
  *(v2 + 812) = 0;
  *(v2 + 820) = 0;
  *(v2 + 824) = -1;
  *(v2 + 832) = -1;
  *(v2 + 840) = 0;
  *(v2 + 848) = 0;
  *(v2 + 872) = 0;
  *(v2 + 880) = 0;
  *(v2 + 888) = 0;
  *(v2 + 896) = 0u;
  *(v2 + 912) = 0;
  sub_48D00C(v3, *(v0 + 392));
}

void sub_D199F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49AD08(&STACK[0x2D80]);
  sub_D05E04((v22 - 232));
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D19DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_49A8F8(va);
  sub_D05E04((v15 - 232));
  sub_D1D638(a15);
  _Unwind_Resume(a1);
}

void sub_D19DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_D05E04((v22 - 232));
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

uint64_t sub_D19E1C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_D1D838(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 552;
  }

  else
  {
    sub_49EA74(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 552;
    *(a1 + 8) = v3 + 552;
    return v3;
  }
}

uint64_t sub_D19E84(void *a1)
{
  sub_68C448(a1, v61);
  v1 = v61[0];
  v2 = v61[1];
  while (1)
  {
    if (v1 == v2)
    {
      return 0;
    }

    sub_F6D05C(v1, v62);
    v3 = v62[0];
    v4 = v62[1];
    v5 = v63;
    v6 = v64;
    if (v62[0])
    {
      if (v63)
      {
        while (1)
        {
          v8 = sub_F6D024(v3);
          v9 = sub_F6D024(v5);
          if (v4 >= v8 || v6 >= v9)
          {
            if (v4 < v8 == v6 < v9)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v10 = sub_F6D17C(v3, v4);
            if (v10 == sub_F6D17C(v5, v6))
            {
              goto LABEL_48;
            }
          }

          v11 = sub_F6D17C(v3, v4);
          v12 = *v11;
          v13 = (*v11 - **v11);
          v14 = *v13;
          if (*(v11 + 38))
          {
            if (v14 < 0x9B)
            {
              goto LABEL_48;
            }

            v15 = v13[77];
            if (!v15 || (*&v12[v15] & 2) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v14 < 0x9B)
            {
              goto LABEL_48;
            }

            v16 = v13[77];
            if (!v16 || (*&v12[v16] & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v4 = (v4 + 1);
        }
      }

      if (v4 < sub_F6D024(v62[0]))
      {
        while (1)
        {
          v17 = sub_F6D17C(v3, v4);
          v18 = *v17;
          v19 = (*v17 - **v17);
          v20 = *v19;
          if (*(v17 + 38))
          {
            if (v20 < 0x9B)
            {
              goto LABEL_48;
            }

            v21 = v19[77];
            if (!v21 || (*&v18[v21] & 2) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v20 < 0x9B)
            {
              goto LABEL_48;
            }

            v22 = v19[77];
            if (!v22 || (*&v18[v22] & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v4 = (v4 + 1);
          if (v4 >= sub_F6D024(v3))
          {
            goto LABEL_48;
          }
        }
      }

      v5 = v63;
      v6 = v64;
      v7 = sub_F6D024(v3);
      if (!v5)
      {
        goto LABEL_9;
      }

LABEL_50:
      v29 = sub_F6D024(v5);
      if (v4 >= v7 || v6 >= v29)
      {
        if (v4 < v7 == v6 < v29)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v30 = sub_F6D17C(v3, v4);
        if (v30 == sub_F6D17C(v5, v6))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_70;
    }

    if (v63)
    {
      break;
    }

LABEL_54:
    if (!v5 || v6 >= sub_F6D024(v5))
    {
      goto LABEL_3;
    }

    v31 = v4 + 1;
    v32 = v63;
    v33 = v64;
    if (!v63)
    {
      goto LABEL_100;
    }

    if (v33 >= sub_F6D024(v63))
    {
      v32 = v63;
      v33 = v64;
LABEL_100:
      v42 = 0;
      if (!v32)
      {
        goto LABEL_2;
      }

      goto LABEL_101;
    }

    while (1)
    {
      v34 = sub_F6D17C(v3, v31);
      v35 = *v34;
      v36 = (*v34 - **v34);
      v37 = *v36;
      if (!*(v34 + 38))
      {
        break;
      }

      if (v37 >= 0x9B)
      {
        v38 = v36[77];
        if (v38)
        {
          if ((*&v35[v38] & 2) != 0)
          {
            goto LABEL_97;
          }
        }
      }

LABEL_59:
      ++v31;
      if (v33 >= sub_F6D024(v32))
      {
        goto LABEL_97;
      }
    }

    if (v37 < 0x9B)
    {
      goto LABEL_59;
    }

    v39 = v36[77];
    if (!v39 || (*&v35[v39] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_97:
    v32 = v63;
    v33 = v64;
    if (!v3)
    {
      goto LABEL_100;
    }

    v42 = v31 < sub_F6D024(v3);
    if (!v32)
    {
      goto LABEL_2;
    }

LABEL_101:
    v57 = sub_F6D024(v32);
    if (v33 < v57 && v42)
    {
      v59 = sub_F6D17C(v3, v31);
      if (v59 != sub_F6D17C(v32, v33))
      {
        return 1;
      }
    }

    else if ((v42 ^ (v33 < v57)))
    {
      return 1;
    }

LABEL_3:
    v1 += 69;
  }

  if (v6 >= sub_F6D024(v63))
  {
    v5 = v63;
    v6 = v64;
    goto LABEL_54;
  }

  while (1)
  {
    v23 = sub_F6D17C(0, v4);
    v24 = *v23;
    v25 = (*v23 - **v23);
    v26 = *v25;
    if (!*(v23 + 38))
    {
      break;
    }

    if (v26 < 0x9B)
    {
      goto LABEL_48;
    }

    v27 = v25[77];
    if (!v27 || (*&v24[v27] & 2) == 0)
    {
      goto LABEL_48;
    }

LABEL_39:
    v4 = (v4 + 1);
    if (v6 >= sub_F6D024(v5))
    {
      goto LABEL_48;
    }
  }

  if (v26 >= 0x9B)
  {
    v28 = v25[77];
    if (v28)
    {
      if (*&v24[v28])
      {
        goto LABEL_39;
      }
    }
  }

LABEL_48:
  v5 = v63;
  v6 = v64;
  if (!v3)
  {
    goto LABEL_54;
  }

  v7 = sub_F6D024(v3);
  if (v5)
  {
    goto LABEL_50;
  }

LABEL_9:
  if (v4 >= v7)
  {
    goto LABEL_3;
  }

LABEL_70:
  v31 = v4 + 1;
  v40 = v63;
  v41 = v64;
  if (v63)
  {
    while (1)
    {
      v43 = sub_F6D024(v3);
      v44 = sub_F6D024(v40);
      if (v31 >= v43 || v41 >= v44)
      {
        if (v31 < v43 == v41 < v44)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v45 = sub_F6D17C(v3, v31);
        if (v45 == sub_F6D17C(v40, v41))
        {
          goto LABEL_97;
        }
      }

      v46 = sub_F6D17C(v3, v31);
      v47 = (*v46 - **v46);
      v48 = *v47;
      if (*(v46 + 38))
      {
        if (v48 < 0x9B)
        {
          goto LABEL_75;
        }

        v49 = v47[77];
        if (!v49)
        {
          goto LABEL_75;
        }

        v50 = 2;
      }

      else
      {
        if (v48 < 0x9B)
        {
          goto LABEL_75;
        }

        v49 = v47[77];
        if (!v49)
        {
          goto LABEL_75;
        }

        v50 = 1;
      }

      if ((*(*v46 + v49) & v50) != 0)
      {
        goto LABEL_97;
      }

LABEL_75:
      ++v31;
    }
  }

  if (v31 < sub_F6D024(v3))
  {
    while (1)
    {
      v51 = sub_F6D17C(v3, v31);
      v52 = *v51;
      v53 = (*v51 - **v51);
      v54 = *v53;
      if (*(v51 + 38))
      {
        if (v54 >= 0x9B)
        {
          v55 = v53[77];
          if (v55)
          {
            if ((*&v52[v55] & 2) != 0)
            {
              goto LABEL_97;
            }
          }
        }
      }

      else if (v54 >= 0x9B)
      {
        v56 = v53[77];
        if (v56)
        {
          if (*&v52[v56])
          {
            goto LABEL_97;
          }
        }
      }

      if (++v31 >= sub_F6D024(v3))
      {
        goto LABEL_97;
      }
    }
  }

  v32 = v63;
  v33 = v64;
  v42 = v31 < sub_F6D024(v3);
  if (v32)
  {
    goto LABEL_101;
  }

LABEL_2:
  if (!v42)
  {
    goto LABEL_3;
  }

  return 1;
}

void sub_D1A428(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v5);
  *a2 = 1;
  bzero((a2 + 8), 0x368uLL);
  sub_4E3D18((a2 + 8));
  sub_4E3D18((a2 + 56));
  *(a2 + 112) = 0u;
  *(a2 + 104) = -1;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 424) = 0;
  *(a2 + 556) = 0;
  *(a2 + 544) = 0;
  *(a2 + 552) = 0;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 524) = 0u;
  *(a2 + 608) = 0x3FF0000000000000;
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 640) = 5;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0x7FFFFFFF;
  *(a2 + 784) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 761) = 0u;
  *(a2 + 800) = -1;
  *(a2 + 808) = 0x7FFFFFFF;
  *(a2 + 812) = 0;
  *(a2 + 820) = 0;
  *(a2 + 824) = -1;
  *(a2 + 832) = -1;
  *(a2 + 840) = 0;
  *(a2 + 848) = 0;
  *(a2 + 872) = 0;
  *(a2 + 880) = 0;
  *(a2 + 888) = 0;
  *(a2 + 896) = 0u;
  *(a2 + 912) = 0;
  sub_493F9C(v4, *(a1 + 392));
}

void sub_D1C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49AD08(&STACK[0x200]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D1CCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49A8F8(&STACK[0x350]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D1CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

uint64_t sub_D1CCFC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_D1DBCC(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 552;
  }

  else
  {
    sub_49F780(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 552;
    *(a1 + 8) = v3 + 552;
    return v3;
  }
}

uint64_t sub_D1CD64(void **a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v30 = 8 * ((a1[1] - *a1) >> 3);
  sub_49D2CC(v30, a2);
  v6 = 552 * v2 + 552;
  v7 = *a1;
  v8 = a1[1];
  v9 = v30 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v30 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 8) = 0uLL;
      *v10 = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0uLL;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 40) = *(v10 + 5);
      *(v10 + 5) = 0;
      *(v10 + 24) = 0uLL;
      v13 = *(v10 + 3);
      v14 = *(v10 + 5);
      v15 = *(v10 + 12);
      *(v11 + 64) = *(v10 + 4);
      *(v11 + 80) = v14;
      *(v11 + 48) = v13;
      *(v11 + 96) = v15;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0uLL;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 120) = *(v10 + 15);
      *(v10 + 15) = 0;
      *(v10 + 104) = 0uLL;
      *(v11 + 144) = 0;
      *(v11 + 128) = 0uLL;
      *(v11 + 128) = *(v10 + 8);
      *(v11 + 144) = *(v10 + 18);
      *(v10 + 18) = 0;
      *(v10 + 8) = 0uLL;
      *(v11 + 168) = 0;
      *(v11 + 152) = 0uLL;
      *(v11 + 152) = *(v10 + 152);
      *(v11 + 168) = *(v10 + 21);
      *(v10 + 21) = 0;
      *(v10 + 152) = 0uLL;
      v16 = *(v10 + 12);
      v17 = *(v10 + 26);
      *(v11 + 176) = *(v10 + 11);
      *(v11 + 192) = v16;
      *(v11 + 208) = v17;
      *(v11 + 216) = 0;
      *(v11 + 224) = 0uLL;
      *(v11 + 216) = *(v10 + 216);
      *(v11 + 232) = *(v10 + 29);
      *(v10 + 29) = 0;
      *(v10 + 216) = 0uLL;
      *(v11 + 256) = 0;
      *(v11 + 240) = 0uLL;
      *(v11 + 240) = *(v10 + 15);
      *(v11 + 256) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 15) = 0uLL;
      v18 = *(v10 + 264);
      v19 = *(v10 + 296);
      *(v11 + 280) = *(v10 + 280);
      *(v11 + 296) = v19;
      *(v11 + 264) = v18;
      v20 = *(v10 + 424);
      v22 = *(v10 + 376);
      v21 = *(v10 + 392);
      *(v11 + 408) = *(v10 + 408);
      *(v11 + 424) = v20;
      *(v11 + 376) = v22;
      *(v11 + 392) = v21;
      v23 = *(v10 + 488);
      v25 = *(v10 + 440);
      v24 = *(v10 + 456);
      *(v11 + 472) = *(v10 + 472);
      *(v11 + 488) = v23;
      *(v11 + 440) = v25;
      *(v11 + 456) = v24;
      v26 = *(v10 + 312);
      v27 = *(v10 + 328);
      v28 = *(v10 + 360);
      *(v11 + 344) = *(v10 + 344);
      *(v11 + 360) = v28;
      *(v11 + 312) = v26;
      *(v11 + 328) = v27;
      *(v11 + 504) = *(v10 + 63);
      *(v11 + 512) = *(v10 + 32);
      *(v10 + 65) = 0;
      *(v10 + 504) = 0uLL;
      *(v11 + 544) = 0;
      *(v11 + 528) = 0uLL;
      *(v11 + 528) = *(v10 + 33);
      *(v11 + 544) = *(v10 + 68);
      *(v10 + 68) = 0;
      *(v10 + 33) = 0uLL;
      v10 += 552;
      v11 += 552;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_4547F0(v7) + 552);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_D1D050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1D064(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  sub_4FB7B4((a1 + 16), (a2 + 2));
  v5 = (a1 + 72);
  v6 = *(a1 + 72);
  *(a1 + 64) = a2[8];
  if (v6)
  {
    v7 = *(a1 + 80);
    v8 = v6;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 6);
        if (v9)
        {
          *(v7 - 5) = v9;
          operator delete(v9);
        }

        v10 = v7 - 10;
        if (*(v7 - 57) < 0)
        {
          operator delete(*v10);
        }

        v7 -= 10;
      }

      while (v10 != v6);
      v8 = *v5;
    }

    *(a1 + 80) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  *(a1 + 96) = *(a2 + 96);
  sub_D1D18C((a1 + 104), (a2 + 13));
  v11 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 38);
  if (v11)
  {
    *(a1 + 168) = v11;
    operator delete(v11);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 10);
  *(a1 + 176) = a2[22];
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  return a1;
}

double sub_D1D18C(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  a1[5] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[2];
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 85;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 170;
  }

  a1[4] = v8;
LABEL_8:
  sub_D1D268(a1);
  v10 = a1[1];
  v9 = a1[2];
  if (v9 != v10)
  {
    a1[2] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_D1D364(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_D1D268(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0xAA)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 170;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 170 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0xAA)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_D1D364(v7);
}

void sub_D1D364(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

uint64_t sub_D1D4D4(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 144 * v2;
  v13 = 0;
  sub_4F15C8(144 * v2, a2);
  v12 = 144 * v2 + 144;
  sub_4FA214(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_D1D624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1D638(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D1D6D4(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D1D6D4(uint64_t a1)
{
  if (*(a1 + 864) == 1)
  {
    v2 = *(a1 + 840);
    if (v2)
    {
      *(a1 + 848) = v2;
      operator delete(v2);
    }
  }

  sub_5287C0(a1 + 152);
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_49AEC0(v4 - 30);
      }

      while (v4 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 104);
    if (v7 != v6)
    {
      v9 = *(a1 + 112);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(a1 + 104);
    }

    *(a1 + 112) = v6;
    operator delete(v8);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    if (v13 != v12)
    {
      do
      {
        v13 = sub_4547F0(v13 - 552);
      }

      while (v13 != v12);
      v14 = *(a1 + 48);
    }

    *(a1 + 56) = v12;
    operator delete(v14);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v15 = *a1;
  if (*a1)
  {
    v16 = *(a1 + 8);
    v17 = *a1;
    if (v16 != v15)
    {
      do
      {
        v16 = sub_4547F0(v16 - 552);
      }

      while (v16 != v15);
      v17 = *a1;
    }

    *(a1 + 8) = v15;
    operator delete(v17);
  }

  return a1;
}

uint64_t sub_D1D838(void **a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v30 = 8 * ((a1[1] - *a1) >> 3);
  sub_49EA74(v30, a2);
  v6 = 552 * v2 + 552;
  v7 = *a1;
  v8 = a1[1];
  v9 = v30 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v30 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 8) = 0uLL;
      *v10 = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0uLL;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 40) = *(v10 + 5);
      *(v10 + 5) = 0;
      *(v10 + 24) = 0uLL;
      v13 = *(v10 + 3);
      v14 = *(v10 + 5);
      v15 = *(v10 + 12);
      *(v11 + 64) = *(v10 + 4);
      *(v11 + 80) = v14;
      *(v11 + 48) = v13;
      *(v11 + 96) = v15;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0uLL;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 120) = *(v10 + 15);
      *(v10 + 15) = 0;
      *(v10 + 104) = 0uLL;
      *(v11 + 144) = 0;
      *(v11 + 128) = 0uLL;
      *(v11 + 128) = *(v10 + 8);
      *(v11 + 144) = *(v10 + 18);
      *(v10 + 18) = 0;
      *(v10 + 8) = 0uLL;
      *(v11 + 168) = 0;
      *(v11 + 152) = 0uLL;
      *(v11 + 152) = *(v10 + 152);
      *(v11 + 168) = *(v10 + 21);
      *(v10 + 21) = 0;
      *(v10 + 152) = 0uLL;
      v16 = *(v10 + 12);
      v17 = *(v10 + 26);
      *(v11 + 176) = *(v10 + 11);
      *(v11 + 192) = v16;
      *(v11 + 208) = v17;
      *(v11 + 216) = 0;
      *(v11 + 224) = 0uLL;
      *(v11 + 216) = *(v10 + 216);
      *(v11 + 232) = *(v10 + 29);
      *(v10 + 29) = 0;
      *(v10 + 216) = 0uLL;
      *(v11 + 256) = 0;
      *(v11 + 240) = 0uLL;
      *(v11 + 240) = *(v10 + 15);
      *(v11 + 256) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 15) = 0uLL;
      v18 = *(v10 + 264);
      v19 = *(v10 + 296);
      *(v11 + 280) = *(v10 + 280);
      *(v11 + 296) = v19;
      *(v11 + 264) = v18;
      v20 = *(v10 + 424);
      v22 = *(v10 + 376);
      v21 = *(v10 + 392);
      *(v11 + 408) = *(v10 + 408);
      *(v11 + 424) = v20;
      *(v11 + 376) = v22;
      *(v11 + 392) = v21;
      v23 = *(v10 + 488);
      v25 = *(v10 + 440);
      v24 = *(v10 + 456);
      *(v11 + 472) = *(v10 + 472);
      *(v11 + 488) = v23;
      *(v11 + 440) = v25;
      *(v11 + 456) = v24;
      v26 = *(v10 + 312);
      v27 = *(v10 + 328);
      v28 = *(v10 + 360);
      *(v11 + 344) = *(v10 + 344);
      *(v11 + 360) = v28;
      *(v11 + 312) = v26;
      *(v11 + 328) = v27;
      *(v11 + 504) = *(v10 + 63);
      *(v11 + 512) = *(v10 + 32);
      *(v10 + 65) = 0;
      *(v10 + 504) = 0uLL;
      *(v11 + 544) = 0;
      *(v11 + 528) = 0uLL;
      *(v11 + 528) = *(v10 + 33);
      *(v11 + 544) = *(v10 + 68);
      *(v10 + 68) = 0;
      *(v10 + 33) = 0uLL;
      v10 += 552;
      v11 += 552;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_4547F0(v7) + 552);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_D1DB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1DB38(uint64_t a1)
{
  std::ios::~ios();
  if (*(a1 + 10816) == 1)
  {
    sub_3E3DF0((a1 + 5504));
    if (*(a1 + 5400) != 1)
    {
      return a1;
    }
  }

  else if (*(a1 + 5400) != 1)
  {
    return a1;
  }

  sub_3E3DF0((a1 + 88));
  return a1;
}

uint64_t sub_D1DBCC(void **a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v30 = 8 * ((a1[1] - *a1) >> 3);
  sub_49F780(v30, a2);
  v6 = 552 * v2 + 552;
  v7 = *a1;
  v8 = a1[1];
  v9 = v30 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v30 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 8) = 0uLL;
      *v10 = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0uLL;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 40) = *(v10 + 5);
      *(v10 + 5) = 0;
      *(v10 + 24) = 0uLL;
      v13 = *(v10 + 3);
      v14 = *(v10 + 5);
      v15 = *(v10 + 12);
      *(v11 + 64) = *(v10 + 4);
      *(v11 + 80) = v14;
      *(v11 + 48) = v13;
      *(v11 + 96) = v15;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0uLL;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 120) = *(v10 + 15);
      *(v10 + 15) = 0;
      *(v10 + 104) = 0uLL;
      *(v11 + 144) = 0;
      *(v11 + 128) = 0uLL;
      *(v11 + 128) = *(v10 + 8);
      *(v11 + 144) = *(v10 + 18);
      *(v10 + 18) = 0;
      *(v10 + 8) = 0uLL;
      *(v11 + 168) = 0;
      *(v11 + 152) = 0uLL;
      *(v11 + 152) = *(v10 + 152);
      *(v11 + 168) = *(v10 + 21);
      *(v10 + 21) = 0;
      *(v10 + 152) = 0uLL;
      v16 = *(v10 + 12);
      v17 = *(v10 + 26);
      *(v11 + 176) = *(v10 + 11);
      *(v11 + 192) = v16;
      *(v11 + 208) = v17;
      *(v11 + 216) = 0;
      *(v11 + 224) = 0uLL;
      *(v11 + 216) = *(v10 + 216);
      *(v11 + 232) = *(v10 + 29);
      *(v10 + 29) = 0;
      *(v10 + 216) = 0uLL;
      *(v11 + 256) = 0;
      *(v11 + 240) = 0uLL;
      *(v11 + 240) = *(v10 + 15);
      *(v11 + 256) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 15) = 0uLL;
      v18 = *(v10 + 264);
      v19 = *(v10 + 296);
      *(v11 + 280) = *(v10 + 280);
      *(v11 + 296) = v19;
      *(v11 + 264) = v18;
      v20 = *(v10 + 424);
      v22 = *(v10 + 376);
      v21 = *(v10 + 392);
      *(v11 + 408) = *(v10 + 408);
      *(v11 + 424) = v20;
      *(v11 + 376) = v22;
      *(v11 + 392) = v21;
      v23 = *(v10 + 488);
      v25 = *(v10 + 440);
      v24 = *(v10 + 456);
      *(v11 + 472) = *(v10 + 472);
      *(v11 + 488) = v23;
      *(v11 + 440) = v25;
      *(v11 + 456) = v24;
      v26 = *(v10 + 312);
      v27 = *(v10 + 328);
      v28 = *(v10 + 360);
      *(v11 + 344) = *(v10 + 344);
      *(v11 + 360) = v28;
      *(v11 + 312) = v26;
      *(v11 + 328) = v27;
      *(v11 + 504) = *(v10 + 63);
      *(v11 + 512) = *(v10 + 32);
      *(v10 + 65) = 0;
      *(v10 + 504) = 0uLL;
      *(v11 + 544) = 0;
      *(v11 + 528) = 0uLL;
      *(v11 + 528) = *(v10 + 33);
      *(v11 + 544) = *(v10 + 68);
      *(v10 + 68) = 0;
      *(v10 + 33) = 0uLL;
      v10 += 552;
      v11 += 552;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_4547F0(v7) + 552);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_D1DEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1DECC(uint64_t a1)
{
  *(a1 + 96) = v3;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_D1E024(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_D1E114(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_D1D6D4(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
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
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_D1E3EC(a1, a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D1E114(uint64_t a1, uint64_t a2)
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
        v5 = sub_4547F0(v5 - 552);
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v8 = (a1 + 48);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 48);
    if (v10 != v9)
    {
      do
      {
        v10 = sub_4547F0(v10 - 552);
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 56) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v12;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  v13 = (a1 + 104);
  v14 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  if (v14)
  {
    v15 = *(a1 + 112);
    v16 = v14;
    if (v15 != v14)
    {
      v17 = *(a1 + 112);
      do
      {
        v19 = *(v17 - 3);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 2) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *v13;
    }

    *(a1 + 112) = v14;
    operator delete(v16);
    *v13 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v20 = (a1 + 128);
  v21 = *(a1 + 128);
  if (v21)
  {
    v22 = *(a1 + 136);
    v23 = *(a1 + 128);
    if (v22 != v21)
    {
      do
      {
        v22 = sub_49AEC0(v22 - 30);
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 136) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  sub_D16C58(a1 + 152, a2 + 152);
  v24 = (a1 + 840);
  v25 = (a2 + 840);
  if (*(a1 + 864) == *(a2 + 864))
  {
    if (*(a1 + 864))
    {
      v26 = *v24;
      if (*v24)
      {
        *(a1 + 848) = v26;
        operator delete(v26);
        *v24 = 0;
        *(a1 + 848) = 0;
        *(a1 + 856) = 0;
      }

      *(a1 + 840) = *(a2 + 840);
      *(a1 + 848) = *(a2 + 848);
      *v25 = 0;
      *(a2 + 848) = 0;
      *(a2 + 856) = 0;
    }

    return a1;
  }

  else if (*(a1 + 864))
  {
    v28 = *v24;
    if (*v24)
    {
      *(a1 + 848) = v28;
      operator delete(v28);
    }

    *(a1 + 864) = 0;
    return a1;
  }

  else
  {
    *v24 = 0;
    *(a1 + 848) = 0;
    *(a1 + 856) = 0;
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 848) = *(a2 + 848);
    *v25 = 0;
    *(a2 + 848) = 0;
    *(a2 + 856) = 0;
    *(a1 + 864) = 1;
    return a1;
  }
}

uint64_t sub_D1E3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v5;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v6 = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 72) = v6;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  *(a2 + 96) = *(a3 + 96);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 120) = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  sub_D1E520(a2 + 152, a3 + 152);
  *(a2 + 840) = 0;
  *(a2 + 864) = 0;
  if (*(a3 + 864) == 1)
  {
    *(a2 + 856) = 0;
    *(a2 + 840) = 0u;
    *(a2 + 840) = *(a3 + 840);
    *(a2 + 848) = *(a3 + 848);
    *(a3 + 856) = 0;
    *(a3 + 840) = 0u;
    *(a2 + 864) = 1;
  }

  return a2;
}

__n128 sub_D1E520(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v2 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v3 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v3;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    v4 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v4;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    v5 = *(a2 + 200);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = v5;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 208) = 0;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(a1 + 264) = 1;
  }

  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 272) = 0u;
  v6 = *(a2 + 296);
  *(a1 + 312) = 0u;
  *(a1 + 296) = v6;
  *(a1 + 304) = 0;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a2 + 304) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 344) = 0;
  *(a2 + 328) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 352) = 0u;
  *(a1 + 376) = *(a2 + 376);
  v7 = *(a2 + 384);
  *(a1 + 389) = *(a2 + 389);
  *(a1 + 384) = v7;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  v8 = *(a2 + 432);
  *(a1 + 424) = *(a2 + 424);
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a1 + 432) = v8;
  *(a1 + 440) = *(a2 + 440);
  *(a2 + 432) = 0u;
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 472) = 0;
  *(a2 + 456) = 0u;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 520) = 0u;
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  v9 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 568) = v9;
  *(a2 + 568) = 0;
  *(a2 + 584) = 0;
  *(a2 + 576) = 0;
  v10 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v10;
  *(a2 + 608) = 0;
  *(a2 + 600) = 0;
  *(a2 + 592) = 0;
  *(a1 + 616) = *(a2 + 616);
  v12 = *(a2 + 648);
  result = *(a2 + 664);
  v13 = *(a2 + 632);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 648) = v12;
  *(a1 + 664) = result;
  *(a1 + 632) = v13;
  return result;
}

void sub_D1E854()
{
  byte_27B4ECF = 3;
  LODWORD(qword_27B4EB8) = 5136193;
  byte_27B4EE7 = 3;
  LODWORD(qword_27B4ED0) = 5136194;
  byte_27B4EFF = 3;
  LODWORD(qword_27B4EE8) = 5136195;
  byte_27B4F17 = 15;
  strcpy(&qword_27B4F00, "vehicle_mass_kg");
  byte_27B4F2F = 21;
  strcpy(&xmmword_27B4F18, "vehicle_cargo_mass_kg");
  byte_27B4F47 = 19;
  strcpy(&qword_27B4F30, "vehicle_aux_power_w");
  byte_27B4F5F = 15;
  strcpy(&qword_27B4F48, "dcdc_efficiency");
  strcpy(&qword_27B4F60, "drive_train_efficiency");
  HIBYTE(word_27B4F76) = 22;
  operator new();
}

void sub_D1EA30(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B4F76) < 0)
  {
    sub_21E43CC();
  }

  sub_21E43D8();
  _Unwind_Resume(a1);
}

double sub_D1EA50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v30);
  v6 = sub_501CE8(&v29, a2);
  sub_931E8C(v6, a1, &v26);
  v28 = sub_7EA60(v30);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v15);
  sub_4A5C(&v15, "PlaceGuidanceModule took ", 25);
  v7 = std::ostream::operator<<();
  sub_4A5C(v7, " ms", 3);
  if ((v25 & 0x10) != 0)
  {
    v9 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v9 = v21;
    }

    v10 = v20;
    v8 = v9 - v20;
    if (v9 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }

LABEL_8:
    if (v8 >= 0x17)
    {
      operator new();
    }

    v14 = v8;
    if (v8)
    {
      memmove(&__p, v10, v8);
    }

    goto LABEL_13;
  }

  if ((v25 & 8) != 0)
  {
    v10 = v18;
    v8 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v8 = 0;
  v14 = 0;
LABEL_13:
  *(&__p + v8) = 0;
  sub_7E854(&__p, 2u);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  std::locale::~locale(&v17);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  *a3 = 1;
  result = *&v26;
  *(a3 + 8) = v26;
  v12 = v28;
  *(a3 + 24) = v27;
  *(a3 + 32) = v12;
  return result;
}

void sub_D1ED00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_939588((v15 - 112));
  _Unwind_Resume(a1);
}

void sub_D1ED74()
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
  xmmword_27B4FC0 = 0u;
  *algn_27B4FD0 = 0u;
  dword_27B4FE0 = 1065353216;
  sub_3A9A34(&xmmword_27B4FC0, v0);
  sub_3A9A34(&xmmword_27B4FC0, v3);
  sub_3A9A34(&xmmword_27B4FC0, __p);
  sub_3A9A34(&xmmword_27B4FC0, v9);
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
    qword_27B4F98 = 0;
    qword_27B4FA0 = 0;
    qword_27B4F90 = 0;
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

void sub_D1EFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4FA8)
  {
    qword_27B4FB0 = qword_27B4FA8;
    operator delete(qword_27B4FA8);
  }

  _Unwind_Resume(exception_object);
}

void sub_D1F068(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1632);
  v4 = *(a1 + 1624);
  if (v3 != v4)
  {
    if ((0x14C1BACF914C1BADLL * ((v3 - v4) >> 4)) < 0x22DC0D1284E6F2)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_D200CC(a2, 0, 0, 0);
  *(a2 + 24) = v5;
  sub_527724(a2 + 32, a1 + 32);
  *(a2 + 1608) = *(a1 + 1608);
  *(a2 + 1624) = *(a1 + 12);
}

void sub_D1F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_D1F4F0(v8);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1F468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1F47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_D1FEA4(va1);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1F49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_93A4BC(&STACK[0x7A8]);
  sub_93A58C(&STACK[0x7C0]);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1F4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1F4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void **sub_D1F4F0(void **a1)
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
        v3 = sub_D1FEA4(v3 - 1880);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D1F54C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  *__p = 0u;
  v14 = 0u;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      sub_D11644(1, &v16);
      v8 = __p[1];
      if (__p[1] < v14)
      {
        *__p[1] = v16;
        sub_4C6AE8((v8 + 8), v17);
        v7 = v8 + 1104;
      }

      else
      {
        v7 = sub_D11158(__p, &v16);
      }

      __p[1] = v7;
      sub_3EEA68(v17);
      v5 += 152;
    }

    while (v5 != v6);
  }

  sub_D1F068(a1, a3);
  v9 = __p[0];
  if (__p[0])
  {
    v10 = __p[1];
    v11 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v12 = v10 - 1104;
        sub_3EEA68((v10 - 1096));
        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p[0];
    }

    __p[1] = v9;
    operator delete(v11);
  }
}

void sub_D1F670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_3EEA68(v9 + 8);
  sub_D10F8C(&a9);
  _Unwind_Resume(a1);
}

void sub_D1F6A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1632);
  v5 = *(a1 + 1624);
  if (v4 != v5)
  {
    if ((0x14C1BACF914C1BADLL * ((v4 - v5) >> 4)) < 0x22DC0D1284E6F2)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_D200CC(a2, 0, 0, 0);
  *(a2 + 24) = v6;
  sub_527724(a2 + 32, a1 + 32);
  *(a2 + 1608) = *(a1 + 1608);
  *(a2 + 1624) = *(a1 + 12);
}

void sub_D1FAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_D1F4F0(v6);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_D1FEA4(va1);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v8 = *(v6 - 120);
  if (v8)
  {
    *(v6 - 112) = v8;
    operator delete(v8);
  }

  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FBA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v4 = *(a1 + 1632) - *(a1 + 1624);
  if (v4)
  {
    if ((0x14C1BACF914C1BADLL * (v4 >> 4)) < 0x22DC0D1284E6F2)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 1624);
  v8 = *(a1 + 1632);
  if (v7 != v8)
  {
    do
    {
      sub_93C6EC(v18, v7);
      sub_93AB38(v17, v18);
      if (v19 != -1)
      {
        (off_2673818[v19])(&v20, v18);
      }

      if (v15 < v16)
      {
        v9 = (sub_D20578(v15, v17) + 1880);
      }

      else
      {
        v9 = sub_D20E04(&__p, v17);
      }

      v15 = v9;
      sub_D1FEA4(v17);
      v7 += 592;
    }

    while (v7 != v8);
    v6 = __p;
    v5 = v15;
  }

  v10 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_D200CC(a2, v6, v5, 0x76BD8C8714B2A7C3 * ((v5 - v6) >> 3));
  *(a2 + 24) = v10;
  sub_527724(a2 + 32, a1 + 32);
  *(a2 + 1608) = *(a1 + 1608);
  *(a2 + 1624) = *(a1 + 12);
  v11 = __p;
  if (__p)
  {
    v12 = v15;
    v13 = __p;
    if (v15 != __p)
    {
      do
      {
        v12 = sub_D1FEA4((v12 - 1880));
      }

      while (v12 != v11);
      v13 = __p;
    }

    v15 = v11;
    operator delete(v13);
  }
}

void sub_D1FE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D1F4F0(v2);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FE54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_D1FEA4(va1);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

void sub_D1FE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_93A58C(&STACK[0x778]);
  sub_D1F4F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1FEA4(uint64_t a1)
{
  sub_3EEA68(a1 + 784);
  v2 = *(a1 + 744);
  if (v2)
  {
    *(a1 + 752) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 720);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_26737D0[v5])(&v30, v3 + 5);
      }

      *(v3 + 12) = -1;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *(a1 + 704);
  *(a1 + 704) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 672);
  if (v7)
  {
    *(a1 + 680) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 648);
  if (v8)
  {
    v9 = *(a1 + 656);
    v10 = *(a1 + 648);
    if (v9 != v8)
    {
      v11 = *(a1 + 656);
      do
      {
        v13 = *(v11 - 48);
        v11 -= 48;
        v12 = v13;
        if (v13)
        {
          *(v9 - 40) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *(a1 + 648);
    }

    *(a1 + 656) = v8;
    operator delete(v10);
  }

  v14 = *(a1 + 624);
  if (v14)
  {
    v15 = *(a1 + 632);
    v16 = *(a1 + 624);
    if (v15 != v14)
    {
      do
      {
        v15 = sub_93C358(v15 - 15);
      }

      while (v15 != v14);
      v16 = *(a1 + 624);
    }

    *(a1 + 632) = v14;
    operator delete(v16);
  }

  v17 = *(a1 + 600);
  if (v17)
  {
    v18 = *(a1 + 608);
    v19 = *(a1 + 600);
    if (v18 != v17)
    {
      v20 = *(a1 + 608);
      do
      {
        v23 = *(v20 - 4);
        v20 -= 4;
        v22 = v23;
        if (v23)
        {
          v24 = *(v18 - 3);
          v21 = v22;
          if (v24 != v22)
          {
            do
            {
              v25 = *(v24 - 3);
              if (v25)
              {
                *(v24 - 2) = v25;
                operator delete(v25);
              }

              v26 = v24 - 56;
              v27 = *(v24 - 7);
              if (v27)
              {
                *(v24 - 6) = v27;
                operator delete(v27);
              }

              v24 -= 56;
            }

            while (v26 != v22);
            v21 = *v20;
          }

          *(v18 - 3) = v22;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = *(a1 + 600);
    }

    *(a1 + 608) = v17;
    operator delete(v19);
  }

  v28 = *(a1 + 584);
  if (v28 != -1)
  {
    (off_2673818[v28])(&v31, a1);
  }

  *(a1 + 584) = -1;
  return a1;
}

void sub_D200CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x22DC0D1284E6F2)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D201B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 1880;
    v15 = -v12;
    do
    {
      v14 = sub_D1FEA4(v14) - 1880;
      v15 += 1880;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_D20500(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D201E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 584) = -1;
  v4 = *(a2 + 584);
  if (v4 != -1)
  {
    v12 = a1;
    (off_2673840[v4])(&v12, a2);
    *(a1 + 584) = v4;
  }

  *(a1 + 592) = *(a2 + 592);
  sub_93B37C((a1 + 600), (a2 + 600));
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  sub_93B9CC(a1 + 624, *(a2 + 624), *(a2 + 632), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 632) - *(a2 + 624)) >> 3));
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  v5 = *(a2 + 648);
  v6 = *(a2 + 656);
  v12 = a1 + 648;
  v13 = 0;
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  v7 = *(a2 + 672);
  v8 = *(a2 + 680);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 696) = *(a2 + 696);
  sub_5ADDC(a1 + 704, a2 + 704);
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  v9 = *(a2 + 744);
  v10 = *(a2 + 752);
  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 768) = *(a2 + 768);
  *(a1 + 776) = *(a2 + 776);
  sub_790648(a1 + 784, a2 + 784);
  return a1;
}

void sub_D2043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 656) = v10;
  sub_93C664(&a9);
  sub_93A460((v9 + 624));
  sub_93A4BC((v9 + 600));
  sub_93A58C(v9);
  _Unwind_Resume(a1);
}

void ***sub_D20500(void ***result)
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
          v4 = sub_D1FEA4(v4 - 1880);
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

uint64_t sub_D20578(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 584) = -1;
  v4 = *(a2 + 584);
  if (v4 != -1)
  {
    v11 = a1;
    (off_2673868[v4])(&v11, a2);
    *(a1 + 584) = v4;
  }

  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  *(a2 + 600) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 640) = 0;
  *(a2 + 624) = 0u;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
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
  *(a1 + 696) = *(a2 + 696);
  v5 = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a1 + 704) = v5;
  *(a1 + 712) = *(a2 + 712);
  *(a2 + 712) = 0;
  v6 = *(a2 + 720);
  *(a1 + 720) = v6;
  v7 = *(a2 + 728);
  *(a1 + 728) = v7;
  *(a1 + 736) = *(a2 + 736);
  if (v7)
  {
    v8 = *(v6 + 8);
    v9 = *(a1 + 712);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v5 + 8 * v8) = a1 + 720;
    *(a2 + 720) = 0;
    *(a2 + 728) = 0;
  }

  *(a1 + 760) = 0;
  *(a1 + 744) = 0uLL;
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 760) = 0;
  *(a2 + 744) = 0uLL;
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 776) = *(a2 + 776);
  sub_4C6AE8(a1 + 784, a2 + 784);
  return a1;
}

__n128 sub_D20740(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 48) = v4;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  result = *(a2 + 96);
  *(v2 + 96) = result;
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return result;
}

__n128 sub_D207CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 63) = *(a2 + 63);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = v3;
  *v2 = *a2;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v6 = *(a2 + 96);
  *(v2 + 112) = *(a2 + 112);
  *(v2 + 96) = v6;
  v7 = *(a2 + 120);
  *(v2 + 136) = *(a2 + 136);
  *(v2 + 120) = v7;
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v8 = *(a2 + 176);
  *(v2 + 184) = *(a2 + 184);
  *(v2 + 176) = v8;
  v9 = *(a2 + 192);
  *(v2 + 208) = *(a2 + 208);
  *(v2 + 192) = v9;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  v10 = *(a2 + 216);
  *(v2 + 232) = *(a2 + 232);
  *(v2 + 216) = v10;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 216) = 0;
  v11 = *(a2 + 240);
  *(v2 + 256) = *(a2 + 256);
  *(v2 + 240) = v11;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  v12 = *(a2 + 264);
  *(v2 + 280) = *(a2 + 280);
  *(v2 + 264) = v12;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v13 = *(a2 + 304);
  *(v2 + 288) = *(a2 + 288);
  *(v2 + 304) = v13;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 312) = *(a2 + 312);
  *(v2 + 320) = *(a2 + 320);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 336) = *(a2 + 336);
  *(v2 + 352) = *(a2 + 352);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(v2 + 360) = 0;
  *(v2 + 368) = 0;
  *(v2 + 376) = 0;
  *(v2 + 360) = *(a2 + 360);
  *(v2 + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  *(v2 + 384) = *(a2 + 384);
  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 400) = 0;
  result = *(a2 + 400);
  *(v2 + 400) = result;
  *(v2 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(v2 + 424) = *(a2 + 424);
  *(v2 + 432) = *(a2 + 432);
  return result;
}

__n128 sub_D20968(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 sub_D20978(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

double sub_D20988(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  v7 = *(a2 + 272);
  *(a1 + 272) = v7;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    *(a1 + 288) = *(a2 + 288);
    v7 = *(a2 + 304);
    v8 = *(a2 + 320);
    v9 = *(a2 + 336);
    *(a1 + 351) = *(a2 + 351);
    *(a1 + 320) = v8;
    *(a1 + 336) = v9;
    *(a1 + 304) = v7;
    *(a1 + 360) = 0;
    *&v7 = 0;
    *(a1 + 368) = 0u;
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 368) = *(a2 + 368);
    *(a2 + 376) = 0;
    *(a2 + 360) = 0u;
    v10 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 384) = v10;
    v11 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v11;
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
    *(a2 + 504) = 0;
    *(a2 + 488) = 0u;
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 536) = 0u;
    *(a1 + 528) = 0;
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
    *(a1 + 576) = 1;
  }

  return *&v7;
}

uint64_t sub_D20BD0(void *a1, unint64_t a2)
{
  if (0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 4));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 1104 * a2;
}

void sub_D20D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_D20E04(uint64_t *a1, uint64_t a2)
{
  v2 = 0x76BD8C8714B2A7C3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x22DC0D1284E6F1)
  {
    sub_1794();
  }

  if (0xED7B190E29654F86 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xED7B190E29654F86 * ((a1[2] - *a1) >> 3);
  }

  if ((0x76BD8C8714B2A7C3 * ((a1[2] - *a1) >> 3)) >= 0x116E0689427378)
  {
    v5 = 0x22DC0D1284E6F1;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x22DC0D1284E6F1)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_D20578(v6, a2);
  v7 = 1880 * v2 + 1880;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_D20578(v12, v11);
      v11 += 1880;
      v12 = v13 + 1880;
    }

    while (v11 != v9);
    do
    {
      sub_D1FEA4(v8);
      v8 += 1880;
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

void sub_D20F68()
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
  xmmword_27B5018 = 0u;
  unk_27B5028 = 0u;
  dword_27B5038 = 1065353216;
  sub_3A9A34(&xmmword_27B5018, v0);
  sub_3A9A34(&xmmword_27B5018, v3);
  sub_3A9A34(&xmmword_27B5018, __p);
  sub_3A9A34(&xmmword_27B5018, v9);
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
    qword_27B4FF0 = 0;
    qword_27B4FF8 = 0;
    qword_27B4FE8 = 0;
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

void sub_D211B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B5000)
  {
    qword_27B5008 = qword_27B5000;
    operator delete(qword_27B5000);
  }

  _Unwind_Resume(exception_object);
}

void sub_D213BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D21548(void *a1, int a2)
{
  sub_D28608(v3 + 8);
  sub_1A104(v8);
  if (v9 < 0)
  {
    operator delete(v8[3]);
  }

  v6 = __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  v7 = v6[2];
  *v2 = 0;
  v10.n128_u64[0] = v7;
  v10.n128_u64[1] = &off_2669FE0;
  sub_434934((v2 + 8), &v10);
  __cxa_end_catch();
}

void sub_D21B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x680]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x680]);
  _Unwind_Resume(a1);
}

uint64_t sub_D21C04(uint64_t a1, uint64_t a2)
{
  sub_D16C58(a1, a2);
  sub_D28FDC(a1 + 688, (a2 + 688));
  sub_D28FDC(a1 + 728, (a2 + 728));
  sub_D28FDC(a1 + 768, (a2 + 768));
  sub_D28FDC(a1 + 808, (a2 + 808));
  sub_D28FDC(a1 + 848, (a2 + 848));
  sub_6BE5B4(a1 + 888, (a2 + 888));
  v4 = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 928) = v4;
  v5 = *(a1 + 944);
  if (v5)
  {
    *(a1 + 952) = v5;
    operator delete(v5);
    *(a1 + 944) = 0;
    *(a1 + 952) = 0;
    *(a1 + 960) = 0;
  }

  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  *(a1 + 968) = *(a2 + 968);
  v6 = *(a1 + 976);
  if (v6)
  {
    *(a1 + 984) = v6;
    operator delete(v6);
    *(a1 + 976) = 0;
    *(a1 + 984) = 0;
    *(a1 + 992) = 0;
  }

  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 984) = 0;
  *(a2 + 992) = 0;
  *(a2 + 976) = 0;
  *(a1 + 1000) = *(a2 + 1000);
  v7 = *(a1 + 1008);
  if (v7)
  {
    *(a1 + 1016) = v7;
    operator delete(v7);
    *(a1 + 1008) = 0;
    *(a1 + 1016) = 0;
    *(a1 + 1024) = 0;
  }

  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a2 + 1008) = 0;
  *(a2 + 1016) = 0;
  *(a2 + 1024) = 0;
  v8 = (a1 + 1032);
  if (*(a1 + 1055) < 0)
  {
    operator delete(*v8);
  }

  v9 = *(a2 + 1032);
  *(a1 + 1048) = *(a2 + 1048);
  *v8 = v9;
  *(a2 + 1055) = 0;
  *(a2 + 1032) = 0;
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1064) = *(a2 + 1064);
  v10 = *(a1 + 1072);
  if (v10)
  {
    *(a1 + 1080) = v10;
    operator delete(v10);
    *(a1 + 1072) = 0;
    *(a1 + 1080) = 0;
    *(a1 + 1088) = 0;
  }

  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1080) = 0;
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0;
  *(a1 + 1096) = *(a2 + 1096);
  v11 = *(a1 + 1104);
  if (v11)
  {
    *(a1 + 1112) = v11;
    operator delete(v11);
    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    *(a1 + 1120) = 0;
  }

  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1104) = 0;
  *(a2 + 1112) = 0;
  *(a2 + 1120) = 0;
  v12 = *(a1 + 1128);
  if (v12)
  {
    operator delete(v12);
    *(a1 + 1128) = 0;
    *(a1 + 1136) = 0;
    *(a1 + 1144) = 0;
  }

  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1128) = 0;
  *(a2 + 1136) = 0;
  *(a2 + 1144) = 0;
  v13 = *(a1 + 1152);
  if (v13)
  {
    operator delete(v13);
    *(a1 + 1152) = 0;
    *(a1 + 1160) = 0;
    *(a1 + 1168) = 0;
  }

  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a2 + 1160) = 0;
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0;
  v14 = *(a2 + 1176);
  *(a1 + 1180) = *(a2 + 1180);
  *(a1 + 1176) = v14;
  LOBYTE(v14) = *(a2 + 1186);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1186) = v14;
  v15 = (a1 + 1192);
  if (*(a1 + 1215) < 0)
  {
    operator delete(*v15);
  }

  v16 = *(a2 + 1192);
  *(a1 + 1208) = *(a2 + 1208);
  *v15 = v16;
  *(a2 + 1215) = 0;
  *(a2 + 1192) = 0;
  v17 = *(a2 + 1232);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1232) = v17;
  v18 = *(a2 + 1245);
  *(a1 + 1240) = *(a2 + 1240);
  *(a1 + 1245) = v18;
  v19 = *(a1 + 1256);
  if (v19)
  {
    *(a1 + 1264) = v19;
    operator delete(v19);
    *(a1 + 1256) = 0;
    *(a1 + 1264) = 0;
    *(a1 + 1272) = 0;
  }

  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = *(a2 + 1264);
  *(a2 + 1272) = 0;
  *(a2 + 1256) = 0u;
  v20 = *(a2 + 1280);
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1280) = v20;
  sub_6BA20(a1 + 1296, (a2 + 1296));
  *(a1 + 1336) = *(a2 + 1336);
  sub_6BA20(a1 + 1344, (a2 + 1344));
  *(a1 + 1384) = *(a2 + 1384);
  v21 = *(a2 + 1400);
  v22 = *(a2 + 1416);
  v23 = *(a2 + 1448);
  *(a1 + 1432) = *(a2 + 1432);
  *(a1 + 1448) = v23;
  *(a1 + 1400) = v21;
  *(a1 + 1416) = v22;
  v24 = *(a1 + 1464);
  if (v24)
  {
    *(a1 + 1472) = v24;
    operator delete(v24);
    *(a1 + 1464) = 0;
    *(a1 + 1472) = 0;
    *(a1 + 1480) = 0;
  }

  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1472) = *(a2 + 1472);
  *(a2 + 1472) = 0;
  *(a2 + 1480) = 0;
  *(a2 + 1464) = 0;
  v25 = *(a2 + 1488);
  *(a1 + 1490) = *(a2 + 1490);
  *(a1 + 1488) = v25;
  v26 = (a1 + 1496);
  if (*(a1 + 1519) < 0)
  {
    operator delete(*v26);
  }

  v27 = *(a2 + 1496);
  *(a1 + 1512) = *(a2 + 1512);
  *v26 = v27;
  *(a2 + 1519) = 0;
  *(a2 + 1496) = 0;
  v28 = *(a2 + 1527);
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1527) = v28;
  v29 = *(a1 + 1536);
  if (v29)
  {
    *(a1 + 1544) = v29;
    operator delete(v29);
    *(a1 + 1536) = 0;
    *(a1 + 1544) = 0;
    *(a1 + 1552) = 0;
  }

  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1552) = *(a2 + 1552);
  *(a2 + 1552) = 0;
  *(a2 + 1536) = 0u;
  *(a1 + 1560) = *(a2 + 1560);
  return a1;
}

BOOL sub_D2204C(uint64_t a1)
{
  v2 = **(a1 + 1672);
  *(a1 + 28) = sub_E6D018(v2, 10);
  *(a1 + 29) = sub_E6D018(v2, 27);
  *(a1 + 30) = sub_E6D018(v2, 24);
  *(a1 + 31) = sub_E6D018(v2, 20);
  *(a1 + 32) = sub_E6D018(v2, 79);
  *(a1 + 33) = sub_E6D018(v2, 91);
  *(a1 + 34) = sub_E6D018(v2, 67);
  *(a1 + 35) = sub_E6D018(v2, 68);
  *(a1 + 36) = sub_E6D018(v2, 11);
  *(a1 + 37) = sub_E6D018(v2, 69);
  *(a1 + 38) = sub_E6D018(v2, 62);
  *(a1 + 39) = sub_E6D018(v2, 4);
  *(a1 + 40) = sub_E6D018(v2, 1);
  *(a1 + 41) = sub_E6D018(v2, 2);
  *(a1 + 42) = sub_E6D018(v2, 105);
  result = sub_E6D018(v2, 106);
  *(a1 + 43) = result;
  return result;
}

void sub_D22174(uint64_t a1)
{
  v2 = sub_3B045C(*(a1 + 1680));
  v3 = sub_3AFC64(*(a1 + 1680));
  v4 = *(**(a1 + 1672) + 192);
  if (!v4)
  {
    v4 = &off_278AB30;
  }

  v5 = v4[44];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &off_2770288;
  }

  v7 = nullsub_1(v6[8]);
  v8 = v7;
  if (sub_194F918((v6 + 2), dword_278D298))
  {
    v9 = sub_194FEFC((v6 + 2), dword_278D298, qword_278D2A0);
    v8 = nullsub_1(v9);
  }

  v90[0] = -1;
  LODWORD(v90[1]) = 0x7FFFFFFF;
  sub_D23AEC(a1, v7, v8, v90);
  v10 = *(a1 + 1648);
  if (*(v10 - 8))
  {
    sub_5AF20();
  }

  v11 = nullsub_1(v6[9]);
  v90[0] = -1;
  LODWORD(v90[1]) = 0x7FFFFFFF;
  v12 = sub_2C7D8C(v2, v11, v90);
  if (v12)
  {
    v13 = HIDWORD(v12) == 0xFFFFFFFF;
  }

  else
  {
    v13 = 1;
  }

  v85 = a1;
  if (v13)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(v90);
      sub_4A5C(v90, "The reference trip id (unencrypted: ", 36);
      v65 = std::ostream::operator<<();
      sub_4A5C(v65, ") in the schedule lookup request parameters could not be resolved", 65);
      sub_1959680(v90, &__dst);
      sub_7E854(&__dst, 1u);
      if (v89 < 0)
      {
        operator delete(__dst);
      }

      sub_1959728(v90);
    }

    v66 = *(a1 + 1696);
    sub_3608D0(v90, "PlaceRequestParserModule.Error.ReferenceTripIdLookup");
    sub_7BDA0(v66, v90, *(a1 + 1688));
    goto LABEL_114;
  }

  v14 = nullsub_1(v6[7]);
  v90[0] = -1;
  LODWORD(v90[1]) = 0x7FFFFFFF;
  v15 = sub_2C7C90(v2, v14, v90);
  v16 = v15 > 0xFFFFFFFEFFFFFFFFLL || v15 == 0;
  v86 = v3;
  if (!v16)
  {
    v87 = v15;
    sub_9B4704(v3, &v87);
    v21 = v87;
    v22 = sub_3AFC64(*(a1 + 1680));
    v23 = sub_92FC60(v22, v21, 0, "line");
    v24 = (v23 - *v23);
    if (*v24 >= 0x23u && (v25 = v24[17]) != 0 && *(v23 + v25) && (*(a1 + 20) & 1) == 0)
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v90);
        sub_4A5C(v90, "The line (unencrypted id: ", 26);
        v75 = std::ostream::operator<<();
        sub_4A5C(v75, ") in the schedule lookup request parameters is preflight which is not supported by the client", 93);
        sub_1959680(v90, &__dst);
        sub_7E854(&__dst, 1u);
        if (v89 < 0)
        {
          operator delete(__dst);
        }

        sub_1959728(v90);
      }

      v76 = *(a1 + 1696);
      sub_3608D0(v90, "PlaceRequestParserModule.Error.Preflight");
      sub_7BDA0(v76, v90, *(a1 + 1688));
    }

    else
    {
      v26 = v87;
      v27 = sub_3AFC64(*(a1 + 1680));
      if (sub_94489C(v27, v26) <= *(a1 + 21))
      {
        v28 = sub_3A25A8(v3, v12, 0, "trip");
        if (v87 != *(v28 + *(v28 - *v28 + 6)) || HIDWORD(v87) != *(v28 + *(v28 - *v28 + 6) + 4))
        {
          if (sub_7E7E4(1u))
          {
            sub_19594F8(v90);
            sub_4A5C(v90, "The line id (unencrypted: ", 26);
            v72 = std::ostream::operator<<();
            sub_4A5C(v72, ") does not match the line of the reference trip id (unencrypted: ", 65);
            v73 = std::ostream::operator<<();
            sub_4A5C(v73, ") in the schedule lookup request parameters", 43);
            sub_1959680(v90, &__dst);
            sub_7E854(&__dst, 1u);
            if (v89 < 0)
            {
              operator delete(__dst);
            }

            sub_1959728(v90);
          }

          v74 = *(a1 + 1696);
          sub_3608D0(v90, "PlaceRequestParserModule.Error.LineIdMismatch");
          sub_7BDA0(v74, v90, *(a1 + 1688));
          goto LABEL_114;
        }

        sub_D24160(a1, v87, v90);
        v30 = (v10 - 496);
        v31 = *(v10 - 496);
        if (v31)
        {
          *(v10 - 488) = v31;
          operator delete(v31);
          *v30 = 0;
          *(v10 - 488) = 0;
          *(v10 - 480) = 0;
        }

        *v30 = *v90;
        *(v10 - 480) = v91;
        *(v10 - 592) = v12;
        v32 = sub_3A25A8(v3, v12, 0, "trip");
        v33 = (v32 - *v32);
        if (*v33 < 9u || (v34 = v33[4]) == 0 || (v35 = *(v32 + v34)) == 0)
        {
LABEL_80:
          if (sub_7E7E4(1u))
          {
            sub_19594F8(v90);
            sub_4A5C(v90, "The reference trip (unencrypted id: ", 36);
            v60 = std::ostream::operator<<();
            sub_4A5C(v60, ") does not contain any of the stops (with pickup enabled) referenced by the transit id (unencrypted transit id: ", 112);
            v61 = std::ostream::operator<<();
            sub_4A5C(v61, "; unencrypted alewife transit id: ", 34);
            v62 = std::ostream::operator<<();
            sub_4A5C(v62, ")", 1);
            sub_1959680(v90, &__dst);
            sub_7E854(&__dst, 1u);
            if (v89 < 0)
            {
              operator delete(__dst);
            }

            sub_1959728(v90);
          }

          v63 = *(v85 + 1696);
          sub_3608D0(v90, "PlaceRequestParserModule.Error.TransitIdNotOnReferenceTripId");
          sub_7BDA0(v63, v90, *(v85 + 1688));
          if (SHIBYTE(v91.__locale_) < 0)
          {
            operator delete(v90[0]);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_26738E0;
          exception[2] = 43;
        }

        v36 = 0;
        v37 = (v12 >> 30) & 0x3FFFFFFFCLL;
        v38 = v10;
        v39 = (v10 - 568);
        v40 = (v38 - 560);
        while (1)
        {
          v41 = sub_3A231C(v3, v12, 0);
          v42 = &v41[-*v41];
          if (*v42 < 5u)
          {
            v43 = 0;
          }

          else
          {
            v43 = *(v42 + 2);
            if (*(v42 + 2))
            {
              v43 += &v41[*&v41[v43]];
            }
          }

          v44 = (v43 + v37 + 4 + *(v43 + v37 + 4));
          v45 = (v44 - *v44);
          if (*v45 >= 0xDu && (v46 = v45[6]) != 0)
          {
            v47 = *(v44 + v46);
            v48 = *v39;
            v49 = *v40;
            if (*v39 != *v40)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v47 = -1;
            v48 = *v39;
            v49 = *v40;
            if (*v39 != *v40)
            {
LABEL_62:
              v50 = &v41[24 * (v47 + v36) + *(v42 + 3) + *&v41[*(v42 + 3)]];
              v51 = *(v50 + 4);
              v52 = *(v50 + 8);
              while (*v48 != v51 || v48[1] != v52)
              {
                v48 += 2;
                if (v48 == v49)
                {
                  goto LABEL_52;
                }
              }
            }
          }

          if (v48 != v49)
          {
            v53 = sub_3A231C(v3, v12, 0);
            v54 = &v53[-*v53];
            if (*v54 < 5u)
            {
              v55 = 0;
            }

            else
            {
              v55 = *(v54 + 2);
              if (*(v54 + 2))
              {
                v55 += &v53[*&v53[v55]];
              }
            }

            v56 = (v55 + v37 + 4 + *(v55 + v37 + 4));
            v57 = (v56 - *v56);
            if (*v57 >= 0xDu && (v58 = v57[6]) != 0)
            {
              v59 = *(v56 + v58);
            }

            else
            {
              v59 = -1;
            }

            if (v53[24 * (v59 + v36) + 20 + *(v54 + 3) + *&v53[*(v54 + 3)]] != 1)
            {
              operator new();
            }
          }

LABEL_52:
          if (++v36 == v35)
          {
            goto LABEL_80;
          }
        }
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(v90);
        sub_4A5C(v90, "The line (unencrypted id: ", 26);
        v67 = std::ostream::operator<<();
        v68 = sub_4A5C(v67, ") has a market support of ", 26);
        v69 = sub_94489C(v86, v87);
        if (v69 <= 3)
        {
          v70 = off_2673920[v69];
        }

        else
        {
          v70 = "";
        }

        v77 = strlen(v70);
        v78 = sub_4A5C(v68, v70, v77);
        v79 = sub_4A5C(v78, " but the client has only ", 25);
        v80 = *(a1 + 21);
        if (v80 <= 3)
        {
          v81 = off_2673920[v80];
        }

        else
        {
          v81 = "";
        }

        v82 = strlen(v81);
        sub_4A5C(v79, v81, v82);
        sub_1959680(v90, &__dst);
        sub_7E854(&__dst, 1u);
        if (v89 < 0)
        {
          operator delete(__dst);
        }

        sub_1959728(v90);
      }

      v83 = *(a1 + 1696);
      sub_3608D0(v90, "PlaceRequestParserModule.Error.MarketSupport");
      sub_7BDA0(v83, v90, *(a1 + 1688));
    }

LABEL_114:
    if (SHIBYTE(v91.__locale_) < 0)
    {
      operator delete(v90[0]);
    }

    v84 = __cxa_allocate_exception(0x10uLL);
    *v84 = &off_26738E0;
    v84[2] = 43;
  }

  if (!sub_7E7E4(1u))
  {
LABEL_35:
    operator new();
  }

  sub_19594F8(v90);
  sub_4A5C(v90, "The line id (unencrypted: ", 26);
  v17 = std::ostream::operator<<();
  sub_4A5C(v17, ") in the schedule lookup request parameters could not be resolved; using line of reference trip as fallback", 107);
  if ((v99 & 0x10) != 0)
  {
    v19 = v98;
    if (v98 < v95)
    {
      v98 = v95;
      v19 = v95;
    }

    v20 = v94;
    v18 = v19 - v94;
    if (v19 - v94 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if ((v99 & 8) == 0)
    {
      v18 = 0;
      v89 = 0;
LABEL_30:
      *(&__dst + v18) = 0;
      sub_7E854(&__dst, 1u);
      if (v89 < 0)
      {
        operator delete(__dst);
      }

      if (v97 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v91);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_35;
    }

    v20 = v92;
    v18 = v93 - v92;
    if ((v93 - v92) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_79:
      sub_3244();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v89 = v18;
  if (v18)
  {
    memmove(&__dst, v20, v18);
  }

  goto LABEL_30;
}

void sub_D23208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a28);
  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_D233CC(uint64_t a1)
{
  v1 = *(**(a1 + 1672) + 192);
  if (!v1)
  {
    v1 = &off_278AB30;
  }

  v2 = v1[29];
  if (!v2)
  {
    v2 = &off_2789400;
  }

  v3 = v2[8];
  if (v3)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 14);
  if (v5)
  {
    v7 = 8 * v5;
    while (1)
    {
      v10 = *v4;
      v11 = *(*v4 + 48);
      if (!v11)
      {
        v11 = &off_278B830;
      }

      v12 = nullsub_1(v11[4]);
      if (*(a1 + 2) == 1)
      {
        v16 = sub_E89BE8(v10);
        v17 = v13;
        if (!sub_194F918(v10 + 16, dword_278D188))
        {
          goto LABEL_17;
        }

LABEL_10:
        v8 = sub_194FEFC(v10 + 16, dword_278D188, qword_278D190);
        v9 = nullsub_1(v8);
        sub_D23AEC(a1, v12, v9, &v16);
        ++v4;
        v7 -= 8;
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v16 = -1;
        v17 = 0x7FFFFFFF;
        if (sub_194F918(v10 + 16, dword_278D188))
        {
          goto LABEL_10;
        }

LABEL_17:
        if (sub_194F918(v10 + 16, dword_278D198))
        {
          if (*a1 == 1)
          {
            v14 = sub_194FEFC(v10 + 16, dword_278D198, qword_278D1A0);
            v15 = nullsub_1(v14);
            sub_D25170(a1, v12, v15, &v16);
          }
        }

        sub_D23AEC(a1, v12, v12, &v16);
        ++v4;
        v7 -= 8;
        if (!v7)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_D23588(uint64_t result)
{
  v1 = result;
  v2 = *(result + 1672);
  v3 = *(v2 + 8);
  v4 = *(*v2 + 192);
  if (!v4)
  {
    v4 = &off_278AB30;
  }

  v5 = v4[55];
  if (!v5)
  {
    v5 = &off_278A980;
  }

  v6 = *(v2 + 16);
  if (0x8E38E38E38E38E39 * ((v6 - v3) >> 5) != *(v5 + 8))
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(v17);
      sub_4A5C(v17, "Invalid number of origin snapped locations provided: ", 53);
      v11 = std::ostream::operator<<();
      sub_4A5C(v11, " (snapped locations), ", 22);
      v12 = std::ostream::operator<<();
      sub_4A5C(v12, " (transit nearby schedule lookup origins)", 41);
      sub_1959680(v17, __p);
      sub_7E854(__p, 1u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(v17);
    }

    v13 = *(v1 + 1696);
    sub_3608D0(v17, "PlaceRequestParserModule.Error.OriginSnappedLocationsCount");
    sub_7BDA0(v13, v17, *(v1 + 1688));
LABEL_23:
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_26738E0;
    exception[2] = 1;
  }

  v7 = *(v2 + 320);
  if (v5[2])
  {
    if ((v7 & 1) == 0)
    {
LABEL_10:
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v17);
        sub_4A5C(v17, "Availability of user location in request and input do not match (input: ", 72);
        v8 = std::ostream::operator<<();
        sub_4A5C(v8, ", request: ", 11);
        v9 = std::ostream::operator<<();
        sub_4A5C(v9, ")", 1);
        sub_1959680(v17, __p);
        sub_7E854(__p, 1u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v17);
      }

      v10 = *(v1 + 1696);
      sub_3608D0(v17, "PlaceRequestParserModule.Error.UserSnappedLocation");
      sub_7BDA0(v10, v17, *(v1 + 1688));
      goto LABEL_23;
    }
  }

  else if (v7)
  {
    goto LABEL_10;
  }

  while (v3 != v6)
  {
    result = sub_D25670(v1, v3, *(v1 + 1672) + 32);
    v3 += 288;
  }

  return result;
}

void sub_D2382C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_D238C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 1672);
  v3 = *(*v2 + 192);
  if (!v3)
  {
    v3 = &off_278AB30;
  }

  v4 = v3[62];
  if (!v4)
  {
    v4 = &off_278A9D8;
  }

  v5 = v2[41];
  v6 = v2[42];
  if (0x6FB586FB586FB587 * ((v6 - v5) >> 3) != *(v4 + 6))
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(v13);
      sub_4A5C(v13, "Invalid number of origin point details provided: ", 49);
      v7 = std::ostream::operator<<();
      sub_4A5C(v7, " (origin points), ", 18);
      v8 = std::ostream::operator<<();
      sub_4A5C(v8, " (transit nearby payment_method lookup origins)", 47);
      sub_1959680(v13, __p);
      sub_7E854(__p, 1u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(v13);
    }

    v9 = *(v1 + 1696);
    sub_3608D0(v13, "PlaceRequestParserModule.Error.OriginPointDetailsCount");
    sub_7BDA0(v9, v13, *(v1 + 1688));
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_26738E0;
    exception[2] = 1;
  }

  for (; v5 != v6; v5 += 440)
  {
    result = sub_D25B04(v1, v5);
  }

  return result;
}

void sub_D23A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_D23AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v34 = 0;
  *&v34[20] = 0;
  *&v34[4] = -1;
  *&v34[12] = -1;
  v35 = 0;
  v36 = 0uLL;
  v37 = 0xFFFFFFFFFFFFFFFFLL;
  v38 = 0;
  *v39 = 0u;
  *__p = 0u;
  v41 = 0u;
  v8 = *(a1 + 1648);
  if (v8 >= *(a1 + 1656))
  {
    v10 = sub_D293E4((a1 + 1640), v34);
    v11 = __p[1];
    *(a1 + 1648) = v10;
    if (v11)
    {
      *&v41 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v9 = *&v34[16];
    *v8 = *v34;
    *(v8 + 16) = v9;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    v35 = 0;
    v36 = 0uLL;
    LODWORD(v9) = v38;
    *(v8 + 48) = v37;
    *(v8 + 64) = v9;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 72) = 0;
    v39[1] = 0;
    __p[0] = 0;
    v39[0] = 0;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
    __p[1] = 0;
    v41 = 0uLL;
    *(v8 + 584) = 0;
    *(a1 + 1648) = v8 + 592;
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v35)
  {
    *&v36 = v35;
    operator delete(v35);
  }

  v12 = *(a1 + 1648);
  if (*(v12 - 8))
  {
    sub_5AF20();
  }

  v13 = sub_3AFB1C(*(a1 + 1680));
  *(v12 - 544) = a2;
  v14 = sub_3B045C(*(a1 + 1680));
  v15 = sub_2C7A60(v14, a3, a4);
  if (v16 <= 4)
  {
    if (v16 == 1)
    {
      sub_D266A8(a1);
    }

    if (v16 == 4)
    {
      sub_D26040(a1, v15);
    }
  }

  else
  {
    switch(v16)
    {
      case 5:
        sub_D26A04(a1);
      case 9:
        sub_D26370(a1, v15);
      case 10:
        sub_D25E98(a1);
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    v17 = *(v12 - 568);
    v18 = (v12 - 560);
    v19 = *(v12 - 560);
    if (v17 != v19)
    {
      while (1)
      {
        v20 = sub_502FF8(v13, *v17, 0, "stop");
        v21 = (v20 - *v20);
        if (*v21 >= 0x25u)
        {
          v22 = v21[18];
          if (v22)
          {
            if (*(v20 + v22))
            {
              break;
            }
          }
        }

        if (++v17 == v19)
        {
          v17 = v19;
          goto LABEL_39;
        }
      }

      if (v17 != v19)
      {
        for (i = v17 + 1; i != v19; ++i)
        {
          v24 = sub_502FF8(v13, *i, 0, "stop");
          v25 = (v24 - *v24);
          if (*v25 >= 0x25u)
          {
            v26 = v25[18];
            if (v26)
            {
              if (*(v24 + v26))
              {
                continue;
              }
            }
          }

          *v17++ = *i;
        }
      }
    }

LABEL_39:
    if (v17 != *v18)
    {
      *v18 = v17;
    }
  }

  if (!sub_7E7E4(1u))
  {
LABEL_58:
    operator new();
  }

  sub_19594F8(v34);
  sub_4A5C(v34, "The transit id (unencrypted: ", 29);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, ") in the schedule lookup request parameters could not be resolved as a stop, hall, station, or line (client preflight: ", 119);
  v28 = std::ostream::operator<<();
  sub_4A5C(v28, ")", 1);
  if ((v41 & 0x10) != 0)
  {
    v30 = __p[1];
    if (__p[1] < *(&v37 + 1))
    {
      __p[1] = *(&v37 + 1);
      v30 = *(&v37 + 1);
    }

    v31 = v37;
    v29 = &v30[-v37];
    if (&v30[-v37] >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v29 = 0;
      v33 = 0;
LABEL_53:
      *(&__dst + v29) = 0;
      sub_7E854(&__dst, 1u);
      if (v33 < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v39[0]);
      }

      std::locale::~locale(&v34[16]);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_58;
    }

    v31 = v35;
    v29 = *(&v36 + 1) - v35;
    if (*(&v36 + 1) - v35 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_60:
      sub_3244();
    }
  }

  if (v29 >= 0x17)
  {
    operator new();
  }

  v33 = v29;
  if (v29)
  {
    memmove(&__dst, v31, v29);
  }

  goto LABEL_53;
}

void sub_D240E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_D24160(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_3AFC64(*(a1 + 1680));
  v7 = sub_3AFEE8(*(a1 + 1680));
  if (*(a1 + 1) != 1 || (v8 = v7, v9 = sub_92FC60(v6, a2, 0, "line"), v10 = (v9 - *v9), *v10 < 0x4Du) || (v11 = v10[38]) == 0 || *(v9 + v11) != 2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v12 = sub_92FC60(v6, a2, 0, "line");
  v13 = sub_93E04C(v8, *(v12 + *(v12 - *v12 + 6)), 0, "system");
  v14 = (v13 - *v13);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      v16 = (v13 + v15 + *(v13 + v15));
      v17 = *v16;
      if (v17)
      {
        v18 = 8 * v17;
        v19 = v16 + 1;
        do
        {
          if (*(v8 + 3888) != 1 || sub_2D5204(*(v8 + 3872)))
          {
            operator new();
          }

          v19 += 2;
          v18 -= 8;
        }

        while (v18);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_D2455C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D245B4(uint64_t a1)
{
  v1 = *(a1 + 1648);
  if (*(v1 - 8))
  {
    sub_5AF20();
  }

  v3 = *(**(a1 + 1672) + 192);
  if (!v3)
  {
    v3 = &off_278AB30;
  }

  v4 = v3[44];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &off_2770288;
  }

  v6 = sub_1202298(v58, 0, 0);
  if ((sub_194DB28(v6, v5[6] & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
  {
    if (!sub_7E7E4(1u))
    {
      return sub_120236C(v58);
    }

    sub_19594F8(&__p);
    sub_4A5C(&__p, "Failed to parse routing parameters in schedule lookup parameter message", 71);
    if ((v57 & 0x10) != 0)
    {
      v38 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v38 = v53;
      }

      v39 = v52;
      v37 = v38 - v52;
      if (v38 - v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v37 = 0;
        v46 = 0;
LABEL_63:
        *(&__dst + v37) = 0;
        sub_7E854(&__dst, 1u);
        if (v46 < 0)
        {
          operator delete(__dst);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        std::locale::~locale(&v49);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_120236C(v58);
      }

      v39 = v50;
      v37 = v51 - v50;
      if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_70:
        sub_3244();
      }
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    v46 = v37;
    if (v37)
    {
      memmove(&__dst, v39, v37);
    }

    goto LABEL_63;
  }

  v7 = sub_3B045C(*(a1 + 1680));
  v41 = v1;
  v42 = sub_3AFB1C(*(a1 + 1680));
  if (v59)
  {
    v8 = v60;
    v9 = (v1 - 520);
    v10 = (v1 - 512);
    v43 = (v1 - 504);
    v11 = 8 * v59;
    while (1)
    {
      v13 = nullsub_1(*v8);
      __p = -1;
      LODWORD(v48) = 0x7FFFFFFF;
      v15 = sub_2C7A60(v7, v13, &__p);
      __dst = v15;
      LODWORD(v45) = v14;
      if (v14 != 10)
      {
        goto LABEL_32;
      }

      v16 = sub_3AFB1C(*(a1 + 1680));
      v17 = sub_502FF8(v16, v15, 0, "stop");
      v18 = (v17 - *v17);
      if (*v18 >= 0x25u)
      {
        v19 = v18[18];
        if (v19)
        {
          if (*(v17 + v19) && *(a1 + 20) != 1)
          {
            break;
          }
        }
      }

      if (v45 != 10)
      {
        sub_5AF20();
      }

      v20 = *v10;
      if (*v10 < *v43)
      {
        *v20 = __dst;
        v12 = (v20 + 8);
      }

      else
      {
        v21 = *v9;
        v22 = &v20[-*v9];
        v23 = v22 >> 3;
        v24 = (v22 >> 3) + 1;
        if (v24 >> 61)
        {
          sub_1794();
        }

        v25 = *v43 - v21;
        if (v25 >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (!(v26 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v23) = __dst;
        v12 = 8 * v23 + 8;
        memcpy(0, v21, v22);
        *v9 = 0;
        *v10 = v12;
        *v43 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      *v10 = v12;
LABEL_12:
      ++v8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_54;
      }
    }

    v14 = v45;
LABEL_32:
    if (v14 == 4)
    {
      v27 = __dst;
      v28 = sub_3AFB1C(*(a1 + 1680));
      v29 = sub_93D2F4(v28, v27, 0, "hall");
      v30 = (v29 - *v29);
      if (*v30 < 0x1Fu || (v31 = v30[15]) == 0 || !*(v29 + v31) || (*(a1 + 20) & 1) != 0)
      {
        if (v45 != 4)
        {
          sub_5AF20();
        }

        sub_D24CF4(v42, &__dst, &__p);
        sub_2CE7AC(v9, *v10, __p, v48, (v48 - __p) >> 3);
LABEL_47:
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        goto LABEL_12;
      }

      v14 = v45;
    }

    if (v14 != 9 || (v32 = __dst, v33 = sub_3AFB1C(*(a1 + 1680)), v34 = sub_93D480(v33, v32, 0, "station"), v35 = (v34 - *v34), *v35 >= 0x23u) && (v36 = v35[17]) != 0 && *(v34 + v36) && *(a1 + 20) != 1)
    {
      operator new();
    }

    if (v45 != 9)
    {
      sub_5AF20();
    }

    sub_D24DE8(v42, &__dst, &__p);
    sub_2CE7AC(v9, *v10, __p, v48, (v48 - __p) >> 3);
    goto LABEL_47;
  }

LABEL_54:
  sub_2CAA68((v41 - 520));
  return sub_120236C(v58);
}

void sub_D24C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_1959728(&a21);
    sub_120236C(v21 - 128);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a21);
  sub_120236C(v21 - 128);
  _Unwind_Resume(a1);
}

void sub_D24C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
    sub_120236C(v23 - 128);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD24CE4);
}

void sub_D24CF4(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_93D2F4(a1, *a2, 0, "hall");
  v6 = (v5 - *v5);
  if (*v6 >= 0xDu && (v7 = v6[6]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_D24DCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_D24DE8(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = sub_93D480(a1, *a2, 0, "station");
  v5 = (v4 - *v4);
  if (*v5 >= 0xDu)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = (v4 + v6 + *(v4 + v6));
      v8 = *v7;
      if (v8)
      {
        v25 = a3;
        v9 = 0;
        v10 = 8 * v8;
        v11 = v7 + 1;
        do
        {
          if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
          {
            v12 = v9 >> 3;
            if (((v9 >> 3) + 1) >> 61)
            {
              sub_1794();
            }

            if (v9 >> 3 != -1)
            {
              if (!(((v9 >> 3) + 1) >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v12) = *v11;
            memcpy(0, 0, v9);
            v9 = 8 * v12 + 8;
          }

          ++v11;
          v10 -= 8;
        }

        while (v10);
        if (v9)
        {
          v13 = 0;
          v24 = v9;
          do
          {
            v29 = *v13;
            sub_D24CF4(a1, &v29, &v27);
            v15 = v27;
            v14 = v28;
            if (v27 != v28)
            {
              v16 = v25[1];
              v17 = v25[2];
              v18 = *v25;
              do
              {
                while (v16 < v17)
                {
                  v19 = *v15++;
                  *v16 = v19;
                  v16 += 8;
                  if (v15 == v14)
                  {
                    goto LABEL_32;
                  }
                }

                v20 = v16 - v18;
                v21 = (v16 - v18) >> 3;
                v22 = v21 + 1;
                if ((v21 + 1) >> 61)
                {
                  v25[1] = v16;
                  v25[2] = v17;
                  *v25 = v18;
                  sub_1794();
                }

                if ((v17 - v18) >> 2 > v22)
                {
                  v22 = (v17 - v18) >> 2;
                }

                if (v17 - v18 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v23 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v22;
                }

                if (v23)
                {
                  if (!(v23 >> 61))
                  {
                    operator new();
                  }

                  v25[1] = v16;
                  v25[2] = v17;
                  *v25 = v18;
                  sub_1808();
                }

                v17 = 0;
                *(8 * v21) = *v15;
                v16 = (8 * v21 + 8);
                memcpy(0, v18, v20);
                if (v18)
                {
                  operator delete(v18);
                }

                v18 = 0;
                ++v15;
              }

              while (v15 != v14);
LABEL_32:
              v25[1] = v16;
              v25[2] = v17;
              *v25 = v18;
              v15 = v27;
              v9 = v24;
            }

            if (v15)
            {
              v28 = v15;
              operator delete(v15);
            }

            ++v13;
          }

          while (v13 != v9);
        }
      }
    }
  }
}

void sub_D25104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  v16 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_D25170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[0] = -1;
  v29[1] = 0xFFFFFFFF00000000;
  v8 = *(a1 + 1648);
  if (v8 >= *(a1 + 1656))
  {
    v9 = sub_D2A408(a1 + 1640, v29);
  }

  else
  {
    *v8 = *v29;
    *(v8 + 584) = 4;
    v9 = v8 + 592;
  }

  *(a1 + 1648) = v9;
  if (*(v9 - 8) != 4)
  {
    sub_5AF20();
  }

  *(v9 - 592) = a2;
  v10 = sub_3B2978(*(a1 + 1680));
  v11 = sub_4A084C((v10 + 2), 1u, 0);
  v12 = &v11[-*v11];
  v13 = a3;
  if (*v12 >= 5u)
  {
    v14 = *(v12 + 2);
    v13 = a3;
    if (v14)
    {
      v15 = &v11[v14 + *&v11[v14]];
      v16 = &v15[-*v15];
      v13 = a3;
      if (*v16 >= 5u)
      {
        v17 = *(v16 + 2);
        v13 = a3;
        if (v17)
        {
          v13 = a3;
          if (v15[v17])
          {
            v13 = nullsub_1(a3);
          }
        }
      }
    }
  }

  v18 = sub_4A00CC(v10, v13, a4);
  if (v18 != -1)
  {
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = HIDWORD(v18) == 0;
    }

    v21 = __ROR8__(v18, 32);
    if (v20)
    {
      v21 = 0xFFFFFFFF00000000;
    }

    if (v21 <= 0xFFFFFFFEFFFFFFFFLL && v21 != 0)
    {
      *(v9 - 584) = v21;
      operator new();
    }
  }

  if (!sub_7E7E4(1u))
  {
LABEL_40:
    operator new();
  }

  sub_19594F8(v29);
  sub_4A5C(v29, "The hiking tour muid (unencrypted: ", 35);
  v23 = std::ostream::operator<<();
  sub_4A5C(v23, ") in the hiking tour lookup parameters could not be resolved", 60);
  if ((v38 & 0x10) != 0)
  {
    v25 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v25 = v34;
    }

    v26 = v33;
    v24 = v25 - v33;
    if (v25 - v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v24 = 0;
      v28 = 0;
LABEL_35:
      *(&__p + v24) = 0;
      sub_7E854(&__p, 1u);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v36 < 0)
      {
        operator delete(v35);
      }

      std::locale::~locale(&v30);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_40;
    }

    v26 = v31;
    v24 = v32 - v31;
    if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_42:
      sub_3244();
    }
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  v28 = v24;
  if (v24)
  {
    memmove(&__p, v26, v24);
  }

  goto LABEL_35;
}

void sub_D25604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D25670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(&v28 + 8, 0x240uLL);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *&v28 = -1;
  DWORD2(v28) = 0x7FFFFFFF;
  *&v29 = -1;
  *(&v29 + 1) = -1;
  *&v30 = 0x7FFFFFFFFFFFFFFFLL;
  *v31 = -1935635296;
  *&v31[8] = 0;
  *&v31[15] = 0;
  v32 = 0uLL;
  v33 = 0;
  LODWORD(v34) = 0;
  *(&v34 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 100;
  v36 = 0uLL;
  v37 = vnegq_f64(v6);
  v40 = 0;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  *v41 = 1;
  memset(&v41[4], 0, 61);
  v7 = *(a1 + 1648);
  if (v7 >= *(a1 + 1656))
  {
    v23 = sub_D29AE8((a1 + 1640), &v28);
  }

  else
  {
    *v7 = v28;
    v8 = v29;
    v9 = v30;
    v10 = *v31;
    *(v7 + 63) = *&v31[15];
    *(v7 + 32) = v9;
    *(v7 + 48) = v10;
    *(v7 + 16) = v8;
    *(v7 + 80) = 0;
    *(v7 + 88) = 0;
    *(v7 + 72) = 0;
    *(v7 + 72) = v32;
    *(v7 + 88) = v33;
    v32 = 0uLL;
    v33 = 0;
    v11 = v34;
    *(v7 + 112) = v35;
    *(v7 + 96) = v11;
    v12 = v36;
    *(v7 + 136) = v37;
    *(v7 + 120) = v12;
    *(v7 + 152) = v38[0];
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 192) = 0;
    *(v7 + 200) = 0;
    v13 = *&v38[3];
    *(v7 + 160) = *&v38[1];
    *(v7 + 176) = v13;
    memset(v38, 0, 24);
    *(v7 + 192) = v38[5];
    *&v38[3] = 0uLL;
    *(v7 + 208) = 0;
    *(v7 + 216) = 0;
    *(v7 + 200) = v39;
    *(v7 + 216) = v40;
    v38[5] = 0;
    v39 = 0uLL;
    v40 = 0;
    *(v7 + 224) = *v41;
    *(v7 + 240) = 0;
    *(v7 + 248) = 0;
    *(v7 + 256) = 0;
    *(v7 + 264) = 0;
    *(v7 + 240) = *&v41[16];
    *&v41[16] = 0;
    *&v41[24] = 0;
    *(v7 + 272) = 0;
    *(v7 + 280) = 0;
    v14 = *&v41[40];
    *(v7 + 256) = *&v41[32];
    *(v7 + 264) = v14;
    *(v7 + 272) = *&v41[48];
    memset(&v41[32], 0, 32);
    *(v7 + 288) = 0;
    *(v7 + 576) = 0;
    if (v58 == 1)
    {
      *(v7 + 288) = *&v41[64];
      v15 = v42;
      v16 = v43;
      v17 = *v44;
      *(v7 + 351) = *&v44[15];
      *(v7 + 320) = v16;
      *(v7 + 336) = v17;
      *(v7 + 304) = v15;
      *(v7 + 360) = 0;
      *(v7 + 368) = 0u;
      *(v7 + 360) = *v45;
      *(v7 + 368) = *&v45[8];
      *v45 = 0u;
      v18 = v46;
      *(v7 + 400) = v47;
      *(v7 + 384) = v18;
      v19 = v49;
      *(v7 + 408) = v48;
      *(v7 + 424) = v19;
      *(v7 + 440) = v50[0];
      *(v7 + 480) = 0;
      *(v7 + 464) = 0u;
      v20 = v51;
      *(v7 + 448) = *&v50[1];
      *(v7 + 464) = v20;
      memset(v50, 0, sizeof(v50));
      *&v45[16] = 0;
      v51 = 0u;
      *(v7 + 504) = 0;
      *(v7 + 488) = 0u;
      v21 = v53[0];
      *(v7 + 480) = v52;
      *(v7 + 488) = v21;
      *(v7 + 496) = *&v53[1];
      memset(v53, 0, sizeof(v53));
      v52 = 0;
      v22 = v54;
      *(v7 + 544) = 0;
      *(v7 + 512) = v22;
      *(v7 + 528) = 0u;
      *(v7 + 528) = v55;
      *(v7 + 544) = v56;
      v55 = 0u;
      v56 = 0;
      *(v7 + 568) = 0;
      *(v7 + 552) = 0u;
      *(v7 + 552) = __p[0];
      *(v7 + 560) = *&__p[1];
      memset(__p, 0, sizeof(__p));
      *(v7 + 576) = 1;
    }

    *(v7 + 584) = 1;
    v23 = v7 + 592;
  }

  *(a1 + 1648) = v23;
  if (v58 == 1)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v55)
    {
      *(&v55 + 1) = v55;
      operator delete(v55);
    }

    sub_49AEC0(&v41[64]);
  }

  if (*&v41[40])
  {
    *&v41[48] = *&v41[40];
    operator delete(*&v41[40]);
  }

  if (*&v41[16])
  {
    *&v41[24] = *&v41[16];
    operator delete(*&v41[16]);
  }

  sub_49AEC0(&v28);
  v24 = *(a1 + 1648);
  if (*(v24 - 8) != 1)
  {
    sub_5AF20();
  }

  result = sub_D27A94(v24 - 592, a2);
  if (*(v24 - 16) == *(a3 + 288))
  {
    if (*(v24 - 16))
    {
      return sub_D27A94(v24 - 304, a3);
    }
  }

  else if (*(v24 - 16))
  {
    v26 = *(v24 - 40);
    if (v26)
    {
      *(v24 - 32) = v26;
      operator delete(v26);
    }

    v27 = *(v24 - 64);
    if (v27)
    {
      *(v24 - 56) = v27;
      operator delete(v27);
    }

    result = sub_49AEC0((v24 - 304));
    *(v24 - 16) = 0;
  }

  else
  {
    result = sub_93AFE8((v24 - 304), a3);
    *(v24 - 16) = 1;
  }

  return result;
}

void sub_D25AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D29CD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D25B04(uint64_t *a1, uint64_t a2)
{
  v42 = 0u;
  v32 = 0;
  *&v31[8] = 0u;
  v27 = 100;
  memset(&v24[8], 0, 32);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  *&v22 = -1;
  *(&v22 + 1) = 0x7FFFFFFFLL;
  *&v23 = -1;
  *(&v23 + 1) = -1;
  *v24 = 0x7FFFFFFFFFFFFFFFLL;
  *&v24[16] = -1935635296;
  *&v24[31] = 0;
  *v26 = 0uLL;
  v25 = 0uLL;
  *&v26[16] = 0x7FFFFFFFFFFFFFFFLL;
  v28 = 0uLL;
  v29 = vnegq_f64(v4);
  v30 = 0;
  *v31 = 0uLL;
  *&v31[16] = 1;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  memset(v37, 0, sizeof(v37));
  memset(v38, 0, sizeof(v38));
  *&v39 = -1;
  *(&v39 + 1) = -1;
  v40 = 0uLL;
  LODWORD(v42) = 0;
  v41 = 0;
  HIDWORD(v42) = 0;
  v5 = a1[206];
  if (v5 >= a1[207])
  {
    v19 = sub_D29EF4(a1 + 205, &v22);
  }

  else
  {
    *v5 = v22;
    v6 = v23;
    v7 = *v24;
    v8 = *&v24[16];
    *(v5 + 63) = *&v24[31];
    *(v5 + 32) = v7;
    *(v5 + 48) = v8;
    *(v5 + 16) = v6;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 72) = 0;
    *(v5 + 72) = v25;
    *(v5 + 88) = *v26;
    v25 = 0uLL;
    *v26 = 0;
    v9 = *&v26[8];
    *(v5 + 112) = v27;
    *(v5 + 96) = v9;
    v10 = v28;
    *(v5 + 136) = v29;
    *(v5 + 120) = v10;
    *(v5 + 152) = v30;
    *(v5 + 160) = *v31;
    v30 = 0;
    *v31 = 0uLL;
    v11 = *&v31[16];
    *(v5 + 184) = v32;
    *(v5 + 176) = v11;
    v12 = v33;
    *(v5 + 208) = *&v34[0];
    *(v5 + 192) = v12;
    *&v34[0] = 0;
    v33 = 0uLL;
    v13 = *(v34 + 8);
    *(v5 + 232) = *(&v34[1] + 1);
    *(v5 + 216) = v13;
    *(&v34[0] + 1) = 0;
    *&v34[1] = 0;
    v14 = v35;
    *(v5 + 256) = *v36;
    *(v5 + 240) = v14;
    *(&v34[1] + 1) = 0;
    v35 = 0uLL;
    *v36 = 0;
    v15 = *&v36[8];
    *(v5 + 280) = *&v36[24];
    *(v5 + 264) = v15;
    *&v36[8] = 0;
    *&v36[16] = 0;
    v16 = *&v36[48];
    *(v5 + 288) = *&v36[32];
    *(v5 + 304) = v16;
    *(v5 + 312) = 0;
    *(v5 + 320) = 0;
    *(v5 + 328) = 0;
    *(v5 + 312) = v37[0];
    *(v5 + 336) = 0;
    *(v5 + 344) = 0;
    *(v5 + 352) = 0;
    *(v5 + 360) = 0;
    v17 = *&v37[3];
    *(v5 + 320) = *&v37[1];
    *(v5 + 336) = v17;
    *&v36[24] = 0;
    memset(v37, 0, 32);
    *(v5 + 368) = 0;
    *(v5 + 376) = 0;
    v18 = v38[0];
    *(v5 + 352) = v37[5];
    *(v5 + 360) = v18;
    *(v5 + 368) = *&v38[1];
    v37[4] = 0;
    v37[5] = 0;
    memset(v38, 0, sizeof(v38));
    *(v5 + 384) = v39;
    *(v5 + 400) = 0;
    *(v5 + 408) = 0;
    *(v5 + 416) = 0;
    *(v5 + 400) = v40;
    *(v5 + 416) = v41;
    v40 = 0uLL;
    v41 = 0;
    *(v5 + 424) = v42;
    *(v5 + 432) = *(&v42 + 1);
    *(v5 + 584) = 2;
    v19 = v5 + 592;
    a1[206] = v5 + 592;
  }

  a1[206] = v19;
  sub_44FDEC(&v22);
  v20 = a1[206];
  if (*(v20 - 8) != 2)
  {
    sub_5AF20();
  }

  return sub_5FFC40(v20 - 592, a2);
}

void sub_D25E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44FDEC(va);
  _Unwind_Resume(a1);
}

void *sub_D25E44(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
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

void sub_D25E98(uint64_t a1)
{
  if (!*(*(a1 + 1648) - 8))
  {
    operator new();
  }

  sub_5AF20();
}

void sub_D26018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_D26040(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(*(a1 + 1648) - 8))
  {
    operator new();
  }

  sub_5AF20();
}

void sub_D26328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D26370(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(*(a1 + 1648) - 8))
  {
    operator new();
  }

  sub_5AF20();
}

void sub_D26660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D266A8(uint64_t a1)
{
  if (!*(*(a1 + 1648) - 8))
  {
    operator new();
  }

  sub_5AF20();
}

void sub_D269AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_D26A04(uint64_t a1)
{
  if (!*(*(a1 + 1648) - 8))
  {
    operator new();
  }

  sub_5AF20();
}

void sub_D26B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D26B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v36 = 0;
  *&v36[20] = 0;
  *&v36[4] = -1;
  *&v36[12] = -1;
  v37 = 0;
  v38 = 0uLL;
  v39 = 0xFFFFFFFFFFFFFFFFLL;
  v40 = 0;
  *v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = *(a1 + 1648);
  if (v6 >= *(a1 + 1656))
  {
    v8 = sub_D293E4((a1 + 1640), v36);
    v9 = *(&v42 + 1);
    *(a1 + 1648) = v8;
    if (v9)
    {
      *&v43 = v9;
      operator delete(v9);
    }
  }

  else
  {
    v7 = *&v36[16];
    *v6 = *v36;
    *(v6 + 16) = v7;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    v37 = 0;
    v38 = 0uLL;
    LODWORD(v7) = v40;
    *(v6 + 48) = v39;
    *(v6 + 64) = v7;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v6 + 72) = 0;
    v41[1] = 0;
    *&v42 = 0;
    v41[0] = 0;
    *(v6 + 96) = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
    *(&v42 + 1) = 0;
    v43 = 0uLL;
    *(v6 + 584) = 0;
    *(a1 + 1648) = v6 + 592;
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v37)
  {
    *&v38 = v37;
    operator delete(v37);
  }

  if (*(*(a1 + 1648) - 8))
  {
    sub_5AF20();
  }

  sub_EA5248(a2, a3, v44);
  v10 = sub_3B045C(*(a1 + 1680));
  *v36 = -1;
  *&v36[8] = 0x7FFFFFFF;
  v11 = sub_2C7DB0(v10, a2, v44, v36);
  if (v11 <= 0xFFFFFFFEFFFFFFFFLL && v11)
  {
    sub_D26370(a1, v11);
  }

  if (!sub_7E7E4(1u))
  {
LABEL_62:
    operator new();
  }

  sub_19594F8(v36);
  v12 = sub_4A5C(v36, "[Transit Station Code Parse Error] Could not resolve source id ", 64);
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = sub_4A5C(v12, v14, v15);
  v17 = sub_4A5C(v16, " and external station code 0x", 30);
  v33 = 0;
  LOBYTE(v32) = 0;
  if (*(a3 + 23) >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v46 = 0;
  v47 = 0;
  __dst = 0;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_D29624(&__dst, &v32, 2, v34);
  if (__dst)
  {
    v46 = __dst;
    operator delete(__dst);
  }

  if ((v35 & 0x80u) == 0)
  {
    v19 = v34;
  }

  else
  {
    v19 = v34[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v20 = v35;
  }

  else
  {
    v20 = v34[1];
  }

  v21 = sub_4A5C(v17, v19, v20);
  v22 = sub_4A5C(v21, " (precache ", 11);
  v23 = sub_3AFEE8(*(a1 + 1680));
  sub_D27958(v23, &__dst);
  if (v47 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v47 >= 0)
  {
    v25 = HIBYTE(v47);
  }

  else
  {
    v25 = v46;
  }

  v26 = sub_4A5C(v22, p_dst, v25);
  sub_4A5C(v26, ", client preflight: ", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, ")", 1);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__dst);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_42:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v34[0]);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_43:
    v28 = v43;
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v32);
  v28 = v43;
  if ((v43 & 0x10) == 0)
  {
LABEL_44:
    if ((v28 & 8) == 0)
    {
      v29 = 0;
      HIBYTE(v47) = 0;
LABEL_57:
      *(&__dst + v29) = 0;
      sub_7E854(&__dst, 1u);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__dst);
      }

      if (SBYTE7(v42) < 0)
      {
        operator delete(v41[0]);
      }

      std::locale::~locale(&v36[16]);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_62;
    }

    v31 = v37;
    v29 = *(&v38 + 1) - v37;
    if (*(&v38 + 1) - v37 > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      sub_3244();
    }

LABEL_52:
    if (v29 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v47) = v29;
    if (v29)
    {
      memmove(&__dst, v31, v29);
    }

    goto LABEL_57;
  }

LABEL_49:
  v30 = *(&v42 + 1);
  if (*(&v42 + 1) < *(&v39 + 1))
  {
    *(&v42 + 1) = *(&v39 + 1);
    v30 = *(&v39 + 1);
  }

  v31 = v39;
  v29 = v30 - v39;
  if ((v30 - v39) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_64;
  }

  goto LABEL_52;
}

void sub_D27804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 65) < 0)
  {
    operator delete(*(v26 - 88));
  }

  sub_1959728(&__p);
  if ((*(v26 - 89) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v26 - 112));
  _Unwind_Resume(a1);
}

int *sub_D27958@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2C939C(a1, 1u, 0);
  if (!result || (v4 = (result - *result), *v4 < 0xDu) || (v5 = v4[6]) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v6 = (result + v5 + *(result + v5));
  v7 = (v6 - *v6);
  if (*v7 >= 5u && (v8 = v7[2]) != 0)
  {
    v9 = (v6 + v8);
    v10 = *v9;
    v11 = *(v9 + v10);
    if (v11 >= 0x17)
    {
      operator new();
    }

    a2[23] = v11;
    if (v11)
    {
      result = memcpy(a2, v9 + v10 + 4, v11);
    }

    a2[v11] = 0;
  }

  else
  {
    a2[23] = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_D27A94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (a1 == a2)
  {
    v10 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v10;
    v11 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v11;
    sub_3E428((a1 + 152), a2 + 152);
    *(a1 + 224) = *(a2 + 224);
  }

  else
  {
    sub_146EC((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
    sub_3E428((a1 + 152), a2 + 152);
    sub_C5BB5C((a1 + 176), *(a2 + 176), *(a2 + 184), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 184) - *(a2 + 176)) >> 3));
    sub_C5BB5C((a1 + 200), *(a2 + 200), *(a2 + 208), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
    *(a1 + 224) = *(a2 + 224);
    sub_D29D60((a1 + 240), *(a2 + 240), *(a2 + 248), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 248) - *(a2 + 240)) >> 3));
    sub_31F64((a1 + 264), *(a2 + 264), *(a2 + 272), (*(a2 + 272) - *(a2 + 264)) >> 3);
  }

  return a1;
}

uint64_t sub_D27BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3AFC64(*(a1 + 1680));
  v5 = sub_3B0530(*(a1 + 1680));
  v6 = sub_3B045C(*(a1 + 1680));
  v51[0] = 0xFFFFFFFF00000000;
  v51[1] = -1;
  v7 = *(a1 + 1648);
  if (v7 >= *(a1 + 1656))
  {
    v9 = v6;
    v8 = sub_D2A21C(a1 + 1640, v51);
    v6 = v9;
  }

  else
  {
    *v7 = *v51;
    *(v7 + 584) = 3;
    v8 = v7 + 592;
  }

  *(a1 + 1648) = v8;
  if (*(v8 - 8) != 3)
  {
    sub_5AF20();
  }

  *(v8 - 584) = a2;
  v51[0] = -1;
  LODWORD(v51[1]) = 0x7FFFFFFF;
  v10 = sub_2C7D8C(v6, a2, v51);
  if (v10 > 0xFFFFFFFEFFFFFFFFLL || (v11 = v10, !v10))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_36;
    }

    sub_19594F8(v51);
    sub_4A5C(v51, "The trip muid (unencrypted: ", 28);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, ") in the vehicle position parameters could not be resolved (client preflight: ", 78);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, ")", 1);
    if ((v60 & 0x10) != 0)
    {
      v28 = v59;
      if (v59 < v56)
      {
        v59 = v56;
        v28 = v56;
      }

      v29 = v55;
      v24 = v28 - v55;
      if (v28 - v55 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v60 & 8) == 0)
      {
        v24 = 0;
        v50 = 0;
LABEL_31:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 1u);
        if (v50 < 0)
        {
          operator delete(__dst);
        }

        if (v58 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v52);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_36:
        operator new();
      }

      v29 = v53;
      v24 = v54 - v53;
      if ((v54 - v53) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_44:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v50 = v24;
    if (v24)
    {
      memmove(&__dst, v29, v24);
    }

    goto LABEL_31;
  }

  v12 = **(v5 + 3896);
  if (!v12 || !sub_3A7F20(v12, v11, *(v5 + 3904)))
  {
    if (!sub_7E7E4(2u))
    {
      goto LABEL_52;
    }

    sub_19594F8(v51);
    sub_4A5C(v51, "The trip muid (unencrypted: ", 28);
    v25 = std::ostream::operator<<();
    sub_4A5C(v25, ") in the vehicle position parameters has no realtime vehicle position in the snapshot (client preflight: ", 105);
    v26 = std::ostream::operator<<();
    sub_4A5C(v26, ")", 1);
    if ((v60 & 0x10) != 0)
    {
      v30 = v59;
      if (v59 < v56)
      {
        v59 = v56;
        v30 = v56;
      }

      v31 = v55;
      v27 = v30 - v55;
      if (v30 - v55 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if ((v60 & 8) == 0)
      {
        v27 = 0;
        v50 = 0;
LABEL_47:
        *(&__dst + v27) = 0;
        sub_7E854(&__dst, 2u);
        if (v50 < 0)
        {
          operator delete(__dst);
        }

        if (v58 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v52);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_52:
        operator new();
      }

      v31 = v53;
      v27 = v54 - v53;
      if ((v54 - v53) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_54:
        sub_3244();
      }
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    v50 = v27;
    if (v27)
    {
      memmove(&__dst, v31, v27);
    }

    goto LABEL_47;
  }

  v13 = sub_3A25A8(v4, v11, 0, "trip");
  v48 = *(v13 + *(v13 - *v13 + 6));
  sub_9B4704(v4, &v48);
  v14 = v48;
  v15 = sub_3AFC64(*(a1 + 1680));
  v16 = sub_92FC60(v15, v14, 0, "line");
  v17 = (v16 - *v16);
  if (*v17 >= 0x23u)
  {
    v18 = v17[17];
    if (v18)
    {
      if (*(v16 + v18) && (*(a1 + 20) & 1) == 0)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(v51);
          sub_4A5C(v51, "The line (unencrypted id: ", 26);
          v37 = std::ostream::operator<<();
          sub_4A5C(v37, ") corresponding to the trip (unencrypted id: ", 45);
          v38 = std::ostream::operator<<();
          sub_4A5C(v38, ") in the transit vehicle position parameters is preflight which is not supported by the client", 94);
          sub_1959680(v51, &__dst);
          sub_7E854(&__dst, 1u);
          if (v50 < 0)
          {
            operator delete(__dst);
          }

          sub_1959728(v51);
        }

        v39 = *(a1 + 1696);
        sub_3608D0(v51, "PlaceRequestParserModule.Error.Preflight");
        sub_7BDA0(v39, v51, *(a1 + 1688));
LABEL_72:
        if (SHIBYTE(v52.__locale_) < 0)
        {
          operator delete(v51[0]);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_26738E0;
        exception[2] = 43;
      }
    }
  }

  v19 = v48;
  v20 = sub_3AFC64(*(a1 + 1680));
  result = sub_94489C(v20, v19);
  if (result > *(a1 + 21))
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(v51);
      sub_4A5C(v51, "The line (unencrypted id: ", 26);
      v32 = std::ostream::operator<<();
      sub_4A5C(v32, ") corresponding to the trip (unencrypted id: ", 45);
      v33 = std::ostream::operator<<();
      v34 = sub_4A5C(v33, ") in the vehicle position parameters has a market support of ", 61);
      v35 = sub_94489C(v4, v48);
      if (v35 <= 3)
      {
        v36 = off_2673920[v35];
      }

      else
      {
        v36 = "";
      }

      v40 = strlen(v36);
      v41 = sub_4A5C(v34, v36, v40);
      v42 = sub_4A5C(v41, " but the client has only ", 25);
      v43 = *(a1 + 21);
      if (v43 <= 3)
      {
        v44 = off_2673920[v43];
      }

      else
      {
        v44 = "";
      }

      v45 = strlen(v44);
      sub_4A5C(v42, v44, v45);
      sub_1959680(v51, &__dst);
      sub_7E854(&__dst, 1u);
      if (v50 < 0)
      {
        operator delete(__dst);
      }

      sub_1959728(v51);
    }

    v46 = *(a1 + 1696);
    sub_3608D0(v51, "PlaceRequestParserModule.Error.MarketSupport");
    sub_7BDA0(v46, v51, *(a1 + 1688));
    goto LABEL_72;
  }

  *(v8 - 592) = v11;
  return result;
}

void sub_D2858C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_D28608(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 1632);
    if (v2)
    {
      v3 = *(a1 + 1640);
      v4 = *(a1 + 1632);
      if (v3 != v2)
      {
        do
        {
          v5 = v3 - 592;
          v6 = *(v3 - 8);
          if (v6 != -1)
          {
            (off_26738A8[v6])(&v11, v3 - 592);
          }

          *(v3 - 8) = -1;
          v3 -= 592;
        }

        while (v5 != v2);
        v4 = *(a1 + 1632);
      }

      *(a1 + 1640) = v2;
      operator delete(v4);
    }

    sub_528AB4(a1 + 40);
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 24);
      if (v8 != v7)
      {
        do
        {
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 24));
          }

          v8 -= 32;
        }

        while (v8 != v7);
        v9 = *(a1 + 24);
      }

      *(a1 + 32) = v7;
      operator delete(v9);
    }
  }

  return a1;
}

uint64_t sub_D28710(uint64_t a1, uint64_t a2)
{
  sub_D1E520(a1, a2);
  sub_D28AB0(v4 + 688, (a2 + 688));
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 984) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a2 + 1008) = 0u;
  *(a2 + 1024) = 0;
  v5 = *(a2 + 1048);
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1048) = v5;
  *(a2 + 1040) = 0u;
  *(a2 + 1032) = 0;
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1064) = *(a2 + 1064);
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  *(a1 + 1096) = *(a2 + 1096);
  *(a1 + 1112) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = 0;
  *(a2 + 1104) = 0u;
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1144) = 0;
  *(a2 + 1128) = 0u;
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = *(a2 + 1168);
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0u;
  v6 = *(a2 + 1176);
  *(a1 + 1180) = *(a2 + 1180);
  *(a1 + 1176) = v6;
  LOWORD(v6) = *(a2 + 1184);
  *(a1 + 1186) = *(a2 + 1186);
  *(a1 + 1184) = v6;
  v7 = *(a2 + 1192);
  *(a1 + 1208) = *(a2 + 1208);
  *(a1 + 1192) = v7;
  *(a2 + 1200) = 0u;
  *(a2 + 1192) = 0;
  v8 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v8;
  v9 = *(a2 + 1240);
  *(a1 + 1245) = *(a2 + 1245);
  *(a1 + 1240) = v9;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = *(a2 + 1264);
  *(a2 + 1272) = 0;
  *(a2 + 1256) = 0u;
  v10 = *(a2 + 1280);
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1280) = v10;
  v11 = *(a2 + 1296);
  *(a2 + 1296) = 0;
  *(a1 + 1296) = v11;
  *(a1 + 1304) = *(a2 + 1304);
  *(a2 + 1304) = 0;
  v12 = *(a2 + 1312);
  *(a1 + 1312) = v12;
  v13 = *(a2 + 1320);
  *(a1 + 1320) = v13;
  *(a1 + 1328) = *(a2 + 1328);
  if (v13)
  {
    v14 = *(v12 + 8);
    v15 = *(a1 + 1304);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(v11 + 8 * v14) = a1 + 1312;
    *(a2 + 1312) = 0;
    *(a2 + 1320) = 0;
  }

  *(a1 + 1336) = *(a2 + 1336);
  v16 = *(a2 + 1344);
  *(a2 + 1344) = 0;
  *(a1 + 1344) = v16;
  *(a1 + 1352) = *(a2 + 1352);
  *(a2 + 1352) = 0;
  v17 = *(a2 + 1360);
  *(a1 + 1360) = v17;
  v18 = *(a2 + 1368);
  *(a1 + 1368) = v18;
  *(a1 + 1376) = *(a2 + 1376);
  if (v18)
  {
    v19 = *(v17 + 8);
    v20 = *(a1 + 1352);
    if ((v20 & (v20 - 1)) != 0)
    {
      if (v19 >= v20)
      {
        v19 %= v20;
      }
    }

    else
    {
      v19 &= v20 - 1;
    }

    *(v16 + 8 * v19) = a1 + 1360;
    *(a2 + 1360) = 0;
    *(a2 + 1368) = 0;
  }

  *(a1 + 1384) = *(a2 + 1384);
  v21 = *(a2 + 1400);
  v22 = *(a2 + 1416);
  v23 = *(a2 + 1448);
  *(a1 + 1432) = *(a2 + 1432);
  *(a1 + 1448) = v23;
  *(a1 + 1400) = v21;
  *(a1 + 1416) = v22;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = 0u;
  *(a1 + 1464) = *(a2 + 1464);
  *(a1 + 1472) = *(a2 + 1472);
  *(a2 + 1480) = 0;
  *(a2 + 1464) = 0u;
  v24 = *(a2 + 1488);
  *(a1 + 1490) = *(a2 + 1490);
  *(a1 + 1488) = v24;
  v25 = *(a2 + 1496);
  *(a1 + 1512) = *(a2 + 1512);
  *(a1 + 1496) = v25;
  *(a2 + 1504) = 0u;
  *(a2 + 1496) = 0;
  v26 = *(a2 + 1520);
  *(a1 + 1527) = *(a2 + 1527);
  *(a1 + 1520) = v26;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1552) = *(a2 + 1552);
  *(a2 + 1552) = 0;
  *(a2 + 1536) = 0u;
  *(a1 + 1560) = *(a2 + 1560);
  return a1;
}

__n128 sub_D28AB0(uint64_t a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  v3 = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  *a1 = v2;
  *(a1 + 8) = v3;
  a2->n128_u64[1] = 0;
  v4 = a2[1].n128_u64[0];
  *(a1 + 16) = v4;
  v5 = a2[1].n128_u64[1];
  *(a1 + 24) = v5;
  *(a1 + 32) = a2[2].n128_u32[0];
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = a1 + 16;
    a2[1].n128_u64[0] = 0;
    a2[1].n128_u64[1] = 0;
  }

  v8 = a2[3].n128_u64[1];
  *(a1 + 56) = v8;
  v9 = a2[2].n128_u64[1];
  *(a1 + 48) = a2[3].n128_u64[0];
  a2[2].n128_u64[1] = 0;
  *(a1 + 40) = v9;
  a2[3].n128_u64[0] = 0;
  v10 = a2[4].n128_u64[0];
  *(a1 + 64) = v10;
  *(a1 + 72) = a2[4].n128_u32[2];
  if (v10)
  {
    v11 = *(v8 + 8);
    v12 = *(a1 + 48);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v9 + 8 * v11) = a1 + 56;
    a2[3].n128_u64[1] = 0;
    a2[4].n128_u64[0] = 0;
  }

  v13 = a2[6].n128_u64[0];
  *(a1 + 96) = v13;
  v14 = a2[5].n128_u64[0];
  *(a1 + 88) = a2[5].n128_u64[1];
  a2[5].n128_u64[0] = 0;
  *(a1 + 80) = v14;
  a2[5].n128_u64[1] = 0;
  v15 = a2[6].n128_u64[1];
  *(a1 + 104) = v15;
  *(a1 + 112) = a2[7].n128_u32[0];
  if (v15)
  {
    v16 = *(v13 + 8);
    v17 = *(a1 + 88);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v14 + 8 * v16) = a1 + 96;
    a2[6].n128_u64[0] = 0;
    a2[6].n128_u64[1] = 0;
  }

  v18 = a2[8].n128_u64[1];
  *(a1 + 136) = v18;
  v19 = a2[7].n128_u64[1];
  *(a1 + 128) = a2[8].n128_u64[0];
  a2[7].n128_u64[1] = 0;
  *(a1 + 120) = v19;
  a2[8].n128_u64[0] = 0;
  v20 = a2[9].n128_u64[0];
  *(a1 + 144) = v20;
  *(a1 + 152) = a2[9].n128_u32[2];
  if (v20)
  {
    v21 = *(v18 + 8);
    v22 = *(a1 + 128);
    if ((v22 & (v22 - 1)) != 0)
    {
      if (v21 >= v22)
      {
        v21 %= v22;
      }
    }

    else
    {
      v21 &= v22 - 1;
    }

    *(v19 + 8 * v21) = a1 + 136;
    a2[8].n128_u64[1] = 0;
    a2[9].n128_u64[0] = 0;
  }

  v23 = a2[11].n128_u64[0];
  *(a1 + 176) = v23;
  v24 = a2[10].n128_u64[0];
  *(a1 + 168) = a2[10].n128_u64[1];
  a2[10].n128_u64[0] = 0;
  *(a1 + 160) = v24;
  a2[10].n128_u64[1] = 0;
  v25 = a2[11].n128_u64[1];
  *(a1 + 184) = v25;
  *(a1 + 192) = a2[12].n128_u32[0];
  if (v25)
  {
    v26 = *(v23 + 8);
    v27 = *(a1 + 168);
    if ((v27 & (v27 - 1)) != 0)
    {
      if (v26 >= v27)
      {
        v26 %= v27;
      }
    }

    else
    {
      v26 &= v27 - 1;
    }

    *(v24 + 8 * v26) = a1 + 176;
    a2[11].n128_u64[0] = 0;
    a2[11].n128_u64[1] = 0;
  }

  v28 = a2[13].n128_u64[1];
  *(a1 + 216) = v28;
  v29 = a2[12].n128_u64[1];
  *(a1 + 208) = a2[13].n128_u64[0];
  a2[12].n128_u64[1] = 0;
  *(a1 + 200) = v29;
  a2[13].n128_u64[0] = 0;
  v30 = a2[14].n128_u64[0];
  *(a1 + 224) = v30;
  *(a1 + 232) = a2[14].n128_u32[2];
  if (v30)
  {
    v31 = *(v28 + 8);
    v32 = *(a1 + 208);
    if ((v32 & (v32 - 1)) != 0)
    {
      if (v31 >= v32)
      {
        v31 %= v32;
      }
    }

    else
    {
      v31 &= v32 - 1;
    }

    *(v29 + 8 * v31) = a1 + 216;
    a2[13].n128_u64[1] = 0;
    a2[14].n128_u64[0] = 0;
  }

  v33 = a2[15].n128_u64[0];
  *(a1 + 248) = a2[15].n128_u16[4];
  *(a1 + 240) = v33;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  result = a2[16];
  *(a1 + 256) = result;
  *(a1 + 272) = a2[17].n128_u64[0];
  a2[16].n128_u64[0] = 0;
  a2[16].n128_u64[1] = 0;
  a2[17].n128_u64[0] = 0;
  return result;
}

uint64_t sub_D28D68(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    if (*a2)
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 24);
        if (v13 != v12)
        {
          do
          {
            if (*(v13 - 1) < 0)
            {
              operator delete(*(v13 - 24));
            }

            v13 -= 32;
          }

          while (v13 != v12);
          v14 = *(a1 + 24);
        }

        *(a1 + 32) = v12;
        operator delete(v14);
      }

      v20 = *(a2 + 8);
      *(a1 + 20) = *(a2 + 20);
      *(a1 + 8) = v20;
      sub_D28710(a1 + 40, a2 + 40);
      *(a1 + 1616) = *(a2 + 1616);
      *(a1 + 1632) = 0;
      v21 = 0uLL;
      *(a1 + 1640) = 0u;
      *(a1 + 1632) = *(a2 + 1632);
      *(a1 + 1648) = *(a2 + 1648);
      *(a2 + 1648) = 0;
      goto LABEL_28;
    }

LABEL_32:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_33;
  }

  if (!*a2)
  {
    v15 = *(a1 + 1632);
    if (v15)
    {
      v16 = *(a1 + 1640);
      v17 = *(a1 + 1632);
      if (v16 != v15)
      {
        do
        {
          v18 = v16 - 592;
          v19 = *(v16 - 8);
          if (v19 != -1)
          {
            (off_26738A8[v19])(&v24, v16 - 592);
          }

          *(v16 - 8) = -1;
          v16 -= 592;
        }

        while (v18 != v15);
        v17 = *(a1 + 1632);
      }

      *(a1 + 1640) = v15;
      operator delete(v17);
    }

    sub_528AB4(a1 + 40);
    goto LABEL_32;
  }

  v4 = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = v4;
  sub_D21C04(a1 + 40, a2 + 40);
  v5 = *(a2 + 1621);
  *(a1 + 1616) = *(a2 + 1616);
  *(a1 + 1621) = v5;
  v6 = *(a1 + 1632);
  if (v6)
  {
    v7 = (a1 + 1632);
    v8 = *(a1 + 1640);
    v9 = *(a1 + 1632);
    if (v8 != v6)
    {
      do
      {
        v10 = v8 - 592;
        v11 = *(v8 - 8);
        if (v11 != -1)
        {
          (off_26738A8[v11])(&v23, v8 - 592);
        }

        *(v8 - 8) = -1;
        v8 -= 592;
      }

      while (v10 != v6);
      v9 = *v7;
    }

    *(a1 + 1640) = v6;
    operator delete(v9);
    *v7 = 0;
    *(a1 + 1640) = 0;
    *(a1 + 1648) = 0;
  }

  *(a1 + 1632) = *(a2 + 1632);
  *(a1 + 1648) = *(a2 + 1648);
  *(a2 + 1648) = 0;
  v21 = 0uLL;
LABEL_28:
  *(a2 + 1632) = v21;
  *(a1 + 1656) = *(a2 + 1656);
LABEL_33:
  *a1 = *a2;
  return a1;
}