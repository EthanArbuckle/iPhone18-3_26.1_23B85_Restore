void sub_183723130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_183719374(&a12);
  sub_183719374(&a27);
  _Unwind_Resume(a1);
}

void **sub_183723194(void **a1)
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

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 9);
        if (v7)
        {
          *(v3 - 8) = v7;
          operator delete(v7);
        }

        v3 -= 120;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_183723228(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_18368964C();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x222222222222222)
    {
      operator new();
    }

    sub_183688F00();
  }

  v16 = 8 * ((a1[1] - *a1) >> 3);
  sub_183719C70(v16, a2);
  v6 = 120 * v2 + 120;
  v7 = *a1;
  v8 = a1[1];
  v9 = v16 + *a1 - v8;
  v17 = v9;
  if (*a1 != v8)
  {
    v10 = v16 + v7 - v8;
    v11 = *a1;
    do
    {
      sub_183719C70(v10, v11);
      v11 += 120;
      v10 = v17 + 120;
      v17 += 120;
    }

    while (v11 != v8);
    do
    {
      v12 = *(v7 + 12);
      if (v12)
      {
        *(v7 + 13) = v12;
        operator delete(v12);
      }

      v13 = *(v7 + 9);
      if (v13)
      {
        *(v7 + 10) = v13;
        operator delete(v13);
      }

      v14 = *(v7 + 6);
      if (v14)
      {
        *(v7 + 7) = v14;
        operator delete(v14);
      }

      v7 += 120;
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

void sub_1837233D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18372348C(va);
  _Unwind_Resume(a1);
}

void sub_1837233EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_183723408(va1);
  sub_18372348C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_183723408(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 72);
      if (v7)
      {
        *(v3 - 64) = v7;
        operator delete(v7);
      }

      v3 -= 120;
    }
  }

  return a1;
}

uint64_t sub_18372348C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_183723514(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_18368964C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

    sub_183688F00();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = v5 - v8;
  memcpy(v5 - v8, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v5 + 3;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v5 + 3;
}

void sub_18372368C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1836AEC7C(va);
  _Unwind_Resume(a1);
}

void *sub_1837236B0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_18368A1E8(a1, &v11);
}

void sub_183723A18(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

const void **sub_183723A70(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void sub_183723C08(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_18369761C();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_183723D20(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0x666666666666666)
    {
      sub_1836D58DC();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_183688F00();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_183723EC8(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (v5 + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 2;
    v7 = v6 + a2;
    if ((v6 + a2) >> 62)
    {
      sub_18368964C();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_183688F00();
    }

    v18 = 4 * v6;
    v19 = 4 * v6 + 4 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void *sub_183724098(NSUInteger a1, void *a2, NSUInteger a3, void *a4, NSUInteger a5, NSUInteger a6, const void *a7, uint64_t a8, NSUInteger a9, NSUInteger a10, NSUInteger a11, NSUInteger a12, char a13, NSUInteger a14, NSUInteger a15, int a16, int a17, int a18, uint64_t a19, char a20, uint64_t a21, void *a22)
{
  v121.location = a3;
  v127 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v120 = a4;
  v33 = a22;
  if (!a1)
  {
    v93 = 0;
    goto LABEL_79;
  }

  v118 = a6;
  if (a11 != 0x7FFFFFFFFFFFFFFFLL && a11 + a12 > v121.location)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v34 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v128.location = a11;
      v128.length = a12;
      v35 = NSStringFromRange(v128);
      *buf = 138412546;
      v124 = v35;
      v125 = 2048;
      location = v121.location;
      _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_ERROR, "selectedTextRange %@ beyond text length %ld", buf, 0x16u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v36 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      v129.location = a11;
      v129.length = a12;
      v37 = NSStringFromRange(v129);
      *buf = 138412546;
      v124 = v37;
      v125 = 2048;
      location = v121.location;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_FAULT, "selectedTextRange %@ beyond text length %ld", buf, 0x16u);
    }
  }

  if (a14 != 0x7FFFFFFFFFFFFFFFLL && a14 + a15 > v121.location)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v38 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v130.location = a14;
      v130.length = a15;
      v39 = NSStringFromRange(v130);
      *buf = 138412546;
      v124 = v39;
      v125 = 2048;
      location = v121.location;
      _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_ERROR, "activePreviewRange %@ beyond text length %ld", buf, 0x16u);

      a6 = v118;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v40 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      v131.location = a14;
      v131.length = a15;
      v41 = NSStringFromRange(v131);
      *buf = 138412546;
      v124 = v41;
      v125 = 2048;
      location = v121.location;
      _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "activePreviewRange %@ beyond text length %ld", buf, 0x16u);

      a6 = v118;
    }
  }

  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v132.location = 0x7FFFFFFFFFFFFFFFLL;
      v132.length = a6;
      v43 = NSStringFromRange(v132);
      *buf = 138412290;
      v124 = v43;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_ERROR, "Invalid referenceSubstringRange %@", buf, 0xCu);

      a6 = v118;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v44 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      v133.location = 0x7FFFFFFFFFFFFFFFLL;
      v133.length = a6;
      v45 = NSStringFromRange(v133);
      *buf = 138412290;
      v124 = v45;
      _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_FAULT, "Invalid referenceSubstringRange %@", buf, 0xCu);

      a6 = v118;
    }

    v116 = a14;
    v46 = a6 + 0x7FFFFFFFFFFFFFFFLL;
    if (a6 + 0x7FFFFFFFFFFFFFFFLL <= v121.location)
    {
LABEL_34:
      if (a6 == objc_msgSend_length(v120, v28, v29, v30, v31, v32))
      {
        goto LABEL_35;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v116 = a14;
    v46 = a5 + a6;
    if (a5 + a6 <= v121.location)
    {
      goto LABEL_34;
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v54 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v134.location = a5;
    v134.length = a6;
    v55 = NSStringFromRange(v134);
    *buf = 138412546;
    v124 = v55;
    v125 = 2048;
    location = v121.location;
    _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_ERROR, "referenceSubstringRange %@ beyond text length %ld", buf, 0x16u);

    a6 = v118;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v56 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
  {
    v135.location = a5;
    v135.length = a6;
    v57 = NSStringFromRange(v135);
    *buf = 138412546;
    v124 = v57;
    v125 = 2048;
    location = v121.location;
    _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_FAULT, "referenceSubstringRange %@ beyond text length %ld", buf, 0x16u);

    a6 = v118;
  }

  if (a6 == objc_msgSend_length(v120, v58, v59, v60, v61, v62))
  {
LABEL_35:
    v52 = a9;
    if (a6 == objc_msgSend_length(v120, v47, v48, v49, v50, v51))
    {
      goto LABEL_36;
    }

    goto LABEL_53;
  }

LABEL_48:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v63 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    v136.location = a5;
    v136.length = a6;
    v64 = NSStringFromRange(v136);
    v70 = objc_msgSend_length(v120, v65, v66, v67, v68, v69);
    *buf = 138412546;
    v124 = v64;
    v125 = 2048;
    location = v70;
    _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_ERROR, "Invalid referenceSubstringRange %@, length doesn't match string length %ld", buf, 0x16u);

    a6 = v118;
  }

  v52 = a9;
  if (a6 == objc_msgSend_length(v120, v71, v72, v73, v74, v75))
  {
LABEL_36:
    v119 = v27;
    v53 = a10;
    if (v52 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_66;
    }

    goto LABEL_58;
  }

LABEL_53:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v76 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
  {
    v137.location = a5;
    v137.length = a6;
    NSStringFromRange(v137);
    v78 = v77 = a5;
    v84 = objc_msgSend_length(v120, v79, v80, v81, v82, v83);
    *buf = 138412546;
    v124 = v78;
    v125 = 2048;
    location = v84;
    _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_FAULT, "Invalid referenceSubstringRange %@, length doesn't match string length %ld", buf, 0x16u);

    a5 = v77;
    a6 = v118;
  }

  v119 = v27;
  v53 = a10;
  if (v52 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_58:
    if (v52 < a5 || v52 - a5 >= a6 || v52 + v53 > v46)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v85 = qword_1EA84DC80;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v138.location = v52;
        v138.length = v53;
        v86 = NSStringFromRange(v138);
        v139.location = a5;
        v139.length = a6;
        NSStringFromRange(v139);
        v114 = v53;
        v87 = a5;
        v88 = a1;
        v89 = a6;
        v91 = v90 = a7;
        *buf = 138412546;
        v124 = v86;
        v125 = 2112;
        location = v91;
        _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_ERROR, "The strokeCoveredTextRange %@ must be within the referenceSubstringRange %@", buf, 0x16u);

        a7 = v90;
        a6 = v89;
        a1 = v88;
        a5 = v87;
        v53 = v114;
      }
    }
  }

LABEL_66:
  v121.length = a1;
  v122 = CHTextInputTargetContentInfo;
  v92 = [(NSUInteger *)&v121.length init];
  v93 = v92;
  if (!v92 || (v115 = v33, objc_storeStrong(v92 + 1, a2), v93[2] = v121.location, v99 = objc_msgSend_copy(v120, v94, v95, v96, v97, v98), v100 = v93[3], v93[3] = v99, v100, v93[4] = a5, v93[5] = a6, v93[7] = v52, v93[8] = v53, v93[9] = a11, v93[10] = a12, *(v93 + 88) = a13, v93[12] = v116, v93[13] = a15, *(v93 + 28) = a16, *(v93 + 29) = a17, *(v93 + 30) = a18, v93[16] = a19, *(v93 + 136) = a20, v93[18] = a21, v106 = objc_msgSend_copy(v33, v101, v102, v103, v104, v105), v107 = v93[19], v93[19] = v106, v107, !a6))
  {
    v27 = v119;
    goto LABEL_79;
  }

  v27 = v119;
  if (!a7)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v108 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v140.location = a5;
      v140.length = a6;
      v109 = NSStringFromRange(v140);
      *buf = 138412290;
      v124 = v109;
      _os_log_impl(&dword_18366B000, v108, OS_LOG_TYPE_ERROR, "charRectsInReferenceSubstring cannot be NULL for referenceSubstringRange: %@", buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v110 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
LABEL_76:

        v33 = v115;
        goto LABEL_77;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v110 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_76;
      }
    }

    v141.location = a5;
    v141.length = a6;
    v111 = NSStringFromRange(v141);
    *buf = 138412290;
    v124 = v111;
    _os_log_impl(&dword_18366B000, v110, OS_LOG_TYPE_FAULT, "charRectsInReferenceSubstring cannot be NULL for referenceSubstringRange: %@", buf, 0xCu);

    goto LABEL_76;
  }

LABEL_77:
  v112 = malloc_type_calloc(a6, 0x20uLL, 0x1000040E0EAB150uLL);
  v93[6] = v112;
  memcpy(v112, a7, 32 * a6);
LABEL_79:

  return v93;
}

void sub_1837260C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"+-.:<=>acemnorsuvwxz~«»æøıœавгежзиклмнопстхчшъыьэюяє•←→", a4, a5, a6);
  v7 = qword_1EA84CE10;
  qword_1EA84CE10 = v6;

  v12 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v8, @",_gpqy¡¿ÇçĄąĘęŞşȘșȚțдруцщạẹọụỵ", v9, v10, v11);;
  v13 = qword_1EA84CE18;
  qword_1EA84CE18 = v12;

  v18 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v14, @"!#&'*/0123456789?ABCDEFGHIJKLMNOPRSTUVWXYZ\\^bdfhiklt£¥ª°ºÀÁÂÃÄÅÆÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝßàáâãäåèéêëìíîïñòóôõöùúûüĂăĆćČčĎďĐđĚěĞĨĩİłŃńŇňŒŘřŚśŠšŤťŨũŮůŸŹźŻżŽžƠơƯưЁЄІЇАБВГЕЖЗИЙКЛМНОПРСТУФХЧШЪЫЬЭЮЯбйёіїҐґẢảẤấẦầẨẩẪẫẮắẰằẲẳẴẵẺẻẼẽẾếỀềỂểỄễỈỉỎỏỐốỒồỔổỖỗỚớỜờỞởỠỡỦủỨứỪừỬửỮữỲỶỸ₫€₴₽↑↓", v15, v16, v17);
  v19 = qword_1EA84CE20;
  qword_1EA84CE20 = v18;
}

uint64_t sub_1837262C4(void *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 16);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1[6] <= a2)
    {
      v5 = a1[5];
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return (*(v5 + 16))(v5, v6, v2, v2.n128_f64[1], v3, v3.n128_f64[1]);
      }

      goto LABEL_5;
    }

    v4 = (*(a1[4] + 48) + 32 * a2);
    v2 = *v4;
    v3 = v4[1];
  }

  v5 = a1[5];
LABEL_5:
  v6 = *(a1[4] + 32) + a2;
  return (*(v5 + 16))(v5, v6, v2, v2.n128_f64[1], v3, v3.n128_f64[1]);
}

void sub_1837264B8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5.size.height = a5;
  v5.size.width = a4;
  v5.origin.y = a3;
  v5.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v5);
}

void sub_183726614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183726734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183727304(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1837279C4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_18372DCD0(va);

  _Unwind_Resume(a1);
}

void sub_183727F24(_Unwind_Exception *a1)
{
  operator delete(v3);

  _Unwind_Resume(a1);
}

void sub_1837280B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_1837280DC(&a9);
  sub_18369F0F0(&a12);

  _Unwind_Resume(a1);
}

void *sub_1837280DC(void *a1)
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
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v8 = *(v3 - 5);
        v3 -= 5;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          operator delete(v7);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1837285DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (a1)
  {
    if (a1 == v3)
    {
      goto LABEL_16;
    }

    v10 = objc_msgSend_strokeClassificationMatrix(v3, v4, v5, v6, v7, v8);
    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *v10;
    if (v16 - v17 != v10[1] - *v10)
    {
      goto LABEL_15;
    }

    for (; v17 != v16; v18 += 24)
    {
      v20 = *v17;
      v19 = v17[1];
      v21 = *v18;
      if (v19 - *v17 != *(v18 + 8) - *v18)
      {
        goto LABEL_15;
      }

      if (v20 != v19)
      {
        while (*v20 == *v21)
        {
          ++v20;
          ++v21;
          if (v20 == v19)
          {
            goto LABEL_9;
          }
        }

        goto LABEL_15;
      }

LABEL_9:
      v17 += 3;
    }

    v22 = objc_msgSend_sparseAdjacencyMatrix(v9, v11, v12, v13, v14, v15);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *v22;
    if (v24 - v23 != *(v22 + 8) - *v22)
    {
LABEL_15:
      a1 = 0;
      goto LABEL_17;
    }

    if (v23 == v24)
    {
LABEL_16:
      a1 = 1;
      goto LABEL_17;
    }

    do
    {
      a1 = sub_18372F4B0(v23, v25);
      if (!a1)
      {
        break;
      }

      v23 += 40;
      v25 += 5;
    }

    while (v23 != v24);
  }

LABEL_17:

  return a1;
}

void sub_1837296B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, void *a48, uint64_t a49, uint64_t a50, char *a51, char *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (__p)
  {
    v58 = a48;
    v59 = __p;
    if (a48 != __p)
    {
      do
      {
        v60 = *(v58 - 3);
        if (v60)
        {
          do
          {
            v61 = *v60;
            operator delete(v60);
            v60 = v61;
          }

          while (v61);
        }

        v63 = *(v58 - 5);
        v58 -= 5;
        v62 = v63;
        *v58 = 0;
        if (v63)
        {
          operator delete(v62);
        }
      }

      while (v58 != __p);
      v59 = __p;
    }

    operator delete(v59);
  }

  if (a51)
  {
    v64 = a52;
    v65 = a51;
    if (a52 != a51)
    {
      v66 = a52;
      do
      {
        v68 = *(v66 - 3);
        v66 -= 24;
        v67 = v68;
        if (v68)
        {
          *(v64 - 2) = v67;
          operator delete(v67);
        }

        v64 = v66;
      }

      while (v66 != a51);
      v65 = a51;
    }

    operator delete(v65);
  }

  _Unwind_Resume(a1);
}

void sub_18372B0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, uint64_t a53, uint64_t a54, char *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_18372DCD0(v69 - 144);
  if (__p)
  {
    v71 = a52;
    v72 = __p;
    if (a52 != __p)
    {
      do
      {
        v73 = *(v71 - 3);
        if (v73)
        {
          do
          {
            v74 = *v73;
            operator delete(v73);
            v73 = v74;
          }

          while (v74);
        }

        v76 = *(v71 - 5);
        v71 -= 5;
        v75 = v76;
        *v71 = 0;
        if (v76)
        {
          operator delete(v75);
        }
      }

      while (v71 != __p);
      v72 = __p;
    }

    operator delete(v72);
  }

  if (a55)
  {
    v77 = a56;
    v78 = a55;
    if (a56 != a55)
    {
      v79 = a56;
      do
      {
        v81 = *(v79 - 3);
        v79 -= 24;
        v80 = v81;
        if (v81)
        {
          *(v77 - 16) = v80;
          operator delete(v80);
        }

        v77 = v79;
      }

      while (v79 != a55);
      v78 = a55;
    }

    operator delete(v78);
  }

  v82 = a69;
  if (a69)
  {
    do
    {
      v83 = *v82;
      operator delete(v82);
      v82 = v83;
    }

    while (v83);
  }

  if (a67)
  {
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

void sub_18372BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1836CFA48(va);
  _Unwind_Resume(a1);
}

void sub_18372BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1836CFA48(va);
  _Unwind_Resume(a1);
}

void sub_18372BDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1836CFA48(va);
  _Unwind_Resume(a1);
}

void sub_18372BDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1836CFA48(va);
  _Unwind_Resume(a1);
}

void sub_18372C448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v8 = v6;

  sub_1837280DC(va);
  sub_18369F0F0(va1);

  _Unwind_Resume(a1);
}

void sub_18372D05C(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_18372F694(v8, *v5, v5[1], (v5[1] - *v5) >> 2);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_18372F694(v8, *v18, v18[1], (v18[1] - *v18) >> 2);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_18372D2C8(a1, (v5 + v16), a3, v15);
}

void *sub_18372D2C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369761C();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_18372D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_18369F28C(&a9);
  _Unwind_Resume(a1);
}

