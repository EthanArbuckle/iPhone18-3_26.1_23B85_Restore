void sub_1AE68F440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, const void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  __cxa_free_exception(v36);
  sub_1AE63109C(&a24);
  sub_1AE68C59C(&a26);
  v39 = a27;
  a27 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  sub_1AE6315E0((v37 - 128));
  sub_1AE6315E0(&a28);
  sub_1AE68FF20(&a19);
  sub_1AE68FF20(a18);
  _Unwind_Resume(a1);
}

void sub_1AE68FA38(void *a1, CFDictionaryRef **a2, CFDictionaryRef **a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      v9 = *v6;
      valuePtr = 0;
      Value = CFDictionaryGetValue(*v9, @"Type");
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr == a4)
      {
        v11 = v8;
        v12 = v8 >> 4;
        if ((v12 + 1) >> 60)
        {
          sub_1AE5CBB70();
        }

        if (v12 != -1)
        {
          if (!((v12 + 1) >> 60))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        MEMORY[0xFFFFFFFFFFFFFFF0] = *v6;
        if (MEMORY[0xFFFFFFFFFFFFFFF8])
        {
          atomic_fetch_add_explicit((MEMORY[0xFFFFFFFFFFFFFFF8] + 8), 1uLL, memory_order_relaxed);
        }

        v8 = 16 * v12 + 16;
        memcpy(0, 0, v11);
        *a1 = 0;
        a1[1] = v8;
        a1[2] = 0;
        a1[1] = v8;
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

CFTypeRef **sub_1AE68FBF8(CFTypeRef **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      CFRelease(*v1);
    }

    MEMORY[0x1B2706400](v1, 0x1060C40C2E02434);
    return v2;
  }

  return result;
}

void *sub_1AE68FC50(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFURLGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1AE68FCE4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE66A234(v1);
  _Unwind_Resume(a1);
}

const void *sub_1AE68FD10(void *a1, CFURLRef anURL)
{
  result = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  *a1 = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1AE68FD9C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE631068(v1);
  _Unwind_Resume(a1);
}

void sub_1AE68FE98(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  v6 = v2[2];
  v2[2] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = v2[1];
  v2[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

void *sub_1AE68FF20(void *a1)
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

void *sub_1AE68FFB0(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  a1[1] = 0;
  v5 = a1 + 1;
  a1[2] = 0;
  a1[4] = 0;
  *a1 = a1 + 1;
  a1[3] = a1 + 4;
  v28 = (a1 + 3);
  a1[5] = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) < v6)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  }

  v30 = v6;
  if (v6)
  {
    for (i = 0; i != v30; ++i)
    {
      v8 = 24 * i;
      v9 = *a2 + 24 * i;
      v10 = *a3;
      if (*(v9 + 23) < 0)
      {
        sub_1AE5DBF1C(__dst, *v9, *(v9 + 8));
      }

      else
      {
        v11 = *v9;
        v34 = *(v9 + 16);
        *__dst = v11;
      }

      v12 = (v10 + v8);
      if (*(v10 + v8 + 23) < 0)
      {
        sub_1AE5DBF1C(&__p, *v12, *(v12 + 1));
      }

      else
      {
        v13 = *v12;
        v36 = *(v12 + 2);
        __p = v13;
      }

      v14 = *v5;
      if (!*v5)
      {
LABEL_38:
        operator new();
      }

      if (v34 >= 0)
      {
        v15 = __dst;
      }

      else
      {
        v15 = __dst[0];
      }

      if (v34 >= 0)
      {
        v16 = HIBYTE(v34);
      }

      else
      {
        v16 = __dst[1];
      }

      while (1)
      {
        while (1)
        {
          v17 = v14;
          v20 = v14[4];
          v18 = v14 + 4;
          v19 = v20;
          v21 = *(v18 + 23);
          v22 = v21 >= 0 ? v18 : v19;
          v23 = v21 >= 0 ? *(v18 + 23) : v18[1];
          v24 = (v23 >= v16 ? v16 : v23);
          v25 = memcmp(v15, v22, v24);
          if (v25)
          {
            break;
          }

          if (v16 >= v23)
          {
            goto LABEL_33;
          }

LABEL_19:
          v14 = *v17;
          if (!*v17)
          {
            goto LABEL_38;
          }
        }

        if (v25 < 0)
        {
          goto LABEL_19;
        }

LABEL_33:
        v26 = memcmp(v22, v15, v24);
        if (v26)
        {
          if ((v26 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_37;
        }

        if (v23 >= v16)
        {
          break;
        }

LABEL_37:
        v14 = v17[1];
        if (!v14)
        {
          goto LABEL_38;
        }
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v34) < 0)
        {
          goto LABEL_43;
        }
      }

      else if (SHIBYTE(v34) < 0)
      {
LABEL_43:
        operator delete(__dst[0]);
      }
    }
  }

  if (v28 != a4)
  {
    sub_1AE67A6D4(v28, *a4, (a4 + 8));
  }

  return a1;
}

void sub_1AE690264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1AE6206F4(*a9);
  sub_1AE6206F4(*v20);
  _Unwind_Resume(a1);
}