void sub_18372D3D4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 3);
          if (v12)
          {
            do
            {
              v13 = *v12;
              operator delete(v12);
              v12 = v13;
            }

            while (v13);
          }

          v15 = *(v10 - 5);
          v10 -= 5;
          v14 = v15;
          *v10 = 0;
          if (v15)
          {
            operator delete(v14);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v21 = 2 * v20;
      if (2 * v20 <= a4)
      {
        v21 = a4;
      }

      if (v20 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v21;
      }

      if (v22 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_18368964C();
  }

  v16 = a1[1];
  v17 = v16 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          *(v8 + 32) = *(v5 + 32);
          sub_18372FB2C(v8, *(v5 + 16), 0);
        }

        v5 += 40;
        v8 += 40;
      }

      while (v5 != a3);
      v16 = a1[1];
    }

    while (v16 != v8)
    {
      v23 = *(v16 - 3);
      if (v23)
      {
        do
        {
          v24 = *v23;
          operator delete(v23);
          v23 = v24;
        }

        while (v24);
      }

      v26 = *(v16 - 5);
      v16 -= 5;
      v25 = v26;
      *v16 = 0;
      if (v26)
      {
        operator delete(v25);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v16 != v8)
    {
      v18 = v16 - v8;
      v19 = a2;
      do
      {
        if (v19 != v8)
        {
          *(v8 + 32) = *(v19 + 32);
          sub_18372FB2C(v8, *(v19 + 16), 0);
        }

        v19 += 40;
        v8 += 40;
        v18 -= 40;
      }

      while (v18);
      v16 = a1[1];
    }

    a1[1] = sub_18372D654(a1, &v17[v5], a3, v16);
  }
}

uint64_t sub_18372D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = *(v6 + 32);
      prime = *(v6 + 8);
      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(*(v6 + 8));
        v8 = *(v4 + 8);
        v9 = prime >= *&v8;
        if (prime <= *&v8)
        {
LABEL_10:
          if (v9)
          {
            goto LABEL_21;
          }

          v10 = vcvtps_u32_f32(*(v4 + 24) / *(v4 + 32));
          if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
          {
            v10 = std::__next_prime(v10);
          }

          else
          {
            v12 = 1 << -__clz(v10 - 1);
            if (v10 >= 2)
            {
              v10 = v12;
            }
          }

          if (prime <= v10)
          {
            prime = v10;
          }

          if (prime >= *&v8)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = 1;
        if (!prime)
        {
          goto LABEL_10;
        }
      }

      sub_183689098(v4, prime);
LABEL_21:
      for (i = *(v6 + 16); i; i = *i)
      {
        sub_18372D858(v4, i + 2);
      }

      v6 += 40;
      v4 = v15 + 40;
      v15 += 40;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_18372D7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1836CFA48(v9);
  sub_18372D7E4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_18372D7E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 3);
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      v8 = *(v3 - 5);
      v3 -= 5;
      v7 = v8;
      *v3 = 0;
      if (v8)
      {
        operator delete(v7);
      }
    }
  }

  return a1;
}

void *sub_18372D858(void *a1, unint64_t *a2)
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

void sub_18372DB8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = (v4 + v7);
      v10 = v6 + v7;
      v11 = *(v4 + v7);
      v12 = *(v4 + v7 + 8);
      *v9 = 0;
      *v10 = v11;
      *(v10 + 8) = v12;
      v9[1] = 0;
      v13 = *(v4 + v7 + 24);
      v14 = *(v4 + v7 + 16);
      v15 = *(v4 + v7 + 32);
      *(v6 + v7 + 16) = v14;
      *(v10 + 24) = v13;
      *(v10 + 32) = v15;
      if (v13)
      {
        v8 = *(v14 + 8);
        v16 = *(v10 + 8);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v8 >= v16)
          {
            v8 %= v16;
          }
        }

        else
        {
          v8 &= v16 - 1;
        }

        *(v11 + 8 * v8) = v6 + v7 + 16;
        *(v4 + v7 + 16) = 0;
        *(v4 + v7 + 24) = 0;
      }

      v7 += 40;
    }

    while (v4 + v7 != v5);
    do
    {
      v17 = *(v4 + 16);
      if (v17)
      {
        do
        {
          v18 = *v17;
          operator delete(v17);
          v17 = v18;
        }

        while (v18);
      }

      v19 = *v4;
      *v4 = 0;
      if (v19)
      {
        operator delete(v19);
      }

      v4 += 40;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v20 = a1[1];
  a1[1] = a2[2];
  a2[2] = v20;
  v21 = a1[2];
  a1[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
}

uint64_t sub_18372DCD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 40);
    *(a1 + 16) = i - 40;
    v5 = *(i - 24);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *v4;
    *v4 = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_18372DD50(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t sub_18372E058(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_18368964C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v24 = a1;
  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_183688F00();
  }

  v6 = 40 * v2;
  __p = 0;
  v21 = 40 * v2;
  v23 = 0;
  v7 = *a2;
  v8 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *v6 = v7;
  *(v6 + 8) = v8;
  v9 = a2[2];
  *(40 * v2 + 0x10) = v9;
  v10 = a2[3];
  *(v6 + 24) = v10;
  *(v6 + 32) = *(a2 + 8);
  if (v10)
  {
    v11 = *(v9 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v11 >= v8)
      {
        v11 %= v8;
      }
    }

    else
    {
      v11 &= v8 - 1;
    }

    *(v7 + 8 * v11) = 40 * v2 + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  v22 = v6 + 40;
  sub_18372DB8C(a1, &__p);
  v12 = a1[1];
  v13 = v21;
  while (1)
  {
    v14 = v22;
    if (v22 == v13)
    {
      break;
    }

    v15 = (v22 - 40);
    v22 -= 40;
    v16 = *(v14 - 24);
    if (v16)
    {
      do
      {
        v17 = *v16;
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
    }

    v18 = *v15;
    *v15 = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_18372E200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18372DCD0(va);
  _Unwind_Resume(a1);
}

void sub_18372E214(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, float a5)
{
LABEL_1:
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 4;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v82 = *(a2 - 2);
      v83 = *v9;
      if (v82 < *v9)
      {
        *v9 = v82;
        *(a2 - 2) = v83;
        goto LABEL_113;
      }

      return;
    }

LABEL_9:
    if (v10 <= 23)
    {
      v93 = (v9 + 16);
      v95 = v9 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v9;
          do
          {
            v99 = v93;
            v100 = *(v97 + 16);
            v101 = *v97;
            if (v100 < *v97)
            {
              v102 = *(v97 + 24);
              v103 = v96;
              do
              {
                v104 = v9 + v103;
                *(v104 + 16) = v101;
                *(v104 + 24) = *(v9 + v103 + 8);
                if (!v103)
                {
                  v98 = v9;
                  goto LABEL_128;
                }

                v101 = *(v104 - 16);
                v103 -= 16;
              }

              while (v100 < v101);
              v98 = v9 + v103 + 16;
LABEL_128:
              *v98 = v100;
              *(v98 + 8) = v102;
            }

            v93 = v99 + 2;
            v96 += 16;
            v97 = v99;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v95)
      {
        v145 = (v9 + 24);
        do
        {
          v146 = v93;
          v147 = *(a1 + 16);
          v148 = *a1;
          if (v147 < *a1)
          {
            v149 = *(a1 + 24);
            v150 = v145;
            do
            {
              v151 = v150;
              *(v150 - 1) = v148;
              v152 = *(v150 - 4);
              v150 -= 4;
              *v151 = v152;
              v148 = *(v151 - 5);
            }

            while (v147 < v148);
            *(v150 - 1) = v147;
            *v150 = v149;
          }

          v93 = (v146 + 16);
          v145 += 4;
          a1 = v146;
        }

        while ((v146 + 16) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v105 = (v10 - 2) >> 1;
      v106 = v105;
      while (2)
      {
        if (v105 >= v106)
        {
          v108 = (2 * (v106 & 0xFFFFFFFFFFFFFFFLL)) | 1;
          v109 = v9 + 16 * v108;
          if (2 * (v106 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v10)
          {
            v110 = *v109;
            v112 = v9 + 16 * v106;
            v113 = *v112;
            if (*v109 >= *v112)
            {
LABEL_148:
              v114 = *(v112 + 8);
              while (1)
              {
                v116 = v112;
                v112 = v109;
                *v116 = v110;
                *(v116 + 8) = *(v109 + 8);
                if (v105 < v108)
                {
                  break;
                }

                v117 = (2 * (v108 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v109 = v9 + 16 * v117;
                v108 = 2 * v108 + 2;
                if (v108 < v10)
                {
                  v110 = *v109;
                  v115 = *(v109 + 16);
                  if (*v109 <= v115)
                  {
                    v110 = *(v109 + 16);
                  }

                  if (*v109 >= v115)
                  {
                    v108 = v117;
                  }

                  else
                  {
                    v109 += 16;
                  }

                  if (v110 < v113)
                  {
                    break;
                  }
                }

                else
                {
                  v110 = *v109;
                  v108 = v117;
                  if (*v109 < v113)
                  {
                    break;
                  }
                }
              }

              *v112 = v113;
              *(v112 + 8) = v114;
            }
          }

          else
          {
            v110 = *(v109 + 16);
            v111 = *v109 >= v110;
            if (*v109 > v110)
            {
              v110 = *v109;
            }

            if (!v111)
            {
              v109 += 16;
              v108 = 2 * (v106 & 0xFFFFFFFFFFFFFFFLL) + 2;
            }

            v112 = v9 + 16 * v106;
            v113 = *v112;
            if (v110 >= *v112)
            {
              goto LABEL_148;
            }
          }
        }

        v107 = v106-- <= 0;
        if (!v107)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v118 = 0;
        v119 = *v9;
        v120 = *(v9 + 8);
        v121 = (v10 - 2) >> 1;
        v122 = v9;
        do
        {
          while (1)
          {
            v129 = v122 + 16 * v118;
            v128 = v129 + 16;
            v130 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 < v10)
            {
              break;
            }

            v118 = v130;
            *v122 = *v128;
            *(v122 + 8) = *(v129 + 24);
            v122 = v129 + 16;
            if (v130 > v121)
            {
              goto LABEL_171;
            }
          }

          v125 = *(v129 + 32);
          v124 = v129 + 32;
          v123 = v125;
          v126 = *(v124 - 16);
          v127 = v126 >= v125;
          if (v126 > v125)
          {
            v123 = *(v124 - 16);
          }

          if (v127)
          {
            v118 = v130;
          }

          else
          {
            v128 = v124;
          }

          *v122 = v123;
          *(v122 + 8) = *(v128 + 8);
          v122 = v128;
        }

        while (v118 <= v121);
LABEL_171:
        if (v128 != a2 - 2)
        {
          *v128 = *(a2 - 2);
          *(v128 + 8) = *(a2 - 2);
          *(a2 - 2) = v119;
          *(a2 - 2) = v120;
          v131 = (v128 - v9 + 16) >> 4;
          v107 = v131 < 2;
          v132 = v131 - 2;
          if (!v107)
          {
            v133 = v132 >> 1;
            v134 = v9 + 16 * v133;
            v135 = *v134;
            v136 = *v128;
            if (*v134 < *v128)
            {
              v120 = *(v128 + 8);
              do
              {
                v137 = v128;
                v128 = v134;
                *v137 = v135;
                *(v137 + 8) = *(v134 + 8);
                if (!v133)
                {
                  break;
                }

                v133 = (v133 - 1) >> 1;
                v134 = v9 + 16 * v133;
                v135 = *v134;
              }

              while (*v134 < v136);
              *v128 = v136;
LABEL_160:
              *(v128 + 8) = v120;
            }
          }

          a2 -= 2;
          v107 = v10-- <= 2;
          if (v107)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v128 = v119;
      goto LABEL_160;
    }

    v11 = v9 + 16 * (v10 >> 1);
    v12 = v11;
    v13 = *(a2 - 2);
    if (v10 < 0x81)
    {
      v17 = *v9;
      v18 = *v12;
      if (*v9 < *v12)
      {
        if (v13 < v17)
        {
          *v12 = v13;
          *(a2 - 2) = v18;
          v19 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 2);
          goto LABEL_36;
        }

        *v12 = v17;
        *v9 = v18;
        v19 = *(v12 + 8);
        *(v12 + 8) = *(v9 + 8);
        *(v9 + 8) = v19;
        v36 = *(a2 - 2);
        if (v36 < v18)
        {
          *v9 = v36;
          *(a2 - 2) = v18;
          *(v9 + 8) = *(a2 - 2);
LABEL_36:
          *(a2 - 2) = v19;
        }

LABEL_37:
        --a3;
        v26 = *v9;
        if (a4)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (v13 >= v17)
      {
        goto LABEL_37;
      }

      *v9 = v13;
      *(a2 - 2) = v17;
      v23 = *(v9 + 8);
      *(v9 + 8) = *(a2 - 2);
      *(a2 - 2) = v23;
      v24 = *v12;
      if (*v9 >= *v12)
      {
        goto LABEL_37;
      }

      *v12 = *v9;
      *v9 = v24;
      v25 = *(v12 + 8);
      *(v12 + 8) = *(v9 + 8);
      *(v9 + 8) = v25;
      --a3;
      v26 = v24;
      if (a4)
      {
        goto LABEL_63;
      }

LABEL_62:
      if (*(v9 - 16) < v26)
      {
        goto LABEL_63;
      }

      if (v26 >= *(a2 - 2))
      {
        v74 = v9 + 16;
        do
        {
          v9 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v74 += 16;
        }

        while (v26 >= *v9);
      }

      else
      {
        do
        {
          v73 = *(v9 + 16);
          v9 += 16;
        }

        while (v26 >= v73);
      }

      v75 = a2;
      if (v9 < a2)
      {
        v75 = a2;
        do
        {
          v76 = *(v75 - 2);
          v75 -= 2;
        }

        while (v26 < v76);
      }

      a5 = *(a1 + 8);
      if (v9 < v75)
      {
        v77 = *v9;
        v78 = *v75;
        do
        {
          *v9 = v78;
          *v75 = v77;
          v79 = *(v9 + 8);
          *(v9 + 8) = *(v75 + 2);
          *(v75 + 2) = v79;
          do
          {
            v80 = *(v9 + 16);
            v9 += 16;
            v77 = v80;
          }

          while (v26 >= v80);
          do
          {
            v81 = *(v75 - 2);
            v75 -= 2;
            v78 = v81;
          }

          while (v26 < v81);
        }

        while (v9 < v75);
      }

      if (v9 - 16 != a1)
      {
        *a1 = *(v9 - 16);
        *(a1 + 8) = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 16) = v26;
      *(v9 - 8) = a5;
    }

    else
    {
      v14 = *v11;
      v15 = *v9;
      if (*v11 >= *v9)
      {
        if (v13 < v14)
        {
          *v11 = v13;
          *(a2 - 2) = v14;
          v20 = *(v11 + 8);
          *(v11 + 8) = *(a2 - 2);
          *(a2 - 2) = v20;
          v21 = *v9;
          if (*v11 < *v9)
          {
            *v9 = *v11;
            *v11 = v21;
            v22 = *(v9 + 8);
            *(v9 + 8) = *(v11 + 8);
            *(v11 + 8) = v22;
          }
        }
      }

      else
      {
        if (v13 >= v14)
        {
          *v9 = v14;
          *v11 = v15;
          v16 = *(v9 + 8);
          *(v9 + 8) = *(v11 + 8);
          *(v11 + 8) = v16;
          v27 = *(a2 - 2);
          if (v27 >= v15)
          {
            goto LABEL_28;
          }

          *v11 = v27;
          *(a2 - 2) = v15;
          *(v11 + 8) = *(a2 - 2);
        }

        else
        {
          *v9 = v13;
          *(a2 - 2) = v15;
          v16 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 2);
        }

        *(a2 - 2) = v16;
      }

LABEL_28:
      v28 = v11 - 16;
      v29 = *(v11 - 16);
      v30 = *(v9 + 16);
      v31 = *(a2 - 4);
      if (v29 >= v30)
      {
        if (v31 < v29)
        {
          *v28 = v31;
          *(a2 - 4) = v29;
          v33 = *(v11 - 8);
          *(v11 - 8) = *(a2 - 6);
          *(a2 - 6) = v33;
          v34 = *(v9 + 16);
          if (*v28 < v34)
          {
            *(v9 + 16) = *v28;
            *v28 = v34;
            v35 = *(v9 + 24);
            *(v9 + 24) = *(v11 - 8);
            *(v11 - 8) = v35;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          *(v9 + 16) = v29;
          *v28 = v30;
          v32 = *(v9 + 24);
          *(v9 + 24) = *(v11 - 8);
          *(v11 - 8) = v32;
          v37 = *(a2 - 4);
          if (v37 >= v30)
          {
            goto LABEL_42;
          }

          *v28 = v37;
          *(a2 - 4) = v30;
          *(v11 - 8) = *(a2 - 6);
        }

        else
        {
          *(v9 + 16) = v31;
          *(a2 - 4) = v30;
          v32 = *(v9 + 24);
          *(v9 + 24) = *(a2 - 6);
        }

        *(a2 - 6) = v32;
      }

LABEL_42:
      v40 = *(v11 + 16);
      v38 = v11 + 16;
      v39 = v40;
      v41 = *(v9 + 32);
      v42 = *(a2 - 6);
      if (v40 >= v41)
      {
        if (v42 < v39)
        {
          *v38 = v42;
          *(a2 - 6) = v39;
          v44 = *(v38 + 8);
          *(v38 + 8) = *(a2 - 10);
          *(a2 - 10) = v44;
          v45 = *(v9 + 32);
          if (*v38 < v45)
          {
            *(v9 + 32) = *v38;
            *v38 = v45;
            v46 = *(v9 + 40);
            *(v9 + 40) = *(v38 + 8);
            *(v38 + 8) = v46;
          }
        }
      }

      else
      {
        if (v42 >= v39)
        {
          *(v9 + 32) = v39;
          *v38 = v41;
          v43 = *(v9 + 40);
          *(v9 + 40) = *(v38 + 8);
          *(v38 + 8) = v43;
          v47 = *(a2 - 6);
          if (v47 >= v41)
          {
            goto LABEL_51;
          }

          *v38 = v47;
          *(a2 - 6) = v41;
          *(v38 + 8) = *(a2 - 10);
        }

        else
        {
          *(v9 + 32) = v42;
          *(a2 - 6) = v41;
          v43 = *(v9 + 40);
          *(v9 + 40) = *(a2 - 10);
        }

        *(a2 - 10) = v43;
      }

LABEL_51:
      v48 = *v12;
      v49 = *v28;
      v50 = *v38;
      if (*v12 >= *v28)
      {
        if (v50 >= v48)
        {
          goto LABEL_57;
        }

        *v12 = v50;
        *v38 = v48;
        v52 = *(v12 + 8);
        v53 = *(v38 + 8);
        *(v12 + 8) = v53;
        *(v38 + 8) = v52;
        if (v50 < v49)
        {
          *v28 = v50;
          *v12 = v49;
          v54 = *(v28 + 8);
          *(v28 + 8) = v53;
          *(v12 + 8) = v54;
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v50 < v48)
      {
        *v28 = v50;
        *v38 = v49;
        v51 = *(v28 + 8);
        *(v28 + 8) = *(v38 + 8);
        *(v38 + 8) = v51;
LABEL_57:
        v49 = v48;
        goto LABEL_61;
      }

      *v28 = v48;
      *v12 = v49;
      v55 = *(v28 + 8);
      *(v28 + 8) = *(v12 + 8);
      *(v12 + 8) = v55;
      if (v50 < v49)
      {
        *v12 = v50;
        *v38 = v49;
        *(v12 + 8) = *(v38 + 8);
        *(v38 + 8) = v55;
LABEL_60:
        v49 = v50;
      }

LABEL_61:
      v56 = *v9;
      *v9 = v49;
      *v12 = v56;
      v57 = *(v9 + 8);
      *(v9 + 8) = *(v12 + 8);
      *(v12 + 8) = v57;
      --a3;
      v26 = *v9;
      if ((a4 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_63:
      v58 = 0;
      v59 = *(v9 + 8);
      do
      {
        v60 = *(v9 + v58 + 16);
        v58 += 16;
      }

      while (v60 < v26);
      v61 = v9 + v58;
      v62 = a2;
      if (v58 == 16)
      {
        v62 = a2;
        do
        {
          if (v61 >= v62)
          {
            break;
          }

          v64 = *(v62 - 2);
          v62 -= 2;
        }

        while (v64 >= v26);
      }

      else
      {
        do
        {
          v63 = *(v62 - 2);
          v62 -= 2;
        }

        while (v63 >= v26);
      }

      if (v61 >= v62)
      {
        v9 += v58;
        v70 = (v61 - 16);
        if (v61 - 16 != a1)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v65 = *v62;
        v9 += v58;
        v66 = v62;
        do
        {
          *v9 = v65;
          *v66 = v60;
          v67 = *(v9 + 8);
          *(v9 + 8) = *(v66 + 2);
          *(v66 + 2) = v67;
          do
          {
            v68 = *(v9 + 16);
            v9 += 16;
            v60 = v68;
          }

          while (v68 < v26);
          do
          {
            v69 = *(v66 - 2);
            v66 -= 2;
            v65 = v69;
          }

          while (v69 >= v26);
        }

        while (v9 < v66);
        v70 = (v9 - 16);
        if (v9 - 16 != a1)
        {
LABEL_78:
          *a1 = *(v9 - 16);
          *(a1 + 8) = *(v9 - 8);
        }
      }

      *(v9 - 16) = v26;
      *(v9 - 8) = v59;
      if (v61 < v62)
      {
        goto LABEL_82;
      }

      v71 = sub_18372F094(a1, v70, v59);
      if (sub_18372F094(v9, a2, v72))
      {
        a2 = v70;
        if (v71)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v71)
      {
LABEL_82:
        sub_18372E214(a1, v70, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      v88 = *(v9 + 16);
      v89 = *v9;
      v90 = *(v9 + 32);
      if (v88 < *v9)
      {
        if (v90 >= v88)
        {
          *v9 = v88;
          *(v9 + 16) = v89;
          v155 = *(v9 + 8);
          *(v9 + 8) = *(v9 + 24);
          *(v9 + 24) = v155;
          if (v90 >= v89)
          {
            v88 = v90;
            v92 = *(a2 - 2);
            if (v92 >= v90)
            {
              return;
            }
          }

          else
          {
            *(v9 + 16) = v90;
            *(v9 + 32) = v89;
            *(v9 + 24) = *(v9 + 40);
            *(v9 + 40) = v155;
            v88 = v89;
            v92 = *(a2 - 2);
            if (v92 >= v88)
            {
              return;
            }
          }
        }

        else
        {
          *v9 = v90;
          *(v9 + 32) = v89;
          v91 = *(v9 + 8);
          *(v9 + 8) = *(v9 + 40);
          *(v9 + 40) = v91;
          v88 = v89;
          v92 = *(a2 - 2);
          if (v92 >= v88)
          {
            return;
          }
        }

        goto LABEL_199;
      }

      if (v90 >= v88)
      {
        v88 = *(v9 + 32);
      }

      else
      {
        *(v9 + 16) = v90;
        *(v9 + 32) = v88;
        v142 = *(v9 + 24);
        v143 = *(v9 + 40);
        *(v9 + 24) = v143;
        *(v9 + 40) = v142;
        if (v90 < v89)
        {
          *v9 = v90;
          *(v9 + 16) = v89;
          v144 = *(v9 + 8);
          *(v9 + 8) = v143;
          *(v9 + 24) = v144;
          v92 = *(a2 - 2);
          if (v92 >= v88)
          {
            return;
          }

LABEL_199:
          *(v9 + 32) = v92;
          *(a2 - 2) = v88;
          v156 = *(v9 + 40);
          *(v9 + 40) = *(a2 - 2);
          *(a2 - 2) = v156;
          v157 = *(v9 + 32);
          v158 = *(v9 + 16);
          if (v157 < v158)
          {
            *(v9 + 16) = v157;
            *(v9 + 32) = v158;
            v159 = *(v9 + 24);
            v160 = *(v9 + 40);
            *(v9 + 24) = v160;
            *(v9 + 40) = v159;
            v161 = *v9;
            if (v157 < *v9)
            {
              *v9 = v157;
              *(v9 + 16) = v161;
              v162 = *(v9 + 8);
              *(v9 + 8) = v160;
              *(v9 + 24) = v162;
            }
          }

          return;
        }
      }

      v92 = *(a2 - 2);
      if (v92 >= v88)
      {
        return;
      }

      goto LABEL_199;
    }

    if (v10 == 5)
    {

      sub_18372EE9C(v9, (v9 + 16), (v9 + 32), (v9 + 48), a2 - 2, a5);
      return;
    }

    goto LABEL_9;
  }

  v84 = *(v9 + 16);
  v85 = *v9;
  v86 = *(a2 - 2);
  if (v84 >= *v9)
  {
    if (v86 < v84)
    {
      *(v9 + 16) = v86;
      *(a2 - 2) = v84;
      v138 = *(v9 + 24);
      *(v9 + 24) = *(a2 - 2);
      *(a2 - 2) = v138;
      v139 = *(v9 + 16);
      v140 = *v9;
      if (v139 < *v9)
      {
        *v9 = v139;
        *(v9 + 16) = v140;
        v141 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 24);
        *(v9 + 24) = v141;
      }
    }
  }

  else if (v86 >= v84)
  {
    *v9 = v84;
    *(v9 + 16) = v85;
    v153 = *(v9 + 8);
    *(v9 + 8) = *(v9 + 24);
    *(v9 + 24) = v153;
    v154 = *(a2 - 2);
    if (v154 < v85)
    {
      *(v9 + 16) = v154;
      *(a2 - 2) = v85;
      *(v9 + 24) = *(a2 - 2);
      *(a2 - 2) = v153;
    }
  }

  else
  {
    *v9 = v86;
    *(a2 - 2) = v85;
LABEL_113:
    v87 = *(v9 + 8);
    *(v9 + 8) = *(a2 - 2);
    *(a2 - 2) = v87;
  }
}

float sub_18372EE9C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, float result)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *a3;
  if (*a2 < *a1)
  {
    if (v8 >= v6)
    {
      *a1 = v6;
      *a2 = v7;
      result = *(a1 + 2);
      *(a1 + 2) = *(a2 + 2);
      *(a2 + 2) = result;
      v6 = *a3;
      if (*a3 >= v7)
      {
        goto LABEL_11;
      }

      *a2 = v6;
      *a3 = v7;
      *(a2 + 2) = *(a3 + 2);
    }

    else
    {
      *a1 = v8;
      *a3 = v7;
      result = *(a1 + 2);
      *(a1 + 2) = *(a3 + 2);
    }

    *(a3 + 2) = result;
    v6 = v7;
LABEL_11:
    v10 = *a4;
    if (*a4 >= v6)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v8 >= v6)
  {
    v6 = *a3;
    v10 = *a4;
    if (*a4 >= v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v8;
    *a3 = v6;
    result = *(a2 + 2);
    *(a2 + 2) = *(a3 + 2);
    *(a3 + 2) = result;
    v9 = *a1;
    if (*a2 >= *a1)
    {
      goto LABEL_11;
    }

    *a1 = *a2;
    *a2 = v9;
    result = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v6 = *a3;
    v10 = *a4;
    if (*a4 >= *a3)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v10;
  *a4 = v6;
  result = *(a3 + 2);
  *(a3 + 2) = *(a4 + 2);
  *(a4 + 2) = result;
  v11 = *a2;
  if (*a3 < *a2)
  {
    *a2 = *a3;
    *a3 = v11;
    result = *(a2 + 2);
    *(a2 + 2) = *(a3 + 2);
    *(a3 + 2) = result;
    v12 = *a1;
    if (*a2 < *a1)
    {
      *a1 = *a2;
      *a2 = v12;
      result = *(a1 + 2);
      *(a1 + 2) = *(a2 + 2);
      *(a2 + 2) = result;
    }
  }

LABEL_16:
  v13 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v13;
    result = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = result;
    v14 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v14;
      result = *(a3 + 2);
      *(a3 + 2) = *(a4 + 2);
      *(a4 + 2) = result;
      v15 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v15;
        result = *(a2 + 2);
        *(a2 + 2) = *(a3 + 2);
        *(a3 + 2) = result;
        v16 = *a1;
        if (*a2 < *a1)
        {
          *a1 = *a2;
          *a2 = v16;
          result = *(a1 + 2);
          *(a1 + 2) = *(a2 + 2);
          *(a2 + 2) = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_18372F094(uint64_t a1, uint64_t *a2, float a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v5 = *(a2 - 2);
      v6 = *a1;
      if (v5 >= *a1)
      {
        return 1;
      }

      *a1 = v5;
      *(a2 - 2) = v6;
      goto LABEL_14;
    }

LABEL_15:
    v11 = (a1 + 32);
    v12 = *(a1 + 32);
    v13 = *(a1 + 16);
    v14 = *a1;
    if (v13 >= *a1)
    {
      if (v12 < v13)
      {
        *(a1 + 16) = v12;
        *(a1 + 32) = v13;
        v24 = *(a1 + 24);
        v25 = *(a1 + 40);
        *(a1 + 24) = v25;
        *(a1 + 40) = v24;
        if (v12 < v14)
        {
          *a1 = v12;
          *(a1 + 16) = v14;
          v26 = *(a1 + 8);
          *(a1 + 8) = v25;
          *(a1 + 24) = v26;
        }
      }

      goto LABEL_36;
    }

    if (v12 >= v13)
    {
      *a1 = v13;
      *(a1 + 16) = v14;
      v15 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v15;
      if (v12 >= v14)
      {
LABEL_36:
        v33 = (a1 + 48);
        if ((a1 + 48) == a2)
        {
          return 1;
        }

        v34 = 0;
        v35 = 0;
        while (1)
        {
          v36 = *v33;
          v37 = *v11;
          if (*v33 < *v11)
          {
            break;
          }

LABEL_45:
          v11 = v33;
          v34 += 16;
          v33 += 2;
          if (v33 == a2)
          {
            return 1;
          }
        }

        v38 = *(v33 + 2);
        v39 = v34;
        do
        {
          v40 = a1 + v39;
          *(v40 + 48) = v37;
          *(v40 + 56) = *(a1 + v39 + 40);
          if (v39 == -32)
          {
            *a1 = v36;
            *(a1 + 8) = v38;
            if (++v35 != 8)
            {
              goto LABEL_45;
            }

            return v33 + 2 == a2;
          }

          v37 = *(v40 + 16);
          v39 -= 16;
        }

        while (v36 < v37);
        v41 = a1 + v39;
        *(v41 + 48) = v36;
        *(v41 + 56) = v38;
        if (++v35 != 8)
        {
          goto LABEL_45;
        }

        return v33 + 2 == a2;
      }

      *(a1 + 16) = v12;
      *(a1 + 32) = v14;
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      *a1 = v12;
      *(a1 + 32) = v14;
      v15 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 40);
    }

    *(a1 + 40) = v15;
    goto LABEL_36;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_18372EE9C(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 2, a3);
        return 1;
      }

      goto LABEL_15;
    }

    v16 = *(a1 + 16);
    v17 = *a1;
    v18 = *(a1 + 32);
    if (v16 >= *a1)
    {
      if (v18 >= v16)
      {
        v16 = *(a1 + 32);
      }

      else
      {
        *(a1 + 16) = v18;
        *(a1 + 32) = v16;
        v27 = *(a1 + 24);
        v28 = *(a1 + 40);
        *(a1 + 24) = v28;
        *(a1 + 40) = v27;
        if (v18 < v17)
        {
          *a1 = v18;
          *(a1 + 16) = v17;
          v29 = *(a1 + 8);
          *(a1 + 8) = v28;
          *(a1 + 24) = v29;
          v30 = *(a2 - 2);
          if (v30 >= v16)
          {
            return 1;
          }

          goto LABEL_53;
        }
      }

      v30 = *(a2 - 2);
      if (v30 >= v16)
      {
        return 1;
      }
    }

    else
    {
      if (v18 < v16)
      {
        *a1 = v18;
        *(a1 + 32) = v17;
        v19 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        goto LABEL_49;
      }

      *a1 = v16;
      *(a1 + 16) = v17;
      v19 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v19;
      if (v18 < v17)
      {
        *(a1 + 16) = v18;
        *(a1 + 32) = v17;
        *(a1 + 24) = *(a1 + 40);
LABEL_49:
        *(a1 + 40) = v19;
        v16 = v17;
        v30 = *(a2 - 2);
        if (v30 >= v16)
        {
          return 1;
        }

        goto LABEL_53;
      }

      v16 = v18;
      v30 = *(a2 - 2);
      if (v30 >= v18)
      {
        return 1;
      }
    }

LABEL_53:
    *(a1 + 32) = v30;
    *(a2 - 2) = v16;
    v42 = *(a1 + 40);
    *(a1 + 40) = *(a2 - 2);
    *(a2 - 2) = v42;
    v43 = *(a1 + 32);
    v44 = *(a1 + 16);
    if (v43 >= v44)
    {
      return 1;
    }

    *(a1 + 16) = v43;
    *(a1 + 32) = v44;
    v45 = *(a1 + 24);
    v46 = *(a1 + 40);
    *(a1 + 24) = v46;
    *(a1 + 40) = v45;
    v47 = *a1;
    if (v43 >= *a1)
    {
      return 1;
    }

    *a1 = v43;
    *(a1 + 16) = v47;
    v48 = *(a1 + 8);
    *(a1 + 8) = v46;
    *(a1 + 24) = v48;
    return 1;
  }

  v7 = *(a1 + 16);
  v8 = *a1;
  v9 = *(a2 - 2);
  if (v7 >= *a1)
  {
    if (v9 >= v7)
    {
      return 1;
    }

    *(a1 + 16) = v9;
    *(a2 - 2) = v7;
    v20 = *(a1 + 24);
    *(a1 + 24) = *(a2 - 2);
    *(a2 - 2) = v20;
    v21 = *(a1 + 16);
    v22 = *a1;
    if (v21 >= *a1)
    {
      return 1;
    }

    *a1 = v21;
    *(a1 + 16) = v22;
    v23 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v23;
    return 1;
  }

  else
  {
    if (v9 < v7)
    {
      *a1 = v9;
      *(a2 - 2) = v8;
LABEL_14:
      v10 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 2);
      *(a2 - 2) = v10;
      return 1;
    }

    *a1 = v7;
    *(a1 + 16) = v8;
    v31 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v31;
    v32 = *(a2 - 2);
    if (v32 >= v8)
    {
      return 1;
    }

    *(a1 + 16) = v32;
    *(a2 - 2) = v8;
    *(a1 + 24) = *(a2 - 2);
    *(a2 - 2) = v31;
    return 1;
  }
}

BOOL sub_18372F4B0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = (a1 + 16);
  v3 = a2[1];
  if (!v3)
  {
    return *v2 == 0;
  }

  v4 = v3 - 1;
  v5 = *a2;
  if ((v3 & (v3 - 1)) == 0)
  {
LABEL_4:
    v2 = *v2;
    result = v2 == 0;
    if (!v2)
    {
      return result;
    }

    v7 = *(v2 + 2);
    v8 = *(v5 + 8 * (v7 & v4));
    if (!v8)
    {
      return result;
    }

    v9 = *v8;
    if (!v9)
    {
      return result;
    }

    while (1)
    {
      v10 = *(v9 + 1);
      if (v7 == v10)
      {
        if (*(v9 + 2) == v7)
        {
          if (v2[6] != v9[6])
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else if ((v10 & v4) != (v7 & v4))
      {
        return 0;
      }

      v9 = *v9;
      if (!v9)
      {
        return 0;
      }
    }
  }

  do
  {
    v2 = *v2;
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v11 = *(v2 + 2);
    v12 = v11;
    if (v11 >= v3)
    {
      v12 = v11 % v3;
    }

    v13 = *(v5 + 8 * v12);
    if (!v13)
    {
      break;
    }

    v14 = *v13;
    if (!v14)
    {
      break;
    }

    while (1)
    {
      v15 = *(v14 + 1);
      if (v11 == v15)
      {
        break;
      }

      if (v15 >= v3)
      {
        v15 %= v3;
      }

      if (v15 != v12)
      {
        return 0;
      }

LABEL_22:
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }
    }

    if (*(v14 + 2) != v11)
    {
      goto LABEL_22;
    }
  }

  while (v2[6] == v14[6]);
  return result;
}

void ***sub_18372F5F0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = *(v4 - 3);
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

          v9 = *(v4 - 5);
          v4 -= 5;
          v8 = v9;
          *v4 = 0;
          if (v9)
          {
            operator delete(v8);
          }
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

char *sub_18372F694(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_18369761C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
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

void *sub_18372F7F0(void *a1, unint64_t *a2)
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

void sub_18372FB2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[2] = a2[2];
        *(v7 + 6) = *(a2 + 6);
        v8 = *v7;
        sub_18372FC6C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_18372FC24(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_18372FC6C(uint64_t *a1, void *a2)
{
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = sub_18372FD9C(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

void *sub_18372FD9C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v7 / v8);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_22;
  }

  if (prime < v6)
  {
    v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v24 = prime;
      v25 = std::__next_prime(v21);
      if (v24 <= v25)
      {
        prime = v25;
      }

      else
      {
        prime = v24;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    sub_18373001C(a1, prime);
  }

LABEL_38:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v16 = v10[1];
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && v10[2] == *a3;
      v13 = v12 != (v11 & 1);
      v14 = v11 & v13;
      v11 |= v13;
    }

    while ((v14 & 1) == 0);
    return result;
  }

LABEL_39:
  v26 = a2;
  if (v6 <= a2)
  {
    v26 = a2 % v6;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  do
  {
    result = v27;
    v27 = *v27;
    if (!v27)
    {
      break;
    }

    v32 = v27[1];
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && v27[2] == *a3;
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_18373001C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_183688F00();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

double sub_183730C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_183731100;
    v22[3] = &unk_1E6DDCFA8;
    v22[4] = a1;
    v22[5] = &v23;
    objc_msgSend_enumerateObjectsUsingBlock_(v3, v4, v22, v5, v6, v7);
    v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);
    v20 = v24[3];
    if (v14)
    {
      v20 = v20 / objc_msgSend_count(v8, v15, v16, v17, v18, v19);
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v20 = 0.0;
  }

  return v20;
}

void sub_183730D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

double sub_183730D74(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_183730E5C;
    v11[3] = &unk_1E6DDCFA8;
    v11[4] = a1;
    v11[5] = &v12;
    objc_msgSend_enumerateObjectsUsingBlock_(v3, v4, v11, v5, v6, v7);
    v9 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

void sub_183730E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_183730E5C(uint64_t a1, void *a2)
{
  v15 = a2;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 8), v3, v15, v4, v5, v6);
  v13 = v7;
  if (v7)
  {
    objc_msgSend_floatValue(v7, v8, v9, v10, v11, v12);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v14;
  }
}

double sub_183730F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_18373103C;
    v12[3] = &unk_1E6DDCFD0;
    v12[4] = a1;
    v12[5] = &v17;
    v12[6] = &v13;
    objc_msgSend_enumerateObjectsUsingBlock_(v3, v4, v12, v5, v6, v7);
    v9 = v14[3];
    if (v9)
    {
      v10 = v18[3] / v9;
    }

    else
    {
      v10 = 0.0;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

void sub_183731014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_18373103C(void *a1, void *a2)
{
  v15 = a2;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), v3, v15, v4, v5, v6);
  v13 = v7;
  if (v7)
  {
    objc_msgSend_floatValue(v7, v8, v9, v10, v11, v12);
    *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + v14;
    ++*(*(a1[6] + 8) + 24);
  }
}

void sub_183731100(uint64_t a1, void *a2)
{
  v15 = a2;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 16), v3, v15, v4, v5, v6);
  v13 = v7;
  if (v7)
  {
    objc_msgSend_floatValue(v7, v8, v9, v10, v11, v12);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v14;
  }
}

void sub_1837321E0(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  if (a1)
  {
    v30 = v7;
    sub_1837322E4(a1, v7);
    v8 = *(a1 + 8);
    *&v9 = a3;
    v15 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v10, v11, v12, v13, v14, v9);
    objc_msgSend_setObject_forKey_(v8, v16, v15, v30, v17, v18);

    v19 = *(a1 + 16);
    *&v20 = a4;
    v26 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, v23, v24, v25, v20);
    objc_msgSend_setObject_forKey_(v19, v27, v26, v30, v28, v29);

    *(a1 + 24) = *(a1 + 24) + a3;
    v7 = v30;
  }
}

BOOL sub_1837322E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    v9 = objc_msgSend_objectForKey_(*(a1 + 8), v4, v3, v5, v6, v7);
    v15 = v9;
    v16 = v9 != 0;
    if (v9)
    {
      objc_msgSend_doubleValue(v9, v10, v11, v12, v13, v14);
      *(a1 + 24) = *(a1 + 24) - v17;
      objc_msgSend_removeObjectForKey_(*(a1 + 8), v18, v8, v19, v20, v21);
      objc_msgSend_removeObjectForKey_(*(a1 + 16), v22, v8, v23, v24, v25);
    }

    return v16;
  }

  else
  {

    return 0;
  }
}