void sub_1AE6902CC(int a1@<W2>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

void sub_1AE6902E0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_1AE690304(uint64_t a1, uint64_t a2, int *a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v12 = (*(a2 + 8) + (*a3 & 0xFFFFFFFFFFFFFFFCLL));
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30[0] = 0;
  v13 = *v12;
  if (v13)
  {
    (*(a7 + 16))(a7, v13, a4, v30);
    v14 = *(v28 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (a5 - 1 >= a4 && (v14 & 1) == 0)
  {
    if (qword_1EB5E0C40 != -1)
    {
      dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    }

    if ((v28[3] & 1) == 0)
    {
      v15 = qword_1EB5E0C48;
      v16 = v12 + 1;
      if (a6)
      {
        v17 = 0;
        do
        {
          (*(**(v15 + 8 * (v16[v17] & 3)) + 32))(v26);
          *(a6 + a4) = v17;
          v20 = MEMORY[0x1E69E9820];
          v21 = 0x40000000;
          v22 = sub_1AE690610;
          v23 = &unk_1E7A2DEF0;
          v24 = a7;
          v25 = &v27;
          v18 = *(v15 + 8 * (v26[0] & 3));
          (*(*v18 + 24))(v18, a2, v26, a4 + 1, a5, a6, &v20);
          if (v17 > 0xFE)
          {
            break;
          }

          ++v17;
        }

        while ((v28[3] & 1) == 0);
      }

      else
      {
        do
        {
          (*(**(v15 + 8 * (v16[a6] & 3)) + 32))(v26);
          v20 = MEMORY[0x1E69E9820];
          v21 = 0x40000000;
          v22 = sub_1AE690610;
          v23 = &unk_1E7A2DEF0;
          v24 = a7;
          v25 = &v27;
          v19 = *(v15 + 8 * (v26[0] & 3));
          (*(*v19 + 24))(v19, a2, v26, a4 + 1, a5, 0, &v20);
          if (a6 > 0xFE)
          {
            break;
          }

          ++a6;
        }

        while ((v28[3] & 1) == 0);
      }
    }
  }

  _Block_object_dispose(&v27, 8);
}

void sub_1AE6905F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE690610(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_1AE69077C(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *(a3 + 1);
  v4 = (*(a2 + 16) + (*a3 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v3 == v4)
  {
    return *v4;
  }

  v5 = *v3;
  if (v5 == *(a3 + 16))
  {
    return *(v3 + v5 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1AE6907C8(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16) + (a2 & 0xFFFFFFFC);
  *a3 = a2;
  *(a3 + 8) = v3 + 4;
  *(a3 + 16) = 0;
}

void sub_1AE6907E8(uint64_t a1, uint64_t a2, int *a3, unint64_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 1);
  if (v7)
  {
    v67 = 0;
    v11 = (*(a2 + 16) + (*a3 & 0xFFFFFFFFFFFFFFFCLL));
    v12 = (v11 + 1);
    if (v7 == v11 + 1 && (v14 = *v12, v14))
    {
      v15 = a3;
      v16 = a7;
      (*(a7 + 16))(a7, v14, a4, &v67);
      a7 = v16;
      a3 = v15;
      v13 = v67;
    }

    else
    {
      v13 = 0;
    }

    if (a5 - 1 >= a4 && (v13 & 1) == 0)
    {
      memset(__dst, 0, sizeof(__dst));
      v17 = *(a3 + 1);
      if (v17 <= v12)
      {
        v19 = 0;
        v21 = (v11 + 2);
      }

      else
      {
        v18 = *v17;
        v19 = *(a3 + 16);
        v20 = a7;
        memcpy(__dst, v17 + 1, v19);
        a7 = v20;
        if (v19 <= v18)
        {
          v21 = v17;
        }

        else
        {
          v21 = &v17[v18 + 5];
        }
      }

      v66 = a7;
      v65 = a4 - v19;
      v22 = *v11;
      if (a6)
      {
        if (a5)
        {
          if (v21 >= &v12[v22])
          {
            return;
          }

          v25 = *v21;
          v23 = (v21 + 1);
          v24 = v25;
          v26 = v25 - v19;
          if (v25 >= v19 && v26 <= a5)
          {
            v27 = memcmp(v23, __dst, v19);
            if (v27 > 0)
            {
              return;
            }

            if (!v27 && *&v23[v24])
            {
              memcpy((a6 + a4), &v23[v19], v26);
              (*(v66 + 16))(v66, *&v23[v24], v65 + v24, &v67);
              if (v67)
              {
                return;
              }

              v22 = *v11;
            }
          }

          for (i = &v23[v24]; i + 4 < &v12[v22]; i = &v30[v29])
          {
            v30 = i + 5;
            v29 = i[4];
            v31 = v29 - v19;
            if (v29 >= v19 && v31 <= a5)
            {
              v32 = memcmp(v30, __dst, v19);
              if (v32 > 0)
              {
                return;
              }

              if (!v32 && *&v30[v29])
              {
                memcpy((a6 + a4), &v30[v19], v31);
                (*(v66 + 16))(v66, *&v30[v29], v65 + v29, &v67);
                if (v67)
                {
                  return;
                }

                v22 = *v11;
              }
            }
          }
        }

        else
        {
          if (v21 >= &v12[v22])
          {
            return;
          }

          v47 = *v21;
          v45 = (v21 + 1);
          v46 = v47;
          v48 = v47 - v19;
          if (v47 >= v19)
          {
            v49 = memcmp(v45, __dst, v19);
            if (v49 > 0)
            {
              return;
            }

            if (!v49 && *&v45[v46])
            {
              memcpy((a6 + a4), &v45[v19], v48);
              (*(v66 + 16))(v66, *&v45[v46], v65 + v46, &v67);
              if (v67)
              {
                return;
              }

              v22 = *v11;
            }
          }

          for (j = &v45[v46]; j + 4 < &v12[v22]; j = &v52[v51])
          {
            v52 = j + 5;
            v51 = j[4];
            if (v51 >= v19)
            {
              v53 = memcmp(v52, __dst, v19);
              if (v53 > 0)
              {
                return;
              }

              if (!v53 && *&v52[v51])
              {
                memcpy((a6 + a4), &v52[v19], v51 - v19);
                (*(v66 + 16))(v66, *&v52[v51], v65 + v51, &v67);
                if (v67)
                {
                  return;
                }

                v22 = *v11;
              }
            }
          }
        }
      }

      else if (a5)
      {
        if (v21 >= &v12[v22])
        {
          return;
        }

        v35 = *v21;
        v34 = (v21 + 1);
        v33 = v35;
        v36 = v35 - v19;
        if (v35 >= v19 && v36 <= a5)
        {
          v38 = memcmp(v34, __dst, v19);
          if (v38 > 0)
          {
            return;
          }

          if (!v38)
          {
            v63 = *&v34[v33];
            if (v63)
            {
              (*(v66 + 16))(v66, v63, v65 + v33, &v67);
              if (v67)
              {
                return;
              }

              v22 = *v11;
            }
          }
        }

        for (k = &v34[v33]; k + 4 < &v12[v22]; k = &v41[v40])
        {
          v41 = k + 5;
          v40 = k[4];
          if (v40 >= v19 && v40 - v19 <= a5)
          {
            v43 = memcmp(v41, __dst, v19);
            if (v43 > 0)
            {
              return;
            }

            if (!v43)
            {
              v44 = *&v41[v40];
              if (v44)
              {
                (*(v66 + 16))(v66, v44, v65 + v40, &v67);
                if (v67)
                {
                  return;
                }

                v22 = *v11;
              }
            }
          }
        }
      }

      else
      {
        if (v21 >= &v12[v22])
        {
          return;
        }

        v56 = *v21;
        v55 = (v21 + 1);
        v54 = v56;
        if (v19 <= v56)
        {
          v57 = memcmp(v55, __dst, v19);
          if (v57 > 0)
          {
            return;
          }

          if (!v57)
          {
            v64 = *&v55[v54];
            if (v64)
            {
              (*(v66 + 16))(v66, v64, v65 + v54, &v67);
              if (v67)
              {
                return;
              }

              v22 = *v11;
            }
          }
        }

        for (m = &v55[v54]; m + 4 < &v12[v22]; m = &v60[v59])
        {
          v60 = m + 5;
          v59 = m[4];
          if (v19 <= v59)
          {
            v61 = memcmp(v60, __dst, v19);
            if (v61 > 0)
            {
              return;
            }

            if (!v61)
            {
              v62 = *&v60[v59];
              if (v62)
              {
                (*(v66 + 16))(v66, v62, v65 + v59, &v67);
                if (v67)
                {
                  return;
                }

                v22 = *v11;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1AE690D1C(uint64_t a1@<X1>, int *a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1);
  if (!v5)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v7 = *a2;
  v8 = (*(a1 + 16) + (v7 & 0xFFFFFFFFFFFFFFFCLL));
  v9 = v8 + 4;
  memset(v17, 0, sizeof(v17));
  if (v5 > v8 + 4)
  {
    v10 = *v5;
    v11 = *(a2 + 16);
    memcpy(v17, v5 + 1, v11);
    v12 = v11 + 1;
    *(v17 + v11) = a3;
    if (v11 >= v10)
    {
      v13 = &v5[v10 + 5];
    }

    else
    {
      v13 = v5;
    }

LABEL_11:
    v14 = &v9[*v8];
    while (v13 < v14)
    {
      v15 = *v13;
      if (v12 <= v15)
      {
        v16 = memcmp(v13 + 1, v17, v12);
        if (v16 > 0)
        {
          goto LABEL_8;
        }

        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v13 += v15 + 5;
    }

    goto LABEL_8;
  }

  if (v5 == v9)
  {
    v13 = v8 + 8;
    LOBYTE(v17[0]) = a3;
    v12 = 1;
    goto LABEL_11;
  }

LABEL_8:
  LODWORD(v7) = 0;
  v13 = 0;
  LOBYTE(v12) = 0;
LABEL_9:
  *a4 = v7;
  *(a4 + 8) = v13;
  *(a4 + 16) = v12;
}

void sub_1AE690ECC(uint64_t a1, uint64_t a2, int *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a2 + 8) + (*a3 & 0xFFFFFFFFFFFFFFFCLL));
  v31 = 0;
  v32 = &v31;
  v13.i32[1] = 32;
  v33 = 0x2000000000;
  v34[0] = 0;
  v14 = *v12;
  if (v14)
  {
    (*(a7 + 16))(a7, v14, a4, v34);
    v15 = *(v32 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (a5 - 1 >= a4 && (v15 & 1) == 0)
  {
    if (qword_1EB5E0C40 != -1)
    {
      dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    }

    v16 = v32;
    if ((v32[3] & 1) == 0)
    {
      v17 = 0;
      v18 = qword_1EB5E0C48;
      v19 = v12 + 1;
      v20 = v12 + 10;
      do
      {
        v21 = v19[v17 >> 5];
        if ((v21 >> v17))
        {
          if (v17 >= 0x20)
          {
            v22 = 0;
            v23 = v17 >> 5;
            v24 = v19;
            do
            {
              v25 = *v24++;
              v13 = vcnt_s8(v25);
              v13.i16[0] = vaddlv_u8(v13);
              v22 += v13.i32[0];
              --v23;
            }

            while (v23);
          }

          else
          {
            v22 = 0;
          }

          if ((v17 & 0x1F) == 0x1F)
          {
            v26 = 0x7FFFFFFF;
          }

          else
          {
            v26 = ~(-1 << (v17 & 0x1F));
          }

          v13.i32[0] = v21 & v26;
          v27 = vcnt_s8(v13);
          v27.i16[0] = vaddlv_u8(v27);
          (*(**(v18 + 8 * (v20[v27.i32[0] + v22] & 3)) + 32))(v30);
          if (a6)
          {
            *(a6 + a4) = v17;
          }

          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 0x40000000;
          v29[2] = sub_1AE691170;
          v29[3] = &unk_1E7A2DF18;
          v29[4] = a7;
          v29[5] = &v31;
          v28 = *(v18 + 8 * (v30[0] & 3));
          (*(*v28 + 24))(v28, a2, v30, a4 + 1, a5, a6, v29);
          v16 = v32;
        }

        if (v17 > 0xFE)
        {
          break;
        }

        ++v17;
      }

      while ((v16[3] & 1) == 0);
    }
  }

  _Block_object_dispose(&v31, 8);
}

void sub_1AE691154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE691170(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_1AE6911C0@<X0>(uint64_t a1@<X1>, int *a2@<X2>, unsigned int a3@<W3>, uint64_t a4@<X8>, uint8x8_t a5@<D0>)
{
  v5 = (*(a1 + 8) + (*a2 & 0xFFFFFFFFFFFFFFFCLL));
  v6 = v5 + 1;
  v7 = a3 >> 5;
  if ((v5[v7 + 1] >> a3))
  {
    if (qword_1EB5E0C40 != -1)
    {
      v14 = a3;
      dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
      a3 = v14;
    }

    v8 = a3 & 0x1F;
    if (a3 >= 0x20)
    {
      a5 = vcnt_s8(*v6);
      a5.i16[0] = vaddlv_u8(a5);
      v9 = a5.i32[0];
      if (v7 != 1)
      {
        a5 = vcnt_s8(v5[2]);
        a5.i16[0] = vaddlv_u8(a5);
        v9 += a5.i32[0];
        if (v7 != 2)
        {
          a5 = vcnt_s8(v5[3]);
          a5.i16[0] = vaddlv_u8(a5);
          v9 += a5.i32[0];
          if (v7 != 3)
          {
            a5 = vcnt_s8(v5[4]);
            a5.i16[0] = vaddlv_u8(a5);
            v9 += a5.i32[0];
            if (v7 != 4)
            {
              a5 = vcnt_s8(v5[5]);
              a5.i16[0] = vaddlv_u8(a5);
              v9 += a5.i32[0];
              if (v7 != 5)
              {
                a5 = vcnt_s8(v5[6]);
                a5.i16[0] = vaddlv_u8(a5);
                v9 += a5.i32[0];
                if (v7 != 6)
                {
                  a5 = vcnt_s8(v5[7]);
                  a5.i16[0] = vaddlv_u8(a5);
                  v9 += a5.i32[0];
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    if (v8 == 31)
    {
      v10 = 0x7FFFFFFF;
    }

    else
    {
      v10 = ~(-1 << v8);
    }

    a5.i32[0] = v6[v7] & v10;
    v11 = vcnt_s8(a5);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = *(**(qword_1EB5E0C48 + 8 * (v5[v11.i32[0] + v9 + 10] & 3)) + 32);

    return v12();
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AE69140C(uint64_t a1, uint64_t a2, int *a3, unsigned int a4)
{
  if (qword_1EB5E0C40 != -1)
  {
    v6 = a2;
    v7 = a4;
    v8 = a3;
    dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    a3 = v8;
    a4 = v7;
    a2 = v6;
  }

  v4 = *(**(qword_1EB5E0C48 + 8 * (*(*(a2 + 8) + (*a3 & 0xFFFFFFFFFFFFFFFCLL) + 4 * a4 + 4) & 3)) + 32);

  return v4();
}

void *sub_1AE6914EC()
{
  qword_1EB5E0AD0 = objc_lookUpClass("_DPWordRecorder");
  qword_1EB5E0AE0 = objc_lookUpClass("_DPWordRecord");
  result = objc_lookUpClass("_DPStringRecorder");
  qword_1EB5E0AC8 = result;
  if (!qword_1EB5E0AD0)
  {
    v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/PrivateFrameworks/DifferentialPrivacy.framework", kCFURLPOSIXPathStyle, 1u);
    qword_1EB5E0C50 = CFBundleCreate(0, v1);
    CFRelease(v1);
    if (qword_1EB5E0C50)
    {
      CFBundleLoadExecutableAndReturnError(qword_1EB5E0C50, 0);
      qword_1EB5E0AD0 = objc_lookUpClass("_DPWordRecorder");
      qword_1EB5E0AE0 = objc_lookUpClass("_DPWordRecord");
      result = objc_lookUpClass("_DPStringRecorder");
      qword_1EB5E0AC8 = result;
    }

    else
    {
      result = qword_1EB5E0AC8;
    }
  }

  if (qword_1EB5E0AD0)
  {
    v2 = qword_1EB5E0AE0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && result != 0)
  {
    qword_1EB5E0AD8 = objc_lookUpClass("NSAutoreleasePool");
    result = dispatch_queue_create("com.apple.LanguageModeling.recorder", 0);
    qword_1EB5E0AE8 = result;
  }

  return result;
}

uint64_t sub_1AE691628(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *a1 = MEMORY[0x1B27054E0](0);
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  if (qword_1EB5E0A40 == -1)
  {
    if (a4)
    {
LABEL_3:
      *(a1 + 16) = a4;
      return a1;
    }
  }

  else
  {
    dispatch_once(&qword_1EB5E0A40, &unk_1F242B8F0);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  Value = CFLocaleGetValue(*a1, *MEMORY[0x1E695E6F0]);
  v10 = CFLocaleGetValue(v7, *MEMORY[0x1E695E6D0]);
  if (v10)
  {
    v11 = @"RevisedWords";
    if (v8 == 1)
    {
      v11 = @"LocalWords";
    }

    if (!v8)
    {
      v11 = @"NewWords";
    }
  }

  else
  {
    v10 = [&unk_1F2436390 objectForKey:Value];
    v11 = @"RevisedWords";
    if (v8 == 1)
    {
      v11 = @"LocalWords";
    }

    if (!v8)
    {
      v11 = @"NewWords";
    }

    if (!v10)
    {
      v12 = CFStringCreateWithFormat(0, 0, @"com.apple.keyboard.%@.%@", v11, Value);
      goto LABEL_17;
    }
  }

  v12 = CFStringCreateWithFormat(0, 0, @"com.apple.keyboard.%@.%@_%@", v11, Value, v10);
LABEL_17:
  v13 = v12;
  v14 = &qword_1EB5E0AC8;
  if (a3 != 2)
  {
    v14 = &qword_1EB5E0AD0;
  }

  *(a1 + 16) = [objc_msgSend(*v14 "alloc")];
  CFRelease(v13);
  return a1;
}

void sub_1AE6917BC(const __CFLocale **a1, CFStringRef theString)
{
  v2 = theString;
  v3 = a1;
  v4 = *a1;
  Length = CFStringGetLength(theString);
  if (Length < 3)
  {
    return;
  }

  v48 = Length;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v2);
  v65 = MutableCopy;
  CFStringUppercase(MutableCopy, v4);
  if (CFStringCompare(v2, MutableCopy, 0) == kCFCompareEqualTo)
  {
    v8 = 0;
    if (MutableCopy)
    {
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  theStringa = v2;
  v61 = 0;
  v62 = v48;
  CharactersPtr = CFStringGetCharactersPtr(v2);
  v46 = v3;
  v47 = v2;
  v45 = MutableCopy;
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
  }

  v9 = 0;
  v10 = 0;
  v49 = 0;
  v11 = 0;
  v63 = 0;
  v64 = 0;
  v12 = v48;
  v13 = v48 - 1;
  v60 = CStringPtr;
  v14 = -1;
  v15 = 65;
  v16 = MEMORY[0x1E69E9830];
  v17 = 1;
  v18 = 1;
  do
  {
    v19 = v9 + 1;
    if (v17 >= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = v17;
    }

    if (v17 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v17;
    }

    v22 = v62;
    if (v62 <= v19)
    {
      v24 = 0;
      if (v62 < v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (CharactersPtr)
      {
        v23 = &CharactersPtr[v61];
        goto LABEL_18;
      }

      if (!v60)
      {
        if (v64 <= v19 || v10 > v19)
        {
          v30 = v16;
          v31 = v13;
          v32 = v21 + v14;
          v33 = v15 - v21;
          v34 = v9 - v21;
          v35 = v34 + 1;
          v36 = v34 + 65;
          if (v36 >= v62)
          {
            v36 = v62;
          }

          v63 = v35;
          v64 = v36;
          if (v62 >= v33)
          {
            v22 = v33;
          }

          v66.location = v35 + v61;
          v66.length = v22 + v32;
          CFStringGetCharacters(theStringa, v66, buffer);
          v22 = v62;
          v10 = v63;
          v12 = v48;
          v13 = v31;
          v16 = v30;
        }

        v23 = &buffer[-v10];
LABEL_18:
        v24 = v23[v9 + 1];
        if (v22 < v19)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      v24 = v60[v61 + 1 + v9];
      if (v62 < v19)
      {
LABEL_21:
        v25 = 0;
        goto LABEL_29;
      }
    }

LABEL_24:
    if (CharactersPtr)
    {
      v26 = &CharactersPtr[v61];
    }

    else
    {
      if (v60)
      {
        v25 = v60[v61 + v9];
        goto LABEL_29;
      }

      if (v64 < v19 || v10 >= v19)
      {
        v37 = v13;
        v38 = v9 - v20 + 65;
        if (v38 >= v22)
        {
          v38 = v22;
        }

        v63 = v9 - v20 + 1;
        v64 = v38;
        if (v22 >= v15 - v20)
        {
          v22 = v15 - v20;
        }

        v67.location = v9 - v20 + 1 + v61;
        v67.length = v22 + v20 + v14;
        CFStringGetCharacters(theStringa, v67, buffer);
        v10 = v63;
        v12 = v48;
        v13 = v37;
        v16 = MEMORY[0x1E69E9830];
      }

      v26 = &buffer[-v10];
    }

    v25 = v26[v9];
LABEL_29:
    if (v24 <= 0xFFu && (*(v16 + 4 * v24 + 60) & 0x400) != 0)
    {
      break;
    }

    if (v19 < 2)
    {
      LODWORD(v29) = 0;
      goto LABEL_39;
    }

    v27 = v9 - 1;
    v28 = v62;
    if (v62 <= v9 - 1)
    {
      LOWORD(v29) = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v29 = &CharactersPtr[v61];
      }

      else
      {
        if (v60)
        {
          LOWORD(v29) = v60[v61 - 1 + v9];
          goto LABEL_38;
        }

        if (v64 <= v27 || v10 > v27)
        {
          v39 = v13;
          v40 = v9 - 5;
          if (v27 < 4)
          {
            v40 = 0;
          }

          if (v40 + 64 < v62)
          {
            v28 = v40 + 64;
          }

          v63 = v40;
          v64 = v28;
          v68.length = v28 - v40;
          v68.location = v61 + v40;
          CFStringGetCharacters(theStringa, v68, buffer);
          v10 = v63;
          v12 = v48;
          v13 = v39;
          v16 = MEMORY[0x1E69E9830];
        }

        v29 = &buffer[-v10];
      }

      LOWORD(v29) = v29[v9 - 1];
    }

LABEL_38:
    LODWORD(v29) = v29;
LABEL_39:
    if (v29 == v24)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    if (v25 == v24)
    {
      ++v18;
    }

    else
    {
      v18 = 1;
    }

    if (v18 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      break;
    }

    ++v17;
    v49 = v9 + 2 >= v12;
    ++v9;
    --v14;
    ++v15;
  }

  while (v13 != v9);
  v3 = v46;
  v2 = v47;
  MutableCopy = v45;
  v8 = v49;
  if (v45)
  {
LABEL_76:
    CFRelease(MutableCopy);
  }

LABEL_77:
  if (v8)
  {
    if (v2)
    {
      v41 = v3[2];
      if (v41)
      {
        if (qword_1EB5E0AE8)
        {
          if (*(v3 + 2) == 2)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            CFArrayAppendValue(Mutable, v2);
            *buffer = 0;
            v53 = buffer;
            v54 = 0x3052000000;
            v55 = sub_1AE691DBC;
            v56 = sub_1AE691DCC;
            v57 = v3[2];
            v43 = qword_1EB5E0AE8;
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = sub_1AE691DD8;
            v51[3] = &unk_1E7A2DF40;
            v51[4] = buffer;
            v51[5] = Mutable;
            v44 = v51;
          }

          else
          {
            *buffer = 0;
            v53 = buffer;
            v54 = 0x3052000000;
            v55 = sub_1AE691DBC;
            v56 = sub_1AE691DCC;
            v57 = v41;
            CFRetain(v2);
            v43 = qword_1EB5E0AE8;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1AE691E2C;
            block[3] = &unk_1E7A2DF40;
            block[4] = buffer;
            block[5] = v2;
            v44 = block;
          }

          dispatch_async(v43, v44);
          _Block_object_dispose(buffer, 8);
        }
      }
    }
  }
}

void sub_1AE691DD8(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) record:*(a1 + 40)];

  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_1AE691E2C(uint64_t a1)
{
  v18 = objc_alloc_init(qword_1EB5E0AD8);
  v19 = a1;
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 40);
  valuePtr = 0;
  Length = CFStringGetLength(v2);
  v17 = v3;
  v5 = [v3 wordFragmentWidth];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v21.location = 0;
  v21.length = Length;
  v7 = CFStringCreateWithSubstring(0, v2, v21);
  v8 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFArrayAppendValue(Mutable, [qword_1EB5E0AE0 word:v7 atPosition:v8]);
  CFRelease(v8);
  CFRelease(v7);
  if (Length >= 1 && valuePtr < Length)
  {
    location = 0;
    v10 = 0;
    if (v5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v5;
    }

    do
    {
      v12 = CFStringCreateMutable(0, 0);
      ++valuePtr;
      v13 = v11;
      do
      {
        if (v10 + location < Length)
        {
          RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v2, v10 + location);
          location = RangeOfComposedCharactersAtIndex.location;
          v10 = RangeOfComposedCharactersAtIndex.length;
          v15 = CFStringCreateWithSubstring(0, v2, RangeOfComposedCharactersAtIndex);
          CFStringAppend(v12, v15);
          CFRelease(v15);
        }

        --v13;
      }

      while (v13);
      v16 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
      CFArrayAppendValue(Mutable, [qword_1EB5E0AE0 word:v12 atPosition:v16]);
      CFRelease(v16);
      CFRelease(v12);
    }

    while (location + v10 < Length && valuePtr < Length);
  }

  [v17 record:Mutable];
  CFRelease(Mutable);

  CFRelease(*(v19 + 40));
}

uint64_t sub_1AE692080(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v6 = a5;
  v8 = *a2;
  v7 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3) <= 1)
  {
    sub_1AE736F4C(a1, a2, a3, a4, a5, a6);
    return 1;
  }

  v153 = 0;
  v154 = 0;
  v155 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  if (v8 != v7)
  {
    v135 = v7;
    while (1)
    {
      __p = 0;
      v148 = 0;
      v149 = 0;
      v9 = *v8;
      v137 = v8;
      v142 = *(v8 + 8);
      if (*v8 != v142)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v18 = *v9;
          v17 = v9[1];
          v19 = v17 - *v9;
          v20 = v19 >> 2;
          if (v19 >> 2 >= 1)
          {
            if (-v13 < v19)
            {
              v21 = v13 - v12;
              v22 = (v13 - v12) >> 2;
              v23 = v22 + v20;
              if ((v22 + v20) >> 62)
              {
                sub_1AE5CBB70();
              }

              v139 = v10;
              if (-v12 >> 1 > v23)
              {
                v23 = -v12 >> 1;
              }

              v24 = v12;
              if (-v12 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v25 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                if (!(v25 >> 62))
                {
                  operator new();
                }

                sub_1AE5CB09C();
              }

              v12 = 0;
              v33 = (4 * v22);
              v13 = 4 * v22 + v19;
              if ((v19 - 4) < 0x1C || v21 - v18 < 0x20)
              {
                do
                {
LABEL_34:
                  v41 = *v18++;
                  *v33++ = v41;
                }

                while (v33 != v13);
              }

              else
              {
                v34 = ((v19 - 4) >> 2) + 1;
                v35 = v34 & 0x7FFFFFFFFFFFFFF8;
                v36 = &v33[v35];
                v37 = (v18 + 4);
                v38 = v33 + 4;
                v39 = v34 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v40 = *v37;
                  *(v38 - 1) = *(v37 - 1);
                  *v38 = v40;
                  v37 += 2;
                  v38 += 2;
                  v39 -= 8;
                }

                while (v39);
                if (v34 != (v34 & 0x7FFFFFFFFFFFFFF8))
                {
                  v18 = (v18 + v35 * 4);
                  v33 = v36;
                  goto LABEL_34;
                }
              }

              memcpy(0, v24, v21);
              v10 = v139;
              goto LABEL_39;
            }

            if (v18 != v17)
            {
              if ((v19 - 4) < 0x1C)
              {
                v28 = *v9;
              }

              else if ((v13 - v18) < 0x20)
              {
                v28 = *v9;
              }

              else
              {
                v26 = ((v19 - 4) >> 2) + 1;
                v27 = v26 & 0x7FFFFFFFFFFFFFF8;
                v28 = &v18[v27];
                v29 = (v13 + 16);
                v30 = (v18 + 4);
                v31 = v26 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v32 = *v30;
                  *(v29 - 1) = *(v30 - 1);
                  *v29 = v32;
                  v29 += 2;
                  v30 += 2;
                  v31 -= 8;
                }

                while (v31);
                v13 += v27 * 4;
                if (v26 == (v26 & 0x7FFFFFFFFFFFFFF8))
                {
                  goto LABEL_39;
                }
              }

              do
              {
                v42 = *v28++;
                *v13 = v42;
                v13 += 4;
              }

              while (v28 != v17);
            }
          }

LABEL_39:
          v43 = v14 + v9[1] - *v9;
          if (v11 < v10)
          {
            *v11 = v43;
            v11 += 8;
          }

          else
          {
            v140 = v12;
            v44 = __p;
            v45 = v11 - __p;
            v46 = (v11 - __p) >> 3;
            v47 = v46 + 1;
            if ((v46 + 1) >> 61)
            {
              sub_1AE5CBB70();
            }

            if ((v10 - __p) >> 2 > v47)
            {
              v47 = (v10 - __p) >> 2;
            }

            if (v10 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v48 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v47;
            }

            if (v48)
            {
              if (!(v48 >> 61))
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v49 = (8 * v46);
            v10 = 0;
            *v49 = v43;
            v11 = (v49 + 1);
            memcpy(0, v44, v45);
            __p = 0;
            v149 = 0;
            if (v44)
            {
              operator delete(v44);
            }

            v12 = v140;
          }

          v148 = v11;
          v16 = *v9;
          v15 = v9[1];
          v9 += 3;
          v14 += v15 - v16;
          if (v9 == v142)
          {
            goto LABEL_53;
          }
        }
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_53:
      v50 = v154;
      if (v154 >= v155)
      {
        v52 = 0xAAAAAAAAAAAAAAABLL * ((v154 - v153) >> 3) + 1;
        if (v52 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        if (0x5555555555555556 * ((v155 - v153) >> 3) > v52)
        {
          v52 = 0x5555555555555556 * ((v155 - v153) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v155 - v153) >> 3) >= 0x555555555555555)
        {
          v53 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v53 = v52;
        }

        v160 = &v153;
        if (v53)
        {
          if (v53 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v54 = (8 * ((v154 - v153) >> 3));
        v156 = 0;
        v157 = v54;
        v158 = v54;
        v159 = 0;
        v54[1] = 0;
        v54[2] = 0;
        *v54 = 0;
        if (v13 != v12)
        {
          if (((v13 - v12) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }

        v51 = (v54 + 3);
        v55 = v153;
        v56 = v54 - (v154 - v153);
        memcpy(v56, v153, v154 - v153);
        v153 = v56;
        v154 = (v54 + 3);
        v155 = 0;
        if (v55)
        {
          operator delete(v55);
        }
      }

      else
      {
        *v154 = 0;
        *(v50 + 1) = 0;
        *(v50 + 2) = 0;
        if (v13 != v12)
        {
          if (((v13 - v12) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }

        v51 = v50 + 24;
      }

      v154 = v51;
      v57 = v151;
      if (v151 < v152)
      {
        break;
      }

      v59 = sub_1AE64E400(&v150, &__p);
      v58 = __p;
      v6 = a5;
      v151 = v59;
      if (__p)
      {
        goto LABEL_79;
      }

LABEL_5:
      v8 = v137 + 24;
      if (v137 + 24 == v135)
      {
        goto LABEL_81;
      }
    }

    *v151 = 0;
    *(v57 + 1) = 0;
    *(v57 + 2) = 0;
    v58 = __p;
    v6 = a5;
    if (v11 != __p)
    {
      if (((v11 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v151 = v57 + 24;
    if (!__p)
    {
      goto LABEL_5;
    }

LABEL_79:
    operator delete(v58);
    goto LABEL_5;
  }

LABEL_81:
  (*(**(a1 + 40) + 64))(&v156);
  v60 = v150;
  if (v151 != v150)
  {
    v61 = 0;
    v62 = 0;
    __asm { FMOV            V0.4S, #-10.0 }

    v128 = _Q0;
    while (1)
    {
      __p = 0;
      v148 = 0;
      v149 = 0;
      v68 = *&v60[24 * v61];
      if (*&v60[24 * v61 + 8] != v68)
      {
        break;
      }

      v69 = 0;
LABEL_105:
      v104 = *(v6 + 8);
      if (v104 >= *(v6 + 16))
      {
        v105 = sub_1AE692CA8(v6, &__p);
      }

      else
      {
        *v104 = 0;
        v104[1] = 0;
        v104[2] = 0;
        if (v69)
        {
          if ((v69 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }

        v105 = v104 + 3;
        *(v6 + 8) = v104 + 3;
      }

      *(v6 + 8) = v105;
      v60 = v150;
      v61 = ++v62;
      if (0xAAAAAAAAAAAAAAABLL * ((v151 - v150) >> 3) <= v62)
      {
        goto LABEL_112;
      }
    }

    v124 = v62;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v127 = v61;
    while (1)
    {
      v75 = 4 * v72;
      v76 = 4 * *(v68 + 8 * v70);
      v77 = 0.0;
      if (v75 == v76)
      {
LABEL_97:
        v101 = __exp10(v77);
        goto LABEL_98;
      }

      v78 = v156[3 * v61];
      v79 = (v76 + v78);
      v80 = (v75 + v78);
      v81 = &v79[v75 / 0xFFFFFFFFFFFFFFFCLL - 1] - v78;
      if (v81 >= 0x1C)
      {
        v126 = (v81 >> 2) + 1;
        v82 = &v80->f32[v126 & 0x7FFFFFFFFFFFFFF8];
        v83 = v80 + 1;
        v84 = 0uLL;
        v85 = v126 & 0x7FFFFFFFFFFFFFF8;
        v86 = 0uLL;
        do
        {
          v136 = v86;
          v138 = v84;
          v141 = *v83;
          v131 = vcgtzq_f32(v83[-1]);
          v132 = v83[-1];
          v129 = vcgtzq_f32(*v83);
          v143 = log10f(COERCE_FLOAT(HIDWORD(v83[-1].i64[0])));
          *v87.i32 = log10f(v132.f32[0]);
          *&v87.i32[1] = v143;
          v144 = v87;
          v88 = log10f(v132.f32[2]);
          v89 = v144;
          *&v89.i32[2] = v88;
          v145 = v89;
          v90 = log10f(v132.f32[3]);
          v91 = v145;
          *&v91.i32[3] = v90;
          v146 = v91;
          v132.i32[0] = log10f(v141.f32[1]);
          *v92.i32 = log10f(v141.f32[0]);
          v92.i32[1] = v132.i32[0];
          v133 = v92;
          v93 = log10f(v141.f32[2]);
          v94 = v133;
          *&v94.i32[2] = v93;
          v134 = v94;
          v95 = log10f(v141.f32[3]);
          v96 = v134;
          *&v96.i32[3] = v95;
          v84 = vaddq_f32(vbslq_s8(v131, v146, v128), v138);
          v97 = vaddq_f32(vbslq_s8(v129, v96, v128), v136);
          v86 = v97;
          v83 += 2;
          v85 -= 8;
        }

        while (v85);
        v98 = vaddq_f32(v97, v84);
        v77 = vaddv_f32(*&vpaddq_f32(v98, v98));
        if (v126 == (v126 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_96;
        }
      }

      else
      {
        v82 = v80;
      }

      do
      {
        v99 = *v82++;
        v100 = log10f(v99);
        if (v99 <= 0.0)
        {
          v100 = -10.0;
        }

        v77 = v100 + v77;
      }

      while (v82 != v79);
LABEL_96:
      v101 = 0.0;
      if (v77 > -10.0)
      {
        goto LABEL_97;
      }

LABEL_98:
      v102 = v69;
      v103 = v69 >> 2;
      if (((v69 >> 2) + 1) >> 62)
      {
        v149 = 0;
        __p = 0;
        sub_1AE5CBB70();
      }

      if (v69 >> 2 != -1)
      {
        if (!(((v69 >> 2) + 1) >> 62))
        {
          operator new();
        }

        v148 = v69;
        v149 = 0;
        __p = 0;
        sub_1AE5CB09C();
      }

      *(4 * v103) = v101;
      v69 = 4 * v103 + 4;
      memcpy(0, 0, v102);
      v61 = v127;
      v73 = (v150 + 24 * v127);
      v68 = *v73;
      v74 = v73[1];
      v72 = *(*v73 + 8 * v70);
      v70 = ++v71;
      if (v71 >= ((v74 - v68) >> 3))
      {
        v148 = 4 * v103 + 4;
        v149 = 0;
        __p = 0;
        v6 = a5;
        v62 = v124;
        goto LABEL_105;
      }
    }
  }

LABEL_112:
  v106 = v156;
  if (v156)
  {
    v107 = v157;
    v108 = v156;
    if (v157 != v156)
    {
      v109 = v157;
      do
      {
        v111 = *(v109 - 3);
        v109 -= 3;
        v110 = v111;
        if (v111)
        {
          *(v107 - 2) = v110;
          operator delete(v110);
        }

        v107 = v109;
      }

      while (v109 != v106);
      v108 = v156;
    }

    v157 = v106;
    operator delete(v108);
    v60 = v150;
  }

  if (v60)
  {
    v112 = v151;
    v113 = v60;
    if (v151 != v60)
    {
      v114 = v151;
      do
      {
        v116 = *(v114 - 3);
        v114 -= 24;
        v115 = v116;
        if (v116)
        {
          *(v112 - 2) = v115;
          operator delete(v115);
        }

        v112 = v114;
      }

      while (v114 != v60);
      v113 = v150;
    }

    v151 = v60;
    operator delete(v113);
  }

  v117 = v153;
  if (v153)
  {
    v118 = v154;
    v119 = v153;
    if (v154 != v153)
    {
      v120 = v154;
      do
      {
        v122 = *(v120 - 3);
        v120 -= 24;
        v121 = v122;
        if (v122)
        {
          *(v118 - 2) = v121;
          operator delete(v121);
        }

        v118 = v120;
      }

      while (v120 != v117);
      v119 = v153;
    }

    v154 = v117;
    operator delete(v119);
  }

  return 1;
}

void sub_1AE692B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  sub_1AE64E724(&a33);
  sub_1AE64E724((v34 - 184));
  _Unwind_Resume(a1);
}

void *sub_1AE692CA8(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
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

    sub_1AE5CB09C();
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

    sub_1AE5CBB70();
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

void sub_1AE692E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1AE62CBC4(va);
  _Unwind_Resume(a1);
}

void sub_1AE692E38(void *a1)
{
  *a1 = &unk_1F2432260;
  v1 = a1[27];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  sub_1AE692EE4(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE692EE4(void *a1)
{
  *a1 = &unk_1F2432368;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[8];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[6];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    a1[3] = v9;
    operator delete(v9);
  }

  v10 = a1[1];
  a1[1] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

void *sub_1AE69307C(void *a1)
{
  *a1 = &unk_1F2432260;
  v1 = a1[27];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  return sub_1AE692EE4(a1);
}

uint64_t sub_1AE693114(UTF32Char theChar)
{
  if ((atomic_load_explicit(&qword_1ED9AC758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC758))
  {
    qword_1ED9AC748 = CEMCreateEmojiCharacterSet();
    __cxa_guard_release(&qword_1ED9AC758);
  }

  result = qword_1ED9AC748;
  if (qword_1ED9AC748)
  {
    return CFCharacterSetIsLongCharacterMember(qword_1ED9AC748, theChar) != 0;
  }

  return result;
}

uint64_t sub_1AE6931A0(const __CFString *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, int a6)
{
  v31 = a1;
  v34 = a2;
  v35 = a3;
  if (CFStringGetCharactersPtr(a1))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v33 = CStringPtr;
  v36 = 0;
  v37 = 0;
  __s2 = 0;
  v12 = sub_1AE69349C(buffer, 0);
  v13 = v12;
  if (a6 != 134217984)
  {
    v15 = 0;
    if (a5 >= 1)
    {
      v16 = 0;
      if (a3 >= 1)
      {
        v16 = 0;
        v15 = 0;
        do
        {
          if (!v16)
          {
            v16 = a4;
          }

          if (HIWORD(v13))
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v15 += v17;
          v13 = sub_1AE69349C(buffer, v15);
        }

        while (v15 < a3);
      }

      goto LABEL_48;
    }

LABEL_47:
    v16 = 0;
    goto LABEL_48;
  }

  if (v12 > 0x7F)
  {
    if (v12 > 0x7FF)
    {
      if (HIWORD(v12))
      {
        v19 = (v12 >> 18) | 0xFFFFFFF0;
        BYTE1(__s2) = (v12 >> 12) & 0x3F | 0x80;
        v18 = 3;
        v20 = &__s2 + 2;
      }

      else
      {
        v19 = (v12 >> 12) | 0xFFFFFFE0;
        v18 = 2;
        v20 = &__s2 + 1;
      }

      LOBYTE(__s2) = v19;
      *v20 = (v12 >> 6) & 0x3F | 0x80;
    }

    else
    {
      LOBYTE(__s2) = (v12 >> 6) | 0xC0;
      v18 = 1;
    }

    v14 = v18 + 1;
    *(&__s2 | v18) = v12 & 0x3F | 0x80;
  }

  else
  {
    LOBYTE(__s2) = v12;
    v14 = 1;
  }

  v15 = 0;
  if (a5 < 1)
  {
    goto LABEL_47;
  }

  v16 = 0;
  if (a3 >= 1)
  {
    v16 = 0;
    v15 = 0;
    v21 = &a4[a5];
    v22 = a4;
    do
    {
      if (!memcmp(v22, &__s2, v14))
      {
        if (!v16)
        {
          v16 = v22;
        }

        v22 += v14;
        if (HIWORD(v13))
        {
          v23 = 2;
        }

        else
        {
          v23 = 1;
        }

        v15 += v23;
        v24 = sub_1AE69349C(buffer, v15);
        v13 = v24;
        if (v24 >= 0x80)
        {
          if (v24 >= 0x800)
          {
            if (v24 >= 0x10000)
            {
              v26 = (v24 >> 18) | 0xFFFFFFF0;
              BYTE1(__s2) = (v24 >> 12) & 0x3F | 0x80;
              v27 = &__s2 + 2;
              v25 = 3;
            }

            else
            {
              v26 = (v24 >> 12) | 0xFFFFFFE0;
              v27 = &__s2 + 1;
              v25 = 2;
            }

            LOBYTE(__s2) = v26;
            *v27 = (v24 >> 6) & 0x3F | 0x80;
          }

          else
          {
            LOBYTE(__s2) = (v24 >> 6) | 0xC0;
            v25 = 1;
          }

          v14 = v25 + 1;
          *(&__s2 | v25) = v24 & 0x3F | 0x80;
          if (v22 >= v21)
          {
            break;
          }
        }

        else
        {
          LOBYTE(__s2) = v24;
          v14 = 1;
          if (v22 >= v21)
          {
            break;
          }
        }
      }

      else
      {
        v16 = 0;
        if (++v22 >= v21)
        {
          break;
        }
      }
    }

    while (v15 < a3);
  }

LABEL_48:
  if (v15 == a3)
  {
    return v16 - a4;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1AE69349C(UniChar *buffer, int64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(buffer + 20);
  if (v2 <= a2)
  {
    return 0;
  }

  v3 = *(buffer + 17);
  if (v3)
  {
    v4 = *(v3 + 2 * *(buffer + 19) + 2 * a2);
  }

  else
  {
    v6 = *(buffer + 18);
    if (v6)
    {
      v4 = *(v6 + *(buffer + 19) + a2);
    }

    else
    {
      if (*(buffer + 22) <= a2 || (v7 = *(buffer + 21), v7 > a2))
      {
        v8 = a2 - 4;
        if (a2 < 4)
        {
          v8 = 0;
        }

        v9 = v8 + 64;
        if (v8 + 64 >= v2)
        {
          v9 = *(buffer + 20);
        }

        *(buffer + 21) = v8;
        *(buffer + 22) = v9;
        v21.length = v9 - v8;
        v10 = a2;
        v21.location = *(buffer + 19) + v8;
        v11 = buffer;
        CFStringGetCharacters(*(buffer + 16), v21, buffer);
        a2 = v10;
        buffer = v11;
        v7 = *(v11 + 21);
      }

      v4 = buffer[a2 - v7];
    }
  }

  if (v4 >> 10 != 54)
  {
    return v4;
  }

  v12 = a2 + 1;
  v13 = *(buffer + 20);
  if (v13 <= a2 + 1)
  {
    return v4;
  }

  v14 = *(buffer + 17);
  if (v14)
  {
    v15 = *(v14 + 2 * *(buffer + 19) + 2 * v12);
  }

  else
  {
    v16 = *(buffer + 18);
    if (v16)
    {
      v15 = *(v16 + *(buffer + 19) + v12);
    }

    else
    {
      if (*(buffer + 22) <= v12 || (v17 = *(buffer + 21), v17 > v12))
      {
        v18 = a2 - 3;
        if (a2 < 3)
        {
          v18 = 0;
        }

        v19 = v18 + 64;
        if (v18 + 64 >= v13)
        {
          v19 = *(buffer + 20);
        }

        *(buffer + 21) = v18;
        *(buffer + 22) = v19;
        v22.length = v19 - v18;
        v22.location = *(buffer + 19) + v18;
        v20 = buffer;
        CFStringGetCharacters(*(buffer + 16), v22, buffer);
        buffer = v20;
        v17 = *(v20 + 21);
      }

      v15 = buffer[v12 - v17];
    }
  }

  if (v15 >> 10 != 55)
  {
    return v4;
  }

  return (v4 << 10) + v15 - 56613888;
}

const __CFString *sub_1AE693644(const __CFLocale *a1, const __CFLocale *a2)
{
  v4 = *MEMORY[0x1E695E6F0];
  Value = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
  v6 = CFLocaleGetValue(a2, v4);
  if (Value)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || CFStringCompare(Value, v6, 0))
  {
    return 0;
  }

  v9 = *MEMORY[0x1E695E6D0];
  v10 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6D0]);
  if (v10)
  {
    v11 = v10;
    result = CFLocaleGetValue(a2, v9);
    if (!result)
    {
      return result;
    }

    if (CFStringCompare(result, v11, 0))
    {
      return 0;
    }
  }

  v12 = *MEMORY[0x1E695E6F8];
  v13 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F8]);
  v14 = CFLocaleGetValue(a2, v12);
  if (!(v13 | v14))
  {
    return 1;
  }

  v15 = v14;
  result = 0;
  v16 = v13 != 0;
  if (v15)
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 0;
  }

  if (v17 && !v16)
  {
    return (CFStringCompare(v15, v13, 0) == kCFCompareEqualTo);
  }

  return result;
}

uint64_t sub_1AE69376C(const char *a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return open_dprotected_np(a1, a2, 3, 0, v9);
}

void sub_1AE6937A8(uint64_t a1, const char *a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  MutableCopy = CFStringCreateMutableCopy(v3, 0, v4);
  CFStringTransform(MutableCopy, 0, *MEMORY[0x1E695E9A0], 0);
  sub_1AE5CC874(MutableCopy, a1);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1AE693868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE69388C(int a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_1AE693914(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x1B27063D0](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE693930(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if (*(result + 23) >= 0)
  {
    v2 = result;
  }

  v3 = *a2;
  v4 = *a2 + 1;
  *a2 = v4;
  v5 = *(v2 + v3);
  if ((v5 & 0x80000000) == 0)
  {
    return result;
  }

  v6 = *(result + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = result[1];
  }

  if (v4 == v6)
  {
    return result;
  }

  if (v5 < 0xE0u)
  {
    if (v5 < 0xC2u)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 > 0xEFu)
  {
    if (v5 > 0xF4u)
    {
      return result;
    }

    v11 = v7 >= 0 ? result : *result;
    if (((byte_1AE7A3ED1[*(v11 + v4) >> 4] >> (v5 + 16)) & 1) == 0)
    {
      return result;
    }

    v4 = v3 + 2;
    *a2 = v3 + 2;
    v12 = *(result + 23);
    if (v12 < 0)
    {
      if (v4 == result[1])
      {
        return result;
      }

      v13 = *result;
    }

    else
    {
      v13 = result;
      if (v4 == v12)
      {
        return result;
      }
    }

    if (*(v13 + v4) > -65)
    {
      return result;
    }
  }

  else
  {
    if (v7 >= 0)
    {
      v8 = result;
    }

    else
    {
      v8 = *result;
    }

    if (((a00000000000000[v5 & 0xF] >> (*(v8 + v4) >> 5)) & 1) == 0)
    {
      return result;
    }
  }

  *a2 = ++v4;
  v9 = *(result + 23);
  v7 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = result[1];
  }

  if (v4 != v9)
  {
LABEL_19:
    if (v7 >= 0)
    {
      v10 = result;
    }

    else
    {
      v10 = *result;
    }

    if (*(v10 + v4) <= -65)
    {
      *a2 = v4 + 1;
    }
  }

  return result;
}

uint64_t sub_1AE693A80@<X0>(char *__format@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 <= -2)
  {
    sub_1AE5DB4F0();
  }

  v5 = v4 + 1;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v5;
  if (v4 != -1)
  {
    bzero(a2, v5);
  }

  *(a2 + v5) = 0;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  return vsnprintf(v7, v8, __format, va);
}

void sub_1AE693B70(uint64_t *a1, os_log_t oslog)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    v5 = 136315394;
    v6 = "logToErrorAndDebug";
    v7 = 2080;
    v8 = v4;
    _os_log_error_impl(&dword_1AE5C8000, oslog, OS_LOG_TYPE_ERROR, "%s: %s", &v5, 0x16u);
  }
}

uint64_t sub_1AE693C34(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1AE5D9464(&v22);
  if (a4)
  {
    v8 = sub_1AE5DB608(&v22, "P( ", 3);
    v9 = MEMORY[0x1B2706110](v8, a2);
    sub_1AE5DB608(v9, " |", 2);
    v10 = a3 + 4 * a4;
    v11 = 16;
    if (a4 < 0x10)
    {
      v11 = a4;
    }

    v12 = -4 * v11;
    do
    {
      v13 = *(v10 + v12);
      v14 = sub_1AE5DB608(&v22, " ", 1);
      MEMORY[0x1B2706110](v14, v13);
      v12 += 4;
    }

    while (v12);
    v15 = &v22;
  }

  else
  {
    v16 = sub_1AE5DB608(&v22, "P( ", 3);
    v15 = MEMORY[0x1B2706110](v16, a2);
  }

  sub_1AE5DB608(v15, ")", 2);
  if ((v31 & 0x10) != 0)
  {
    v18 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v18 = v27;
    }

    v19 = &v26;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v17 = 0;
      a1[23] = 0;
      goto LABEL_21;
    }

    v19 = v25;
    v18 = v25[2];
  }

  v20 = *v19;
  v17 = v18 - *v19;
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a1[23] = v17;
  if (v17)
  {
    memmove(a1, v20, v17);
  }

LABEL_21:
  a1[v17] = 0;
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v24);
  std::ostream::~ostream();
  return MEMORY[0x1B2706340](&v32);
}

void sub_1AE693EE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE693EF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE693EF8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B2706340](a1 + 112);
  return a1;
}

CFErrorRef sub_1AE694018(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], v4);
  v5 = CFErrorCreate(0, @"com.apple.LanguageModeling", 0, Mutable);
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

void sub_1AE6940EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE622220(va);
  _Unwind_Resume(a1);
}

void sub_1AE694110()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  qword_1ED9AC930 = CFURLCreateCopyAppendingPathComponent(0, v0, @"Library/LanguageModeling", 1u);

  CFRelease(v0);
}

uint64_t sub_1AE69416C()
{
  v4[19] = *MEMORY[0x1E69E9840];
  sub_1AE6942BC(v2);
  std::istream::tellg();
  v2[0] = *MEMORY[0x1E69E54C8];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B2705FF0](&v3);
  std::istream::~istream();
  MEMORY[0x1B2706340](v4);
  return v1;
}

void sub_1AE694294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1AE5F12F0(&a26, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B2706340](v26 + 424);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE6942BC(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1B2705FE0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1AE694454(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B2706340](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE69448C(void **a1, unint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v66[6] = 0;
  v50 = a2;
  v5 = MEMORY[0x1E69E5560] + 104;
  v66[0] = MEMORY[0x1E69E5560] + 104;
  v6 = MEMORY[0x1E69E5560] + 64;
  v57 = MEMORY[0x1E69E5560] + 64;
  v7 = MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 24);
  v56[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v56 + *(v56[0] - 24)) = v8;
  v56[1] = 0;
  v9 = (v56 + *(v56[0] - 24));
  std::ios_base::init(v9, &v58);
  v10 = MEMORY[0x1E69E5560] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v7[5];
  v57 = v7[4];
  *(&v57 + *(v57 - 24)) = v11;
  v56[0] = v7[1];
  *(v56 + *(v56[0] - 24)) = v7[6];
  v66[0] = v5;
  v56[0] = v10;
  v49 = MEMORY[0x1E69E5538] + 16;
  v57 = v6;
  v58 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B27062D0](&v59);
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v12 = MEMORY[0x1E69E5548] + 16;
  v58 = MEMORY[0x1E69E5548] + 16;
  v63 = 0u;
  v64 = 0u;
  v65 = 24;
  if (&v63 != v50)
  {
    if (*(v50 + 23) < 0)
    {
      sub_1AE621AB4(&v63, *v50, *(v50 + 8));
    }

    else
    {
      v63 = *v50;
      *&v64 = *(v50 + 16);
    }
  }

  sub_1AE5D968C(&v58);
  v48 = v12;
  v50 = &v57 | 0xD08C000000000000;
  __p = 0;
  v54 = 0;
  v55 = 0;
  while (1)
  {
    std::ios_base::getloc((v56 + *(v56[0] - 24)));
    v13 = std::locale::use_facet(__dst, MEMORY[0x1E69E5318]);
    v14 = (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(__dst);
    v15 = sub_1AE606324(v56, &__p, v14);
    if ((*(v15 + *(*v15 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v16 = 0;
    v17 = HIBYTE(v55);
    v18 = SHIBYTE(v55) >> 31;
    v20 = __p;
    v19 = v54;
    if (v55 >= 0)
    {
      v21 = HIBYTE(v55);
    }

    else
    {
      v21 = v54;
    }

    v22 = a3[23];
    v23 = a3[23];
    v24 = *(a3 + 1);
    if (v22 >= 0)
    {
      v25 = a3[23];
    }

    else
    {
      v25 = *(a3 + 1);
    }

    if (v21 && v25)
    {
      v16 = 0;
      v26 = *a3;
      if (v22 >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      if (v55 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      do
      {
        v29 = p_p + v16;
        v30 = p_p + v21;
LABEL_22:
        v31 = v25;
        v32 = v27;
        while (*v29 != *v32)
        {
          ++v32;
          if (!--v31)
          {
            if (++v29 == v30)
            {
              goto LABEL_72;
            }

            goto LABEL_22;
          }
        }

        if (v29 == v30)
        {
          break;
        }

        v33 = v29 - p_p;
        if (v29 - p_p == -1)
        {
          break;
        }

        if (v33 > v16)
        {
          if (v18)
          {
            if (v19 < v16)
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v16 > v17)
            {
LABEL_88:
              sub_1AE61F754();
            }

            v20 = &__p;
            v19 = v17;
          }

          if (v19 - v16 >= v33 - v16)
          {
            v34 = v33 - v16;
          }

          else
          {
            v34 = v19 - v16;
          }

          if (v34 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1AE5DB4F0();
          }

          if (v34 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v52) = v34;
          if (v34)
          {
            memmove(__dst, v20 + v16, v34);
          }

          *(&__dst[0].__locale_ + v34) = 0;
          v36 = a1[1];
          v35 = a1[2];
          if (v36 >= v35)
          {
            v38 = *a1;
            v39 = v36 - *a1;
            v40 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 3) + 1;
            if (v40 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1AE5CBB70();
            }

            v41 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v38) >> 3);
            if (2 * v41 > v40)
            {
              v40 = 2 * v41;
            }

            if (v41 >= 0x555555555555555)
            {
              v42 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              if (v42 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v43 = 8 * (v39 >> 3);
            *v43 = *&__dst[0].__locale_;
            *(v43 + 16) = v52;
            v37 = v43 + 24;
            v44 = v43 - v39;
            memcpy((v43 - v39), v38, v39);
            *a1 = v44;
            a1[2] = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v36 = *&__dst[0].__locale_;
            *(v36 + 2) = v52;
            v37 = (v36 + 24);
          }

          a1[1] = v37;
          v26 = *a3;
          v24 = *(a3 + 1);
          v23 = a3[23];
          v20 = __p;
          v19 = v54;
          v17 = HIBYTE(v55);
        }

        v16 = v33 + 1;
        LOBYTE(v18) = (v17 & 0x80u) != 0;
        p_p = (v17 & 0x80u) == 0 ? &__p : v20;
        v21 = (v17 & 0x80u) == 0 ? v17 : v19;
        v27 = (v23 & 0x80u) == 0 ? a3 : v26;
        v25 = (v23 & 0x80u) == 0 ? v23 : v24;
      }

      while (v21 > v16 && v25);
    }

LABEL_72:
    if (v18)
    {
      if (v16 < v19)
      {
        v17 = v19;
        goto LABEL_77;
      }
    }

    else if (v16 < v17)
    {
      v20 = &__p;
LABEL_77:
      v45 = v17 - v16;
      if (v17 - v16 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v45 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v52) = v17 - v16;
      memmove(__dst, v20 + v16, v45);
      *(&__dst[0].__locale_ + v45) = 0;
      sub_1AE67D6DC(a1, __dst);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(__dst[0].__locale_);
      }
    }
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  v56[0] = *MEMORY[0x1E69E54D8];
  v46 = *(MEMORY[0x1E69E54D8] + 72);
  *(v56 + *(v56[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v57 = v46;
  v58 = v48;
  if (SBYTE7(v64) < 0)
  {
    operator delete(v63);
  }

  v58 = v49;
  std::locale::~locale(&v59);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B2706340](v66);
}

void sub_1AE694CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  MEMORY[0x1B2706340](a11);
  sub_1AE645234(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE694D90(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    operator new();
  }

  return 0;
}

void sub_1AE69587C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void ***a30, __int16 a31, char a32, char a33)
{
  sub_1AE6961F4(&a17);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  language_modeling::v1::CompletionStem::~CompletionStem(&a30);
  sub_1AE69615C(&a31);
  sub_1AE62D1AC(a10);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AE69593C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_1AE695AF4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1AE695F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6961F4(va);
  _Unwind_Resume(a1);
}

void sub_1AE695F28(void *a1)
{
  v1 = ((a1[1] - *a1) >> 3) + 1;
  if (!(v1 >> 61))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 2 > v1)
    {
      v1 = v2 >> 2;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      v3 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v1;
    }

    if (v3)
    {
      if (!(v3 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    operator new();
  }

  sub_1AE5CBB70();
}

uint64_t sub_1AE69615C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v4)
      {
        v5 = sub_1AE61E5C8(v4);
        MEMORY[0x1B2706400](v5, 0x1030C403C62F202);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t *sub_1AE6961F4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        v4 = sub_1AE61E5C8(v3);
        MEMORY[0x1B2706400](v4, 0x1030C403C62F202);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_1AE69626C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE6962A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

double sub_1AE6962D4(uint64_t a1)
{
  cf = CFDateCreate(0, -(*MEMORY[0x1E695E468] + a1 * -0.000001));
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = MEMORY[0x1B2705380]();
  CFRelease(cf);
  return v1;
}

void sub_1AE696380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE69626C(va);
  _Unwind_Resume(a1);
}

void sub_1AE6963A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6962A0(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1AE6963BC(_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 88);
    v6 = *(a2 + 48);
    if (v5 < v6)
    {
      *(a2 + 88) = v6;
      v5 = v6;
    }

    v7 = (a2 + 40);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 16);
    v5 = *(a2 + 32);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

uint64_t sub_1AE69649C(_BYTE *a1, uint64_t a2, long double *a3, double *a4)
{
  sub_1AE5D9464(&v23);
  v8 = v23;
  *(&v25.__locale_ + *(v23 - 24)) = 3;
  *(&v23 + *(v8 - 24) + 8) = *(&v23 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = sub_1AE5DB608(&v23, v10, v11);
  v13 = sub_1AE5DB608(v12, ": ", 2);
  v14 = log10(*a3);
  v15 = MEMORY[0x1B27060E0](v13, v14);
  v16 = sub_1AE5DB608(v15, "+", 1);
  v17 = MEMORY[0x1B27060E0](v16, *a4);
  sub_1AE5DB608(v17, " ", 1);
  if ((v32 & 0x10) != 0)
  {
    v19 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v19 = v28;
    }

    v20 = &v27;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v18 = 0;
      a1[23] = 0;
      goto LABEL_20;
    }

    v20 = v26;
    v19 = v26[2];
  }

  v21 = *v20;
  v18 = v19 - *v20;
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a1[23] = v18;
  if (v18)
  {
    memmove(a1, v21, v18);
  }

LABEL_20:
  a1[v18] = 0;
  v23 = *MEMORY[0x1E69E54E8];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return MEMORY[0x1B2706340](&v33);
}

void sub_1AE696778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE693EF8(va);
  _Unwind_Resume(a1);
}

void sub_1AE69678C(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1, a2, v4);
  v5 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (size)
    {
      v7 = a1->__r_.__value_.__r.__words[0];
      if (!*(a1->__r_.__value_.__r.__words[0] + size - 1))
      {
        v6 = size - 1;
        a1->__r_.__value_.__l.__size_ = v6;
        goto LABEL_11;
      }
    }
  }

  else if (*(&a1->__r_.__value_.__s + 23) && !a1->__r_.__value_.__s.__data_[v5 - 1])
  {
    v6 = v5 - 1;
    *(&a1->__r_.__value_.__s + 23) = v5 - 1;
    v7 = a1;
LABEL_11:
    v7->__r_.__value_.__s.__data_[v6] = 0;
  }

  std::string::push_back(a1, 10);
}

uint64_t sub_1AE69682C(uint64_t result, char **a2)
{
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
    v6 = a2[1];
    if (v6 == 3)
    {
      if (*v5 == 29500 && v5[2] == 62)
      {
        goto LABEL_32;
      }
    }

    else if (v6 == 4 && *v5 == 1047736124)
    {
      goto LABEL_22;
    }

    if (*v5 != 120 || v6 < 2 || v5[v6 - 1] != 120)
    {
      v13 = result;
      sub_1AE5DBF1C(result, v5, v6);
      result = v13;
      v10 = 0;
      goto LABEL_35;
    }

    v12 = result;
    sub_1AE5DBF1C(result, v5, v6);
    result = v12;
LABEL_34:
    v10 = 3;
    goto LABEL_35;
  }

  v2 = *(a2 + 23);
  if (v2 == 3)
  {
    if (*a2 != 29500 || *(a2 + 2) != 62)
    {
      LOBYTE(v4) = *a2;
      goto LABEL_16;
    }

LABEL_32:
    *(result + 23) = 0;
    *result = 0;
    v10 = 1;
    goto LABEL_35;
  }

  v4 = *a2;
  if (v2 == 4 && v4 == 1047736124)
  {
LABEL_22:
    *(result + 23) = 0;
    *result = 0;
    v10 = 2;
    goto LABEL_35;
  }

LABEL_16:
  if (v4 == 120 && *(a2 + *(a2 + 23) - 1) == 120 && v2 >= 2)
  {
    *result = *a2;
    *(result + 16) = a2[2];
    goto LABEL_34;
  }

  v10 = 0;
  *result = *a2;
  *(result + 16) = a2[2];
LABEL_35:
  *(result + 24) = v10;
  return result;
}

void *sub_1AE69699C(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void sub_1AE696B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  language_modeling::v1::CompletionStem::~CompletionStem(va);
  sub_1AE62D1AC(v6);
  _Unwind_Resume(a1);
}

void sub_1AE696BCC(uint64_t a1)
{
  sub_1AE696C04(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE696C04(uint64_t a1)
{
  *a1 = &unk_1F242B968;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (munmap(v3, v2))
      {
        v13 = 5;
        strcpy(v12, "ERROR");
        v4 = sub_1AE5DB608(MEMORY[0x1E69E5300], v12, 5);
        sub_1AE5DB608(v4, ": ", 2);
        v5 = sub_1AE5DB608(MEMORY[0x1E69E5300], "failed to unmap region: ", 24);
        v6 = __error();
        v7 = strerror(*v6);
        v8 = strlen(v7);
        sub_1AE5DB608(v5, v7, v8);
        sub_1AE696D18();
        if (v13 < 0)
        {
          v9 = *v12;
LABEL_8:
          operator delete(v9);
        }
      }
    }

    else
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v9 = (v10 - *(a1 + 32));
        goto LABEL_8;
      }
    }
  }

  return a1;
}

uint64_t sub_1AE696D18()
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v0 = std::locale::use_facet(&v2, MEMORY[0x1E69E5318]);
  (v0->__vftable[2].~facet_0)(v0, 10);
  std::locale::~locale(&v2);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_1AE696DE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  std::istream::tellg();
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((v26 & 0x800000000000000FLL) == 0)
  {
    v15 = *(a3 + 23) >= 0 ? a3 : *a3;
    v16 = open(v15, 0);
    if (v16 != -1)
    {
      v17 = sysconf(29);
      v18 = mmap(0, v26 % v17 + a4, 1, 1, v16, v26 / v17 * v17);
      if (!close(v16) && v18 != -1)
      {
        operator new();
      }

      v25 = 4;
      strcpy(__p, "INFO");
      v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 4);
      sub_1AE5DB608(v19, ": ", 2);
      v20 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Mapping of file failed: ", 24);
      v21 = __error();
      v22 = strerror(*v21);
      v23 = strlen(v22);
      sub_1AE5DB608(v20, v22, v23);
      sub_1AE696D18();
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v25 = 7;
  strcpy(__p, "WARNING");
  v7 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 7);
  sub_1AE5DB608(v7, ": ", 2);
  v8 = sub_1AE5DB608(MEMORY[0x1E69E5300], "File mapping at offset ", 23);
  v9 = MEMORY[0x1B2706130](v8, v26);
  v10 = sub_1AE5DB608(v9, " of file ", 9);
  v11 = *(a3 + 23);
  v12 = v11 >= 0 ? a3 : *a3;
  v13 = v11 >= 0 ? *(a3 + 23) : *(a3 + 8);
  v14 = sub_1AE5DB608(v10, v12, v13);
  sub_1AE5DB608(v14, " could not be honored, reading instead.", 39);
  sub_1AE696D18();
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (!a4)
    {
LABEL_20:
      operator new();
    }
  }

  else
  {
LABEL_10:
    if (!a4)
    {
      goto LABEL_20;
    }
  }

  operator new(a4 + 16);
  goto LABEL_20;
}

void sub_1AE697280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6972E0(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  sub_1AE5CC874(a2, a1);
  *(a1 + 24) = CFRetain(a2);
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  Count = CFDictionaryGetCount(a3);
  if (Count)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  CFDictionaryGetKeysAndValues(a3, 0, 0);
  return a1;
}

void sub_1AE697920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  operator delete(v32);
  if ((*(v31 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*v31);
  _Unwind_Resume(a1);
}

void ***sub_1AE697A84(void ***a1)
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
          CFRelease(v5);
        }

        v6 = *(v3 - 1);
        if (v6)
        {
          CFRelease(v6);
        }

        v7 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v7);
        }

        v3 -= 6;
      }

      while (v7 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE697B18(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(i - 8);
    if (v5)
    {
      CFRelease(v5);
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE697B9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          CFRelease(v7);
        }

        v8 = *(v4 - 1);
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v9);
        }

        v4 -= 6;
      }

      while (v9 != v5);
    }
  }

  return a1;
}

void sub_1AE697C24(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          CFRelease(v6);
        }

        v7 = *(v4 - 1);
        if (v7)
        {
          CFRelease(v7);
        }

        v8 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 6;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_1AE697CE4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 3) = 0u;
  v5 = a1 + 3;
  *(a1 + 5) = 0u;
  *(a1 + 14) = *(a2 + 56);
  prime = *(a2 + 32);
  if (prime == 1)
  {
    prime = 2;
LABEL_20:
    sub_1AE5CC314((a1 + 3), prime);
    goto LABEL_21;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v7 = a1[4];
    v8 = prime >= *&v7;
    if (prime > *&v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_20;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(a1[6] / *(a1 + 14));
    if (*&v7 < 3uLL || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v7)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  for (i = *(a2 + 40); i; v5 = a1 + 3)
  {
    v13 = *(i + 39);
    if (v13 >= 0)
    {
      v14 = i + 2;
    }

    else
    {
      v14 = i[2];
    }

    if (v13 >= 0)
    {
      v15 = *(i + 39);
    }

    else
    {
      v15 = i[3];
    }

    v16 = sub_1AE5DA928(&v37, v14, v15);
    v17 = v16;
    v18 = a1[4];
    if (!*&v18)
    {
      goto LABEL_67;
    }

    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      v20 = v16;
      if (v16 >= *&v18)
      {
        v20 = v16 % *&v18;
      }
    }

    else
    {
      v20 = (*&v18 - 1) & v16;
    }

    v21 = *(*v5 + 8 * v20);
    if (!v21 || (v22 = *v21) == 0)
    {
LABEL_67:
      operator new();
    }

    v23 = *(i + 39);
    if (v23 >= 0)
    {
      v24 = *(i + 39);
    }

    else
    {
      v24 = i[3];
    }

    if (v23 >= 0)
    {
      v25 = i + 2;
    }

    else
    {
      v25 = i[2];
    }

    if (v19.u32[0] < 2uLL)
    {
      while (1)
      {
        v30 = v22[1];
        if (v30 == v17)
        {
          v31 = *(v22 + 39);
          v32 = v31;
          if (v31 < 0)
          {
            v31 = v22[3];
          }

          if (v31 == v24)
          {
            v33 = v32 >= 0 ? (v22 + 2) : v22[2];
            if (!memcmp(v33, v25, v24))
            {
              goto LABEL_68;
            }
          }
        }

        else if ((v30 & (*&v18 - 1)) != v20)
        {
          goto LABEL_67;
        }

        v22 = *v22;
        if (!v22)
        {
          goto LABEL_67;
        }
      }
    }

    while (1)
    {
      v26 = v22[1];
      if (v26 == v17)
      {
        break;
      }

      if (v26 >= *&v18)
      {
        v26 %= *&v18;
      }

      if (v26 != v20)
      {
        goto LABEL_67;
      }

LABEL_44:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_67;
      }
    }

    v27 = *(v22 + 39);
    v28 = v27;
    if (v27 < 0)
    {
      v27 = v22[3];
    }

    if (v27 != v24)
    {
      goto LABEL_44;
    }

    v29 = v28 >= 0 ? (v22 + 2) : v22[2];
    if (memcmp(v29, v25, v24))
    {
      goto LABEL_44;
    }

LABEL_68:
    i = *i;
  }

  v34 = *a1;
  v35 = a1[1];
  while (v34 != v35)
  {
    if (*(v34 + 37) == 1)
    {
      a1[8] = v34;
    }

    v34 += 48;
  }

  return a1;
}

void sub_1AE6982E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1AE66D210(a10);
  sub_1AE697A84(v10);
  _Unwind_Resume(a1);
}

void sub_1AE69832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  sub_1AE697B9C(va1);
  *(v3 + 8) = v4;
  sub_1AE697C24(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AE69835C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v7 = 0;
    do
    {
      v8 = v4 + v7;
      v9 = *(v3 + v7 + 23);
      if (v9 >= 0)
      {
        v10 = *(v3 + v7 + 23);
      }

      else
      {
        v10 = *(v3 + v7 + 8);
      }

      v11 = *(v8 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 8);
      }

      if (v10 != v11)
      {
        return 0;
      }

      v13 = v9 >= 0 ? (v3 + v7) : *(v3 + v7);
      v14 = v12 >= 0 ? (v4 + v7) : *v8;
      if (memcmp(v13, v14, v10) || *(v3 + v7 + 32) != *(v4 + v7 + 32) || *(v3 + v7 + 36) != *(v4 + v7 + 36) || *(v3 + v7 + 37) != *(v4 + v7 + 37))
      {
        return 0;
      }

      result = CFEqual(*(v3 + v7 + 40), *(v4 + v7 + 40));
      if (!result)
      {
        return result;
      }

      v7 += 48;
    }

    while (v3 + v7 != v2);
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  v16 = a1 + 5;
  do
  {
    v16 = *v16;
    result = (v16 == 0);
    if (!v16)
    {
      break;
    }

    result = sub_1AE6563F0(a2 + 3, (v16 + 2));
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = *(v16 + 39);
    if (v18 >= 0)
    {
      v19 = *(v16 + 39);
    }

    else
    {
      v19 = v16[3];
    }

    v20 = *(result + 39);
    v21 = v20;
    if (v20 < 0)
    {
      v20 = result[3];
    }

    if (v19 != v20)
    {
      return 0;
    }

    if (v18 >= 0)
    {
      v22 = v16 + 2;
    }

    else
    {
      v22 = v16[2];
    }

    v25 = v17[2];
    v24 = (v17 + 2);
    v23 = v25;
    if (v21 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = v23;
    }

    v27 = memcmp(v22, v26, v19);
    result = 0;
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v16 + 10) == *(v24 + 6);
    }
  }

  while (v28);
  return result;
}

uint64_t sub_1AE698554(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1ED9AC590;
  v9 = off_1ED9AC590;
  if (!off_1ED9AC590)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE69863C;
    v5[3] = &unk_1E7A2E008;
    v5[4] = &v6;
    sub_1AE69863C(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(v1);
}

void *sub_1AE69863C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkModelUnLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC590 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE698784()
{
  result = _sl_dlopen();
  qword_1ED9AC7C0 = result;
  return result;
}

uint64_t sub_1AE698800(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_1ED9AC598;
  v9 = off_1ED9AC598;
  if (!off_1ED9AC598)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = sub_1AE6988E8;
    v5[3] = &unk_1E7A2DFA8;
    v5[4] = &v6;
    sub_1AE6988E8(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2(v1);
}

void *sub_1AE6988E8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkModelLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC598 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE698A30(uint64_t a1)
{
  err = 0;
  v1 = *(a1 + 16);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v2 = off_1ED9AC7A0;
  v11 = off_1ED9AC7A0;
  if (!off_1ED9AC7A0)
  {
    __p[0] = MEMORY[0x1E69E9820];
    __p[1] = 0x40000000;
    __p[2] = sub_1AE757E68;
    __p[3] = &unk_1E7A2FCE8;
    __p[4] = &v8;
    sub_1AE757E68(__p);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v3 = v2(v1, &err);
    if (!v3 || (v4 = CFGetTypeID(v3), v4 == CFArrayGetTypeID()))
    {
      if (err)
      {
        operator new();
      }

      operator new();
    }
  }

  else
  {
    dlerror();
    abort_report_np();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x1B2705EB0](exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AE698C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  __cxa_free_exception(v20);
  sub_1AE65BA8C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE698CA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(*a2 + 16))(a2);
    if (v3)
    {
      CFRetain(v3);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    operator new();
  }

  if (!v4)
  {
    operator new();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

void sub_1AE699778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  operator delete(v25);
  operator delete(v24);
  sub_1AE65B3A0(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE6998D0(uint64_t a1, uint64_t a2, const void **a3)
{
  *&v15[9] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    while (1)
    {
      v9 = *(v4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v4 + 8);
      }

      if (v9 == v7)
      {
        v11 = v10 >= 0 ? v4 : *v4;
        if (!memcmp(v11, v8, v7))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v4 != v5)
  {
    operator new();
  }

LABEL_18:
  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v12 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = 136315138;
    *v15 = v13;
    _os_log_error_impl(&dword_1AE5C8000, v12, OS_LOG_TYPE_ERROR, "%s() not found as neural network input", &v14, 0xCu);
  }

  __assert_rtn("setInputTensor", "NeuralNetwork.hpp", 184, "false");
}

void sub_1AE699EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AE631068(va);
  _Unwind_Resume(a1);
}

void sub_1AE699F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, const void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  _Block_object_dispose(&a19, 8);
  sub_1AE63109C(&a17);
  _Unwind_Resume(a1);
}

void sub_1AE699FFC(uint64_t a1, uint64_t *a2, int *a3, UInt8 *bytes)
{
  err = 0;
  v6 = bytes[23];
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (bytes[23])
    {
      v7 = *a2;
      goto LABEL_6;
    }

LABEL_9:
    v9 = sub_1AE69A1EC(*a2, 0, &err);
    goto LABEL_10;
  }

  v6 = *(bytes + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  bytes = *bytes;
  if (bytes)
  {
LABEL_6:
    v8 = CFStringCreateWithBytes(0, bytes, v6, 0x8000100u, 0);
    cf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_7;
  }

  v8 = 0;
  cf = 0;
LABEL_7:
  v9 = sub_1AE69A1EC(v7, v8, &err);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  if (!v9)
  {
    __assert_rtn("getOutput", "NeuralNetwork.hpp", 262, "output != nullptr");
  }

  if (err)
  {
    operator new();
  }

  v10 = *a3;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
}

void sub_1AE69A1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE69A1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v6 = off_1ED9AC7A8;
  v13 = off_1ED9AC7A8;
  if (!off_1ED9AC7A8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = sub_1AE69A46C;
    v9[3] = &unk_1E7A2E030;
    v9[4] = &v10;
    sub_1AE69A46C(v9);
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  return v6(a1, a2, a3);
}

void sub_1AE69A2EC(uint64_t *a1, CFErrorRef err)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = CFErrorCopyDescription(err);
  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v5 = qword_1ED9AC9E0;
  if (!os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  *buf = 136315394;
  v8 = v6;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&dword_1AE5C8000, v5, OS_LOG_TYPE_ERROR, "%s() failed: %@", buf, 0x16u);
  if (v4)
  {
LABEL_5:
    CFRelease(v4);
  }

LABEL_6:
  if (err)
  {
    CFRelease(err);
  }
}

void sub_1AE69A40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1AE69A434(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void *sub_1AE69A46C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkGetOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC7A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE69A5B4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE69A748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE69B004(va);
  _Unwind_Resume(a1);
}

void *sub_1AE69A75C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE69A8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE69ABC8(va);
  _Unwind_Resume(a1);
}

void *sub_1AE69A900(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkTensorAppendData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC578 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE69AA48(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkSetInputTensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC580 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void **sub_1AE69AB90(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t *sub_1AE69ABC8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        CFRelease(v3);
      }

      *(v2 + 56) = 0;
      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

CFStringRef *sub_1AE69AC30(CFStringRef *a1, char *__s, void **a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v16 = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  *(__dst + v7) = 0;
  if ((v16 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __dst[1];
  }

  v10 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
  *a1 = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v16 < 0)
  {
    operator delete(__dst[0]);
  }

  __dst[0] = *a3;
  v11 = CFNumberCreate(0, kCFNumberLongType, __dst);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1AE69ADD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE69AFD0(v15 + 1);
  sub_1AE620B70(v15);
  _Unwind_Resume(a1);
}

void *sub_1AE69AE44(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkTensorCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC588 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE69AF8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

const void **sub_1AE69AFD0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_1AE69B004(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        *(v2 + 64) = v3;
        operator delete(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AE69B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v10 = off_1EB5E0C58;
  v17 = off_1EB5E0C58;
  if (!off_1EB5E0C58)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1AE69B180;
    v13[3] = &unk_1E7A2E080;
    v13[4] = &v14;
    sub_1AE69B180(v13);
    v10 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v10)
  {
    dlerror();
    v12 = abort_report_np();
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v12);
  }

  return v10(a1, a2, a3, a4, a5);
}

void *sub_1AE69B180(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkSetPartialOutputIndices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0C58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE69B2C8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED9AC7C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE698784;
    v6[4] = &unk_1E7A2DFE0;
    v6[5] = v6;
    v7 = xmmword_1E7A2DFC8;
    v8 = 0;
    qword_1ED9AC7C0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1ED9AC7C0;
    if (qword_1ED9AC7C0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1ED9AC7C0;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkSetInput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC7B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE69B418(uint64_t a1)
{
  *a1 = &unk_1F2430ED8;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 143) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(*(a1 + 120));
LABEL_4:
      sub_1AE69B4C4(a1 + 16);

      JUMPOUT(0x1B2706400);
    }
  }

  else if ((*(a1 + 167) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 144));
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

uint64_t sub_1AE69B4C4(uint64_t a1)
{
  sub_1AE69B5AC(a1);
  sub_1AE69B68C(*(a1 + 88));
  sub_1AE69B704(*(a1 + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 8);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 8);
    }

    *(a1 + 16) = v6;
    operator delete(v8);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE69B5AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    v4 = a1 + 88;
    do
    {
      if (*(v1 + 23) < 0)
      {
        sub_1AE5DBF1C(__p, *v1, *(v1 + 1));
      }

      else
      {
        v5 = *v1;
        v8 = *(v1 + 2);
        *__p = v5;
      }

      sub_1AE69B68C(*(a1 + 88));
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = v4;
      v9 = __p;
      v6 = sub_1AE69A5B4(a1 + 56, __p);
      v6[8] = v6[7];
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      v1 = (v1 + 24);
    }

    while (v1 != v2);
  }
}

void sub_1AE69B670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE69B68C(char *a1)
{
  if (a1)
  {
    sub_1AE69B68C(*a1);
    sub_1AE69B68C(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 7) = 0;
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_1AE69B704(char *a1)
{
  if (a1)
  {
    sub_1AE69B704(*a1);
    sub_1AE69B704(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_1AE69B770(uint64_t a1)
{
  *a1 = &unk_1F2430ED8;
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 144));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(*(a1 + 120));
    goto LABEL_4;
  }

  operator delete(*(a1 + 168));
  if (*(a1 + 167) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 143) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1AE69B4C4(a1 + 16);
  return a1;
}

void sub_1AE69B7FC(uint64_t a1, const void **a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2430ED8;
  *(a1 + 8) = sub_1AE72BE00(*a2);
  CFDictionaryGetValue(*a2, @"URL");
  sub_1AE61D968();
}

void sub_1AE69C0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE69C230(_BYTE *a1, const __CFString *a2, CFTypeRef cf)
{
  if (!cf)
  {
    v18 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(cf);
  v18 = cf;
  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a2 || !CFDictionaryContainsKey(v18, a2))
  {
    a1[23] = 0;
    *a1 = 0;
    v10 = v18;
    if (!v18)
    {
      return;
    }

    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v18, a2);
  v8 = Value;
  if (!Value)
  {
LABEL_14:
    LOBYTE(v16) = 0;
    v17 = 0;
    v13 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC874(a2, &v14);
    sub_1AE67B590(&v15, "Malformed language model configuration plist: invalid value for key=", &v14);
    sub_1AE660DB0(v13, &v15);
    __cxa_throw(v13, &unk_1F2432910, sub_1AE64FC40);
  }

  CFRetain(Value);
  v9 = CFGetTypeID(v8);
  if (v9 != CFStringGetTypeID())
  {
    CFRelease(v8);
    goto LABEL_14;
  }

  v17 = 1;
  v16 = 0;
  sub_1AE5CC874(v8, a1);
  v10 = v18;
LABEL_9:
  CFRelease(v10);
}

void sub_1AE69C444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1AE69C524(&a22);
      sub_1AE621CF0((v24 - 40));
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t sub_1AE69C524(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

os_log_t sub_1AE69C564()
{
  result = os_log_create("com.apple.LanguageModeling", "MontrealInferenceEngine");
  qword_1EB5E0A00 = result;
  return result;
}

BOOL sub_1AE69C59C(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = HIWORD(a2);
  v7 = *(a1 + 56);
  if (HIWORD(a2) >= v7)
  {
    return 1;
  }

  v39 = v4;
  v40 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = (v9 + 4 * v6);
  v11 = (v8 + 4 * *v10);
  v12 = v7 - 1;
  if (v6 == v7 - 1)
  {
    v13 = (*(a1 + 24) + *(a1 + 32));
    if (v11 == v13)
    {
      return 1;
    }
  }

  else
  {
    v13 = (v8 + 4 * v10[1]);
    if (v11 == v13)
    {
      return 1;
    }
  }

  v15 = v13 - v11;
  do
  {
    v16 = v15 >> 1;
    v17 = &v11[v15 >> 1];
    v18 = *(v17 + 1);
    v19 = v17 + 1;
    v15 += ~(v15 >> 1);
    if (v18 < a2)
    {
      v11 = v19;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v11 >= v13)
  {
    return 1;
  }

  v20 = *v11;
  if ((*v11 ^ (a2 << 16)) >> 16)
  {
    return 1;
  }

  v21 = a3 + 4 * a4;
  v22 = *(v21 - 4);
  v23 = v22 >> 16;
  if (HIWORD(*(v21 - 4)) >= v7)
  {
    return 1;
  }

  v24 = (v9 + 4 * v23);
  v25 = (v8 + 4 * *v24);
  v26 = (v23 == v12 ? *(a1 + 24) + *(a1 + 32) : v8 + 4 * v24[1]);
  if (v25 == v26)
  {
    return 1;
  }

  v27 = v20;
  v28 = v26 - v25;
  do
  {
    v29 = v28 >> 1;
    v30 = &v25[v28 >> 1];
    v31 = *(v30 + 1);
    v32 = v30 + 1;
    v28 += ~(v28 >> 1);
    if (v31 < *(v21 - 4))
    {
      v25 = v32;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  if (v25 >= v26)
  {
    return 1;
  }

  v33 = *v25;
  if ((v33 ^ (v22 << 16)) >> 16)
  {
    return 1;
  }

  v38 = v33;
  if ((v27 & 0x10) == 0)
  {
    result = 1;
    if ((v27 & 1) == 0 || (v33 & 4) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

  if ((v33 & 1) == 0)
  {
    if ((v33 & 4) != 0)
    {
LABEL_35:
      v34 = v27 & v33;
      return (v34 & 0x7E0) != 0;
    }

    return 1;
  }

  v35 = (v27 & v33 & 0x7E0) != 0 && (v27 & v33 & 0x7800) != 0;
  if (a4 < 3)
  {
    return v35;
  }

  v36 = sub_1AE74790C(a1 + 16, *(v21 - 8), &v38);
  result = v35;
  if (v36)
  {
    v37 = (v38 & 4) == 0 && v35;
    if ((v38 & 4) == 0)
    {
      return v37;
    }

    result = v37;
    if (v35)
    {
      v34 = v38 & v27;
      return (v34 & 0x7E0) != 0;
    }
  }

  return result;
}

void sub_1AE69C7A4(uint64_t a1)
{
  *a1 = &unk_1F242B9C8;
  *(a1 + 16) = &unk_1F2432098;
  if (*(a1 + 24))
  {
    v1 = a1;
    munmap(*(a1 + 24), *(a1 + 32));
    a1 = v1;
  }

  *(a1 + 32) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE69C840(uint64_t result)
{
  *result = &unk_1F242B9C8;
  *(result + 16) = &unk_1F2432098;
  if (*(result + 24))
  {
    v1 = result;
    munmap(*(result + 24), *(result + 32));
    result = v1;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_1AE69C8FC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 344);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % v2;
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 336) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 4) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 4) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

BOOL sub_1AE69C9E0(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 8) + 24 * a2);
  v3 = *(v2 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v2 = *v2;
    if (*(*(a1 + 8) + 24 * a2 + 8) < 3uLL)
    {
      return 0;
    }
  }

  else if (v3 < 3)
  {
    return 0;
  }

  v5 = *v2;
  v6 = *(v2 + 2);
  return v5 == 38626 && v6 == 129;
}

uint64_t sub_1AE69CA30(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= (a2[1] - *a2) >> 2)
  {
    __assert_rtn("isWordBoundaryIndex", "CoreLMPrefixCoder.cpp", 35, "index < encoding.size()");
  }

  v3 = *(*a2 + 4 * a3);
  v4 = (*(a1 + 8) + 24 * v3);
  v5 = *(v4 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v4 = *v4;
    if (*(*(a1 + 8) + 24 * v3 + 8) < 3uLL)
    {
      return *(a1 + 76) == v3;
    }
  }

  else if (v5 < 3)
  {
    return *(a1 + 76) == v3;
  }

  v6 = *v4;
  v7 = *(v4 + 2);
  if (v6 != 38626 || v7 != 129)
  {
    return *(a1 + 76) == v3;
  }

  return 1;
}

uint64_t sub_1AE69CB20(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % v2;
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 88) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 4) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 4) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

unsigned int *sub_1AE69CC24(unsigned int *result, int a2)
{
  switch(a2)
  {
    case 2:
      return result[20];
    case 1:
      return result[19];
    case 0:
      return result[17];
  }

  return result;
}

BOOL sub_1AE69CC54(uint64_t a1, unsigned int a2, void *__s2)
{
  v3 = *(__s2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = __s2[1];
  }

  if (!v3)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v5) >> 3) <= a2)
  {
    __assert_rtn("fragmentString", "SentencePieceCoder.hpp", 107, "fragmentID < m_tokenIDToFragmentStrMap.size()");
  }

  v6 = (v5 + 24 * a2);
  if (*(v6 + 23) < 0)
  {
    v9 = __s2;
    sub_1AE5DBF1C(&v18, *v6, *(v6 + 1));
    __s2 = v9;
    v4 = v9[23];
  }

  else
  {
    v7 = *v6;
    v19 = *(v6 + 2);
    v18 = v7;
  }

  v10 = SHIBYTE(v19);
  v11 = *(&v18 + 1);
  if (v19 >= 0)
  {
    v11 = HIBYTE(v19);
  }

  if ((v4 & 0x80) == 0)
  {
    v12 = v4;
    if (v11 >= v4)
    {
      goto LABEL_23;
    }

LABEL_15:
    if ((v4 & 0x80u) == 0)
    {
      v13 = __s2;
    }

    else
    {
      v13 = *__s2;
    }

    v14 = v18;
    if (v19 >= 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18;
    }

    v16 = v11;
    goto LABEL_27;
  }

  v12 = __s2[1];
  if (v11 < v12)
  {
    goto LABEL_15;
  }

  __s2 = *__s2;
LABEL_23:
  v14 = v18;
  if (v19 >= 0)
  {
    v13 = &v18;
  }

  else
  {
    v13 = v18;
  }

  v15 = __s2;
  v16 = v12;
LABEL_27:
  result = memcmp(v13, v15, v16) == 0;
  if (v10 < 0)
  {
    v17 = result;
    operator delete(v14);
    return v17;
  }

  return result;
}

void *sub_1AE69CDB4@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[5] - result[4]) >> 3) <= a2)
  {
    __assert_rtn("fragmentStringWithDelimiters", "SentencePieceCoder.hpp", 99, "fragmentID < m_tokenIDToFragmentStrMap.size()");
  }

  v4 = result[1] + 24 * a2;
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 8);

    return sub_1AE5DBF1C(a3, v6, v7);
  }

  else
  {
    v5 = *v4;
    *(a3 + 16) = *(v4 + 16);
    *a3 = v5;
  }

  return result;
}