void sub_183733954(uint64_t a1, void *a2)
{
  v18 = a2;
  if (a1 && (objc_msgSend_isEqualToDrawing_(*(a1 + 24), v3, v18, v4, v5, v6) & 1) == 0)
  {
    *(a1 + 40) = 0;
    if ((objc_msgSend_isPrefixForDrawing_(*(a1 + 24), v7, v18, v8, v9, v10) & 1) == 0)
    {
      *(a1 + 48) = 0;
    }

    v16 = objc_msgSend_copy(v18, v11, v12, v13, v14, v15);
    v17 = *(a1 + 24);
    *(a1 + 24) = v16;

    sub_1837339F4(a1);
  }
}

void sub_1837339F4(uint64_t a1)
{
  v626 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    __p = 0;
    v598 = 0;
    v599 = 0;
    v2 = *(a1 + 24);
    v8 = v2;
    v9 = 5.0;
    if (*(a1 + 8) == 1)
    {
      objc_msgSend_bounds(v2, v3, v4, v5, v6, v7);
      x = v627.origin.x;
      y = v627.origin.y;
      width = v627.size.width;
      height = v627.size.height;
      MinX = CGRectGetMinX(v627);
      v628.origin.x = x;
      v628.origin.y = y;
      v628.size.width = width;
      v628.size.height = height;
      MinY = CGRectGetMinY(v628);
      v629.origin.x = x;
      v629.origin.y = y;
      v629.size.width = width;
      v629.size.height = height;
      MaxX = CGRectGetMaxX(v629);
      v630.origin.x = x;
      v630.origin.y = y;
      v630.size.width = width;
      v630.size.height = height;
      MaxY = CGRectGetMaxY(v630);
      v17.f32[0] = MinX;
      v18 = MinY;
      v17.f32[1] = v18;
      v19.f64[0] = MaxX;
      v19.f64[1] = MaxY;
      v20 = vsub_f32(v17, vcvt_f32_f64(v19));
      v9 = sqrtf(vaddv_f32(vmul_f32(v20, v20))) * 0.025;
    }

    v25 = objc_msgSend_drawingSpatiallyResampled_outputPointMap_(v8, v21, &__p, v22, v23, v24, v9);

    v26 = *(a1 + 32);
    *(a1 + 32) = v25;

    v32 = (a1 + 80);
    if ((a1 + 80) != &__p)
    {
      v33 = __p;
      v34 = v598;
      v35 = v598 - __p;
      v36 = *(a1 + 96);
      v37 = *(a1 + 80);
      if (v36 - v37 < (v598 - __p))
      {
        v38 = 0xAAAAAAAAAAAAAAABLL * (v35 >> 3);
        if (v37)
        {
          v39 = *(a1 + 88);
          v40 = *(a1 + 80);
          if (v39 != v37)
          {
            do
            {
              v41 = v39 - 24;
              sub_18368D56C(v39 - 24, *(v39 - 16));
              v39 = v41;
            }

            while (v41 != v37);
            v40 = *v32;
          }

          *(a1 + 88) = v37;
          operator delete(v40);
          v36 = 0;
          *v32 = 0;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        if (v38 <= 0xAAAAAAAAAAAAAAALL)
        {
          v42 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
          v43 = 2 * v42;
          if (2 * v42 <= v38)
          {
            v43 = v38;
          }

          if (v42 >= 0x555555555555555)
          {
            v44 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v44 = v43;
          }

          if (v44 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }
        }

        sub_18368964C();
      }

      v45 = *(a1 + 88);
      v46 = v45 - v37;
      if (v45 - v37 >= v35)
      {
        if (__p != v598)
        {
          v50 = __p + 8;
          do
          {
            if (v33 != v37)
            {
              sub_183735A24(v37, *v33, v50);
            }

            v33 += 24;
            v37 += 24;
            v50 += 3;
          }

          while (v33 != v34);
          v45 = *(a1 + 88);
        }

        for (; v45 != v37; v45 -= 3)
        {
          sub_18368D56C((v45 - 3), *(v45 - 2));
        }

        *(a1 + 88) = v37;
      }

      else
      {
        if (v45 != v37)
        {
          v47 = __p + 8;
          v48 = v46;
          v49 = __p;
          do
          {
            if (v49 != v37)
            {
              sub_183735A24(v37, *v49, v47);
            }

            v49 += 3;
            v37 += 24;
            v47 += 3;
            v48 -= 24;
          }

          while (v48);
          v45 = *(a1 + 88);
          v32 = (a1 + 80);
        }

        v51 = &v46[v33];
        v600[0] = v45;
        v606[0] = v45;
        v618 = v32;
        v619 = v606;
        v620 = v600;
        v52 = v45;
        LOBYTE(v621) = 0;
        if (v51 != v34)
        {
          v52 = v45;
          do
          {
            sub_18373557C(v52, v51);
            v51 += 24;
            v52 = (v600[0] + 24);
            v600[0] += 24;
          }

          while (v51 != v34);
        }

        *(a1 + 88) = v52;
      }
    }

    objc_msgSend_removeAllIndexes(*(a1 + 64), v27, v28, v29, v30, v31);
    v573 = objc_msgSend_array(MEMORY[0x1E695DF70], v53, v54, v55, v56, v57);
    v572 = v32;
    v592 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v58, v59, v60, v61, v62);
    objc_msgSend_addObject_(v573, v63, &unk_1EF1ECDA8, v64, v65, v66);
    for (i = *(a1 + 56); ; ++i)
    {
      v68 = *(a1 + 32);
      v73 = i < objc_msgSend_pointCountForStrokeIndex_(v68, v69, 0, v70, v71, v72) - *(a1 + 56);

      if (!v73)
      {
        break;
      }

      v79 = *(a1 + 32);
      v80 = *(a1 + 56);
      v81 = v79;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v81, v82, 0, i - v80, v83, v84);
      v586 = v86;
      v589 = v85;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v81, v87, 0, i + v80, v88, v89);
      v582 = v91;
      v584 = v90;

      v92.f64[0] = v589;
      v92.f64[1] = v586;
      v93.f64[0] = v584;
      v93.f64[1] = v582;
      *&v92.f64[0] = vsub_f32(vcvt_f32_f64(v92), vcvt_f32_f64(v93));
      v99 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v94, v95, v96, v97, v98, sqrtf(vaddv_f32(vmul_f32(*&v92.f64[0], *&v92.f64[0]))));
      v104 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v100, i, v101, v102, v103);
      objc_msgSend_setObject_forKeyedSubscript_(v592, v105, v99, v104, v106, v107);
    }

    if (objc_msgSend_count(v592, v74, v75, v76, v77, v78))
    {
      v113 = objc_msgSend_allValues(v592, v108, v109, v110, v111, v112);
      v118 = objc_msgSend_sortedArrayUsingSelector_(v113, v114, sel_compare_, v115, v116, v117);

      v124 = objc_msgSend_count(v118, v119, v120, v121, v122, v123);
      v129 = objc_msgSend_objectAtIndexedSubscript_(v118, v125, v124 >> 1, v126, v127, v128);
      objc_msgSend_floatValue(v129, v130, v131, v132, v133, v134);
      v136 = v135;

      v137 = v136 * 0.95;
      for (j = *(a1 + 56); ; ++j)
      {
        v139 = *(a1 + 32);
        v144 = j < objc_msgSend_pointCountForStrokeIndex_(v139, v140, 0, v141, v142, v143) - *(a1 + 56);

        if (!v144)
        {
          break;
        }

        v149 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v145, j, v146, v147, v148);
        v154 = objc_msgSend_objectForKeyedSubscript_(v592, v150, v149, v151, v152, v153);
        objc_msgSend_floatValue(v154, v155, v156, v157, v158, v159);
        v161 = v137 > v160;

        if (v161)
        {
          v167 = 1.79769313e308;
          v168 = j;
          while (j < objc_msgSend_count(v592, v162, v163, v164, v165, v166))
          {
            v173 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v169, j, v170, v171, v172);
            v178 = objc_msgSend_objectForKeyedSubscript_(v592, v174, v173, v175, v176, v177);
            objc_msgSend_floatValue(v178, v179, v180, v181, v182, v183);
            v185 = v137 > v184;

            if (!v185)
            {
              break;
            }

            v186 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v169, j, v170, v171, v172);
            v191 = objc_msgSend_objectForKeyedSubscript_(v592, v187, v186, v188, v189, v190);
            objc_msgSend_floatValue(v191, v192, v193, v194, v195, v196);
            v198 = v167 > v197;

            if (v198)
            {
              v199 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v162, j, v164, v165, v166);
              v204 = objc_msgSend_objectForKeyedSubscript_(v592, v200, v199, v201, v202, v203);
              objc_msgSend_floatValue(v204, v205, v206, v207, v208, v209);
              v211 = v210;

              v167 = v211;
              v168 = j;
            }

            ++j;
          }

          v212 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v169, v168, v170, v171, v172);
          objc_msgSend_addObject_(v573, v213, v212, v214, v215, v216);
        }
      }
    }

    v217 = MEMORY[0x1E696AD98];
    v218 = *(a1 + 32);
    v223 = objc_msgSend_pointCountForStrokeIndex_(v218, v219, 0, v220, v221, v222);
    v228 = objc_msgSend_numberWithUnsignedInteger_(v217, v224, v223 - 1, v225, v226, v227);
    objc_msgSend_addObject_(v573, v229, v228, v230, v231, v232);

    v237 = objc_msgSend_sortedArrayUsingSelector_(v573, v233, sel_compare_, v234, v235, v236);
    v575 = *(a1 + 32);
    v590 = v573;
    v574 = v592;
    for (k = 1; k < objc_msgSend_count(v590, v238, v239, v240, v241, v242); ++k)
    {
      v248 = objc_msgSend_objectAtIndex_(v590, v244, k - 1, v245, v246, v247);
      v254 = objc_msgSend_integerValue(v248, v249, v250, v251, v252, v253);

      v259 = objc_msgSend_objectAtIndex_(v590, v255, k, v256, v257, v258);
      v265 = objc_msgSend_integerValue(v259, v260, v261, v262, v263, v264);

      if (!sub_183735380(v575, v254, v265, 0.95))
      {
        v270 = v574;
        v271 = v265 - v254;
        if (v265 < v254)
        {
          v271 = v265 - v254 + 3;
        }

        v272 = v271 >> 2;
        if (*(a1 + 56) <= (v272 + v254))
        {
          v273 = v272 + v254;
        }

        else
        {
          v273 = *(a1 + 56);
        }

        v274 = v265 - v272;
        v275 = 0x7FFFFFFFFFFFFFFFLL;
        if (v273 < v274)
        {
          v276 = 1.79769313e308;
          do
          {
            v277 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v266, v273, v267, v268, v269);
            v282 = objc_msgSend_objectForKeyedSubscript_(v270, v278, v277, v279, v280, v281);
            objc_msgSend_floatValue(v282, v283, v284, v285, v286, v287);
            v289 = v276 > v288;

            if (v289)
            {
              v290 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v266, v273, v267, v268, v269);
              v295 = objc_msgSend_objectForKeyedSubscript_(v270, v291, v290, v292, v293, v294);
              objc_msgSend_floatValue(v295, v296, v297, v298, v299, v300);
              v302 = v301;

              v276 = v302;
              v275 = v273;
            }

            ++v273;
          }

          while (v273 < v274);
        }

        v311 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v303, v275, v304, v305, v306);
        if (v275 != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend_containsObject_(v590, v307, v311, v308, v309, v310) & 1) == 0)
        {
          objc_msgSend_insertObject_atIndex_(v590, v312, v311, k, v313, v314);
          k = 1;
        }
      }
    }

    v315 = v575;
    v321 = v590;
    v322 = 1;
    while (1)
    {
      v323 = v322;
      if (v322 >= objc_msgSend_count(v321, v316, v317, v318, v319, v320) - 1)
      {
        break;
      }

      v328 = v322 - 1;
      v329 = objc_msgSend_objectAtIndex_(v321, v324, v322 - 1, v325, v326, v327);
      v335 = objc_msgSend_integerValue(v329, v330, v331, v332, v333, v334);

      v322 = v323 + 1;
      v340 = objc_msgSend_objectAtIndex_(v321, v336, v323 + 1, v337, v338, v339);
      v346 = objc_msgSend_integerValue(v340, v341, v342, v343, v344, v345);

      if (sub_183735380(v315, v335, v346, 0.99))
      {
        objc_msgSend_removeObjectAtIndex_(v321, v316, v323, v318, v319, v320);
        if (v328 <= 1)
        {
          v347 = 1;
        }

        else
        {
          v347 = v323 - 1;
        }

        v322 = v347 + 1;
      }
    }

    v576 = v315;
    v353 = v321;
    v354 = 1;
    while (1)
    {
      v355 = v354;
      if (v354 >= objc_msgSend_count(v353, v348, v349, v350, v351, v352) - 1)
      {
        break;
      }

      v360 = v354 - 1;
      v361 = objc_msgSend_objectAtIndex_(v353, v356, v354 - 1, v357, v358, v359);
      v367 = objc_msgSend_integerValue(v361, v362, v363, v364, v365, v366);

      v372 = objc_msgSend_objectAtIndex_(v353, v368, v354, v369, v370, v371);
      v378 = objc_msgSend_integerValue(v372, v373, v374, v375, v376, v377);

      ++v354;
      v383 = objc_msgSend_objectAtIndex_(v353, v379, v355 + 1, v380, v381, v382);
      v389 = objc_msgSend_integerValue(v383, v384, v385, v386, v387, v388);

      v390 = v576;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v390, v391, 0, v367, v392, v393);
      v585 = v395;
      v587 = v394;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v390, v396, 0, v378, v397, v398);
      v581 = v400;
      v583 = v399;

      v401 = v390;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v401, v402, 0, v378, v403, v404);
      v579 = v406;
      v580 = v405;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v401, v407, 0, v389, v408, v409);
      v577 = v411;
      v578 = v410;

      v412.f64[0] = v587;
      v412.f64[1] = v585;
      v413.f64[0] = v583;
      v413.f64[1] = v581;
      *&v412.f64[0] = vsub_f32(vcvt_f32_f64(v412), vcvt_f32_f64(v413));
      v413.f64[0] = v580;
      v413.f64[1] = v579;
      v414.f64[0] = v578;
      v414.f64[1] = v577;
      *&v413.f64[0] = vsub_f32(vcvt_f32_f64(v413), vcvt_f32_f64(v414));
      if (sub_183735380(v401, v367, v389, dbl_1839CE770[sqrtf(vaddv_f32(vmul_f32(*&v412.f64[0], *&v412.f64[0]))) + sqrtf(vaddv_f32(vmul_f32(*&v413.f64[0], *&v413.f64[0]))) > 10.0]))
      {
        objc_msgSend_removeObjectAtIndex_(v353, v348, v355, v350, v351, v352);
        if (v360 <= 1)
        {
          v415 = 1;
        }

        else
        {
          v415 = v355 - 1;
        }

        v354 = v415 + 1;
      }
    }

    v588 = v576;
    v416 = v353;
    v422 = v574;
    for (m = 1; m < (objc_msgSend_count(v416, v417, v418, v419, v420, v421) - 2); ++m)
    {
      v429 = objc_msgSend_objectAtIndex_(v416, v425, m, v426, v427, v428);
      v435 = objc_msgSend_integerValue(v429, v430, v431, v432, v433, v434);

      v440 = objc_msgSend_objectAtIndex_(v416, v436, m + 1, v437, v438, v439);
      v446 = objc_msgSend_integerValue(v440, v441, v442, v443, v444, v445);

      v447 = v446 - v435;
      if (v446 - v435 < 0)
      {
        v447 = v435 - v446;
      }

      if (v447 == 1)
      {
        v448 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v417, v435, v419, v420, v421);
        v453 = objc_msgSend_objectForKeyedSubscript_(v422, v449, v448, v450, v451, v452);
        objc_msgSend_floatValue(v453, v454, v455, v456, v457, v458);
        v460 = v459;
        v465 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v461, v446, v462, v463, v464);
        v470 = objc_msgSend_objectForKeyedSubscript_(v422, v466, v465, v467, v468, v469);
        objc_msgSend_floatValue(v470, v471, v472, v473, v474, v475);
        v477 = v460 > v476;

        if (v477)
        {
          objc_msgSend_removeObjectAtIndex_(v416, v478, m, v479, v480, v481);
        }

        else
        {
          objc_msgSend_removeObjectAtIndex_(v416, v478, m + 1, v479, v480, v481);
        }

        v424 = 2;
        if (m > 2)
        {
          v424 = m;
        }

        m = v424 - 1;
      }
    }

    v482 = v416;
    v595 = 0u;
    v596 = 0u;
    v593 = 0u;
    v594 = 0u;
    v483 = v482;
    v486 = objc_msgSend_countByEnumeratingWithState_objects_count_(v483, v484, &v593, v625, 16, v485);
    if (v486)
    {
      v487 = *v594;
      do
      {
        for (n = 0; n != v486; ++n)
        {
          if (*v594 != v487)
          {
            objc_enumerationMutation(v483);
          }

          v489 = *(*(&v593 + 1) + 8 * n);
          v490 = *(a1 + 64);
          v496 = objc_msgSend_unsignedIntegerValue(v489, v491, v492, v493, v494, v495);
          objc_msgSend_addIndex_(v490, v497, v496, v498, v499, v500);
        }

        v486 = objc_msgSend_countByEnumeratingWithState_objects_count_(v483, v501, &v593, v625, 16, v502);
      }

      while (v486);
    }

    v611 = 0;
    v612 = &v611;
    v613 = 0x2020000000;
    v614 = 0;
    v607 = 0;
    v608 = &v607;
    v609 = 0x2020000000;
    v503 = objc_alloc(MEMORY[0x1E696AC90]);
    v508 = objc_msgSend_initWithIndexSet_(v503, v504, *(a1 + 64), v505, v506, v507);
    Index = objc_msgSend_firstIndex(v508, v509, v510, v511, v512, v513);

    v610 = Index;
    v515 = objc_alloc(MEMORY[0x1E696AC90]);
    v520 = objc_msgSend_initWithIndexSet_(v515, v516, *(a1 + 64), v517, v518, v519);
    v606[0] = MEMORY[0x1E69E9820];
    v606[1] = 3221225472;
    v606[2] = sub_183734FB8;
    v606[3] = &unk_1E6DDCFF8;
    v606[4] = a1;
    v606[5] = &v607;
    v606[6] = &v611;
    objc_msgSend_enumerateIndexesUsingBlock_(v520, v521, v606, v522, v523, v524);

    v525 = v612[3] * 0.25;
    v526 = *(a1 + 16);
    v527 = 0.01;
    if (v526 >= v525)
    {
      if (v525 >= 0.01)
      {
        v527 = v612[3] * 0.25;
      }
    }

    else if (v526 >= 0.01)
    {
      v527 = *(a1 + 16);
    }

    v528 = objc_alloc(MEMORY[0x1E696AC90]);
    v533 = objc_msgSend_initWithIndexSet_(v528, v529, *(a1 + 64), v530, v531, v532);
    v539 = objc_msgSend_firstIndex(v533, v534, v535, v536, v537, v538);
    v608[3] = v539;

    v605[0] = 0;
    v605[1] = v605;
    v605[2] = 0x2020000000;
    v605[3] = 0;
    v545 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v540, v541, v542, v543, v544);
    v546 = objc_alloc(MEMORY[0x1E696AC90]);
    v551 = objc_msgSend_initWithIndexSet_(v546, v547, *(a1 + 64), v548, v549, v550);
    v600[0] = MEMORY[0x1E69E9820];
    v600[1] = 3221225472;
    v600[2] = sub_18373510C;
    v600[3] = &unk_1E6DDD020;
    v600[4] = a1;
    v602 = &v607;
    v604 = v527;
    v603 = v605;
    v552 = v545;
    v601 = v552;
    objc_msgSend_enumerateIndexesUsingBlock_(v551, v553, v600, v554, v555, v556);

    v557 = *(a1 + 48);
    if (v557 <= *(a1 + 40))
    {
      v557 = *(a1 + 40);
    }

    *(a1 + 48) = v557;
    v558 = v552;
    v559 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v618 = 0;
    v619 = &v618;
    v620 = 0x4812000000;
    v621 = sub_183735534;
    v622 = sub_183735570;
    v623 = &unk_183A5AC72;
    sub_18373557C(v624, *v572);
    v615[0] = MEMORY[0x1E69E9820];
    v615[1] = 3221225472;
    v615[2] = sub_1837356BC;
    v615[3] = &unk_1E6DDD048;
    v617 = &v618;
    v560 = v559;
    v616 = v560;
    objc_msgSend_enumerateIndexesUsingBlock_(v558, v561, v615, v562, v563, v564);
    v565 = v616;
    v566 = v560;

    _Block_object_dispose(&v618, 8);
    sub_18368D56C(v624, v624[1]);

    v567 = *(a1 + 72);
    *(a1 + 72) = v566;

    _Block_object_dispose(v605, 8);
    _Block_object_dispose(&v607, 8);
    _Block_object_dispose(&v611, 8);

    v568 = __p;
    if (__p)
    {
      v569 = v598;
      v570 = __p;
      if (v598 != __p)
      {
        do
        {
          v571 = v569 - 24;
          sub_18368D56C((v569 - 24), *(v569 - 2));
          v569 = v571;
        }

        while (v571 != v568);
        v570 = __p;
      }

      v598 = v568;
      operator delete(v570);
    }
  }
}