void *sub_1AE69CE44@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result[4];
  if (0xAAAAAAAAAAAAAAABLL * ((result[5] - v4) >> 3) <= a2)
  {
    __assert_rtn("fragmentString", "SentencePieceCoder.hpp", 107, "fragmentID < m_tokenIDToFragmentStrMap.size()");
  }

  v5 = (v4 + 24 * a2);
  if (*(v5 + 23) < 0)
  {
    v7 = *v5;
    v8 = *(v5 + 1);

    return sub_1AE5DBF1C(a3, v7, v8);
  }

  else
  {
    v6 = *v5;
    *(a3 + 16) = *(v5 + 2);
    *a3 = v6;
  }

  return result;
}

void sub_1AE69CED0(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 == 1 && *a2 == *(a1 + 68))
  {
    *(a4 + 23) = 5;
    strcpy(a4, "<unk>");
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&v8.__r_.__value_.__r.__words[1] = 0uLL;
    v9 = 0;
    if (4 * a3)
    {
      if (((4 * a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    sub_1AE5E5E2C(a1 + 128, &v8.__r_.__value_.__l.__size_, a4, &v8);
    if (v8.__r_.__value_.__r.__words[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1AE608CE4(&v8, v6);
      if (v7 >= 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = v6[0];
      }

      MEMORY[0x1B2705EB0](exception, v5);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_1AE6089C0(&v8);
    if (v8.__r_.__value_.__l.__size_)
    {
      v8.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__l.__size_;
      operator delete(v8.__r_.__value_.__l.__size_);
    }
  }
}

void sub_1AE69D098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v18 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v18 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v18);
  _Unwind_Resume(exception_object);
}

void sub_1AE69D120(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v9 = *(a2 + 16);
  }

  v10 = 0;
  sub_1AE5CA7E0(__p, __dst);
  v7 = v10;
  sub_1AE69D218(a1, __p, a3);
  if ((v6 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }
}

void sub_1AE69D1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1AE69D218(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 24);
  if (v6 <= 1)
  {
    if (!v6)
    {

      sub_1AE69D8A0(a1, a2, a3);
      return;
    }

LABEL_7:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    operator new();
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

  LODWORD(v7) = *(a2 + 23);
  if ((v7 & 0x80000000) == 0)
  {
    *__p = *a2;
    v67 = *(a2 + 16);
    v8 = language_modeling::v1::kClassLabelNumber;
    v9 = strlen(language_modeling::v1::kClassLabelNumber);
    goto LABEL_11;
  }

  sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  LODWORD(v7) = *(a2 + 23);
  v8 = language_modeling::v1::kClassLabelNumber;
  v10 = strlen(language_modeling::v1::kClassLabelNumber);
  v9 = v10;
  if ((v7 & 0x80000000) == 0)
  {
LABEL_11:
    if (v9 != -1)
    {
      v11 = 0;
      v12 = v7;
      v13 = a2;
      goto LABEL_13;
    }

LABEL_139:
    sub_1AE61F754();
  }

  if (v10 == -1)
  {
    goto LABEL_139;
  }

  v13 = *a2;
  v12 = *(a2 + 8);
  v11 = 1;
LABEL_13:
  if (v12 >= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v13, v8, v14);
  if (v12 == v9 && !v15)
  {
    goto LABEL_28;
  }

  v16 = strlen(language_modeling::v1::kClassLabelPluralNumber);
  v17 = v16;
  if (v11)
  {
    if (v16 != -1)
    {
      v18 = *a2;
      v19 = *(a2 + 8);
      goto LABEL_23;
    }

LABEL_140:
    sub_1AE61F754();
  }

  if (v16 == -1)
  {
    goto LABEL_140;
  }

  v19 = v7;
  v18 = a2;
LABEL_23:
  if (v19 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  if (!memcmp(v18, language_modeling::v1::kClassLabelPluralNumber, v20) && v19 == v17)
  {
LABEL_28:
    if (SHIBYTE(v67) < 0)
    {
      __p[1] = 1;
      v21 = __p[0];
    }

    else
    {
      HIBYTE(v67) = 1;
      v21 = __p;
    }

    v22 = 57;
LABEL_32:
    *v21 = v22;
    v23 = (v21 + 1);
    goto LABEL_33;
  }

  v33 = strlen(language_modeling::v1::kClassLabelSingularNumber);
  v34 = v33;
  if (v11)
  {
    if (v33 != -1)
    {
      v35 = *a2;
      v36 = *(a2 + 8);
      goto LABEL_66;
    }

LABEL_141:
    sub_1AE61F754();
  }

  if (v33 == -1)
  {
    goto LABEL_141;
  }

  v36 = v7;
  v35 = a2;
LABEL_66:
  if (v36 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v36;
  }

  if (!memcmp(v35, language_modeling::v1::kClassLabelSingularNumber, v37) && v36 == v34)
  {
    if (SHIBYTE(v67) < 0)
    {
      __p[1] = 1;
      v21 = __p[0];
    }

    else
    {
      HIBYTE(v67) = 1;
      v21 = __p;
    }

    v22 = 49;
    goto LABEL_32;
  }

  v38 = strlen(language_modeling::v1::kClassLabelPause);
  v39 = v38;
  if (v11)
  {
    if (v38 != -1)
    {
      v40 = *a2;
      v41 = *(a2 + 8);
      goto LABEL_81;
    }

LABEL_142:
    sub_1AE61F754();
  }

  if (v38 == -1)
  {
    goto LABEL_142;
  }

  v41 = v7;
  v40 = a2;
LABEL_81:
  if (v41 >= v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = v41;
  }

  if (!memcmp(v40, language_modeling::v1::kClassLabelPause, v42) && v41 == v39)
  {
    if (SHIBYTE(v67) < 0)
    {
      __p[1] = 3;
      v43 = __p[0];
    }

    else
    {
      HIBYTE(v67) = 3;
      v43 = __p;
    }

    *(v43 + 2) = 46;
    *v43 = 11822;
    v23 = (v43 + 3);
    goto LABEL_33;
  }

  v44 = strlen(language_modeling::v1::kClassLabelSentenceDelimiter);
  v45 = v44;
  if (v11)
  {
    if (v44 != -1)
    {
      v46 = *a2;
      v47 = *(a2 + 8);
      goto LABEL_95;
    }

LABEL_143:
    sub_1AE61F754();
  }

  if (v44 == -1)
  {
    goto LABEL_143;
  }

  v47 = v7;
  v46 = a2;
LABEL_95:
  if (v47 >= v45)
  {
    v48 = v45;
  }

  else
  {
    v48 = v47;
  }

  if (!memcmp(v46, language_modeling::v1::kClassLabelSentenceDelimiter, v48) && v47 == v45)
  {
    if (SHIBYTE(v67) < 0)
    {
      __p[1] = 1;
      v21 = __p[0];
    }

    else
    {
      HIBYTE(v67) = 1;
      v21 = __p;
    }

    v22 = 46;
    goto LABEL_32;
  }

  v49 = strlen(language_modeling::v1::kClassLabelReplacementCharacter);
  v50 = v49;
  if (v11)
  {
    if (v49 != -1)
    {
      v51 = *a2;
      v52 = *(a2 + 8);
      goto LABEL_109;
    }

LABEL_144:
    sub_1AE61F754();
  }

  if (v49 == -1)
  {
    goto LABEL_144;
  }

  v52 = v7;
  v51 = a2;
LABEL_109:
  if (v52 >= v50)
  {
    v53 = v50;
  }

  else
  {
    v53 = v52;
  }

  if (!memcmp(v51, language_modeling::v1::kClassLabelReplacementCharacter, v53) && v52 == v50)
  {
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
LABEL_115:
      HIBYTE(v67) = 0;
      v23 = __p;
      goto LABEL_33;
    }

LABEL_132:
    __p[1] = 0;
    v23 = __p[0];
    goto LABEL_33;
  }

  v54 = strlen(language_modeling::v1::kClassLabelUsername);
  v55 = v54;
  if (v11)
  {
    if (v54 != -1)
    {
      v56 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_123;
    }

LABEL_145:
    sub_1AE61F754();
  }

  if (v54 == -1)
  {
    goto LABEL_145;
  }

  v7 = v7;
  v56 = a2;
LABEL_123:
  if (v7 >= v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v7;
  }

  if (!memcmp(v56, language_modeling::v1::kClassLabelUsername, v57) && v7 == v55)
  {
    if (SHIBYTE(v67) < 0)
    {
      __p[1] = 4;
      v58 = __p[0];
    }

    else
    {
      HIBYTE(v67) = 4;
      v58 = __p;
    }

    *v58 = 1852337994;
    v23 = (v58 + 4);
  }

  else
  {
    if (std::string::compare(a2, language_modeling::v1::kClassLabelLink))
    {
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_132;
    }

    if (SHIBYTE(v67) < 0)
    {
      __p[1] = 7;
      v59 = __p[0];
    }

    else
    {
      HIBYTE(v67) = 7;
      v59 = __p;
    }

    *(v59 + 3) = 1836016430;
    *v59 = 779778424;
    v23 = (v59 + 7);
  }

LABEL_33:
  *v23 = 0;
  v24 = SHIBYTE(v67);
  v25 = __p[1];
  if (v67 >= 0)
  {
    v26 = HIBYTE(v67);
  }

  else
  {
    v26 = __p[1];
  }

  v27 = *(a2 + 23);
  v28 = v27;
  v29 = *(a2 + 8);
  if ((v27 & 0x80u) != 0)
  {
    v27 = *(a2 + 8);
  }

  if (v26 == v27 && (v67 >= 0 ? (v30 = __p) : (v30 = __p[0]), (v31 = *a2, v28 >= 0) ? (v32 = a2) : (v32 = *a2), !memcmp(v30, v32, v26)))
  {
    if (v28 < 0)
    {
      sub_1AE5DBF1C(v60, v31, v29);
    }

    else
    {
      *v60 = *a2;
      v61 = *(a2 + 16);
    }

    v62 = *(a2 + 24);
    if (SHIBYTE(v67) < 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v24 < 0)
    {
      sub_1AE5DBF1C(__dst, __p[0], v25);
    }

    else
    {
      *__dst = *__p;
      v64 = v67;
    }

    v65 = 0;
    sub_1AE5CA7E0(v60, __dst);
    v62 = v65;
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    operator delete(__dst[0]);
    if (SHIBYTE(v67) < 0)
    {
LABEL_51:
      operator delete(__p[0]);
    }
  }

LABEL_52:
  sub_1AE69D8A0(a1, v60, a3);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }
}

void sub_1AE69D844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE69D8A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  *&v12.__r_.__value_.__r.__words[1] = 0uLL;
  v13 = 0;
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v15 >= 0)
  {
    v6 = HIBYTE(v15);
  }

  else
  {
    v6 = __p[1];
  }

  sub_1AE5E56F4(a1 + 128, v5, v6, &v12.__r_.__value_.__l.__size_, &v12);
  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE608CE4(&v12, v10);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    MEMORY[0x1B2705EB0](exception, v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE6089C0(&v12);
  v7 = *&v12.__r_.__value_.__r.__words[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (*(&v7 + 1) != v7)
  {
    if (((*(&v7 + 1) - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  if (v7)
  {
    v12.__r_.__value_.__r.__words[2] = v7;
    operator delete(v7);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE69DAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void sub_1AE69DB28(void *a1)
{
  *a1 = &unk_1F242BA10;
  v2 = a1[44];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[42];
  a1[42] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *a1 = &unk_1F242BB48;
  v5 = a1[37];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[33];
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

  v8 = a1[31];
  a1[31] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  sub_1AE69DC04(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE69DC04(void *a1)
{
  *a1 = &unk_1F242BC20;
  sub_1AE5E1BBC(a1 + 16);
  v2 = a1[13];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[11];
  a1[11] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[7] = 0;
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[5];
    v8 = a1[4];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[4];
    }

    a1[5] = v6;
    operator delete(v8);
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = a1[2];
    v12 = a1[1];
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
      v12 = a1[1];
    }

    a1[2] = v10;
    operator delete(v12);
  }

  return a1;
}

void *sub_1AE69DD2C(void *a1)
{
  *a1 = &unk_1F242BA10;
  v2 = a1[44];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[42];
  a1[42] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *a1 = &unk_1F242BB48;
  v5 = a1[37];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[33];
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

  v8 = a1[31];
  a1[31] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return sub_1AE69DC04(a1);
}

void *sub_1AE69DDF4(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
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

    if (v8 >= v2)
    {
      v8 %= v2;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *sub_1AE69E24C(void *a1)
{
  *a1 = &unk_1F242BB48;
  v2 = a1[37];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[33];
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

  v5 = a1[31];
  a1[31] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return sub_1AE69DC04(a1);
}

void sub_1AE69E2D0(unint64_t a1, uint64_t a2, unsigned __int8 **a3, _BYTE *a4, _BYTE *a5, char *a6, char *a7, _BYTE *a8, _BYTE *a9)
{
  v11 = *(a2 + 23);
  v12 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if ((v11 & 0x80u) == 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = v12;
  }

  *a1 = 0;
  if (a6 == a7)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    v20 = v13;
    goto LABEL_40;
  }

  v15 = a7;
  v20 = v13;
  while (1)
  {
    v21 = *(a1 + 23);
    if ((v21 & 0x80u) == 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = *a1;
    }

    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 8);
    }

    sub_1AE69E4D0(a1, v22 + v21, v20, a6, a6 - v20);
    v23 = *(a1 + 23);
    if ((v23 & 0x80u) == 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a1 + 8);
    }

    sub_1AE69E788(a1, v24 + v23, a8, a9, a9 - a8);
    v11 = *(a2 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    v25 = &v13[v11];
    if (v15 != &v13[v11])
    {
      break;
    }

    a6 = v15;
LABEL_7:
    v20 = v15;
    v15 = v25;
    if (a6 == v25)
    {
      goto LABEL_39;
    }
  }

  v26 = a3[1];
  a6 = v15;
  if (*a3 != v26)
  {
    while (1)
    {
      v27 = *a3;
      v28 = a6;
      do
      {
        if (*v28 != *v27)
        {
          break;
        }

        ++v28;
        ++v27;
        if (v28 == v25)
        {
          break;
        }
      }

      while (v27 != v26);
      if (v27 == v26)
      {
        break;
      }

      if (++a6 == v25)
      {
        a6 = &v13[v11];
        v28 = &v13[v11];
        goto LABEL_33;
      }
    }

    v25 = v28;
LABEL_33:
    if (a6 != v28)
    {
      a9 = a5;
      a8 = a4;
    }

    goto LABEL_7;
  }

  v20 = v15;
LABEL_39:
  v31 = *(a1 + 23);
  v30 = *a1;
  v29 = *(a1 + 8);
LABEL_40:
  if ((v31 & 0x80u) == 0)
  {
    v30 = a1;
    v29 = v31;
  }

  sub_1AE69E4D0(a1, v30 + v29, v20, &v13[v11], &v13[v11] - v20);
}

void sub_1AE69E4B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE69E4D0(unint64_t a1, uint64_t a2, char *__src, char *a4, unint64_t a5)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    if (!a5)
    {
      return;
    }

    v7 = *a1;
    v6 = *(a1 + 8);
  }

  else
  {
    if (!a5)
    {
      return;
    }

    v7 = a1;
  }

  v8 = a2 - v7;
  if (v7 > __src || v7 + v6 + 1 <= __src)
  {

    sub_1AE69EC00(a1, a5, v8, __src, a4);
  }

  else
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    if (__src == a4)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      *v18 = a2 - v7;
      do
      {
        v15 = *__src;
        if (SHIBYTE(v21) < 0)
        {
          v16 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v20 == v16)
          {
            if ((v21 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_1AE5DB4F0();
            }

LABEL_21:
            operator new();
          }

          p_p = __p;
          v12 = v20++;
        }

        else
        {
          if (HIBYTE(v21) == 22)
          {
            goto LABEL_21;
          }

          v12 = HIBYTE(v21);
          HIBYTE(v21) = (HIBYTE(v21) + 1) & 0x7F;
          p_p = &__p;
        }

        v14 = &p_p[v12];
        *v14 = v15;
        v14[1] = 0;
        ++__src;
      }

      while (__src != a4);
      v11 = HIBYTE(v21);
      v10 = __p;
      v9 = v20;
      v8 = *v18;
    }

    if ((v11 & 0x80u) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = v10;
    }

    if ((v11 & 0x80u) == 0)
    {
      v9 = v11;
    }

    sub_1AE69EC00(a1, a5, v8, v17, v17 + v9);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1AE69E788(unint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4, unint64_t a5)
{
  v6 = __src;
  v8 = *(a1 + 23);
  if (v8 < 0)
  {
    if (!a5)
    {
      return;
    }

    v9 = a2 - *a1;
    if (*a1 > __src || *a1 + *(a1 + 8) + 1 <= __src)
    {
      v8 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 - v8 < a5)
      {
        if (0x7FFFFFFFFFFFFFF8 - (v11 & 0x7FFFFFFFFFFFFFFFLL) >= v8 + a5 - v12)
        {
          goto LABEL_15;
        }

        goto LABEL_49;
      }

      v23 = a5;
      v24 = HIBYTE(v11);
      v25 = *a1;
      goto LABEL_38;
    }
  }

  else
  {
    if (!a5)
    {
      return;
    }

    v9 = a2 - a1;
    if (a1 > __src || a1 + v8 + 1 <= __src)
    {
      if (22 - v8 < a5)
      {
        if (v8 + a5 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
        {
LABEL_15:
          operator new();
        }

LABEL_49:
        sub_1AE5DB4F0();
      }

      v23 = a5;
      LOBYTE(v24) = *(a1 + 23);
      v25 = a1;
LABEL_38:
      v26 = v9;
      if (v8 != v9)
      {
        memmove((v25 + v9 + v23), (v25 + v9), v8 - v9);
        LOBYTE(v24) = *(a1 + 23);
        v26 = v8;
      }

      v27 = v26 + v23;
      if ((v24 & 0x80) != 0)
      {
        *(a1 + 8) = v27;
      }

      else
      {
        *(a1 + 23) = v27 & 0x7F;
      }

      *(v25 + v27) = 0;
      if (a4 != v6)
      {

        memmove((v25 + v9), v6, a4 - v6);
      }

      return;
    }
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  if (__src == a4)
  {
    v21 = a5;
    v19 = 0;
    v20 = 0;
    v18 = 0;
  }

  else
  {
    __srca = v9;
    do
    {
      v16 = *v6;
      if (SHIBYTE(v31) < 0)
      {
        v17 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v30 == v17)
        {
          if ((v31 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_1AE5DB4F0();
          }

LABEL_25:
          operator new();
        }

        p_p = __p;
        v13 = v30++;
      }

      else
      {
        if (HIBYTE(v31) == 22)
        {
          goto LABEL_25;
        }

        v13 = HIBYTE(v31);
        HIBYTE(v31) = (HIBYTE(v31) + 1) & 0x7F;
        p_p = &__p;
      }

      v15 = &p_p[v13];
      *v15 = v16;
      v15[1] = 0;
      ++v6;
    }

    while (v6 != a4);
    v18 = HIBYTE(v31);
    v20 = __p;
    v19 = v30;
    v21 = a5;
    v9 = __srca;
  }

  if ((v18 & 0x80u) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = v20;
  }

  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  sub_1AE69EC00(a1, v21, v9, v22, v22 + v19);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }
}

void sub_1AE69EBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE69EBCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_begin_catch(a1);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_rethrow();
}

uint64_t sub_1AE69EC00(uint64_t *a1, unint64_t a2, uint64_t a3, _BYTE *__src, _BYTE *a5)
{
  v9 = a1;
  v10 = *(a1 + 23);
  if (v10 < 0)
  {
    v10 = a1[1];
    v11 = a1[2];
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v12 - v10 < a2)
    {
      if (0x7FFFFFFFFFFFFFF8 - (v11 & 0x7FFFFFFFFFFFFFFFLL) >= v10 + a2 - v12)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    v13 = HIBYTE(v11);
    v14 = *a1;
  }

  else
  {
    if (22 - v10 < a2)
    {
      if (v10 + a2 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
      {
LABEL_7:
        operator new();
      }

LABEL_20:
      sub_1AE5DB4F0();
    }

    LOBYTE(v13) = *(a1 + 23);
    v14 = a1;
  }

  v15 = a3;
  v16 = v10 - a3;
  if (v10 != a3)
  {
    memmove(v14 + a3 + a2, v14 + a3, v16);
    LOBYTE(v13) = *(v9 + 23);
    v15 = v10;
  }

  v17 = v15 + a2;
  if ((v13 & 0x80) != 0)
  {
    v9[1] = v17;
  }

  else
  {
    *(v9 + 23) = v17 & 0x7F;
  }

  *(v14 + v17) = 0;
  if (a5 != __src)
  {
    memmove(v14 + a3, __src, a5 - __src);
  }

  if (*(v9 + 23) < 0)
  {
    v9 = *v9;
  }

  return v9 + a3;
}

void sub_1AE69EE68(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (0x86BCA1AF286BCA1BLL * ((v2 - *a1) >> 4) < 0xD79435E50D7944)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }
}

uint64_t sub_1AE69EF8C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 55) < 0)
  {
    sub_1AE5DBF1C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  sub_1AE61E1B4(a1 + 56, a2 + 56);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v6 = *(a2 + 240);
  v7 = *(a2 + 248);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v8 = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 264) = v8;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  v10 = *(a2 + 280);
  v9 = *(a2 + 288);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return a1;
}