void sub_183734FB8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[4];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AC90]);
    v8 = objc_msgSend_initWithIndexSet_(v9, v10, v8[8], v11, v12, v13);
  }

  Index = objc_msgSend_firstIndex(v8, a2, a3, a4, a5, a6);

  if (Index != a2)
  {
    v15 = a1[4];
    if (v15)
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = *(*(a1[5] + 8) + 24);
    v19 = v17;
    v23 = v19;
    if (v15)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(v19, v20, 0, v18, v21, v22);
      v35 = v25;
      v36 = v24;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v23, v26, 0, a2, v27, v28);
      v29.f64[0] = v36;
      v29.f64[1] = v35;
      v31.f64[1] = v30;
      *&v31.f64[0] = vsub_f32(vcvt_f32_f64(v29), vcvt_f32_f64(v31));
      v32 = sqrtf(vaddv_f32(vmul_f32(*&v31.f64[0], *&v31.f64[0])));
    }

    else
    {
      v32 = 0.0;
    }

    v33 = *(a1[6] + 8);
    v34 = *(v33 + 24);
    if (v34 <= v32)
    {
      v34 = v32;
    }

    *(v33 + 24) = v34;
    *(*(a1[5] + 8) + 24) = a2;
  }
}

void sub_18373510C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(*(v8 + 32), a2, 0, a2, a5, a6);
  }

  else
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(0, a2, 0, a2, a5, a6);
  }

  v16 = v14;
  v17 = v15;
  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E696AC90]);
    v18 = objc_msgSend_initWithIndexSet_(v19, v20, v18[8], v21, v22, v23);
  }

  Index = objc_msgSend_firstIndex(v18, v9, v10, v11, v12, v13);

  if (Index != a2)
  {
    v28 = *(a1 + 32);
    if (v28)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(*(v28 + 32), v25, 0, *(*(*(a1 + 48) + 8) + 24), v26, v27);
    }

    else
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(0, v25, 0, *(*(*(a1 + 48) + 8) + 24), v26, v27);
    }

    v31 = v29;
    v32 = v30;
    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 32);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v36 = *(*(*(a1 + 48) + 8) + 24);
    v37 = v35;
    v41 = v37;
    if (v33)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(v37, v38, 0, v36, v39, v40);
      v63 = v43;
      v64 = v42;
      objc_msgSend_pointForStrokeIndex_pointIndex_(v41, v44, 0, a2, v45, v46);
      v47.f64[0] = v64;
      v47.f64[1] = v63;
      v49.f64[1] = v48;
      *&v49.f64[0] = vsub_f32(vcvt_f32_f64(v47), vcvt_f32_f64(v49));
      v50 = sqrtf(vaddv_f32(vmul_f32(*&v49.f64[0], *&v49.f64[0])));

      if (v50 <= *(a1 + 64))
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (*(a1 + 64) >= 0.0)
      {
        goto LABEL_16;
      }
    }

    v51.f32[0] = v31 - v16;
    v52 = v32 - v17;
    v51.f32[1] = v52;
    v53 = vmul_f32(v51, v51);
    v53.i32[0] = vadd_f32(v53, vdup_lane_s32(v53, 1)).u32[0];
    v54 = vrsqrte_f32(v53.u32[0]);
    v55 = vmul_f32(v54, vrsqrts_f32(v53.u32[0], vmul_f32(v54, v54)));
    v56 = vmul_n_f32(v51, vmul_f32(v55, vrsqrts_f32(v53.u32[0], vmul_f32(v55, v55))).f32[0]);
    v57 = *(*(a1 + 56) + 8);
    v58 = v57[3];
    if (sqrtf(vaddv_f32(vmul_f32(v58, v58))) > 0.0 && acosf(vaddv_f32(vmul_f32(v56, v58))) > 1.57079633)
    {
      ++*(*(a1 + 32) + 40);
      objc_msgSend_addIndex_(*(a1 + 40), v59, *(*(*(a1 + 48) + 8) + 24), v60, v61, v62);
      v57 = *(*(a1 + 56) + 8);
    }

    v57[3] = v56;
  }

LABEL_16:
  *(*(*(a1 + 48) + 8) + 24) = a2;
}

BOOL sub_183735380(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (a2 != a3)
  {
    v9 = v7;
    objc_msgSend_pointForStrokeIndex_pointIndex_(v9, v10, 0, a2, v11, v12);
    v43 = v14;
    v45 = v13;
    objc_msgSend_pointForStrokeIndex_pointIndex_(v9, v15, 0, a3, v16, v17);
    v41 = v19;
    v42 = v18;

    v20 = v9;
    v21 = v20;
    if (a2 < a3)
    {
      v22.f64[0] = v45;
      v22.f64[1] = v43;
      v23.f64[0] = v42;
      v23.f64[1] = v41;
      *&v22.f64[0] = vsub_f32(vcvt_f32_f64(v22), vcvt_f32_f64(v23));
      v24 = sqrtf(vaddv_f32(vmul_f32(*&v22.f64[0], *&v22.f64[0])));
      v25 = 0.0;
      do
      {
        v26 = v21;
        objc_msgSend_pointForStrokeIndex_pointIndex_(v26, v27, 0, a2, v28, v29);
        v44 = v31;
        v46 = v30;
        objc_msgSend_pointForStrokeIndex_pointIndex_(v26, v32, 0, ++a2, v33, v34);
        v35.f64[0] = v46;
        v35.f64[1] = v44;
        v37.f64[1] = v36;
        *&v37.f64[0] = vsub_f32(vcvt_f32_f64(v35), vcvt_f32_f64(v37));
        v38 = sqrtf(vaddv_f32(vmul_f32(*&v37.f64[0], *&v37.f64[0])));

        v25 = v25 + v38;
      }

      while (a3 != a2);

      if (v25 >= 0.001)
      {
        v39 = v24 / v25 > a4;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v39 = 0;
LABEL_8:

  return v39;
}

void *sub_183735534(void *result, void *a2)
{
  v2 = a2 + 7;
  v3 = a2[7];
  v4 = a2[6];
  result[7] = v3;
  v5 = result + 7;
  result[6] = v4;
  v6 = a2[8];
  result[8] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v5;
  }

  return result;
}

void *sub_18373557C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_18368D5C4(a1, v3, &v11, &v10, v5 + 4))
      {
        operator new();
      }

      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_1837356BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(*(a1 + 40) + 8) + 56);
  if (!v7)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = v7[4];
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v10 = v8[5];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Could not find a point in the drawing to match that in the resampled drawing", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
LABEL_16:

        return objc_msgSend_addIndex_(*(a1 + 32), a2, v10, a4, a5, a6);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v12 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }
    }

    *v14 = 0;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_FAULT, "Could not find a point in the drawing to match that in the resampled drawing", v14, 2u);
    goto LABEL_16;
  }

  return objc_msgSend_addIndex_(*(a1 + 32), a2, v10, a4, a5, a6);
}

uint64_t sub_183735954(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v4 = v2 - 24;
        sub_18368D56C(v2 - 24, *(v2 - 16));
        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void **sub_1837359B8(void **a1)
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
        v5 = v3 - 24;
        sub_18368D56C((v3 - 24), *(v3 - 2));
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

void sub_183735A24(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v9[5] = v14[5];
      v16 = *v8;
      v17 = (a1 + 8);
      v18 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_1836894A0(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  sub_18368D56C(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_18368D56C(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_18373625C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&location);

  objc_sync_exit(v37);
  _Unwind_Resume(a1);
}

uint64_t sub_18373632C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183736344(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_183736464(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC70;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_msgSend_localizedDescription(v8, v10, v11, v12, v13, v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Error during document layout analysis: %@", &v16, 0xCu);
    }
  }
}

void sub_1837365C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_18373667C(WeakRetained);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC70;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was interrupted", v3, 2u);
  }
}

void sub_18373667C(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    objc_msgSend_invalidate(obj[1], v1, v2, v3, v4, v5);
    v6 = obj[1];
    obj[1] = 0;

    objc_sync_exit(obj);
  }
}

void sub_1837366F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_183736714()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC70;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was invalidated", v1, 2u);
  }
}

void sub_1837367F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHRemoteDocumentLayoutAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18373713C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 248));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18373718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v52 - 248), 8);
  _Block_object_dispose((v52 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1837371F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18373720C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_183737314(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
  }

  else if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_msgSend_localizedDescription(v8, v10, v11, v12, v13, v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Error during sketch recognition: %@", &v16, 0xCu);
    }
  }

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_183737618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    objc_msgSend_invalidate(v3[7], v4, v5, v6, v7, v8);
    v9 = v3[7];
    v3[7] = 0;

    objc_sync_exit(v3);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC70;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was interrupted", v11, 2u);
  }
}

void sub_183737714()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC70;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was invalidated", v1, 2u);
  }
}

void sub_183739310(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_18373990C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_msgSend_bounds(v4, v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_bounds(v4, v13, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_bounds(v5, v20, v21, v22, v23, v24);
  v26 = v25;
  objc_msgSend_bounds(v5, v27, v28, v29, v30, v31);
  if (v12 * v19 <= v26 * v32)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  return v33;
}

void sub_18373C698(void **a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v477 = *MEMORY[0x1E69E9840];
  v403 = a2;
  v404 = a3;
  v407 = a4;
  v402 = a5;
  v401 = a6;
  v411 = a7;
  v419 = a8;
  v418 = a9;
  v399 = a10;
  v415 = a11;
  v412 = a12;
  v414 = a13;
  v424 = a1;
  if (!a1)
  {
    goto LABEL_78;
  }

  v25 = objc_msgSend_set(MEMORY[0x1E695DFA8], v20, v21, v22, v23, v24);
  v31 = objc_msgSend_addedTextStrokeIdentifiers(v407, v26, v27, v28, v29, v30, v25);
  v455[0] = MEMORY[0x1E69E9820];
  v455[1] = 3221225472;
  v455[2] = sub_18373E488;
  v455[3] = &unk_1E6DDD178;
  v32 = v404;
  v456 = v32;
  v33 = v403;
  v457 = v33;
  v34 = v25;
  v458 = v34;
  objc_msgSend_enumerateObjectsUsingBlock_(v31, v35, v455, v36, v37, v38);

  v397 = objc_msgSend_set(MEMORY[0x1E695DFA8], v39, v40, v41, v42, v43);
  v49 = objc_msgSend_removedTextStrokeIdentifiers(v407, v44, v45, v46, v47, v48);
  v451[0] = MEMORY[0x1E69E9820];
  v451[1] = 3221225472;
  v451[2] = sub_18373E560;
  v451[3] = &unk_1E6DDD178;
  v50 = v402;
  v452 = v50;
  v51 = v33;
  v453 = v51;
  v52 = v397;
  v454 = v52;
  objc_msgSend_enumerateObjectsUsingBlock_(v49, v53, v451, v54, v55, v56);

  v62 = objc_msgSend_transitionedTextStrokeIdentifiers(v407, v57, v58, v59, v60, v61);
  v445[0] = MEMORY[0x1E69E9820];
  v445[1] = 3221225472;
  v445[2] = sub_18373E638;
  v445[3] = &unk_1E6DDD218;
  v428 = v32;
  v446 = v428;
  v405 = v51;
  v447 = v405;
  v406 = v34;
  v448 = v406;
  v449 = v50;
  v410 = v52;
  v450 = v410;
  objc_msgSend_enumerateObjectsUsingBlock_(v62, v63, v445, v64, v65, v66);

  v400 = objc_msgSend_strokeProvider(a1, v67, v68, v69, v70, v71);
  if (!objc_msgSend_count(v406, v72, v73, v74, v75, v76) && !objc_msgSend_count(v410, v77, v78, v79, v80, v81))
  {
    v309 = objc_msgSend_integerValue(v405, v77, v78, v79, v80, v81);
    v314 = objc_msgSend_strokeGroupsOfClass_(v401, v310, v309, v311, v312, v313);
    objc_msgSend_unionSet_(v419, v315, v314, v316, v317, v318);
    goto LABEL_77;
  }

  v82 = objc_msgSend_allObjects(v406, v77, v78, v79, v80, v81);
  v443[0] = MEMORY[0x1E69E9820];
  v443[1] = 3221225472;
  v443[2] = sub_18373E770;
  v443[3] = &unk_1E6DDCA70;
  v444 = v400;
  v398 = objc_msgSend_sortedArrayUsingComparator_(v82, v83, v443, v84, v85, v86);

  v409 = objc_msgSend_strokesForIdentifiers_(a1, v87, v398, v88, v89, v90);
  objc_msgSend_objectForKeyedSubscript_(a1[5], v91, v405, v92, v93, v94);
  v441 = 0u;
  v442 = 0u;
  v439 = 0u;
  v413 = v440 = 0u;
  v100 = objc_msgSend_allKeys(v413, v95, v96, v97, v98, v99);
  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v439, v473, 16, v102);
  if (v103)
  {
    v104 = *v440;
LABEL_6:
    v105 = 0;
    while (1)
    {
      if (*v440 != v104)
      {
        objc_enumerationMutation(v100);
      }

      v106 = *(*(&v439 + 1) + 8 * v105);
      if (v414[2]())
      {
        break;
      }

      v111 = objc_msgSend_objectForKey_(v413, v107, v106, v108, v109, v110);
      v116 = objc_msgSend_objectForKey_(v415, v112, v106, v113, v114, v115);
      v126 = objc_msgSend_objectForKey_(v412, v117, v106, v118, v119, v120);
      if (v126 || (objc_msgSend_substrokesByStrokeIdentifier(v428, v121, v122, v123, v124, v125), v127 = objc_claimAutoreleasedReturnValue(), objc_msgSend_updatedGroupingResult_byAddingStrokes_removingStrokeIdentifiers_stableStrokeIdentifiers_allSubstrokesByStrokeIdentifier_withCancellationBlock_(v111, v128, v116, v409, v410, v411, v127, v414), v126 = objc_claimAutoreleasedReturnValue(), v127, v126))
      {
        objc_msgSend_setObject_forKey_(v415, v121, v126, v106, v124, v125);
      }

      if (v103 == ++v105)
      {
        v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v129, &v439, v473, 16, v130);
        if (v103)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  if (objc_msgSend_count(v413, v131, v132, v133, v134, v135) < 2)
  {
    v396 = objc_msgSend_allKeys(v413, v136, v137, v138, v139, v140);
    v416 = objc_msgSend_firstObject(v396, v294, v295, v296, v297, v298);
    v303 = objc_msgSend_objectForKey_(v415, v299, v416, v300, v301, v302);
    v408 = objc_msgSend_textStrokeGroups(v303, v304, v305, v306, v307, v308);
  }

  else
  {
    v396 = objc_msgSend_allKeys(v413, v136, v137, v138, v139, v140);
    v416 = objc_msgSend_dictionaryWithValuesForKeys_(v415, v141, v396, v142, v143, v144);
    v422 = v411;
    v429 = v405;
    v426 = v414;
    v408 = objc_msgSend_set(MEMORY[0x1E695DFA8], v145, v146, v147, v148, v149);
    v155 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v150, v151, v152, v153, v154);
    v469 = 0u;
    v470 = 0u;
    v467 = 0u;
    v468 = 0u;
    v161 = objc_msgSend_allKeys(v416, v156, v157, v158, v159, v160);
    v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v162, &v467, v476, 16, v163);
    if (v168)
    {
      v169 = *v468;
      do
      {
        for (i = 0; i != v168; ++i)
        {
          if (*v468 != v169)
          {
            objc_enumerationMutation(v161);
          }

          v171 = *(*(&v467 + 1) + 8 * i);
          v172 = objc_msgSend_substringToIndex_(v171, v164, 1, v165, v166, v167);
          v178 = objc_msgSend_integerValue(v172, v173, v174, v175, v176, v177);
          LODWORD(v178) = v178 == objc_msgSend_integerValue(v429, v179, v180, v181, v182, v183);

          if (v178)
          {
            v184 = objc_msgSend_objectForKey_(v416, v164, v171, v165, v166, v167);
            v190 = objc_msgSend_copy(v184, v185, v186, v187, v188, v189);

            objc_msgSend_setObject_forKey_(v155, v191, v190, v171, v192, v193);
          }
        }

        v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v164, &v467, v476, 16, v167);
      }

      while (v168);
    }

    while ((v426[2]() & 1) == 0)
    {
      v465 = 0u;
      v466 = 0u;
      v463 = 0u;
      v464 = 0u;
      v199 = objc_msgSend_allKeys(v155, v194, v195, v196, v197, v198);
      v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v200, &v463, v475, 16, v201);
      if (!v206)
      {

        break;
      }

      v207 = 0;
      v208 = *v464;
      v209 = -1.79769313e308;
      do
      {
        for (j = 0; j != v206; ++j)
        {
          if (*v464 != v208)
          {
            objc_enumerationMutation(v199);
          }

          v211 = objc_msgSend_objectForKey_(v155, v202, *(*(&v463 + 1) + 8 * j), v203, v204, v205);
          v217 = objc_msgSend_textStrokeGroups(v211, v212, v213, v214, v215, v216);
          v223 = objc_msgSend_allObjects(v217, v218, v219, v220, v221, v222);
          v228 = objc_msgSend_sortedArrayUsingComparator_(v223, v224, &unk_1EF1BC638, v225, v226, v227);

          v234 = objc_msgSend_firstObject(v228, v229, v230, v231, v232, v233);
          v240 = v234;
          if (v234)
          {
            objc_msgSend_groupingConfidence(v234, v235, v236, v237, v238, v239);
            if (v246 > v209)
            {
              objc_msgSend_groupingConfidence(v240, v241, v242, v243, v244, v245);
              v209 = v247;
              v248 = v240;

              v207 = v248;
            }
          }
        }

        v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v202, &v463, v475, 16, v205);
      }

      while (v206);

      if (!v207)
      {
        break;
      }

      objc_msgSend_addObject_(v408, v249, v207, v250, v251, v252);
      v461 = 0u;
      v462 = 0u;
      v459 = 0u;
      v460 = 0u;
      v258 = objc_msgSend_allKeys(v155, v253, v254, v255, v256, v257);
      v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v258, v259, &v459, v474, 16, v260);
      if (v261)
      {
        v262 = *v460;
        obj = v258;
        do
        {
          for (k = 0; k != v261; ++k)
          {
            if (*v460 != v262)
            {
              objc_enumerationMutation(obj);
            }

            v264 = *(*(&v459 + 1) + 8 * k);
            v265 = v424[5];
            v270 = objc_msgSend_objectForKeyedSubscript_(v265, v266, v429, v267, v268, v269);
            v275 = objc_msgSend_objectForKey_(v270, v271, v264, v272, v273, v274);

            v280 = objc_msgSend_objectForKey_(v155, v276, v264, v277, v278, v279);
            v286 = objc_msgSend_strokeIdentifiers(v207, v281, v282, v283, v284, v285);
            v288 = objc_msgSend_updatedGroupingResult_byAddingStrokes_removingStrokeIdentifiers_stableStrokeIdentifiers_allSubstrokesByStrokeIdentifier_withCancellationBlock_(v275, v287, v280, 0, v286, v422, 0, v426);

            if (v288)
            {
              objc_msgSend_setObject_forKey_(v155, v289, v288, v264, v290, v291);
            }
          }

          v258 = obj;
          v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v292, &v459, v474, 16, v293);
        }

        while (v261);
      }
    }

    if (v426[2]())
    {

      v408 = 0;
    }
  }

  v324 = objc_msgSend_integerValue(v405, v319, v320, v321, v322, v323);
  v329 = objc_msgSend_strokeGroupsOfClass_(v401, v325, v324, v326, v327, v328);
  v423 = objc_msgSend_mutableCopy(v329, v330, v331, v332, v333, v334);

  v437 = 0u;
  v438 = 0u;
  v435 = 0u;
  v436 = 0u;
  v417 = v408;
  v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v417, v335, &v435, v472, 16, v336);
  if (!v425)
  {
    goto LABEL_76;
  }

  obja = *v436;
  do
  {
    for (m = 0; m != v425; ++m)
    {
      if (*v436 != obja)
      {
        objc_enumerationMutation(v417);
      }

      v337 = *(*(&v435 + 1) + 8 * m);
      v431 = 0u;
      v432 = 0u;
      v433 = 0u;
      v434 = 0u;
      v430 = v423;
      v345 = objc_msgSend_countByEnumeratingWithState_objects_count_(v430, v338, &v431, v471, 16, v339);
      if (!v345)
      {
LABEL_70:

        goto LABEL_73;
      }

      v346 = *v432;
LABEL_61:
      v347 = 0;
      while (1)
      {
        if (*v432 != v346)
        {
          objc_enumerationMutation(v430);
        }

        v348 = *(*(&v431 + 1) + 8 * v347);
        v349 = objc_msgSend_strategyIdentifier(v337, v340, v341, v342, v343, v344);
        v355 = objc_msgSend_strategyIdentifier(v348, v350, v351, v352, v353, v354);
        if ((objc_msgSend_isEqualToString_(v349, v356, v355, v357, v358, v359) & 1) == 0)
        {

          goto LABEL_62;
        }

        v365 = objc_msgSend_strokeIdentifiers(v337, v360, v361, v362, v363, v364);
        v371 = objc_msgSend_strokeIdentifiers(v348, v366, v367, v368, v369, v370);
        isEqualToSet = objc_msgSend_isEqualToSet_(v365, v372, v371, v373, v374, v375);

        if (isEqualToSet)
        {
          break;
        }

LABEL_62:
        if (v345 == ++v347)
        {
          v345 = objc_msgSend_countByEnumeratingWithState_objects_count_(v430, v340, &v431, v471, 16, v344);
          if (v345)
          {
            goto LABEL_61;
          }

          goto LABEL_70;
        }
      }

      v377 = v348;

      if (v377)
      {
        objc_msgSend_addObject_(v419, v378, v377, v379, v380, v381);
        objc_msgSend_removeObject_(v430, v382, v377, v383, v384, v385);
        goto LABEL_74;
      }

LABEL_73:
      objc_msgSend_addObject_(v419, v378, v337, v379, v380, v381);
      v377 = 0;
      objc_msgSend_addObject_(v418, v386, v337, v387, v388, v389);
LABEL_74:
    }

    v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v417, v390, &v435, v472, 16, v391);
  }

  while (v425);
LABEL_76:

  objc_msgSend_unionSet_(v399, v392, v423, v393, v394, v395);
  v314 = v444;
LABEL_77:

LABEL_78:
}

void sub_18373DC1C(uint64_t a1, void *a2)
{
  v25 = a2;
  v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKey_(v8, v9, v25, v10, v11, v12);
  v19 = objc_msgSend_integerValue(v13, v14, v15, v16, v17, v18);

  objc_opt_self();
  v24 = 48;
  if (v19 == 5)
  {
    v24 = 40;
  }

  objc_msgSend_addObject_(*(a1 + v24), v20, v25, v21, v22, v23);
}

void sub_18373DD08(uint64_t a1, void *a2)
{
  v25 = a2;
  v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKey_(v8, v9, v25, v10, v11, v12);
  v19 = objc_msgSend_integerValue(v13, v14, v15, v16, v17, v18);

  objc_opt_self();
  v24 = 48;
  if (v19 == 5)
  {
    v24 = 40;
  }

  objc_msgSend_addObject_(*(a1 + v24), v20, v25, v21, v22, v23);
}

void sub_18373DDF4(uint64_t a1, void *a2)
{
  v47 = a2;
  v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKey_(v8, v9, v47, v10, v11, v12);
  v19 = objc_msgSend_integerValue(v13, v14, v15, v16, v17, v18);

  v25 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 40), v20, v21, v22, v23, v24);
  v30 = objc_msgSend_objectForKey_(v25, v26, v47, v27, v28, v29);
  v36 = objc_msgSend_integerValue(v30, v31, v32, v33, v34, v35);

  objc_opt_self();
  objc_opt_self();
  v41 = v36 != 5;
  if (v36 == 5 && v19 != 5)
  {
    objc_msgSend_addObject_(*(a1 + 48), v37, v47, v38, v39, v40);
    v46 = 56;
LABEL_7:
    objc_msgSend_addObject_(*(a1 + v46), v42, v47, v43, v44, v45);
    goto LABEL_8;
  }

  if (v36 != 5 && v19 == 5)
  {
    objc_msgSend_addObject_(*(a1 + 64), v37, v47, v38, v39, v40);
    v46 = 72;
    goto LABEL_7;
  }

  if (v19 != 5)
  {
    v41 = 1;
  }

  if (!v41)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

LABEL_8:
}

uint64_t sub_18373DFE8(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v69 = a2;
  v8 = objc_msgSend_classification(v69, v3, v4, v5, v6, v7);
  objc_opt_self();
  if (v8 == 5)
  {
    if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
    {
LABEL_21:
      v67 = 1;
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v14 = objc_msgSend_classification(v69, v9, v10, v11, v12, v13);
  objc_opt_self();
  if ((v14 - 6) <= 2)
  {
    if (!objc_msgSend_count(*(a1 + 32), v15, v16, v17, v18, v19))
    {
      goto LABEL_21;
    }

    v25 = objc_msgSend_strokeIdentifiers(v69, v20, v21, v22, v23, v24);
    v30 = objc_msgSend_intersectsSet_(v25, v26, *(a1 + 32), v27, v28, v29);

    if (!v30)
    {
      goto LABEL_21;
    }

LABEL_7:
    objc_msgSend_addObject_(*(a1 + 40), v9, v69, v11, v12, v13);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v36 = objc_msgSend_strokeIdentifiers(v69, v31, v32, v33, v34, v35);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v70, v74, 16, v38);
    if (v44)
    {
      v45 = *v71;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v71 != v45)
          {
            objc_enumerationMutation(v36);
          }

          v47 = *(*(&v70 + 1) + 8 * i);
          v48 = objc_msgSend_removedStrokeIdentifiers(*(a1 + 48), v39, v40, v41, v42, v43);
          v53 = objc_msgSend_containsObject_(v48, v49, v47, v50, v51, v52);

          if ((v53 & 1) == 0)
          {
            v54 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 56), v39, v40, v41, v42, v43);
            v59 = objc_msgSend_objectForKey_(v54, v55, v47, v56, v57, v58);
            v65 = objc_msgSend_integerValue(v59, v60, v61, v62, v63, v64);

            objc_opt_self();
            v66 = (a1 + 64);
            if (v65 == 5 || (objc_opt_self(), v66 = (a1 + 72), (v65 - 6) <= 2))
            {
              objc_msgSend_addObject_(*v66, v39, v47, v41, v42, v43);
            }
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v70, v74, 16, v43);
      }

      while (v44);
    }
  }

  v67 = 0;
LABEL_22:

  return v67;
}

void sub_18373E2B4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v4, v3, *(a1 + 32), v5, v6);
  if (!v11)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_ERROR, "Unexpected nil stroke in _handleNonTextStrokes, encoded stroke identifier is %@. Skipping", &v14, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v13 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_FAULT, "Unexpected nil stroke in _handleNonTextStrokes, encoded stroke identifier is %@. Skipping", &v14, 0xCu);
    goto LABEL_10;
  }

  objc_msgSend_addObject_(*(a1 + 40), v7, v11, v8, v9, v10);
LABEL_11:
}

void sub_18373E488(uint64_t a1, void *a2)
{
  v23 = a2;
  v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v23, v10, v11, v12);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v13, v14, *(a1 + 40), v15, v16, v17);

  if (isEqualToNumber)
  {
    objc_msgSend_addObject_(*(a1 + 48), v19, v23, v20, v21, v22);
  }
}

void sub_18373E560(uint64_t a1, void *a2)
{
  v23 = a2;
  v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v23, v10, v11, v12);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v13, v14, *(a1 + 40), v15, v16, v17);

  if (isEqualToNumber)
  {
    objc_msgSend_addObject_(*(a1 + 48), v19, v23, v20, v21, v22);
  }
}

void sub_18373E638(uint64_t a1, void *a2)
{
  v36 = a2;
  v8 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 32), v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v36, v10, v11, v12);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v13, v14, *(a1 + 40), v15, v16, v17);

  if (isEqualToNumber)
  {
    v24 = 48;
  }

  else
  {
    v25 = objc_msgSend_strokeClassificationsByStrokeIdentifier(*(a1 + 56), v19, v20, v21, v22, v23);
    v30 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v36, v27, v28, v29);
    v35 = objc_msgSend_isEqualToNumber_(v30, v31, *(a1 + 40), v32, v33, v34);

    if (!v35)
    {
      goto LABEL_6;
    }

    v24 = 64;
  }

  objc_msgSend_addObject_(*(a1 + v24), v19, v36, v21, v22, v23);
LABEL_6:
}

uint64_t sub_18373E770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v6, a2, v7, v8, v9);
  v15 = objc_msgSend_strokeIdentifierFromData_(*(a1 + 32), v11, v5, v12, v13, v14);
  v19 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(*(a1 + 32), v16, v10, v15, v17, v18);

  return v19;
}

uint64_t sub_18373E820(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_strategyIdentifier(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32), v9, v10, v11);

  return isEqualToString;
}

uint64_t sub_18373E874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_strategyIdentifier(a2, a2, a3, a4, a5, a6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32), v9, v10, v11);

  return isEqualToString;
}

uint64_t sub_18373E8C8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_msgSend_groupingConfidence(v4, v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_groupingConfidence(v5, v13, v14, v15, v16, v17);
  if (v12 >= v23)
  {
    objc_msgSend_groupingConfidence(v4, v18, v19, v20, v21, v22);
    v26 = v25;
    objc_msgSend_groupingConfidence(v5, v27, v28, v29, v30, v31);
    if (v26 > v32)
    {
      v24 = -1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

uint64_t sub_18373EFB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v12 = objc_msgSend_strokeIdentifier(a2, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIdentifier(v5, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v6, v19, v12, v18, v20, v21);

  return v22;
}

uint64_t sub_18373F05C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_msgSend_addPoint_(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  v12 = a7 - *(a1 + 48);
  v13 = a8 - *(a1 + 56);
  v14 = *(a1 + 40);

  return objc_msgSend_addPoint_(v14, a2, a3, a4, a5, a6, v12, v13);
}

void sub_18373F424(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_18373F424(a1, *a2);
    sub_18373F424(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      v5 = a2[8];
      v6 = a2[7];
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 3);
          if (v7)
          {
            do
            {
              v8 = *v7;
              operator delete(v7);
              v7 = v8;
            }

            while (v8);
          }

          v10 = *(v5 - 5);
          v5 -= 5;
          v9 = v10;
          *v5 = 0;
          if (v10)
          {
            operator delete(v9);
          }
        }

        while (v5 != v4);
        v6 = a2[7];
      }

      a2[8] = v4;
      operator delete(v6);
    }

    sub_18368D56C((a2 + 4), a2[5]);

    operator delete(a2);
  }
}

void *sub_18373F4E8(void *a1, void *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_1836DD38C(a1, v4, &v13, &v15, v6 + 4))
      {
        operator new();
      }

      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v5);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v11 = a2[3];
  v10 = a2[4];
  v13 = a1 + 3;
  v14 = 0;
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_18368964C();
  }

  return a1;
}