void sub_1AE69F16C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE69F1DC(uint64_t a1)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 288) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    v4 = *(a1 + 248);
    v5 = *(a1 + 240);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 16);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 24;
      }

      while (v4 != v3);
      v5 = *(a1 + 240);
    }

    *(a1 + 248) = v3;
    operator delete(v5);
  }

  sub_1AE61E5C8((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void ***sub_1AE69F2C8(void ***result)
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
          v4 = sub_1AE69F1DC(v4 - 304);
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

void ***sub_1AE69F340(void ***a1)
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
        do
        {
          v6 = *(v4 - 2);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 24;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void **sub_1AE69F404(void **a1)
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
        v5 = *(v3 - 2);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AE69F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (0xD37A6F4DE9BD37A7 * ((*(a3 + 8) - v7) >> 3) >= 2)
  {
    __assert_rtn("_completions", "MultiWordBeamSearchPredictor.cpp", 473, "stems.size()<2");
  }

  if (byte_1EB5E05C9 == 1)
  {
    sub_1AE72F578((a1 + 72), (a1 + 208), v7, a4);
    if (v9 > 0.0001)
    {
      __assert_rtn("_completions", "MultiWordBeamSearchPredictor.cpp", 478, "prefixProbabilityFirstWord<=1e-4");
    }
  }

  if (a7)
  {
    if (qword_1EB5E0A10 != -1)
    {
      dispatch_once(&qword_1EB5E0A10, &unk_1F242BCF8);
    }

    v10 = qword_1EB5E0A20;
    if (os_log_type_enabled(qword_1EB5E0A20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Starting Inline Completions Beam Search in Lexicon Constrained Prediction Mode";
LABEL_13:
      _os_log_impl(&dword_1AE5C8000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else
  {
    if (qword_1EB5E0A10 != -1)
    {
      dispatch_once(&qword_1EB5E0A10, &unk_1F242BCF8);
    }

    v10 = qword_1EB5E0A20;
    if (os_log_type_enabled(qword_1EB5E0A20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Starting Inline Completions Beam Search in Open Ended Prediction Mode";
      goto LABEL_13;
    }
  }

  operator new();
}

void sub_1AE6A1CB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE6A237C(void *result, unint64_t a2)
{
  if (0x86BCA1AF286BCA1BLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xD79435E50D7944)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void **sub_1AE6A25B8(void **a1)
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
        v3 = sub_1AE69F1DC(v3 - 304);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AE6A2614(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1AE65660C(*(a2 + 104));
  }

  v3 = *(a2 + 104);
  memset(buf, 0, sizeof(buf));
  v7 = 0;
  v4 = *(v3 + 208);
  if (v4 != *(v3 + 216))
  {
    (*(**v4 + 56))(&v5);
    operator new();
  }

  operator new();
}

void sub_1AE6A2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  JUMPOUT(0x1AE6A29D8);
}

void sub_1AE6A29E8(uint64_t a1, uint64_t a2, char a3)
{
  __dst[38] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) != *(a2 + 24))
  {
    sub_1AE6A2614(__dst, a1, a3);
  }

  __assert_rtn("_prepMultiWordCandidateHypothesisQueue", "MultiWordBeamSearchPredictor.cpp", 191, "!candidateHypothesisQueue.empty()");
}

void sub_1AE6A378C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char *__p, char *a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1AE69F1DC(&a30);
  if (__p)
  {
    v36 = a28;
    v37 = __p;
    if (a28 != __p)
    {
      do
      {
        v38 = *(v36 - 2);
        if (v38)
        {
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
          }
        }

        v36 -= 24;
      }

      while (v36 != __p);
      v37 = __p;
    }

    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6A3918(uint64_t a1, uint64_t a2)
{
  v13 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v20 = *(a1 + 80);
  v21 = *(a1 + 96);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v24 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v26 = *(a1 + 152);
  v6 = *(a1 + 168);
  v25 = v5;
  v27 = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v7 = *(a1 + 192);
  v28 = *(a1 + 176);
  v29 = v7;
  v8 = *(a1 + 208);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v31 = *(a1 + 216);
  v9 = *(a1 + 232);
  v30 = v8;
  v32 = v9;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v33 = *(a1 + 240);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v36 = *(a1 + 272);
  v10 = *(a1 + 256);
  v11 = *(a1 + 264);
  *(a1 + 256) = 0;
  v34 = v10;
  v35 = v11;
  v37 = *(a1 + 280);
  v38 = *(a1 + 288);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  sub_1AE6A3AE4(a1, a2);
  sub_1AE6A3AE4(a2, &v13);
  return sub_1AE69F1DC(&v13);
}

void *sub_1AE6A3A5C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v1 + 24);
      v5 = *(v1 + 16);
      if (v4 != v3)
      {
        do
        {
          v4 = sub_1AE69F1DC(v4 - 304);
        }

        while (v4 != v3);
        v5 = *(v1 + 16);
      }

      *(v1 + 24) = v3;
      operator delete(v5);
    }

    MEMORY[0x1B2706400](v1, 0x1020C402564D6C4);
    return v2;
  }

  return result;
}