void sub_18373F6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 32) = v3;
  sub_18372F5F0(va);
  sub_18368D56C(v2, *(v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t *sub_18373F6EC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 56);
      if (v3)
      {
        v4 = *(v1 + 64);
        v5 = *(v1 + 56);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 3);
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

            v9 = *(v4 - 5);
            v4 -= 5;
            v8 = v9;
            *v4 = 0;
            if (v9)
            {
              operator delete(v8);
            }
          }

          while (v4 != v3);
          v5 = *(v1 + 56);
        }

        *(v1 + 64) = v3;
        operator delete(v5);
      }

      sub_18368D56C(v1 + 32, *(v1 + 40));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_18373F7F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_invalidate(*(WeakRetained + 1), v2, v3, v4, v5, v6);
    v8 = v7[1];
    v7[1] = 0;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC70;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was interrupted", v10, 2u);
  }
}

void sub_18373F8C0()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC70;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was invalidated", v1, 2u);
  }
}

void sub_18373F9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHRemoteLineWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18373FEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t sub_18373FFC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18373FFE0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DCA8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_183740100(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DCA8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_msgSend_localizedDescription(v8, v10, v11, v12, v13, v14);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEBUG, "Error during line wrapping analysis: %@", &v16, 0xCu);
    }
  }
}

void sub_18374038C()
{
  v0 = objc_alloc_init(CHTextInputProtoSettings);
  v1 = qword_1EA84CE30;
  qword_1EA84CE30 = v0;

  if (qword_1EA84CE40 != -1)
  {

    dispatch_once(&qword_1EA84CE40, &unk_1EF1BC698);
  }
}

void sub_183740400()
{
  v0 = sub_18366D128();
  v62 = objc_msgSend_sharedSettings(v0, v1, v2, v3, v4, v5);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    objc_msgSend_autoLineBreakAreaWidthFactor(v62, v11, v12, v13, v14, v15);
    *(qword_1EA84CE30 + 32) = v49;
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(qword_1EA84CE30 + 8) = objc_msgSend_autoLineBreakEnabled(v62, v6, v7, v8, v9, v10);
  *(qword_1EA84CE30 + 9) = objc_msgSend_autoLineBreakRequireWeakCursor(v62, v22, v23, v24, v25, v26);
  objc_msgSend_autoLineBreakVerticalDistance(v62, v27, v28, v29, v30, v31);
  *(qword_1EA84CE30 + 16) = v32;
  objc_msgSend_autoLineBreakDualVerticalDistance(v62, v33, v34, v35, v36, v37);
  *(qword_1EA84CE30 + 24) = v38;
  *(qword_1EA84CE30 + 10) = objc_msgSend_lineBreakVerticalBarGestureEnabled(v62, v39, v40, v41, v42, v43);
  *(qword_1EA84CE30 + 11) = objc_msgSend_lineBreakVerticalBarUpToDelete(v62, v44, v45, v46, v47, v48);
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_6;
  }

LABEL_3:
  if (objc_opt_respondsToSelector())
  {
LABEL_4:
    objc_msgSend_subwordGestureEndingSpeedRange(v62, v16, v17, v18, v19, v20);
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0x3FE999999999999ALL;
LABEL_8:
  *(qword_1EA84CE30 + 40) = v21;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_subwordGestureSpeedThreshold(v62, v50, v51, v52, v53, v54);
  }

  else
  {
    v55 = 0x4049000000000000;
  }

  *(qword_1EA84CE30 + 48) = v55;
  if (objc_opt_respondsToSelector())
  {
    *(qword_1EA84CE30 + 12) = objc_msgSend_preventLeftoverCharsInSubwordGestures(v62, v56, v57, v58, v59, v60);
    v61 = v62;
  }

  else
  {
    *(qword_1EA84CE30 + 12) = 0;
    v61 = v62;
  }
}

void sub_1837406DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1837406F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_isScribbleActive(*(a1 + 32), a2, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

Class sub_183740778(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84CE50)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1837408CC;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDD300;
    v6 = 0;
    qword_1EA84CE50 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84CE50)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKTextInputSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84CE48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1837408CC()
{
  result = _sl_dlopen();
  qword_1EA84CE50 = result;
  return result;
}

void sub_183740CC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CHTextStrokeTransformationQuery", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHTextStrokeTransformationQuery", v14, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_183740E88(uint64_t a1, uint64_t a2, void *a3)
{
  v7[14] = *MEMORY[0x1E69E9840];
  a3;
  (*(*a1 + 24))(a1, a2);
  (*(*a1 + 32))(v7, a1, a2);
  (*(*a1 + 56))(&__p, a1, a2);
  sub_18396AA48(&v6);
}

void sub_183741460(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  sub_1836997F4(va);
  sub_18369D068(va1);

  _Unwind_Resume(a1);
}

void *sub_183741584(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_183741614(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1837416D0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t sub_183741764(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 21;
  strcpy(__p, "model_features_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_1837418E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

void sub_18374191C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1836EDA78(v2, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3, v4);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1837419D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (!v3)
  {
    return *(v2 + 232);
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v4 = *(v2 + 232);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return v4;
}

void sub_183741AA0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1836EDC9C(v2, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3, v4);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_183741B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (!v3)
  {
    return *(v2 + 236);
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v4 = *(v2 + 236);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return v4;
}

__n128 sub_183743674(uint64_t a1)
{
  result = *MEMORY[0x1E695EFF8];
  *a1 = *MEMORY[0x1E695EFF8];
  *(a1 + 16) = result;
  *(a1 + 32) = result;
  *(a1 + 48) = result;
  *(a1 + 64) = result;
  *(a1 + 80) = result;
  *(a1 + 96) = result;
  *(a1 + 112) = result;
  return result;
}

void sub_183743E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v69 = a66;
    if (!a66)
    {
LABEL_3:
      v70 = STACK[0x200];
      if (!STACK[0x200])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v69 = a66;
    if (!a66)
    {
      goto LABEL_3;
    }
  }

  operator delete(v69);
  v70 = STACK[0x200];
  if (!STACK[0x200])
  {
LABEL_4:
    v71 = STACK[0x218];
    if (!STACK[0x218])
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v70);
  v71 = STACK[0x218];
  if (!STACK[0x218])
  {
LABEL_5:
    v72 = *(v67 - 248);
    if (!v72)
    {
LABEL_12:

      _Unwind_Resume(a1);
    }

LABEL_11:
    *(v67 - 240) = v72;
    operator delete(v72);
    goto LABEL_12;
  }

LABEL_10:
  STACK[0x220] = v71;
  operator delete(v71);
  v72 = *(v67 - 248);
  if (!v72)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_183744728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1837448F0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_183744914(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      v5 = v3;
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void *sub_1837449A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = (**(a1 + 48) + 24 * a2);
  v6 = *(v4 + 56);
  if (v6 >= *(v4 + 64))
  {
    result = sub_18374A8A8(v4 + 48, v5);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v7 = v5[1];
    if (v7 != *v5)
    {
      if (((v7 - *v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    result = v6 + 3;
    *(v4 + 56) = v6 + 3;
  }

  *(v4 + 56) = result;
  *(*(*(a1 + 40) + 8) + 24) += (*(**(a1 + 48) + 24 * a2 + 8) - *(**(a1 + 48) + 24 * a2)) >> 4;
  return result;
}

void sub_183744A98(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 56) = v2;
  _Unwind_Resume(exception_object);
}

void sub_183746914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_183746B38(uint64_t a1, void *a2)
{
  sub_1837A97C4(a2, v6);
  if ((v6[1] - v6[0]) == 8)
  {
    v3 = *v6[0];
    v4 = *(v6[0] + 1);
LABEL_4:
    operator delete(v6[0]);
    return v4 - v3 * *(a1 + 32) > *(a1 + 40);
  }

  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  if (v6[0])
  {
    goto LABEL_4;
  }

  return v4 - v3 * *(a1 + 32) > *(a1 + 40);
}

void sub_183747A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *a29)
{
  if (!v31)
  {
  }

  _Unwind_Resume(a1);
}

BOOL sub_183747E30(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_floatValue(v3, v4, v5, v6, v7, v8);
  v10 = v9;
  v16 = objc_msgSend_firstObject(*(a1 + 32), v11, v12, v13, v14, v15);
  objc_msgSend_floatValue(v16, v17, v18, v19, v20, v21);
  v23 = v10 > v22;

  return v23;
}

void sub_183748F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_183749734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = v11;

  _Unwind_Resume(a1);
}

void sub_183749844()
{
  v0 = qword_1EA84CE60;
  qword_1EA84CE60 = &unk_1EF1EBA68;
}

void sub_18374A63C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v5 = __src;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 4)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 4);
    if (v10 >> 60)
    {
      sub_18369761C();
    }

    v11 = v7 - v9;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    v27 = 16 * ((__dst - v9) >> 4);
    v28 = 16 * a5;
    v29 = v27 + 16 * a5;
    v30 = v27;
    do
    {
      v31 = *v5++;
      *v30++ = v31;
      v28 -= 16;
    }

    while (v28);
    v32 = *(a1 + 8) - __dst;
    memcpy((v27 + 16 * a5), __dst, v32);
    v34 = v29 + v32;
    *(a1 + 8) = __dst;
    v35 = *a1;
    v36 = &__dst[-*a1];
    v37 = v27 - v36;
    memcpy((v27 - v36), *a1, v36);
    *a1 = v37;
    *(a1 + 8) = v34;
    *(a1 + 16) = 0;
    if (v35)
    {

      operator delete(v35);
    }

    return;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 4;
  if (v14 >= a5)
  {
    v13 = 16 * a5;
    v23 = &__dst[16 * a5];
    v24 = &v8[-a5];
    for (i = *(a1 + 8); v24 < v8; ++i)
    {
      v26 = *v24++;
      *i = v26;
    }

    *(a1 + 8) = i;
    if (v8 != v23)
    {
      memmove(&__dst[16 * a5], __dst, v8 - v23);
    }

    goto LABEL_26;
  }

  v15 = &__src[v13];
  v16 = *(a1 + 8);
  for (j = v16; v15 != a4; v16 += 16)
  {
    v18 = *v15;
    v15 += 16;
    *j = v18;
    j += 16;
  }

  *(a1 + 8) = v16;
  if (v14 >= 1)
  {
    v19 = &__dst[16 * a5];
    v20 = &v16[-16 * a5];
    for (k = v16; v20 < v8; k += 16)
    {
      v22 = *v20++;
      *k = v22;
    }

    *(a1 + 8) = k;
    if (j != v19)
    {
      memmove(&__dst[16 * a5], __dst, v16 - v19);
    }

    if (v8 != __dst)
    {
LABEL_26:

      memmove(__dst, v5, v13);
    }
  }
}

void *sub_18374A8A8(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_18368964C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

    sub_183688F00();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_18374AA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1836AEC7C(va);
  _Unwind_Resume(a1);
}

char *sub_18374AA38(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_18369761C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
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

void sub_18374AB94(uint64_t a1, void *a2)
{
  v4 = a2;
  *a1 = &unk_1EF1BC1B0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  objc_storeStrong((a1 + 32), a2);
  v9 = sub_183696B2C(v4, (a1 + 48), 15.0);
  v10 = *(a1 + 48);
  v11 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - v10) >> 3);
  if (v11 < 7)
  {
    sub_18374BD28(v4, v10, v5, v6, v7, v8);
  }

  v12 = v9;
  v13 = 0;
  v14 = v11 - 3;
  v15 = v9 * 1.5;
  v16 = v11 - 4;
  v17 = (v10 + 128);
  v18 = -1;
  do
  {
    if (v13 == v14)
    {
      break;
    }

    v19 = &v10[40 * v13];
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[5] - *v19;
    v23 = v19[6] - v21;
    v24 = (v23 * v23) + (v22 * v22);
    v25 = v23 / v24;
    if (v24 > 0.0)
    {
      v26 = v22 / v24;
    }

    else
    {
      v25 = v19[6] - v21;
      v26 = v19[5] - *v19;
    }

    if (v11 - 1 > v13 + 3)
    {
      v27 = sqrtf(v24);
      v28 = v26;
      v29 = v25;
      v30 = v17;
      v31 = v16;
      while (1)
      {
        v32 = ((*v30 - v21) * v29 + (*(v30 - 1) - v20) * v28) * v27;
        v33 = v32 <= 0.0 || v15 <= v32;
        if (!v33)
        {
          break;
        }

        v30 += 5;
        if (!--v31)
        {
          goto LABEL_4;
        }
      }

      v18 = v13;
    }

LABEL_4:
    ++v13;
    --v16;
    v17 += 5;
  }

  while (v18 < 0);
  v34 = v11 - 4;
  v35 = v11;
  v36 = v11 - 3;
  while (1)
  {
LABEL_20:
    if (v35 <= 3)
    {
      if (v18 >= 3)
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }

    v38 = v35 - 1;
    v39 = &v10[40 * (v35 - 1)];
    v40 = *v39;
    v41 = v39[1];
    v42 = &v10[40 * v35];
    v43 = *(v42 - 10) - v40;
    v44 = *(v42 - 9) - v41;
    v45 = (v44 * v44) + (v43 * v43);
    if (v45 > 0.0)
    {
      v43 = v43 / v45;
      v44 = v44 / v45;
    }

    v46 = &v10[40 * v34 + 8];
    v47 = sqrtf(v45);
    v48 = v43;
    v49 = v44;
    v50 = v36;
    while (1)
    {
      v51 = ((*v46 - v41) * v49 + (*(v46 - 1) - v40) * v48) * v47;
      if (v51 > 0.0 && v15 > v51)
      {
        break;
      }

      --v50;
      v46 -= 5;
      if (v50 <= 0)
      {
        --v34;
        --v36;
        v35 = v38;
        goto LABEL_20;
      }
    }

    v37 = v38;
    --v34;
    --v36;
    v35 = v38;
    if ((v38 & 0x80000000) == 0)
    {
      if (v18 > 2)
      {
        if (v14 <= v38 || v11 - v38 <= v18)
        {
LABEL_36:
          v37 = v11 - 1;
          if (v18 > v11 - 1)
          {
            goto LABEL_42;
          }

LABEL_40:
          v53 = v37 - v18 + 1;
          v54 = &v10[40 * v18];
          v55 = vdup_n_s32(0x501502F9u);
          v56 = vdup_n_s32(0xD01502F9);
          do
          {
            v57 = *v54;
            v54 += 40;
            v58 = vcvt_f32_f64(v57);
            v55 = vminnm_f32(v58, v55);
            v56 = vmaxnm_f32(v58, v56);
            --v53;
          }

          while (v53);
LABEL_42:
          operator new();
        }

LABEL_39:
        v18 = 0;
        if (v38 >= 0)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      if (v14 > v38)
      {
        goto LABEL_39;
      }

LABEL_43:
      sub_1836974D0(a1 + 48, v10);
      v65 = *(a1 + 48);
      v64 = *(a1 + 56);
      v66 = 0xCCCCCCCCCCCCCCCDLL * ((v64 - v65) >> 3) - 1;
      if (0xCCCCCCCCCCCCCCCDLL * ((v64 - v65) >> 3) == 1)
      {
        *(a1 + 56) = v64 - 40;
      }

      else
      {
        v67 = 0;
        v69 = *v65;
        v68 = v65[1].f64 + 4;
        v70 = v69;
        v71 = 0;
        v72 = 0;
        do
        {
          *v68 = v67;
          v73 = *(v68 + 20);
          v74 = vmuld_lane_f64(-v73.f64[0], v70, 1) + v70.f64[0] * *(v68 + 28);
          *v72.i32 = *v72.i32 + v74;
          v71 = vmla_n_f32(v71, vcvt_f32_f64(vaddq_f64(v70, v73)), v74);
          v68 += 40;
          ++v67;
          v70 = v73;
        }

        while (v66 != v67);
        *(a1 + 56) = v64 - 40;
        if (*v72.i32 != 0.0)
        {
          *v72.i32 = *v72.i32 * 3.0;
          v252 = vcvtq_f64_f32(vdiv_f32(v71, vdup_lane_s32(v72, 0)));
          v258 = v252;
          objc_msgSend_bounds(v4, v59, v60, v61, v62, v63);
          v33 = v78.n128_f64[0] <= v252.f64[0];
          v78.n128_f64[0] = v78.n128_f64[0] + v77;
          if (v33 && v75 <= v252.f64[1] && v78.n128_f64[0] >= v252.f64[0] && v75 + v76 >= v252.f64[1])
          {
            v91 = *(a1 + 48);
            v90 = *(a1 + 56);
            v92 = v90 - v91;
            goto LABEL_71;
          }

          v91 = *(a1 + 48);
          v90 = *(a1 + 56);
          v92 = v90 - v91;
          v82 = (v90 - v91) >> 3;
          v83 = (0xCCCCCCCCCCCCCCCDLL * v82) >> 2;
          v84 = (0x6666666666666667 * v82) >> 2;
          v85 = v84 - v83;
          if (v84 <= v83)
          {
            v86 = 0uLL;
            v89 = 0.0;
          }

          else
          {
            if (v85 <= 1)
            {
              v86 = 0uLL;
              v87 = 0.0;
              v88 = v83;
              goto LABEL_67;
            }

            v88 = v83 + (v85 & 0xFFFFFFFFFFFFFFFELL);
            v93 = v91 + 40 * v83;
            v86 = 0uLL;
            v87 = 0.0;
            v94 = v85 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v87 = (v87 + 1.0) + 1.0;
              v86 = vaddq_f64(vaddq_f64(v86, *v93), *(v93 + 40));
              v93 += 80;
              v94 -= 2;
            }

            while (v94);
            if (v85 != (v85 & 0xFFFFFFFFFFFFFFFELL))
            {
LABEL_67:
              v95 = v84 - v88;
              v96 = (v91 + 40 * v88);
              do
              {
                v97 = *v96;
                v96 = (v96 + 40);
                v86 = vaddq_f64(v86, v97);
                v87 = v87 + 1.0;
                --v95;
              }

              while (v95);
            }

            v89 = v87;
          }

          v78 = vdivq_f64(v86, vdupq_lane_s64(*&v89, 0));
          v258 = v78;
LABEL_71:
          v254 = 0;
          v255 = 0;
          __p = 0;
          if (v90 != v91)
          {
            if (0xCCCCCCCCCCCCCCCDLL * (v92 >> 3) < 0x666666666666667)
            {
              operator new();
            }

            sub_18369761C();
          }

          sub_183696ECC(&__p, &v256, v78);
          v103 = *(a1 + 72);
          if (v103)
          {
            *(a1 + 80) = v103;
            operator delete(v103);
            *(a1 + 72) = 0;
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
          }

          v104 = v256;
          *(a1 + 72) = v256;
          v105 = v257;
          *(a1 + 80) = v257;
          v257 = 0uLL;
          v256 = 0;
          if (__p)
          {
            v254 = __p;
            operator delete(__p);
            v104 = *(a1 + 72);
            v106 = *(a1 + 80);
          }

          else
          {
            v106 = v105;
          }

          v107 = v106 - v104;
          v108 = 0xCCCCCCCCCCCCCCCDLL * (v106 - v104);
          if (v108 < 7)
          {
            sub_18374BD28(v4, v98, v99, v100, v101, v102);
          }

          if (v107 == 280)
          {
            v108 = 7;
          }

          else
          {
            do
            {
              v110 = *(v106 - 5);
              v109 = *(v106 - 4);
              v111 = v104[5] - v110;
              v112 = v104[6] - v109;
              v113 = (v112 * v112) + (v111 * v111);
              if (v113 > 0.0)
              {
                v111 = v111 / v113;
                v112 = v112 / v113;
              }

              v114 = sqrtf(v113);
              v115 = v104[1];
              v116 = ((*v104 - v110) * v112 - (v115 - v109) * v111) * v114;
              v117 = fabsf(v116);
              if (v108 - 1 < 2)
              {
                v118 = 0;
              }

              else
              {
                v118 = 0;
                v119 = v108 - 2;
                v120 = v104 + 6;
                v121 = 1;
                do
                {
                  v125 = *(v120 - 6);
                  v124 = *(v120 - 5);
                  v126 = v120[4] - v125;
                  v127 = v120[5] - v124;
                  v128 = (v127 * v127) + (v126 * v126);
                  if (v128 > 0.0)
                  {
                    v126 = v126 / v128;
                    v127 = v127 / v128;
                  }

                  v122 = ((*(v120 - 1) - v125) * v127 - (*v120 - v124) * v126) * sqrtf(v128);
                  v123 = fabsf(v122);
                  if (v123 < v117)
                  {
                    v117 = v123;
                    v118 = v121;
                  }

                  ++v121;
                  v120 += 5;
                  --v119;
                }

                while (v119);
              }

              v129 = (v104 + v107);
              v131 = *(v129 - 10);
              v130 = *(v129 - 9);
              v132 = *v104 - v131;
              v133 = v115 - v130;
              v134 = (v133 * v133) + (v132 * v132);
              if (v134 > 0.0)
              {
                v132 = v132 / v134;
                v133 = v133 / v134;
              }

              v135 = ((v110 - v131) * v133 - (v109 - v130) * v132) * sqrtf(v134);
              v136 = v108 - 1;
              if (fabsf(v135) >= v117)
              {
                v136 = v118;
              }

              v137 = &v104[5 * v136];
              v138 = v106 - (v137 + 5);
              if (v106 != v137 + 5)
              {
                memmove(&v104[5 * v136], v137 + 5, v138 - 3);
                v104 = *(a1 + 72);
              }

              v106 = (v137 + v138);
              *(a1 + 80) = v137 + v138;
              v107 = v137 + v138 - v104;
              v108 = 0xCCCCCCCCCCCCCCCDLL * (v107 >> 3);
            }

            while (v108 > 7);
            if (!v107)
            {
LABEL_152:
              v142 = 0;
              goto LABEL_153;
            }
          }

          v139 = 0;
          v140 = v12 + v12;
          v141 = -1.0;
          v142 = -1;
          while (2)
          {
            v152 = &v104[5 * v139];
            v153 = *(v152 + 5);
            if (v153)
            {
              v155 = *(a1 + 48);
              v154 = *(a1 + 56);
              v156 = 0xCCCCCCCCCCCCCCCDLL * ((v154 - v155) >> 3);
              if (v156 - 1 != v153)
              {
                v143 = &v155[5 * v153];
                v144 = v143 - 5;
                v145 = v143 + 5;
                goto LABEL_104;
              }

              v157 = v155[1];
              v158 = *(v154 - 40);
              v159 = *(v154 - 32);
              v160 = *v155 - v158;
              v161 = v157 - v159;
              v162 = sqrtf((v161 * v161) + (v160 * v160));
              if (v162 < v12)
              {
                v144 = (v154 - 80);
                v145 = v155 + 10;
                goto LABEL_104;
              }

              if (v162 < v140)
              {
                v144 = (v154 - 80);
                v145 = v155 + 5;
LABEL_104:
                v146 = 1;
LABEL_105:
                v147 = v152[1];
                v148 = *v144 - *v152;
                v149 = v144[1] - v147;
                v150 = *v145 - *v152;
                *&v147 = v145[1] - v147;
                v151 = ((v149 * *&v147) + (v148 * v150)) / (sqrtf((v149 * v149) + (v148 * v148)) * sqrtf((*&v147 * *&v147) + (v150 * v150)));
                if (v146 && v151 > v141)
                {
                  v141 = v151;
                  v142 = v139;
                }

                if (++v139 == v108)
                {
                  if (v142 == -1)
                  {
                    goto LABEL_152;
                  }

LABEL_153:
                  v238 = &v104[5 * v142];
                  v239 = *v238;
                  v240 = v238[1];
                  v241 = v258.f64[0] - *v238;
                  v242 = v258.f64[1] - v240;
                  v243 = (v242 * v242) + (v241 * v241);
                  if (v243 > 0.0)
                  {
                    v241 = v241 / v243;
                    v242 = v242 / v243;
                  }

                  v244 = *(a1 + 48);
                  v245 = *(a1 + 56);
                  if (v244 != v245)
                  {
                    v246 = vdup_n_s32(0xE0AD78EC);
                    v247 = v241;
                    v248 = vdup_n_s32(0x60AD78ECu);
                    v249 = v242;
                    do
                    {
                      v250 = *v244;
                      v251 = (v244->f64[1] - v240) * v249 + (v244->f64[0] - v239) * v247;
                      if (v251 > 0.75)
                      {
                        v248 = vcvt_f32_f64(vminnmq_f64(v250, vcvtq_f64_f32(v248)));
                        v246 = vcvt_f32_f64(vmaxnmq_f64(v250, vcvtq_f64_f32(v246)));
                      }

                      v244 = (v244 + 40);
                    }

                    while (v244 != v245);
                  }

                  operator new();
                }

                continue;
              }

              v187 = v155[5] - *v155;
              v188 = v155[6] - v157;
              v145 = (v154 - 80);
              v189 = *(v154 - 80);
              v190 = v158 - *&v189;
              v191 = *(v154 - 72);
              v192 = v159 - *&v191;
              v193 = (v188 * v192) + (v187 * v190);
              v194 = sqrtf((v188 * v188) + (v187 * v187));
              v195 = (v192 * v192) + (v190 * v190);
              if ((v193 / (v194 * sqrtf(v195))) > 0.5)
              {
                if (v195 > 0.0)
                {
                  v190 = v190 / v195;
                  v192 = v192 / v195;
                }

                if (v156 >= 4)
                {
                  *&v196 = v190;
                  v197 = v192;
                  v198 = v156 - 3;
                  if (v156 - 3 > 8)
                  {
                    v219 = v198 & 7;
                    if ((v198 & 7) == 0)
                    {
                      v219 = 8;
                    }

                    v220 = v198 - v219;
                    v221 = vdupq_lane_s64(v189, 0);
                    v222 = vdupq_lane_s64(v191, 0);
                    v199 = v220 + 3;
                    v223 = vdupq_lane_s64(v196, 0);
                    v224 = v155 + 26;
                    v225 = 0uLL;
                    v226 = 0uLL;
                    do
                    {
                      v227.f64[0] = *(v224 - 11);
                      v228.f64[0] = *(v224 - 10);
                      v229.f64[0] = *(v224 - 1);
                      v230.f64[0] = *v224;
                      v229.f64[1] = v224[4];
                      v227.f64[1] = *(v224 - 6);
                      v231.f64[0] = v224[19];
                      v232.f64[0] = v224[20];
                      v231.f64[1] = v224[24];
                      v233.f64[0] = v224[9];
                      v234.f64[0] = v224[10];
                      v233.f64[1] = v224[14];
                      v228.f64[1] = *(v224 - 5);
                      v230.f64[1] = v224[5];
                      v234.f64[1] = v224[15];
                      v232.f64[1] = v224[25];
                      v225 = vsubq_s32(v225, vcgtzq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(vsubq_f64(v228, v222), v197), v223, vsubq_f64(v227, v221))), vmlaq_f64(vmulq_n_f64(vsubq_f64(v230, v222), v197), v223, vsubq_f64(v229, v221)))));
                      v226 = vsubq_s32(v226, vcgtzq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(vsubq_f64(v234, v222), v197), v223, vsubq_f64(v233, v221))), vmlaq_f64(vmulq_n_f64(vsubq_f64(v232, v222), v197), v223, vsubq_f64(v231, v221)))));
                      v224 += 40;
                      v220 -= 8;
                    }

                    while (v220);
                    v185 = vaddvq_s32(vaddq_s32(v226, v225));
                  }

                  else
                  {
                    v185 = 0;
                    v199 = 3;
                  }

                  v235 = v156 - v199;
                  v236 = &v155[5 * v199 + 1];
                  do
                  {
                    v237 = (*v236 - *&v191) * v197 + (*(v236 - 1) - *&v189) * *&v196;
                    if (v237 > 0.0)
                    {
                      ++v185;
                    }

                    v236 += 5;
                    --v235;
                  }

                  while (v235);
LABEL_150:
                  v146 = v185 < 5;
                  v144 = &v258;
                  goto LABEL_105;
                }
              }
            }

            else
            {
              v163 = *(a1 + 48);
              v164 = *(a1 + 56);
              v165 = *v163;
              v166 = v163[1];
              v168 = *(v164 - 40);
              v167 = *(v164 - 32);
              v169 = *v163 - v168;
              v170 = v166 - v167;
              v171 = sqrtf((v170 * v170) + (v169 * v169));
              if (v171 < v12)
              {
                v144 = (v164 - 80);
                v145 = v163 + 5;
                goto LABEL_104;
              }

              if (v171 < v140)
              {
                v144 = (v164 - 40);
                v145 = v163 + 5;
                goto LABEL_104;
              }

              v145 = v163 + 5;
              v172 = *(v163 + 5);
              v173 = *&v172 - v165;
              v174 = *(v163 + 6);
              v175 = *&v174 - v166;
              v176 = v168 - *(v164 - 80);
              v177 = v167 - *(v164 - 72);
              if ((((v175 * v177) + (v173 * v176)) / (sqrtf((v175 * v175) + (v173 * v173)) * sqrtf((v177 * v177) + (v176 * v176)))) > 0.5)
              {
                v178 = v165 - *&v172;
                v179 = v166 - *&v174;
                v180 = (v179 * v179) + (v178 * v178);
                if (v180 > 0.0)
                {
                  v178 = v178 / v180;
                  v179 = v179 / v180;
                }

                v181 = 0xCCCCCCCCCCCCCCCDLL * ((v164 - v163) >> 3);
                if (v181 >= 4)
                {
                  *&v182 = v178;
                  v183 = v179;
                  v184 = v181 - 3;
                  if (v181 - 3 > 8)
                  {
                    v200 = v184 & 7;
                    if ((v184 & 7) == 0)
                    {
                      v200 = 8;
                    }

                    v201 = v184 - v200;
                    v202 = vdupq_lane_s64(v172, 0);
                    v203 = vdupq_lane_s64(v174, 0);
                    v186 = v201 + 3;
                    v204 = vdupq_lane_s64(v182, 0);
                    v205 = v163 + 26;
                    v206 = 0uLL;
                    v207 = 0uLL;
                    do
                    {
                      v208.f64[0] = *(v205 - 11);
                      v209.f64[0] = *(v205 - 10);
                      v210.f64[0] = *(v205 - 1);
                      v211.f64[0] = *v205;
                      v210.f64[1] = v205[4];
                      v208.f64[1] = *(v205 - 6);
                      v212.f64[0] = v205[19];
                      v213.f64[0] = v205[20];
                      v212.f64[1] = v205[24];
                      v214.f64[0] = v205[9];
                      v215.f64[0] = v205[10];
                      v214.f64[1] = v205[14];
                      v209.f64[1] = *(v205 - 5);
                      v211.f64[1] = v205[5];
                      v215.f64[1] = v205[15];
                      v213.f64[1] = v205[25];
                      v206 = vsubq_s32(v206, vcgtzq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(vsubq_f64(v209, v203), v183), v204, vsubq_f64(v208, v202))), vmlaq_f64(vmulq_n_f64(vsubq_f64(v211, v203), v183), v204, vsubq_f64(v210, v202)))));
                      v207 = vsubq_s32(v207, vcgtzq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(vsubq_f64(v215, v203), v183), v204, vsubq_f64(v214, v202))), vmlaq_f64(vmulq_n_f64(vsubq_f64(v213, v203), v183), v204, vsubq_f64(v212, v202)))));
                      v205 += 40;
                      v201 -= 8;
                    }

                    while (v201);
                    v185 = vaddvq_s32(vaddq_s32(v207, v206));
                  }

                  else
                  {
                    v185 = 0;
                    v186 = 3;
                  }

                  v216 = v181 - v186;
                  v217 = &v163[5 * v186 + 1];
                  do
                  {
                    v218 = (*v217 - *&v174) * v183 + (*(v217 - 1) - *&v172) * *&v182;
                    if (v218 > 0.0)
                    {
                      ++v185;
                    }

                    v217 += 5;
                    --v216;
                  }

                  while (v216);
                  goto LABEL_150;
                }
              }
            }

            break;
          }

          v146 = 1;
          v144 = &v258;
          goto LABEL_105;
        }
      }

      sub_18374BD28(v4, v59, v60, v61, v62, v63);
    }
  }
}

void sub_18374BC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  MEMORY[0x1865E5EC0](v20, 0x10A1C40547AA8FDLL);
  v23 = v17[9];
  if (v23)
  {
    v17[10] = v23;
    operator delete(v23);
    v21 = *v19;
    if (*v19)
    {
LABEL_6:
      v17[7] = v21;
      operator delete(v21);

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v21 = *v19;
    if (*v19)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

void sub_18374BF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHSessionStateTracker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18374BF6C(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    objc_msgSend_setIdle(obj, v1, v2, v3, v4, v5);
    objc_msgSend_invalidate(obj[1], v6, v7, v8, v9, v10);
    v11 = obj[1];
    obj[1] = 0;

    objc_sync_exit(obj);
  }
}

void sub_18374BFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_18374C014(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (v3[2] == a2)
    {
LABEL_13:
      objc_sync_exit(v3);

      return;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v4 = qword_1EA84DCC0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = v3[2];
      *buf = 134218240;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEBUG, "CHSessionStateTracker updating state %li -> %li", buf, 0x16u);
    }

    v3[2] = a2;
    v6 = v3;
    objc_sync_enter(v6);
    if (v6[1])
    {
LABEL_12:
      objc_sync_exit(v6);

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v66 = sub_18374C690;
      v67 = sub_18374C6A0;
      v68 = 0;
      v46 = v6[1];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_18374C6A8;
      v61[3] = &unk_1E6DDC2E0;
      v61[4] = buf;
      v51 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v46, v47, v61, v48, v49, v50);
      v56 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v52, a2, v53, v54, v55);
      objc_msgSend_handleSessionStateUpdate_(v51, v57, v56, v58, v59, v60);

      _Block_object_dispose(buf, 8);
      goto LABEL_13;
    }

    if (qword_1EA84DC48 == -1)
    {
      v7 = qword_1EA84DCC0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        v8 = objc_alloc(MEMORY[0x1E696B0B8]);
        v12 = objc_msgSend_initWithMachServiceName_options_(v8, v9, @"com.apple.handwritingd.remoterecognition", 0, v10, v11);
        v13 = v6[1];
        v6[1] = v12;

        v18 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v14, &unk_1EF2155C0, v15, v16, v17);
        v19 = MEMORY[0x1E695DFD8];
        v20 = objc_opt_class();
        v25 = objc_msgSend_setWithObjects_(v19, v21, v20, v22, v23, v24, 0);
        objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v18, v26, v25, sel_handleSessionStateUpdate_, 0, 0);
        objc_msgSend_setRemoteObjectInterface_(v6[1], v27, v18, v28, v29, v30);
        objc_initWeak(&location, v6);
        v31 = v6[1];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_18374C52C;
        v66 = &unk_1E6DDD098;
        objc_copyWeak(&v67, &location);
        objc_msgSend_setInterruptionHandler_(v31, v32, buf, v33, v34, v35);
        v36 = v6[1];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = sub_18374C5E4;
        v62[3] = &unk_1E6DDD098;
        objc_copyWeak(&v63, &location);
        objc_msgSend_setInvalidationHandler_(v36, v37, v62, v38, v39, v40);
        objc_msgSend_resume(v6[1], v41, v42, v43, v44, v45);
        objc_destroyWeak(&v63);
        objc_destroyWeak(&v67);
        objc_destroyWeak(&location);

        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v7 = qword_1EA84DCC0;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHSessionStateTracker setting up connection", buf, 2u);
    goto LABEL_11;
  }
}

void sub_18374C438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);

  objc_sync_exit(v26);
  objc_sync_exit(v26);

  _Unwind_Resume(a1);
}

void sub_18374C52C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_18374BF6C(WeakRetained);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DCC0;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_DEBUG, "Interrupted tracker connection.", v3, 2u);
  }
}

void sub_18374C5E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 2) = 0;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v3 = qword_1EA84DCC0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "Invalidated tracker connection.", v4, 2u);
    }
  }
}

uint64_t sub_18374C690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18374C6A8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DCC0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_18374CE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35)
{
  _Block_object_dispose((v41 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_18374CFB0(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_strokeIndexes(v3, v4, v5, v6, v7, v8);
  Index = objc_msgSend_lastIndex(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_count(*(a1 + 32), v16, v17, v18, v19, v20);

  if (Index >= v21)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC60;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_msgSend_strokeIndexes(v3, v52, v53, v54, v55, v56);
      v63 = objc_msgSend_description(v57, v58, v59, v60, v61, v62);
      v69 = objc_msgSend_count(*(a1 + 32), v64, v65, v66, v67, v68);
      *v70 = 138412546;
      *&v70[4] = v63;
      *&v70[12] = 2048;
      *&v70[14] = v69;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "AutoRefine result not created: Unable to access all strokes with indexes %@ from the strokes array with %ld elements", v70, 0x16u);
    }
  }

  else
  {
    v27 = *(a1 + 32);
    v28 = objc_msgSend_strokeIndexes(v3, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_objectsAtIndexes_(v27, v29, v28, v30, v31, v32);

    v34 = objc_opt_class();
    objc_msgSend_boundsForStrokes_(v34, v35, v33, v36, v37, v38);
    *v70 = v39;
    *&v70[8] = v40;
    *&v70[16] = v41;
    v71 = v42;
    v43 = *(a1 + 40);
    v47 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v44, v70, "{CGRect={CGPoint=dd}{CGSize=dd}}", v45, v46);
    objc_msgSend_addObject_(v43, v48, v47, v49, v50, v51);
  }
}