uint64_t sub_1AE6A3AE4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  sub_1AE6A3C74(a1 + 56, a2 + 56);
  v6 = (a1 + 240);
  v7 = *(a1 + 240);
  if (v7)
  {
    v8 = *(a1 + 248);
    v9 = *(a1 + 240);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 16);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v8 -= 24;
      }

      while (v8 != v7);
      v9 = *v6;
    }

    *(a1 + 248) = v7;
    operator delete(v9);
    *v6 = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0;
  v11 = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 264) = v11;
  v12 = *(a1 + 280);
  if (v12)
  {
    *(a1 + 288) = v12;
    operator delete(v12);
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  return a1;
}

uint64_t sub_1AE6A3C74(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
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
  v8 = (a1 + 24);
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 9);
        v10 -= 4;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 32) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(a1 + 56);
    v16 = *(a1 + 48);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 9);
        v15 -= 4;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *v13;
    }

    *(a1 + 56) = v14;
    operator delete(v16);
    *v13 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v18 = *(a1 + 72);
  if (v18)
  {
    *(a1 + 80) = v18;
    operator delete(v18);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v19 = *(a1 + 96);
  if (v19)
  {
    *(a1 + 104) = v19;
    operator delete(v19);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v20 = (a1 + 136);
  v21 = *(a1 + 136);
  *(a1 + 120) = *(a2 + 120);
  if (v21)
  {
    v22 = *(a1 + 144);
    v23 = v21;
    if (v22 != v21)
    {
      do
      {
        v24 = *(v22 - 9);
        v22 -= 4;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 144) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v25 = (a1 + 160);
  v26 = *(a1 + 160);
  if (v26)
  {
    v27 = *(a1 + 168);
    v28 = *(a1 + 160);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 9);
        v27 -= 4;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = *v25;
    }

    *(a1 + 168) = v26;
    operator delete(v28);
    *v25 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return a1;
}