__n128 sub_1837A2D84(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[0];
  if (a5->n128_f64[0] < a4->n128_f64[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_1837A2F10(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 32);
      v9 = *(a2 - 32);
      v4 = (a2 - 32);
      v10 = v9;
      if (v8 < *a1)
      {
        if (v10 < v8)
        {
LABEL_12:
          v12 = *a1;
          v11 = *(a1 + 16);
          v13 = v4[1];
          *a1 = *v4;
          *(a1 + 16) = v13;
LABEL_13:
          *v4 = v12;
          v4[1] = v11;
          return 1;
        }

        v46 = *a1;
        v45 = *(a1 + 16);
        v47 = *(a1 + 48);
        *a1 = *v7;
        *(a1 + 16) = v47;
        *v7 = v46;
        *(a1 + 48) = v45;
        if (v4->n128_f64[0] < *(a1 + 32))
        {
          v12 = *v7;
          v11 = *(a1 + 48);
          v48 = v4[1];
          *v7 = *v4;
          *(a1 + 48) = v48;
          goto LABEL_13;
        }

        return 1;
      }

      if (v10 >= v8)
      {
        return 1;
      }

      v31 = *v7;
      v30 = *(a1 + 48);
      v32 = v4[1];
      *v7 = *v4;
      *(a1 + 48) = v32;
      *v4 = v31;
      v4[1] = v30;
LABEL_49:
      if (*(a1 + 32) < *a1)
      {
        v72 = *a1;
        v71 = *(a1 + 16);
        v73 = v7[1];
        *a1 = *v7;
        *(a1 + 16) = v73;
        *v7 = v72;
        v7[1] = v71;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_1837A2D84(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
        return 1;
      }

      goto LABEL_14;
    }

    v7 = (a1 + 32);
    v22 = *(a1 + 32);
    v23 = (a1 + 64);
    v24 = *(a1 + 64);
    v25 = (a2 - 32);
    v26 = *a1;
    if (v22 >= *a1)
    {
      if (v24 < v22)
      {
        v40 = *v7;
        v39 = *(a1 + 48);
        v41 = *(a1 + 80);
        *v7 = *v23;
        *(a1 + 48) = v41;
        *v23 = v40;
        *(a1 + 80) = v39;
        if (v7->n128_f64[0] < v26)
        {
          v43 = *a1;
          v42 = *(a1 + 16);
          v44 = *(a1 + 48);
          *a1 = *v7;
          *(a1 + 16) = v44;
          *v7 = v43;
          *(a1 + 48) = v42;
        }
      }

      goto LABEL_46;
    }

    if (v24 >= v22)
    {
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 48);
      *a1 = *v7;
      *(a1 + 16) = v63;
      *v7 = v62;
      *(a1 + 48) = v61;
      if (v24 >= *(a1 + 32))
      {
        goto LABEL_46;
      }

      v28 = *v7;
      v27 = *(a1 + 48);
      v64 = *(a1 + 80);
      *v7 = *v23;
      *(a1 + 48) = v64;
    }

    else
    {
      v28 = *a1;
      v27 = *(a1 + 16);
      v29 = *(a1 + 80);
      *a1 = *v23;
      *(a1 + 16) = v29;
    }

    *v23 = v28;
    *(a1 + 80) = v27;
LABEL_46:
    if (*v25 >= v23->n128_f64[0])
    {
      return 1;
    }

    v66 = *v23;
    v65 = *(a1 + 80);
    v67 = *(a2 - 16);
    *v23 = *v25;
    *(a1 + 80) = v67;
    *v25 = v66;
    *(a2 - 16) = v65;
    if (v23->n128_f64[0] >= v7->n128_f64[0])
    {
      return 1;
    }

    v69 = *v7;
    v68 = *(a1 + 48);
    v70 = *(a1 + 80);
    *v7 = *v23;
    *(a1 + 48) = v70;
    *v23 = v69;
    *(a1 + 80) = v68;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 32);
    v4 = (a2 - 32);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v14 = (a1 + 64);
  v15 = *(a1 + 64);
  v16 = (a1 + 32);
  v17 = *(a1 + 32);
  v18 = *a1;
  if (v17 >= *a1)
  {
    if (v15 < v17)
    {
      v34 = *v16;
      v33 = *(a1 + 48);
      v35 = *(a1 + 80);
      *v16 = *v14;
      *(a1 + 48) = v35;
      *v14 = v34;
      *(a1 + 80) = v33;
      if (v16->n128_f64[0] < v18)
      {
        v37 = *a1;
        v36 = *(a1 + 16);
        v38 = *(a1 + 48);
        *a1 = *v16;
        *(a1 + 16) = v38;
        *v16 = v37;
        *(a1 + 48) = v36;
      }
    }
  }

  else
  {
    if (v15 >= v17)
    {
      v50 = *a1;
      v49 = *(a1 + 16);
      v51 = *(a1 + 48);
      *a1 = *v16;
      *(a1 + 16) = v51;
      *v16 = v50;
      *(a1 + 48) = v49;
      if (v15 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v20 = *v16;
      v19 = *(a1 + 48);
      v52 = *(a1 + 80);
      *v16 = *v14;
      *(a1 + 48) = v52;
    }

    else
    {
      v20 = *a1;
      v19 = *(a1 + 16);
      v21 = *(a1 + 80);
      *a1 = *v14;
      *(a1 + 16) = v21;
    }

    *v14 = v20;
    *(a1 + 80) = v19;
  }

LABEL_33:
  v53 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v57 = *v53;
    if (*v53 < v14->n128_f64[0])
    {
      v74 = *(v53 + 8);
      v75 = *(v53 + 24);
      v58 = v54;
      do
      {
        v59 = a1 + v58;
        v60 = *(a1 + v58 + 80);
        *(v59 + 96) = *(a1 + v58 + 64);
        *(v59 + 112) = v60;
        if (v58 == -64)
        {
          v56 = a1;
          goto LABEL_36;
        }

        v58 -= 32;
      }

      while (v57 < *(v59 + 32));
      v56 = a1 + v58 + 96;
LABEL_36:
      *v56 = v57;
      *(v56 + 8) = v74;
      *(v56 + 24) = v75;
      if (++v55 == 8)
      {
        return v53 + 32 == a2;
      }
    }

    v14 = v53;
    v54 += 32;
    v53 += 32;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_1837A3290(const char *a1, const char *a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = strdup(a1);
  __lasts = 0;
  v6 = strtok_r(v5, ".", &__lasts);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
  v26 = v8;
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  if (__lasts)
  {
    v10 = CFStringCreateWithCString(v7, __lasts, 0x8000100u);
    cf = v10;
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID())
      {
        v22 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1865E5C80](v22, "Could not construct");
        __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    cf = 0;
    if (a2)
    {
LABEL_8:
      v12 = CFStringCreateWithCString(v7, a2, 0x8000100u);
      subDirName = v12;
      if (v12)
      {
        v13 = CFGetTypeID(v12);
        if (v13 != CFStringGetTypeID())
        {
          v14 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1865E5C80](v14, "Could not construct");
          __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      goto LABEL_14;
    }
  }

  subDirName = 0;
LABEL_14:
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CoreHandwriting");
  v17 = CFBundleCopyResourceURL(BundleWithIdentifier, v26, cf, subDirName);
  url = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 != CFURLGetTypeID())
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](v21, "Could not construct");
      __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v17 = url;
  }

  v15 = CFURLGetFileSystemRepresentation(v17, 1u, a3, 1024) != 0;
  free(v5);
  if (url)
  {
    CFRelease(url);
  }

  if (subDirName)
  {
    CFRelease(subDirName);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v15;
}

void sub_1837A3520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, const void *a14)
{
  __cxa_free_exception(v14);
  sub_183695860(&a12);
  sub_183691190(&a13);
  sub_183691190(&a14);
  _Unwind_Resume(a1);
}

void sub_1837A35C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  sub_183691190(va);
  sub_183691190(va1);
  _Unwind_Resume(a1);
}

void sub_1837A35E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1837A360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_1837A3620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  sub_1837AA9A0(va);
  sub_183691190(va1);
  sub_183691190(va2);
  sub_183691190(va3);
  _Unwind_Resume(a1);
}

id sub_1837A3654(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = objc_msgSend_length(v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v17 = objc_msgSend_length(v5, v12, v13, v14, v15, v16);
  objc_msgSend_getIndexes_range_(v5, v18, 0, 0, v17, v19);
  *(8 * a2) = a3;
  v20 = MEMORY[0x1E696AC88];
  v26 = objc_msgSend_length(v5, v21, v22, v23, v24, v25);
  v30 = objc_msgSend_indexPathWithIndexes_length_(v20, v27, 0, v26, v28, v29);
  v36 = objc_msgSend_length(v5, v31, v32, v33, v34, v35);
  if (v36 != objc_msgSend_length(v30, v37, v38, v39, v40, v41))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v47 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_ERROR, "The length of the computed path must be the same as the input", buf, 2u);
    }
  }

  v48 = objc_msgSend_length(v5, v42, v43, v44, v45, v46);
  if (v48 != objc_msgSend_length(v30, v49, v50, v51, v52, v53))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v54 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *v56 = 0;
      _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_FAULT, "The length of the computed path must be the same as the input", v56, 2u);
    }
  }

  operator delete(0);

  return v30;
}

void sub_1837A3880(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

id sub_1837A38B0(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = objc_msgSend_length(v5, v6, v7, v8, v9, v10);
  if (v11 != -1)
  {
    if (!((v11 + 1) >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v17 = objc_msgSend_length(v5, v12, v13, v14, v15, v16);
  objc_msgSend_getIndexes_range_(v5, v18, 0, 0, v17, v19);
  v20 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v25 = v20;
  if (a2)
  {
    v26 = 0;
    do
    {
      v27 = objc_msgSend_indexAtPosition_(v5, v21, v26, v22, v23, v24);
      v32 = objc_msgSend_indexPathByAddingIndex_(v25, v28, v27, v29, v30, v31);

      ++v26;
      v25 = v32;
    }

    while (a2 != v26);
  }

  else
  {
    v32 = v20;
  }

  v33 = objc_msgSend_indexPathByAddingIndex_(v32, v21, a3, v22, v23, v24);

  while (1)
  {
    v39 = v33;
    if (a2 >= objc_msgSend_length(v5, v34, v35, v36, v37, v38))
    {
      break;
    }

    v45 = objc_msgSend_indexAtPosition_(v5, v40, a2, v42, v43, v44);
    v33 = objc_msgSend_indexPathByAddingIndex_(v33, v46, v45, v47, v48, v49);

    ++a2;
  }

  v50 = objc_msgSend_length(v5, v40, v41, v42, v43, v44);
  if (v50 + 1 != objc_msgSend_length(v33, v51, v52, v53, v54, v55))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v61 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_ERROR, "The length of the computed path must be one more than the input", buf, 2u);
    }
  }

  v62 = objc_msgSend_length(v5, v56, v57, v58, v59, v60);
  if (v62 + 1 != objc_msgSend_length(v33, v63, v64, v65, v66, v67))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v68 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      *v70 = 0;
      _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_FAULT, "The length of the computed path must be one more than the input", v70, 2u);
    }
  }

  return v33;
}

void sub_1837A3B54(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

id sub_1837A3BB4(void *a1, NSUInteger a2, NSUInteger a3)
{
  v5 = a1;
  v27.length = objc_msgSend_length(v5, v6, v7, v8, v9, v10);
  v27.location = 0;
  v28.location = a2;
  v28.length = a3;
  v11 = NSIntersectionRange(v27, v28);
  v12 = 0;
  if (v11.location == a2)
  {
    length = v11.length;
    if (v11.length == a3)
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AC88]);
      v19 = v14;
      if (a2 >= v11.length + a2)
      {
        v12 = v14;
      }

      else
      {
        do
        {
          v20 = objc_msgSend_indexAtPosition_(v5, v15, a2, v16, v17, v18);
          v12 = objc_msgSend_indexPathByAddingIndex_(v19, v21, v20, v22, v23, v24);

          ++a2;
          v19 = v12;
          --length;
        }

        while (length);
      }
    }
  }

  return v12;
}

id sub_1837A3CB8(void *a1, void *a2, void *a3, UInt8 *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  sub_1837A3EA0(a1);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v9 = v36 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v35, v39, 16, v11);
  if (v16)
  {
    v17 = *v36;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = objc_msgSend_stringByAppendingString_(v7, v12, v19, v13, v14, v15, v35);
        v25 = objc_msgSend_stringByAppendingPathExtension_(v20, v21, v8, v22, v23, v24);

        v26 = v25;
        v32 = objc_msgSend_UTF8String(v25, v27, v28, v29, v30, v31);
        if (sub_1837A3290(v32, 0, a4))
        {
          v33 = v19;

          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v35, v39, 16, v15);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0;
LABEL_11:

  return v33;
}

id sub_1837A3EA0(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_languageCode(v1, v2, v3, v4, v5, v6);
  v13 = objc_msgSend_lowercaseString(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_scriptCode(v1, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_capitalizedString(v19, v20, v21, v22, v23, v24);

  v31 = objc_msgSend_countryCode(v1, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_uppercaseString(v31, v32, v33, v34, v35, v36);

  v47 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39, v40, v41, v42);
  if (v13)
  {
    v48 = v25 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = !v48;
  if (!v48 && v37)
  {
    v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"%@-%@_%@", v44, v45, v46, v13, v25, v37);
    objc_msgSend_addObject_(v47, v51, v50, v52, v53, v54);
  }

  if (v13 && v37)
  {
    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"%@_%@", v44, v45, v46, v13, v37);
    objc_msgSend_addObject_(v47, v56, v55, v57, v58, v59);
  }

  if (v49)
  {
    v60 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"%@-%@", v44, v45, v46, v13, v25);
    objc_msgSend_addObject_(v47, v61, v60, v62, v63, v64);
  }

  else if (!v13)
  {
    goto LABEL_17;
  }

  objc_msgSend_addObject_(v47, v43, v13, v44, v45, v46);
LABEL_17:

  return v47;
}

void sub_1837A4040(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_1837A4118(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = a3;
    v13 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, a3, a4, a5, a6);
    if (a2 && a4)
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 4 * v14);
        if (v15 == 1)
        {
          ++v7;
        }

        else if (v7 <= v14 && v7 + a4 > v14)
        {
          if ((v15 - 0x10000) >> 20)
          {
            v16 = *(a1 + 4 * v14);
            v17 = 1;
          }

          else
          {
            v16 = ((v15 - 0x10000) >> 10) | 0xFFFFD800;
            v24[1] = v15 & 0x3FF | 0xDC00;
            v17 = 2;
          }

          v24[0] = v16;
          v18 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v10, v24, v17, v11, v12);
          objc_msgSend_appendString_(v13, v19, v18, v20, v21, v22);
        }

        ++v14;
      }

      while (a2 != v14);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1837A4260(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 - 0x10000) >> 20)
  {
    v7 = 1;
    LOWORD(v6) = a1;
  }

  else
  {
    v6 = ((a1 - 0x10000) >> 10) | 0xFFFFD800;
    v10[1] = a1 & 0x3FF | 0xDC00;
    v7 = 2;
  }

  v10[0] = v6;
  v8 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], a2, v10, v7, a5, a6);

  return v8;
}

void *sub_1837A42D4(void *a1, unint64_t a2, __int16 a3, uint64_t *a4, _BYTE *a5)
{
  v9 = a1;
  v14 = objc_msgSend_lengthOfBytesUsingEncoding_(v9, v10, 2348810496, v11, v12, v13);
  v15 = 0;
  *a4 = 0;
  *a5 = 0;
  if (v14 >> 2 < a2)
  {
    a2 = v14 >> 2;
  }

  if (v14 >= 4 && a2)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v21 = a2 - 1;
    if ((a3 & 0x100) == 0)
    {
      v21 = 0;
    }

    v28[3] = v21;
    v22 = objc_msgSend_length(v9, v16, v17, v18, v19, v20);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1837A44D4;
    v26[3] = &unk_1E6DDE0E8;
    v26[4] = &v29;
    v26[5] = v28;
    v27 = (a3 & 0x100) == 0;
    v26[6] = a4;
    v26[7] = a5;
    v26[8] = a2;
    objc_msgSend_enumerateCodepointsInRange_reverse_usingBlock_(v9, v23, 0, v22, (a3 & 0x100) >> 8, v26);
    v24 = *a4;
    if (*a4)
    {
      v15 = v30[3];
      if (a2 == v24)
      {
LABEL_12:
        _Block_object_dispose(v28, 8);
        _Block_object_dispose(&v29, 8);
        goto LABEL_13;
      }

      v15 = malloc_type_realloc(v30[3], 4 * v24, 0x100004052888210uLL);
    }

    else
    {
      free(v30[3]);
      v15 = 0;
    }

    v30[3] = v15;
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

void sub_1837A44AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837A44D4(uint64_t result, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(*(result + 32) + 8) + 24) + 4 * *(*(*(result + 40) + 8) + 24)) = a2;
  v5 = *(result + 48);
  v6 = *(*(result + 40) + 8);
  v7 = *(v6 + 24);
  v8 = v7 - 1;
  if (*(result + 72))
  {
    v8 = v7 + 1;
  }

  *(v6 + 24) = v8;
  v9 = *v5 + 1;
  *v5 = v9;
  v10 = *(result + 64);
  **(result + 56) |= a4 == 2;
  if (v9 >= v10)
  {
    *a5 = 1;
  }

  return result;
}

id stringFromUnicodeCodePointString(NSString *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v44 = v1;
  if (objc_msgSend_containsString_(v1, v2, @"u+", v3, v4, v5))
  {
    objc_msgSend_componentsSeparatedByString_(v1, v6, @"u+", v7, v8, v9);
  }

  else
  {
    objc_msgSend_componentsSeparatedByString_(v1, v6, @"0x", v7, v8, v9);
  }
  v45 = ;
  v15 = objc_msgSend_string(MEMORY[0x1E696AD60], v10, v11, v12, v13, v14);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v16 = v45;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v47, v52, 16, v18);
  if (v24)
  {
    v25 = *v48;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v16);
        }

        v27 = *(*(&v47 + 1) + 8 * i);
        if (objc_msgSend_length(v27, v19, v20, v21, v22, v23))
        {
          v46 = 0;
          v28 = objc_msgSend_scannerWithString_(MEMORY[0x1E696AE88], v19, v27, v21, v22, v23);
          objc_msgSend_scanHexInt_(v28, v29, &v46, v30, v31, v32);
          if ((v46 - 0x10000) >> 20)
          {
            LOWORD(v36) = v46;
            v37 = 1;
          }

          else
          {
            v36 = ((v46 - 0x10000) >> 10) | 0xFFFFD800;
            v51[1] = v46 & 0x3FF | 0xDC00;
            v37 = 2;
          }

          v51[0] = v36;
          v38 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v33, v51, v37, v34, v35);
          objc_msgSend_appendString_(v15, v39, v38, v40, v41, v42);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v47, v52, 16, v23);
    }

    while (v24);
  }

  return v15;
}

id sub_1837A47B8(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_mutableCopy(v1, v2, v3, v4, v5, v6);
  v13 = objc_msgSend_length(v1, v8, v9, v10, v11, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1837A48BC;
  v17[3] = &unk_1E6DDBF00;
  v14 = v7;
  v18 = v14;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v1, v15, 0, v13, 2, v17);

  return v14;
}

void sub_1837A48BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v41 = a2;
  v16 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13, v14, v15);
  if (objc_msgSend_rangeOfCharacterFromSet_(v41, v17, v16, v18, v19, v20) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v21, v22, v23, v24, v25);
    v31 = objc_msgSend_rangeOfCharacterFromSet_(v41, v27, v26, v28, v29, v30);

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = *(a1 + 32);
      v38 = objc_msgSend_uppercaseString(v41, v32, v33, v34, v35, v36);
      objc_msgSend_replaceCharactersInRange_withString_(v37, v39, a3, a4, v38, v40);

      *a7 = 1;
    }
  }

  else
  {
  }
}

id sub_1837A4A4C(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_mutableCopy(v1, v2, v3, v4, v5, v6);
  v13 = objc_msgSend_length(v1, v8, v9, v10, v11, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1837A4B50;
  v17[3] = &unk_1E6DDBF00;
  v14 = v7;
  v18 = v14;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v1, v15, 0, v13, 2, v17);

  return v14;
}

void sub_1837A4B50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v41 = a2;
  v16 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13, v14, v15);
  if (objc_msgSend_rangeOfCharacterFromSet_(v41, v17, v16, v18, v19, v20) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v21, v22, v23, v24, v25);
    v31 = objc_msgSend_rangeOfCharacterFromSet_(v41, v27, v26, v28, v29, v30);

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = *(a1 + 32);
      v38 = objc_msgSend_lowercaseString(v41, v32, v33, v34, v35, v36);
      objc_msgSend_replaceCharactersInRange_withString_(v37, v39, a3, a4, v38, v40);

      *a7 = 1;
    }
  }

  else
  {
  }
}

uint64_t sub_1837A4CE0(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v12 = objc_msgSend_length(v5, v7, v8, v9, v10, v11);
  if (a3)
  {
    v13 = 258;
  }

  else
  {
    v13 = 2;
  }

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = sub_1837A4E5C;
  v27 = &unk_1E6DDE110;
  v14 = v6;
  v28 = v14;
  v29 = &v30;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v5, v15, 0, v12, v13, &v24);
  if (v31[3])
  {
    if (a3)
    {
      v21 = objc_msgSend_length(v5, v16, v17, v18, v19, v20, v24, v25, v26, v27);
      v22 = v21 - v31[3];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v30, 8);
  return v22;
}

void sub_1837A4E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837A4E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v15 = a2;
  if (sub_1837A4F0C(v15, *(a1 + 32)))
  {
    *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_length(v15, v9, v10, v11, v12, v13);
    v14 = v15;
  }

  else
  {
    *a7 = 1;
    v14 = v15;
  }
}

BOOL sub_1837A4F0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_length(v3, v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_indexesOfCharacters_(v3, v10, v4, v11, v12, v13);
    v20 = objc_msgSend_count(v14, v15, v16, v17, v18, v19);
    v26 = v20 == objc_msgSend_length(v3, v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id sub_1837A4FC0(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1837A50EC;
  v16 = sub_1837A50FC;
  v17 = 0;
  v7 = objc_msgSend_length(v1, v2, v3, v4, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1837A5104;
  v11[3] = &unk_1E6DDDCB0;
  v11[4] = &v12;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v1, v8, 0, v7, 1283, v11);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_1837A50C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837A50EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837A5104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v13 = a2;
  if (a3 == a5 && a4 == a6)
  {
    v22 = v13;
    v19 = objc_msgSend_copy(v13, v14, v15, v16, v17, v18);
    v20 = *(*(a1 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v13 = v22;
  }

  *a7 = 1;
}

unint64_t sub_1837A51B0(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v13 = v7;
  if (a3)
  {
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = objc_msgSend_composedCharacterAtIndex_(v7, v8, a1, v10, v11, v12);
    LODWORD(a3) = objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v15, v14, v16, v17, v18);

    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if ((a3 & 0x40000) != 0)
  {
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

LABEL_8:
  if ((a3 & 0x40000) == 0)
  {
LABEL_14:
    v38 = 0;
    goto LABEL_17;
  }

LABEL_9:
  if (a1 + 1 >= objc_msgSend_length(v13, v8, v9, v10, v11, v12))
  {
    goto LABEL_14;
  }

  v23 = objc_msgSend_composedCharacterAtIndex_(v13, v19, a1 + 1, v20, v21, v22);
  v33 = objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v24, v23, v25, v26, v27);
  if ((v33 & 0x100000) != 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = 0;
    if (a1 + 2 < objc_msgSend_length(v13, v28, v29, v30, v31, v32) && (v33 & 0x80000) != 0)
    {
      v39 = objc_msgSend_composedCharacterAtIndex_(v13, v34, a1 + 2, v35, v36, v37);
      v38 = (objc_msgSend_characterTypeFromString_(CHCharacterSetRules, v40, v39, v41, v42, v43) >> 20) & 1;
    }
  }

LABEL_17:
  return v38;
}

uint64_t sub_1837A536C(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1EA84CF30 != -1)
  {
    dispatch_once(&qword_1EA84CF30, &unk_1EF1BDCE0);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = qword_1EA84CF28;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v15, v19, 16, v4);
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = objc_msgSend_numberFromString_(*(*(&v15 + 1) + 8 * i), v5, v1, v6, v7, v8, v15);
        v13 = v12 == 0;

        if (!v13)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v15, v19, 16, v8);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

void sub_1837A54E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49[3] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], a2, @"en_US", a4, a5, a6);
  v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  objc_msgSend_setNumberStyle_(v7, v8, 1, v9, v10, v11);
  objc_msgSend_setLocale_(v7, v12, v6, v13, v14, v15);
  v20 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v16, @"de_DE", v17, v18, v19);
  v21 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  objc_msgSend_setNumberStyle_(v21, v22, 1, v23, v24, v25);
  objc_msgSend_setLocale_(v21, v26, v20, v27, v28, v29);
  v34 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v30, @"en_IN", v31, v32, v33);
  v35 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  objc_msgSend_setNumberStyle_(v35, v36, 1, v37, v38, v39);
  objc_msgSend_setLocale_(v35, v40, v34, v41, v42, v43);
  v49[0] = v7;
  v49[1] = v21;
  v49[2] = v35;
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v44, v49, 3, v45, v46);
  v48 = qword_1EA84CF28;
  qword_1EA84CF28 = v47;
}

BOOL sub_1837A56A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  objc_msgSend_setNumberStyle_(v5, v6, 1, v7, v8, v9);
  objc_msgSend_setLocale_(v5, v10, v4, v11, v12, v13);
  v18 = objc_msgSend_numberFromString_(v5, v14, v3, v15, v16, v17);
  v19 = v18 != 0;

  return v19;
}

BOOL sub_1837A576C(void *a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (objc_msgSend_length(v2, v3, v4, v5, v6, v7))
  {
    if (qword_1EA84CF38 != -1)
    {
      dispatch_once(&qword_1EA84CF38, &unk_1EF1BDD00);
    }

    v13 = MEMORY[0x1E6999A88];
    v14 = objc_msgSend_length(v2, v8, v9, v10, v11, v12);
    v52 = objc_msgSend_scanString_range_configuration_(v13, v15, v2, 0, v14, qword_1EA84CF40);
    v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v22 = v52;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v54, v58, 16, v24);
    if (v30)
    {
      v31 = *v55;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v55 != v31)
          {
            objc_enumerationMutation(v22);
          }

          v33 = *(*(&v54 + 1) + 8 * i);
          if (objc_msgSend_urlificationRange(v33, v25, v26, v27, v28, v29) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = MEMORY[0x1E696B098];
            v35 = objc_msgSend_urlificationRange(v33, v25, v26, v27, v28, v29);
            v39 = objc_msgSend_valueWithRange_(v34, v36, v35, v36, v37, v38);
            objc_msgSend_addObject_(v21, v40, v39, v41, v42, v43);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v54, v58, 16, v29);
      }

      while (v30);
    }

    if (a2)
    {
      v49 = v21;
      *a2 = v21;
    }

    v50 = objc_msgSend_count(v21, v44, v45, v46, v47, v48) != 0;
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

uint64_t sub_1837A59D8()
{
  v0 = objc_alloc(MEMORY[0x1E6999A90]);
  v4 = objc_msgSend_initWithScannerType_passiveIntent_(v0, v1, 0, 1, v2, v3);
  v5 = qword_1EA84CF40;
  qword_1EA84CF40 = v4;

  v10 = qword_1EA84CF40;

  return objc_msgSend_setSpotlightSuggestionsEnabled_(v10, v6, 0, v7, v8, v9);
}

BOOL sub_1837A5A34(void *a1)
{
  v1 = a1;
  if (objc_msgSend_containsString_(v1, v2, @"〒", v3, v4, v5))
  {
    v8 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v6, @"^[0-9]\\s?[0-9]\\s?[0-9]\\s?-\\s?[0-9]\\s?[0-9]\\s?[0-9]\\s?[0-9]$", 0, 0, v7);
    v14 = objc_msgSend_length(v1, v9, v10, v11, v12, v13);
    v16 = objc_msgSend_firstMatchInString_options_range_(v8, v15, v1, 0, 1, v14 - 1);
    v17 = v16 != 0;

    return v17;
  }

  else
  {

    return 0;
  }
}

BOOL sub_1837A5B20(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @" ", &stru_1EF1C0318, a5, a6);
  v11 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v7, @"0oO°.", v8, v9, v10);
  v12 = sub_1837A4F0C(v6, v11);

  return v12;
}

BOOL sub_1837A5BBC(void *a1)
{
  v6 = a1;
  if (qword_1EA84CF50 != -1)
  {
    dispatch_once(&qword_1EA84CF50, &unk_1EF1BDD20);
  }

  if (objc_msgSend_length(v6, v1, v2, v3, v4, v5) < 2)
  {

    return 0;
  }

  else
  {
    v12 = qword_1EA84CF48;
    v13 = objc_msgSend_length(v6, v7, v8, v9, v10, v11);
    v15 = objc_msgSend_firstMatchInString_options_range_(v12, v14, v6, 0, 0, v13);
    v16 = v15 != 0;

    return v16;
  }
}

void sub_1837A5C80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"^\\s*((\\S)(?:\\s*\\2)*)\\s*$", 0, 0, a6);
  v7 = qword_1EA84CF48;
  qword_1EA84CF48 = v6;
}

BOOL sub_1837A5CD0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @" ", &stru_1EF1C0318, a5, a6);
  if (qword_1EA84CF60 != -1)
  {
    dispatch_once(&qword_1EA84CF60, &unk_1EF1BDD40);
  }

  v7 = sub_1837A4F0C(v6, qword_1EA84CF58);

  return v7;
}

void sub_1837A5D5C()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = qword_1EA84CF58;
  qword_1EA84CF58 = v0;

  v2 = qword_1EA84CF58;
  v42 = objc_msgSend_ch_mathOperatorSet(MEMORY[0x1E696AB08], v3, v4, v5, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v2, v8, v42, v9, v10, v11);

  v12 = qword_1EA84CF58;
  v43 = objc_msgSend_ch_mathDecimalSeparatorCharSet(MEMORY[0x1E696AB08], v13, v14, v15, v16, v17);
  objc_msgSend_formUnionWithCharacterSet_(v12, v18, v43, v19, v20, v21);

  v22 = qword_1EA84CF58;
  v44 = objc_msgSend_ch_smallCharacterSet(MEMORY[0x1E696AB08], v23, v24, v25, v26, v27);
  objc_msgSend_formUnionWithCharacterSet_(v22, v28, v44, v29, v30, v31);

  v32 = qword_1EA84CF58;
  v45 = objc_msgSend_ch_synthesisHallucinationProneCharSet(MEMORY[0x1E696AB08], v33, v34, v35, v36, v37);
  objc_msgSend_formUnionWithCharacterSet_(v32, v38, v45, v39, v40, v41);
}

BOOL sub_1837A5EA4(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v2, @"0", v3, v4, v5);
  v10 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v1, v7, v6, -1, v8, v9);

  if (v10 < 1)
  {

    return 0;
  }

  else
  {
    v16 = objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v11, v12, v13, v14, v15);
    v20 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v1, v17, v16, -1, v18, v19);

    return v20 == v10;
  }
}

uint64_t sub_1837A5F98(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_ch_mathExclusiveSymbolSet(MEMORY[0x1E696AB08], v2, v3, v4, v5, v6);
  v11 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v1, v8, v7, 1, v9, v10);

  v16 = objc_msgSend_containsString_(v1, v12, @"=", v13, v14, v15);
  if (v11 > 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = 0;
  }

  else if (sub_1837A576C(v1, 0))
  {
    v18 = 1;
  }

  else
  {
    v24 = objc_msgSend_ch_mathDigitsCharSet(MEMORY[0x1E696AB08], v19, v20, v21, v22, v23);
    v28 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v1, v25, v24, 1, v26, v27);

    v34 = objc_msgSend_ch_mathOperatorSet(MEMORY[0x1E696AB08], v29, v30, v31, v32, v33);
    v39 = objc_msgSend_indexesOfCharacters_(v1, v35, v34, v36, v37, v38);

    v45 = objc_msgSend_count(v39, v40, v41, v42, v43, v44);
    v50 = objc_msgSend_containsIndex_(v39, v46, 0, v47, v48, v49);
    v56 = objc_msgSend_length(v1, v51, v52, v53, v54, v55);
    v18 = (v50 | objc_msgSend_containsIndex_(v39, v57, v56 - 1, v58, v59, v60) | (v45 == 0)) & (v28 < 1);
  }

  return v18;
}

uint64_t sub_1837A6154(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4, v5, v6);
  v12 = objc_msgSend_indexesOfCharacters_(v1, v8, v7, v9, v10, v11);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1837A6288;
  v19[3] = &unk_1E6DDE138;
  v19[4] = &v20;
  objc_msgSend_enumerateRangesUsingBlock_(v12, v13, v19, v14, v15, v16);
  v17 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v17;
}

void sub_1837A6240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1837A6260(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_1837A6288(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a3 > 1;
  *a4 = *(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t sub_1837A62B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v10 = objc_msgSend_length(v3, v5, v6, v7, v8, v9);
  v11 = sub_1837A42D4(v3, v10, 2, &v23, &v21 + 1);
  v17 = objc_msgSend_length(v4, v12, v13, v14, v15, v16);
  v18 = sub_1837A42D4(v4, v17, 2, &v22, &v21);
  v19 = sub_1837A63B4(v11, v23, v18, v22);
  free(v11);
  free(v18);

  return v19;
}

uint64_t sub_1837A63B4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return a4 + a2;
  }

  v6 = a4 + 1;
  if (a4 != -1)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  p_p = &__p;
  v35 = 0;
  v7 = a2 + 1;
  if (a2 != -1)
  {
    if (v7 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  v9 = __p;
  v10 = 2;
  if (v6 <= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = a4 + 1;
  }

  if (v7 > 2)
  {
    v10 = a2 + 1;
  }

  v12 = *__p;
  v13 = v11 - 1;
  v14 = 1;
  do
  {
    v15 = v12;
    v16 = *(a1 - 4 + 4 * v14);
    v12 = v9[3 * v14];
    v17 = v15 + 1;
    v19 = v12 + 1;
    v18 = *v12;
    v20 = a3;
    v21 = v13;
    do
    {
      v22 = *v20++;
      v23 = fmin((*v17 + 1), (v18 + 1));
      if (v16 == v22)
      {
        v24 = *(v17 - 1);
      }

      else
      {
        v24 = *(v17 - 1) + 1;
      }

      v18 = fmin(v23, v24);
      *v19++ = v18;
      ++v17;
      --v21;
    }

    while (v21);
    ++v14;
  }

  while (v14 != v10);
  v8 = *(v9[3 * a2] - 8);
  v25 = v32;
  v26 = v9;
  if (v32 != v9)
  {
    for (i = v32; i != v9; v25 = i)
    {
      v29 = *(i - 3);
      i -= 3;
      v28 = v29;
      if (v29)
      {
        *(v25 - 2) = v28;
        operator delete(v28);
      }
    }

    v26 = __p;
  }

  v32 = v9;
  operator delete(v26);
  return v8;
}

uint64_t sub_1837A67B8(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v1 = a1;
  v4 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v26, v30, 16, v3);
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v1);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_count(v13, v5, v6, v7, v8, v9, v26) >= 2)
        {
          v14 = objc_msgSend_objectAtIndexedSubscript_(v13, v5, 0, v7, v8, v9);
          v19 = objc_msgSend_objectAtIndexedSubscript_(v13, v15, 1, v16, v17, v18);
          isEqualToString = objc_msgSend_isEqualToString_(v14, v20, v19, v21, v22, v23);

          v4 += (isEqualToString ^ 1) & 1;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v5, &v26, v30, 16, v9);
    }

    while (v10);
  }

  return v4;
}

id sub_1837A695C(void *a1, void *a2)
{
  v299[2] = *MEMORY[0x1E69E9840];
  v291 = a1;
  v292 = a2;
  v293 = objc_msgSend_composedCharacters(v291, v3, v4, v5, v6, v7);
  v294 = objc_msgSend_composedCharacters(v292, v8, v9, v10, v11, v12);
  v23 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
  for (i = 0; i < objc_msgSend_count(v293, v18, v19, v20, v21, v22) + 1; ++i)
  {
    v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
    objc_msgSend_addObject_(v23, v31, v30, v32, v33, v34);

    for (j = 0; j < objc_msgSend_count(v294, v35, v36, v37, v38, v39) + 1; ++j)
    {
      v41 = objc_msgSend_objectAtIndexedSubscript_(v23, v18, i, v20, v21, v22);
      v47 = objc_msgSend_array(MEMORY[0x1E695DF70], v42, v43, v44, v45, v46);
      objc_msgSend_addObject_(v41, v48, v47, v49, v50, v51);
    }
  }

  for (k = 1; k < objc_msgSend_count(v293, v25, v26, v27, v28, v29) + 1; k = v58 + 1)
  {
    v58 = k - 1;
    v59 = objc_msgSend_objectAtIndexedSubscript_(v23, v53, k - 1, v55, v56, v57);
    v64 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, 0, v61, v62, v63);
    v70 = objc_msgSend_mutableCopy(v64, v65, v66, v67, v68, v69);

    v299[0] = &stru_1EF1C0318;
    v75 = objc_msgSend_objectAtIndexedSubscript_(v293, v71, v58, v72, v73, v74);
    v299[1] = v75;
    v79 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v76, v299, 2, v77, v78);
    objc_msgSend_addObject_(v70, v80, v79, v81, v82, v83);

    v88 = objc_msgSend_objectAtIndexedSubscript_(v23, v84, ++v58, v85, v86, v87);
    objc_msgSend_setObject_atIndexedSubscript_(v88, v89, v70, 0, v90, v91);
  }

  for (m = 1; m < objc_msgSend_count(v294, v53, v54, v55, v56, v57) + 1; m = v99 + 1)
  {
    v98 = objc_msgSend_objectAtIndexedSubscript_(v23, v93, 0, v95, v96, v97);
    v99 = m - 1;
    v104 = objc_msgSend_objectAtIndexedSubscript_(v98, v100, m - 1, v101, v102, v103);
    v110 = objc_msgSend_mutableCopy(v104, v105, v106, v107, v108, v109);

    v115 = objc_msgSend_objectAtIndexedSubscript_(v294, v111, v99, v112, v113, v114);
    v298[0] = v115;
    v298[1] = &stru_1EF1C0318;
    v119 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v116, v298, 2, v117, v118);
    objc_msgSend_addObject_(v110, v120, v119, v121, v122, v123);

    v128 = objc_msgSend_objectAtIndexedSubscript_(v23, v124, 0, v125, v126, v127);
    objc_msgSend_setObject_atIndexedSubscript_(v128, v129, v110, ++v99, v130, v131);
  }

  for (n = 1; n < objc_msgSend_count(v293, v93, v94, v95, v96, v97) + 1; ++n)
  {
    for (ii = 1; ii < objc_msgSend_count(v294, v133, v134, v135, v136, v137) + 1; ++ii)
    {
      v139 = objc_msgSend_objectAtIndexedSubscript_(v23, v93, n - 1, v95, v96, v97);
      v144 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, ii, v141, v142, v143);
      v150 = objc_msgSend_mutableCopy(v144, v145, v146, v147, v148, v149);

      v155 = objc_msgSend_objectAtIndexedSubscript_(v23, v151, n, v152, v153, v154);
      v160 = objc_msgSend_objectAtIndexedSubscript_(v155, v156, ii - 1, v157, v158, v159);
      v166 = objc_msgSend_mutableCopy(v160, v161, v162, v163, v164, v165);

      v171 = objc_msgSend_objectAtIndexedSubscript_(v23, v167, n - 1, v168, v169, v170);
      v176 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, ii - 1, v173, v174, v175);
      v182 = objc_msgSend_mutableCopy(v176, v177, v178, v179, v180, v181);

      v297[0] = &stru_1EF1C0318;
      v187 = objc_msgSend_objectAtIndexedSubscript_(v293, v183, n - 1, v184, v185, v186);
      v297[1] = v187;
      v191 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v188, v297, 2, v189, v190);
      objc_msgSend_addObject_(v150, v192, v191, v193, v194, v195);

      v200 = objc_msgSend_objectAtIndexedSubscript_(v294, v196, ii - 1, v197, v198, v199);
      v296[0] = v200;
      v296[1] = &stru_1EF1C0318;
      v204 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v201, v296, 2, v202, v203);
      objc_msgSend_addObject_(v166, v205, v204, v206, v207, v208);

      v213 = objc_msgSend_objectAtIndexedSubscript_(v294, v209, ii - 1, v210, v211, v212);
      v295[0] = v213;
      v218 = objc_msgSend_objectAtIndexedSubscript_(v293, v214, n - 1, v215, v216, v217);
      v295[1] = v218;
      v222 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v219, v295, 2, v220, v221);
      objc_msgSend_addObject_(v182, v223, v222, v224, v225, v226);

      v231 = objc_msgSend_objectAtIndexedSubscript_(v23, v227, n, v228, v229, v230);
      objc_msgSend_setObject_atIndexedSubscript_(v231, v232, v182, ii, v233, v234);

      v235 = sub_1837A67B8(v166);
      v240 = objc_msgSend_objectAtIndexedSubscript_(v23, v236, n, v237, v238, v239);
      v245 = objc_msgSend_objectAtIndexedSubscript_(v240, v241, ii, v242, v243, v244);
      LODWORD(v235) = v235 < sub_1837A67B8(v245);

      if (v235)
      {
        v250 = objc_msgSend_objectAtIndexedSubscript_(v23, v246, n, v247, v248, v249);
        objc_msgSend_setObject_atIndexedSubscript_(v250, v251, v166, ii, v252, v253);
      }

      v254 = sub_1837A67B8(v150);
      v259 = objc_msgSend_objectAtIndexedSubscript_(v23, v255, n, v256, v257, v258);
      v264 = objc_msgSend_objectAtIndexedSubscript_(v259, v260, ii, v261, v262, v263);
      LODWORD(v254) = v254 < sub_1837A67B8(v264);

      if (v254)
      {
        v269 = objc_msgSend_objectAtIndexedSubscript_(v23, v265, n, v266, v267, v268);
        objc_msgSend_setObject_atIndexedSubscript_(v269, v270, v150, ii, v271, v272);
      }
    }
  }

  v273 = objc_msgSend_count(v293, v133, v134, v135, v136, v137);
  v278 = objc_msgSend_objectAtIndexedSubscript_(v23, v274, v273, v275, v276, v277);
  v284 = objc_msgSend_count(v294, v279, v280, v281, v282, v283);
  v289 = objc_msgSend_objectAtIndexedSubscript_(v278, v285, v284, v286, v287, v288);

  return v289;
}

uint64_t sub_1837A7234(void *a1)
{
  v1 = a1;
  v7 = objc_msgSend_lowercaseString(v1, v2, v3, v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v1, v8, v7, v9, v10, v11))
  {
    v17 = 0;
  }

  else
  {
    v18 = objc_msgSend_uppercaseString(v1, v12, v13, v14, v15, v16);
    if (objc_msgSend_isEqualToString_(v1, v19, v18, v20, v21, v22))
    {
      v17 = 0;
    }

    else
    {
      v28 = objc_msgSend_capitalizedString(v1, v23, v24, v25, v26, v27);
      isEqualToString = objc_msgSend_isEqualToString_(v1, v29, v28, v30, v31, v32);

      v17 = isEqualToString ^ 1u;
    }
  }

  return v17;
}

void sub_1837A72EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_1837A7338(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = *MEMORY[0x1E69E9840];
  objc_msgSend_componentsSeparatedByString_(a1, a2, @" ", a4, a5, a6);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v58, v62, 16, v7);
  if (v8)
  {
    v57 = *v59;
    v14 = 0x1E696A000uLL;
    do
    {
      v15 = 0;
      v56 = v8;
      do
      {
        if (*v59 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * v15);
        v17 = objc_msgSend_letterCharacterSet(*(v14 + 2824), v9, v10, v11, v12, v13);
        v22 = objc_msgSend_rangeOfCharacterFromSet_(v16, v18, v17, v19, v20, v21);

        v28 = objc_msgSend_decimalDigitCharacterSet(*(v14 + 2824), v23, v24, v25, v26, v27);
        v33 = objc_msgSend_rangeOfCharacterFromSet_(v16, v29, v28, v30, v31, v32);

        v34 = v14;
        v39 = objc_msgSend_characterSetWithCharactersInString_(*(v14 + 2824), v35, @",", v36, v37, v38);
        v44 = objc_msgSend_rangeOfCharacterFromSet_(v16, v40, v39, v41, v42, v43);
        v46 = v45;

        v14 = v34;
        if (v44 != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v48 = objc_msgSend_length(v16, v9, v10, v11, v12, v13);
          v50 = v48 - 1 < v44 || v48 - 1 - v44 >= v46;
          v51 = v33 == 0x7FFFFFFFFFFFFFFFLL || v22 == 0x7FFFFFFFFFFFFFFFLL;
          v52 = 1;
          if (!v51)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v50 = 0;
          v53 = v33 == 0x7FFFFFFFFFFFFFFFLL || v22 == 0x7FFFFFFFFFFFFFFFLL;
          v52 = 1;
          if (!v53)
          {
            goto LABEL_30;
          }
        }

        if (v50)
        {
          goto LABEL_30;
        }

        ++v15;
      }

      while (v56 != v15);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v58, v62, 16, v13);
    }

    while (v8);
  }

  v52 = 0;
LABEL_30:

  return v52;
}

id sub_1837A75A8(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v155 = *MEMORY[0x1E69E9840];
  v141 = objc_msgSend_componentsSeparatedByString_(a1, a2, @" ", a4, a5, a6);
  v149 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  v148 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v11, v12, v13, v14, v15);
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  obj = v141;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v150, v154, 16, v17);
  if (v23)
  {
    v24 = 0;
    v144 = *v151;
    do
    {
      v145 = v23;
      for (i = 0; i != v145; ++i)
      {
        if (*v151 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v150 + 1) + 8 * i);
        v26 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v18, v19, v20, v21, v22);
        v31 = objc_msgSend_rangeOfCharacterFromSet_(v25, v27, v26, v28, v29, v30);

        v37 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v32, v33, v34, v35, v36);
        v42 = objc_msgSend_rangeOfCharacterFromSet_(v25, v38, v37, v39, v40, v41);

        v47 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v43, @",", v44, v45, v46);
        v52 = objc_msgSend_rangeOfCharacterFromSet_(v25, v48, v47, v49, v50, v51);

        v59 = v31 != 0x7FFFFFFFFFFFFFFFLL && v42 != 0x7FFFFFFFFFFFFFFFLL;
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v60 = v25;
          if (!v59)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v128 = v52 != objc_msgSend_length(v25, v53, v54, v55, v56, v57) - 1;
          v60 = v25;
          if (!v59 && !v128)
          {
LABEL_38:
            v89 = v60;
            goto LABEL_39;
          }
        }

        v147 = v60;
        v66 = v60;
        do
        {
          if (v52 >= v31 || v52 >= v42)
          {
            v68 = v52 + 1;
            if (v52 >= v31)
            {
              v69 = v31;
            }

            else
            {
              v69 = v52 + 1;
            }

            if (v52 >= v42)
            {
              v68 = v42;
            }

            if (v31 < v42)
            {
              v67 = v68;
              objc_msgSend_substringWithRange_(v66, v61, 0, v68, v64, v65);
            }

            else
            {
              v67 = v69;
              objc_msgSend_substringWithRange_(v66, v61, 0, v69, v64, v65);
            }
          }

          else
          {
            v67 = v52 + 1;
            objc_msgSend_substringWithRange_(v66, v61, 0, v52 + 1, v64, v65);
          }
          v70 = ;
          objc_msgSend_addObject_(v149, v71, v70, v72, v73, v74);
          v80 = objc_msgSend_length(v70, v75, v76, v77, v78, v79) + v24;
          objc_msgSend_addIndex_(v148, v81, v80, v82, v83, v84);
          v89 = objc_msgSend_substringFromIndex_(v66, v85, v67, v86, v87, v88);

          v95 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v90, v91, v92, v93, v94);
          v31 = objc_msgSend_rangeOfCharacterFromSet_(v89, v96, v95, v97, v98, v99);

          v105 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v100, v101, v102, v103, v104);
          v42 = objc_msgSend_rangeOfCharacterFromSet_(v89, v106, v105, v107, v108, v109);

          v114 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v110, @",", v111, v112, v113);
          v52 = objc_msgSend_rangeOfCharacterFromSet_(v89, v115, v114, v116, v117, v118);

          v125 = v31 != 0x7FFFFFFFFFFFFFFFLL && v42 != 0x7FFFFFFFFFFFFFFFLL;
          v126 = v52 != 0x7FFFFFFFFFFFFFFFLL && v52 != objc_msgSend_length(v147, v119, v120, v121, v122, v123) - 1;

          v24 = v80 + 1;
          v127 = v125 || v126;
          v66 = v89;
        }

        while (v127);
LABEL_39:
        v129 = objc_msgSend_length(v89, v61, v62, v63, v64, v65);
        objc_msgSend_addObject_(v149, v130, v89, v131, v132, v133);

        v24 += v129 + 1;
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v150, v154, 16, v22);
    }

    while (v23);
  }

  if (a2)
  {
    v138 = v148;
    *a2 = v148;
  }

  v139 = objc_msgSend_componentsJoinedByString_(v149, v134, @" ", v135, v136, v137);

  return v139;
}

void *sub_1837A7AAC(void *result, unint64_t a2)
{
  v2 = result[6];
  if (v2 >= a2)
  {
    ++*(*(result[4] + 8) + 24);
    v5 = result[6];
    v4 = a2 >= v5;
    v6 = a2 - v5;
    if (v4 && v6 < result[7])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = a2 >= v2;
    v3 = a2 - v2;
    v4 = !v4 || v3 >= result[7];
    if (!v4)
    {
LABEL_12:
      ++*(*(result[5] + 8) + 24);
    }
  }

  return result;
}

id sub_1837A7B08(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  if (!objc_msgSend_count(v3, v11, v12, v13, v14, v15) || !objc_msgSend_count(v4, v16, v17, v18, v19, v20))
  {
    goto LABEL_26;
  }

  v26 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v21, v22, v23, v24, v25);
  v32 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v27, v28, v29, v30, v31);
  v38 = objc_msgSend_firstObject(v3, v33, v34, v35, v36, v37);
  objc_msgSend_addIndexes_(v26, v39, v38, v40, v41, v42);

  v48 = objc_msgSend_firstObject(v4, v43, v44, v45, v46, v47);
  objc_msgSend_addIndexes_(v32, v49, v48, v50, v51, v52);
  v53 = 0;
  v54 = 0;
LABEL_4:

  while (1)
  {
    v60 = v53;
    if (v53 >= objc_msgSend_count(v3, v55, v56, v57, v58, v59) || v54 >= objc_msgSend_count(v4, v61, v62, v63, v64, v65))
    {
      break;
    }

    isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v26, v61, v32, v63, v64, v65);
    if (isEqualToIndexSet)
    {
      if (objc_msgSend_count(v26, v66, v67, v68, v69, v70))
      {
        v77 = objc_msgSend_copy(v26, v72, v73, v74, v75, v76);
        objc_msgSend_addObject_(v10, v78, v77, v79, v80, v81);
      }

      objc_msgSend_removeAllIndexes(v26, v72, v73, v74, v75, v76);
      objc_msgSend_removeAllIndexes(v32, v82, v83, v84, v85, v86);
    }

    else
    {
      if (objc_msgSend_containsIndexes_(v26, v66, v32, v68, v69, v70))
      {
        goto LABEL_19;
      }

      if ((objc_msgSend_containsIndexes_(v32, v55, v26, v57, v58, v59) & 1) == 0)
      {
        objc_msgSend_removeAllObjects(v10, v87, v88, v89, v90, v91);
        break;
      }
    }

    v53 = v60 + 1;
    if (v60 + 1 >= objc_msgSend_count(v3, v87, v88, v89, v90, v91))
    {
      if (isEqualToIndexSet)
      {
        v53 = v60 + 1;
LABEL_19:
        if (++v54 < objc_msgSend_count(v4, v55, v56, v57, v58, v59))
        {
          v48 = objc_msgSend_objectAtIndex_(v4, v55, v54, v57, v58, v59);
          objc_msgSend_addIndexes_(v32, v97, v48, v98, v99, v100);
          goto LABEL_4;
        }
      }
    }

    else
    {
      v92 = objc_msgSend_objectAtIndex_(v3, v55, v60 + 1, v57, v58, v59);
      objc_msgSend_addIndexes_(v26, v93, v92, v94, v95, v96);

      if (isEqualToIndexSet)
      {
        goto LABEL_19;
      }
    }
  }

  if (objc_msgSend_count(v26, v61, v62, v63, v64, v65) || objc_msgSend_count(v32, v101, v102, v103, v104, v105))
  {
    objc_msgSend_removeAllObjects(v10, v101, v102, v103, v104, v105);
  }

LABEL_26:

  return v10;
}

id sub_1837A7E0C(void *a1, uint64_t a2)
{
  v3 = a1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v9 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v4, v5, v6, v7, v8);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1837A7F6C;
  v22[3] = &unk_1E6DDE188;
  v25 = a2;
  v10 = v9;
  v23 = v10;
  v24 = &v26;
  objc_msgSend_enumerateIndexesUsingBlock_(v3, v11, v22, v12, v13, v14);
  if (*(v27 + 24) == 1)
  {
    v20 = objc_msgSend_copy(v10, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v20;
}

void sub_1837A7F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837A7F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1837A7F6C(uint64_t result, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = **(result + 48);
  if (a2 < (*(*(result + 48) + 8) - v6) >> 3)
  {
    return objc_msgSend_addIndex_(*(result + 32), a2, *(v6 + 8 * a2), a4, a5, a6);
  }

  *(*(*(result + 40) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

id sub_1837A7FA4(void *a1)
{
  v89 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3, v4, v5, v6) > 1)
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v14 = v1;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v84, v88, 16, v16);
    if (v22)
    {
      v23 = *v85;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v85 != v23)
          {
            objc_enumerationMutation(v14);
          }

          objc_msgSend_ch_CGRectValue(*(*(&v84 + 1) + 8 * i), v17, v18, v19, v20, v21, v84);
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          for (j = 0; ; ++j)
          {
            if (j >= objc_msgSend_count(v13, v25, v26, v27, v28, v29))
            {
              v58 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v39, v40, v41, v42, v43, v31, v33, v35, v37);
              objc_msgSend_addObject_(v13, v59, v58, v60, v61, v62);
              goto LABEL_14;
            }

            v44 = objc_msgSend_objectAtIndexedSubscript_(v13, v39, j, v41, v42, v43);
            objc_msgSend_ch_CGRectValue(v44, v45, v46, v47, v48, v49);
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v57 = v56;

            v91.origin.x = v51;
            v91.origin.y = v53;
            v91.size.width = v55;
            v91.size.height = v57;
            v94.origin.x = v31;
            v94.origin.y = v33;
            v94.size.width = v35;
            v94.size.height = v37;
            if (CGRectIntersectsRect(v91, v94))
            {
              break;
            }
          }

          v92.origin.x = v51;
          v92.origin.y = v53;
          v92.size.width = v55;
          v92.size.height = v57;
          v95.origin.x = v31;
          v95.origin.y = v33;
          v95.size.width = v35;
          v95.size.height = v37;
          v93 = CGRectUnion(v92, v95);
          v58 = objc_msgSend_ch_valueWithCGRect_(MEMORY[0x1E696B098], v63, v64, v65, v66, v67, v93.origin.x, v93.origin.y, v93.size.width, v93.size.height);
          objc_msgSend_setObject_atIndexedSubscript_(v13, v68, v58, j, v69, v70);
LABEL_14:
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v84, v88, 16, v21);
      }

      while (v22);
    }

    v76 = objc_msgSend_count(v13, v71, v72, v73, v74, v75);
    if (v76 == objc_msgSend_count(v14, v77, v78, v79, v80, v81))
    {
      v82 = v13;
    }

    else
    {
      v82 = sub_1837A7FA4(v13);
    }

    v12 = v82;
  }

  else
  {
    v12 = v1;
  }

  return v12;
}

double sub_1837A82B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if ((*a1 - 0x10000) >> 20)
  {
    v10 = 1;
    v9 = *a1;
  }

  else
  {
    v9 = ((v8 - 0x10000) >> 10) | 0xFFFFD800;
    v30[1] = v8 & 0x3FF | 0xDC00;
    v10 = 2;
  }

  v30[0] = v9;
  v14 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], a2, v30, v10, a5, a6);
  v16 = *a2;
  v15 = *(a2 + 1);
  v17 = 0.0;
  if (v15 != *a2)
  {
    v18 = 0;
    v19 = 0;
    while (*(v16 + v18 + 4) >= 0.0001)
    {
      v20 = *(v16 + v18);
      if (v20 != *a1)
      {
        if ((v20 - 0x10000) >> 20)
        {
          v21 = *(v16 + v18);
          v22 = 1;
        }

        else
        {
          v21 = ((v20 - 0x10000) >> 10) | 0xFFFFD800;
          v31[1] = v20 & 0x3FF | 0xDC00;
          v22 = 2;
        }

        v31[0] = v21;
        v23 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v11, v31, v22, v12, v13);
        v28 = objc_msgSend_caseInsensitiveCompare_(v14, v24, v23, v25, v26, v27);

        if (!v28)
        {
          v17 = (*(*a2 + v18 + 4) / (*(*a2 + v18 + 4) + *(a1 + 4)));
          break;
        }

        v16 = *a2;
        v15 = *(a2 + 1);
      }

      ++v19;
      v18 += 8;
      if (v19 >= (v15 - v16) >> 3)
      {
        break;
      }
    }
  }

  return v17;
}

id sub_1837A8464(void *a1, void *a2, void *a3, int a4, char a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v22 = objc_msgSend_string(MEMORY[0x1E696AD60], v12, v13, v14, v15, v16);
  if (v11 || objc_msgSend_length(v9, v17, v18, v19, v20, v21) >= 2 && (v27 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v9, v17, 1, v19, v20, v21), objc_msgSend_substringWithRange_(v9, v28, v27, v28, v29, v30), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = objc_msgSend_lengthOfBytesUsingEncoding_(v11, v17, 4, v19, v20, v21, v11);
    v25 = a5;
    v26 = v23 != 1;
  }

  else
  {
    v25 = a5;
    v40 = 0;
    v26 = 1;
  }

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = v26;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v31 = v9;
  v32 = objc_msgSend_length(v9, v17, v24, v19, v20, v21, v40);
  if (a4)
  {
    v33 = 258;
  }

  else
  {
    v33 = 2;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1837A8704;
  v42[3] = &unk_1E6DDE1B0;
  v34 = v10;
  v43 = v34;
  v45 = v51;
  v46 = v49;
  v47 = a4;
  v35 = v22;
  v44 = v35;
  v48 = v25;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v31, v36, 0, v32, v33, v42);
  v37 = v44;
  v38 = v35;

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

  return v38;
}

void sub_1837A8704(uint64_t a1, void *a2)
{
  v25 = a2;
  if (objc_msgSend_rangeOfCharacterFromSet_(v25, v3, *(a1 + 32), v4, v5, v6) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v25;
  }

  else
  {
    v16 = objc_msgSend_stringByApplyingTransform_reverse_(v25, v7, *MEMORY[0x1E695DA38], *(*(*(a1 + 48) + 8) + 24), v8, v9);
    v15 = v16;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v17 = objc_msgSend_isEqualToString_(v16, v10, v25, v12, v13, v14) ^ 1;
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v10, v11, v12, v13, v14);
  if (sub_1837A4F0C(v15, v18))
  {
    v19 = *(*(*(a1 + 56) + 8) + 24);

    if (v19)
    {
      goto LABEL_12;
    }

    v24 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v24 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
LABEL_9:
      objc_msgSend_insertString_atIndex_(v24, v20, v15, 0, v22, v23);
      goto LABEL_12;
    }
  }

  objc_msgSend_appendString_(v24, v20, v15, v21, v22, v23);
LABEL_12:
  if (*(a1 + 65) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_lengthOfBytesUsingEncoding_(v15, v20, 4, v21, v22, v23) != 1;
  }

  *(*(*(a1 + 56) + 8) + 24) = v17;
}

id sub_1837A8900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v14 = a1;
  v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16, v17, v18, v19);
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v61[3] = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = objc_msgSend_length(v14, v21, v22, v23, v24, v25);
  v31 = objc_msgSend_length(v14, v26, v27, v28, v29, v30);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1837A8B50;
  v45[3] = &unk_1E6DDE228;
  v48 = v61;
  v32 = v14;
  v46 = v32;
  v49 = v60;
  v51 = a2;
  v52 = a7;
  v53 = a5;
  v54 = a6;
  v55 = a8;
  v33 = v20;
  v47 = v33;
  v50 = &v56;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v32, v34, 0, v31, 3, v45);
  if (a9)
  {
    v40 = v57[3];
    if (v40 >= objc_msgSend_length(v32, v35, v36, v37, v38, v39))
    {
      v41 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v57[3];
    }

    *a9 = v41;
  }

  v42 = v47;
  v43 = v33;

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v61, 8);

  return v43;
}

void sub_1837A8AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v30 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1837A8B50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v10 = objc_msgSend_substringFromIndex_(*(a1 + 32), v6, a3, v7, v8, v9);
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3812000000;
  v37[3] = sub_1837A8DC4;
  v37[4] = sub_1837A8DD4;
  v37[5] = &unk_183A5AC72;
  RootCursor = LXLexiconCreateRootCursor();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v16 = objc_msgSend_length(v10, v11, v12, v13, v14, v15);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1837A8DF8;
  v22[3] = &unk_1E6DDE200;
  v17 = *(a1 + 80);
  v25 = *(a1 + 56);
  v30 = v17;
  v18 = v10;
  v23 = v18;
  v31 = a3;
  v32 = *(a1 + 88);
  v26 = v36;
  v27 = v37;
  v28 = v34;
  v33 = *(a1 + 104);
  v19 = *(a1 + 40);
  v20 = *(a1 + 64);
  v24 = v19;
  v29 = v20;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v18, v21, 0, v16, 3, v22);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }
}

void sub_1837A8D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v33 - 136), 8);
  sub_1836C040C((v32 + 48));

  _Unwind_Resume(a1);
}

uint64_t sub_1837A8DC4(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void sub_1837A8DD4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1837A8DF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) != *(a1 + 88))
  {
    v15 = a3 + a4;
    v16 = *(*(*(a1 + 56) + 8) + 24);
    v17 = objc_msgSend_substringWithRange_(*(a1 + 32), v11, v16, a3 + a4 - v16, v12, v13);
    v18 = LXCursorCreateByAdvancing();
    v23 = v18;
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 48);
    *(v24 + 48) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (*(*(*(a1 + 64) + 8) + 48))
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      v27 = (a1 + 104);
      v26 = *(a1 + 104);
      v28 = *(a1 + 96);
      *(*(*(a1 + 72) + 8) + 24) = v28 + v15 == *(a1 + 120);
      *(*(*(a1 + 56) + 8) + 24) = v15;
      if (v28 + v15 > v26)
      {
        v39 = objc_msgSend_substringToIndex_(*(a1 + 32), v19, v15, v20, v21, v22);
        v33 = 0;
        if (*v27 >= v28)
        {
          v34 = *v27 - v28;
        }

        else
        {
          v34 = 0;
        }

        if (v28 < v26)
        {
          v33 = objc_msgSend_substringToIndex_(v39, v29, v34, v30, v31, v32);
        }

        v38 = v33;
        v35 = v39;
        v40 = *(a1 + 40);
        LXCursorEnumerateEntries();
        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          if (LXCursorHasChildren())
          {
            v36 = *(a1 + 96);
            v37 = *(*(a1 + 80) + 8);
            if (v36 < *(v37 + 24))
            {
              *(v37 + 24) = v36;
            }
          }
        }
      }

      if (!v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *a7 = 1;
      if (!v23)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    CFRelease(v23);
    goto LABEL_23;
  }

  *a7 = 1;
LABEL_24:
}

void sub_1837A90AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  sub_1836C040C((v20 - 88));

  _Unwind_Resume(a1);
}

void sub_1837A9128(uint64_t a1)
{
  v2 = LXEntryCopyString();
  cf = v2;
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v8 = cf;
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (!objc_msgSend_hasPrefix_(v8, v4, v9, v5, v6, v7))
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v9 = *(a1 + 32);
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = objc_msgSend_compare_(*(a1 + 40), v4, v8, v5, v6, v7);
  v15 = objc_msgSend_caseInsensitiveCompare_(*(a1 + 40), v11, v8, v12, v13, v14);
  if (v10 && !v15)
  {
    if (*(a1 + 88))
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a1 + 56) - *(a1 + 64);
    }

    v21 = objc_msgSend_substringFromIndex_(v8, v16, *(a1 + 80), v17, v18, v19);
    v22 = *(a1 + 48);
    v27 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, v20, v24, v25, v26);
    v32 = objc_msgSend_objectForKey_(v22, v28, v27, v29, v30, v31);

    if (!v32 || (v38 = objc_msgSend_length(v21, v33, v34, v35, v36, v37), v38 > objc_msgSend_length(v32, v39, v40, v41, v42, v43)))
    {
      v44 = *(a1 + 48);
      v45 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v33, v20, v35, v36, v37);
      objc_msgSend_setObject_forKey_(v44, v46, v21, v45, v47, v48);
    }
  }

LABEL_16:

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1837A92E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1837A93A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1837A93BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_1837A93D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

BOOL sub_1837A93E8(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v7 = objc_msgSend_singleScriptCodeForString_(v2, v3, v1, v4, v5, v6);
  v9 = v7 == 25 || v7 == 0;

  return v9;
}

BOOL sub_1837A9444(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v7 = objc_msgSend_singleScriptCodeForString_(v2, v3, v1, v4, v5, v6) == 25;

  return v7;
}

BOOL sub_1837A949C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v7 = objc_msgSend_singleScriptCodeForString_(v2, v3, v1, v4, v5, v6) == 8;

  return v7;
}

BOOL sub_1837A94F4(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v7 = objc_msgSend_singleScriptCodeForString_(v2, v3, v1, v4, v5, v6) == 2;

  return v7;
}

uint64_t sub_1837A954C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  isCharacterFullWidth = objc_msgSend_isCharacterFullWidth_(v2, v3, v1, v4, v5, v6);

  return isCharacterFullWidth;
}

uint64_t sub_1837A95A0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  isCharacterCJKSymbolsPunctuations = objc_msgSend_isCharacterCJKSymbolsPunctuations_(v2, v3, v1, v4, v5, v6);

  return isCharacterCJKSymbolsPunctuations;
}

uint64_t sub_1837A95F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = objc_opt_class();
  LODWORD(v3) = objc_msgSend_singleScriptCodeForString_(v6, v7, v5, v8, v9, v10);

  if (v3 == 17 || (v11 = v5, v12 = objc_opt_class(), v17 = objc_msgSend_singleScriptCodeForString_(v12, v13, v11, v14, v15, v16) & 0xFFFFFFFD, v11, v17 == 20))
  {
    isCharacterCJKSymbolsPunctuations = 1;
  }

  else
  {
    v19 = v11;
    v20 = objc_opt_class();
    isCharacterCJKSymbolsPunctuations = objc_msgSend_isCharacterCJKSymbolsPunctuations_(v20, v21, v19, v22, v23, v24);
  }

  v25 = v4;
  v26 = objc_opt_class();
  v31 = objc_msgSend_singleScriptCodeForString_(v26, v27, v25, v28, v29, v30);

  if (v31 == 17 || (v32 = v25, v33 = objc_opt_class(), v38 = objc_msgSend_singleScriptCodeForString_(v33, v34, v32, v35, v36, v37) & 0xFFFFFFFD, v32, v38 == 20))
  {
    v39 = 1;
  }

  else
  {
    v40 = v32;
    v41 = objc_opt_class();
    v39 = objc_msgSend_isCharacterCJKSymbolsPunctuations_(v41, v42, v40, v43, v44, v45);
  }

  return (isCharacterCJKSymbolsPunctuations | v39) & 1;
}

void sub_1837A97C4(void *a1@<X0>, void *a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = v3;
  v9 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v5, @"0123456789.-", v6, v7, v8);
  v19 = objc_msgSend_scannerWithString_(MEMORY[0x1E696AE88], v10, v3, v11, v12, v13);
  v20 = 0;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    if (objc_msgSend_isAtEnd(v19, v14, v15, v16, v17, v18))
    {
      *a2 = 0;
      goto LABEL_25;
    }

    objc_msgSend_scanUpToCharactersFromSet_intoString_(v19, v22, v9, 0, v23, v24);
    v46 = 0;
    if (objc_msgSend_scanFloat_(v19, v25, &v46, v26, v27, v28))
    {
      v34 = a2[2];
      if (v20 >= v34)
      {
        v35 = v20;
        v36 = v20 >> 2;
        v37 = v36 + 1;
        if ((v36 + 1) >> 62)
        {
          *a2 = 0;
          sub_18369761C();
        }

        if (v34 >> 1 > v37)
        {
          v37 = v34 >> 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v38 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          if (!(v38 >> 62))
          {
            operator new();
          }

          *a2 = 0;
          sub_183688F00();
        }

        v39 = (4 * v36);
        *v39 = v46;
        v20 = (v39 + 1);
        memcpy(0, 0, v35);
        a2[1] = v20;
        a2[2] = 0;
      }

      else
      {
        *v20 = v46;
        v20 += 4;
      }

      a2[1] = v20;
    }

    if (objc_msgSend_scanLocation(v19, v29, v30, v31, v32, v33) == v21)
    {
      break;
    }

    v21 = objc_msgSend_scanLocation(v19, v40, v41, v42, v43, v44);
    v3 = v4;
  }

  *a2 = 0;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = v4;
  v45 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v48 = v4;
    _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_ERROR, "Unable to scan floats from string %@", buf, 0xCu);
  }

LABEL_25:
}

double sub_1837A9AC8(void *a1)
{
  sub_1837A97C4(a1, v3);
  if ((v3[1] - v3[0]) == 8)
  {
    v1 = *v3[0];
LABEL_4:
    operator delete(v3[0]);
    return v1;
  }

  v1 = *MEMORY[0x1E695F060];
  if (v3[0])
  {
    goto LABEL_4;
  }

  return v1;
}

id sub_1837A9B30(void *a1)
{
  v1 = a1;
  if (qword_1EA84DB00 != -1)
  {
    dispatch_once(&qword_1EA84DB00, &unk_1EF1BDD60);
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_precomposedStringWithCanonicalMapping(v1, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_length(v8, v9, v10, v11, v12, v13);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1837A9D14;
  v23[3] = &unk_1E6DDBF00;
  v15 = v2;
  v24 = v15;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v8, v16, 0, v14, 2, v23);
  v21 = objc_msgSend_componentsJoinedByString_(v15, v17, &stru_1EF1C0318, v18, v19, v20);

  return v21;
}

void sub_1837A9CA8()
{
  v0 = qword_1EA84CF68;
  qword_1EA84CF68 = &unk_1EF1EC4D8;

  v1 = qword_1EA84CF70;
  qword_1EA84CF70 = &unk_1EF1EC4F0;

  v2 = qword_1EA84CF78;
  qword_1EA84CF78 = &unk_1EF1EC508;
}

void sub_1837A9D14(uint64_t a1, void *a2)
{
  v47 = a2;
  v7 = objc_msgSend_characterAtIndex_(v47, v3, 0, v4, v5, v6);
  if (objc_msgSend_length(v47, v8, v9, v10, v11, v12) == 1 && ((v7 + 21504) >> 2) <= 0xAE8u)
  {
    v17 = (v7 - 44032);
    v18 = objc_msgSend_objectAtIndex_(qword_1EA84CF68, v13, (v7 + 21504) / 0x24Cu, v14, v15, v16);
    v19 = v17 % 0x1Cu;
    v24 = objc_msgSend_objectAtIndex_(qword_1EA84CF70, v20, (2341 * ((v17 - v19) % 0x24CuLL)) >> 16, v21, v22, v23);
    v29 = objc_msgSend_objectAtIndex_(qword_1EA84CF78, v25, v19, v26, v27, v28);
    objc_msgSend_addObject_(*(a1 + 32), v30, v18, v31, v32, v33);
    objc_msgSend_addObject_(*(a1 + 32), v34, v24, v35, v36, v37);
    if (objc_msgSend_length(v29, v38, v39, v40, v41, v42))
    {
      objc_msgSend_addObject_(*(a1 + 32), v43, v29, v44, v45, v46);
    }
  }

  else
  {
    objc_msgSend_addObject_(*(a1 + 32), v13, v47, v14, v15, v16);
  }
}

id sub_1837A9EEC(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v4 = malloc_type_malloc(a2, 0x100004077774924uLL);
    v5 = v3;
    v11 = objc_msgSend_bytes(v5, v6, v7, v8, v9, v10);
    v17 = objc_msgSend_length(v3, v12, v13, v14, v15, v16);
    if (compression_decode_buffer(v4, a2, v11, v17, 0, COMPRESSION_LZFSE) == a2)
    {
      v21 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v18, v4, a2, v19, v20);
    }

    else
    {
      v21 = 0;
    }

    free(v4);
  }

  return v21;
}

void getAlphaShape(void *a1)
{
  v1 = a1;
  memset(__p, 0, sizeof(__p));
  v7 = objc_msgSend_count(v1, v2, v3, v4, v5, v6);
  if (v7)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    sub_18369761C();
  }

  if (objc_msgSend_count(v1, v8, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_objectAtIndexedSubscript_(v1, v13, 0, v14, v15, v16);
    objc_msgSend_ch_CGPointValue(v17, v18, v19, v20, v21, v22);
    operator new();
  }

  sub_1838C505C(__p);
}

void sub_1837AA26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

id sub_1837AA2F0()
{
  if (qword_1EA84CF88 == -1)
  {
    v1 = qword_1EA84CF80;
  }

  else
  {
    dispatch_once(&qword_1EA84CF88, &unk_1EF1BDD80);
    v1 = qword_1EA84CF80;
  }

  return v1;
}

void sub_1837AA358()
{
  v0 = sub_1837AA3E8();
  if (objc_msgSend_hasANE(v0, v1, v2, v3, v4, v5))
  {
    v6 = sub_1837AA3E8();
    v19 = objc_msgSend_aneSubType(v6, v7, v8, v9, v10, v11);
    v17 = objc_msgSend_uppercaseString(v19, v12, v13, v14, v15, v16);
    v18 = qword_1EA84CF80;
    qword_1EA84CF80 = v17;
  }
}

id sub_1837AA3E8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA84CF90;
  v7 = qword_1EA84CF90;
  if (!qword_1EA84CF90)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1837AA9D4;
    v3[3] = &unk_1E6DDCCD0;
    v3[4] = &v4;
    sub_1837AA9D4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1837AA4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1837AA4C8(uint64_t a1, unint64_t a2, void *a3)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E695FED0]);
  v41[0] = &unk_1EF1ED0C0;
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v7, a1, v8, v9, v10);
  v41[1] = v11;
  v41[2] = &unk_1EF1ED0C0;
  v16 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v12, a2, v13, v14, v15);
  v41[3] = v16;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v41, 4, v18, v19);
  v40 = 0;
  v23 = objc_msgSend_initWithShape_dataType_error_(v6, v21, v20, 65568, &v40, v22);
  v24 = v40;

  if (v23)
  {
    v25 = v23;
    v31 = objc_msgSend_dataPointer(v23, v26, v27, v28, v29, v30);
    if (a1 && a2)
    {
      v32 = v31;
      v33 = 0;
      do
      {
        v35 = 0;
        do
        {
          v34 = -9.21034037 / a2;
          v36 = expf(v34 * v35);
          *(v32 + 4 * v35) = __sincosf_stret(v36 * v33);
          v35 += 2;
        }

        while (v35 < a2);
        ++v33;
        v32 += 4 * a2;
      }

      while (v33 != a1);
    }

    v37 = v23;
  }

  else if (a3)
  {
    v38 = v24;
    *a3 = v24;
  }

  return v23;
}

id sub_1837AA6D8(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_dataType(v3, v4, v5, v6, v7, v8) == a2)
  {
    v9 = v3;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E695FED0]);
    v16 = objc_msgSend_shape(v3, v11, v12, v13, v14, v15);
    v9 = objc_msgSend_initWithShape_dataType_error_(v10, v17, v16, a2, 0, v18);

    v23 = 0;
    objc_msgSend_copyIntoMultiArray_error_(v3, v19, v9, &v23, v20, v21);
  }

  return v9;
}

void sub_1837AA7A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1837AA7DC(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v2, v1, v3, v4, v5);
  v7 = MEMORY[0x1E696AEC0];
  v12 = objc_msgSend_stringByAppendingString_(v1, v8, @".size", v9, v10, v11);
  v15 = objc_msgSend_stringWithContentsOfFile_encoding_error_(v7, v13, v12, 4, 0, v14);

  if (v15)
  {
    v21 = objc_msgSend_integerValue(v15, v16, v17, v18, v19, v20);
    v24 = sub_1837A9EEC(v6, v21);
    if (v24)
    {
      v25 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v22, v24, 1, 0, v23);
      v30 = v25;
      if (v25)
      {
        v31 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"codemap", v27, v28, v29);
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

const void **sub_1837AA96C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1837AA9A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

Class sub_1837AA9D4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA84CF98)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1837AAB28;
    v4[4] = &unk_1E6DDC0E0;
    v4[5] = v4;
    v5 = xmmword_1E6DDE248;
    v6 = 0;
    qword_1EA84CF98 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EA84CF98)
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
  result = objc_getClass("_ANEDeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EA84CF90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1837AAB28()
{
  result = _sl_dlopen();
  qword_1EA84CF98 = result;
  return result;
}

const void **sub_1837AAB9C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1837AABD0(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  v4 = *(a2 + 56);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1837AB98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30)
{
  (*(*v31 + 8))(v31);
  sub_18377E7BC(&a20);
  sub_18369D8F8(&a23);

  _Unwind_Resume(a1);
}

id sub_1837ABCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 76);
  if (v7 != 2)
  {
    if (v7 != 1)
    {
LABEL_61:
      v17 = 0;
      goto LABEL_62;
    }

    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    __p[0] = v8;
    __p[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = objc_msgSend_objectForKey_(*v8, a2, @"input_diffusion_x_timestep", a4, a5, a6);
    if (v14)
    {
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = objc_msgSend_objectForKey_(*v15, v10, @"input_diffusion_x_timestep", v11, v12, v13);
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v9 = __p[1];

        if (!__p[1])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v9 = __p[1];

        if (!__p[1])
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v17 = 0;

      if (!v9)
      {
        goto LABEL_25;
      }
    }

    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v196 = *(a2 + 16);
      v197 = *(a2 + 24);
      if (v197)
      {
        goto LABEL_26;
      }

      goto LABEL_46;
    }

LABEL_25:
    v196 = *(a2 + 16);
    v197 = *(a2 + 24);
    if (v197)
    {
LABEL_26:
      atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
      v198 = *(v196 + 236);
      if (atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v198)
        {
          goto LABEL_28;
        }

LABEL_47:

        v17 = 0;
        *(a2 + 76) = 0;
        goto LABEL_62;
      }

      (v197->__on_zero_shared)(v197);
      std::__shared_weak_count::__release_weak(v197);
      if (!v198)
      {
        goto LABEL_47;
      }

LABEL_28:
      v200 = *(a2 + 32);
      v199 = *(a2 + 40);
      v218 = v199;
      if (v199)
      {
        atomic_fetch_add_explicit(&v199->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v201 = *(a2 + 16);
      v202 = *(a2 + 24);
      if (v202)
      {
        atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(__p, 0, 24);
      v204 = *v201;
      v203 = v201[1];
      if (v203 != v204)
      {
        if (((v203 - v204) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      v205 = sub_18384AC9C(v200, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v202 && !atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v202->__on_zero_shared)(v202);
        std::__shared_weak_count::__release_weak(v202);
        v206 = v218;
        if (!v218)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v206 = v218;
        if (!v218)
        {
          goto LABEL_41;
        }
      }

      if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v206->__on_zero_shared)(v206);
        std::__shared_weak_count::__release_weak(v206);
        v207 = *(a2 + 16);
        v208 = *(a2 + 24);
        if (v208)
        {
LABEL_42:
          atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
          LODWORD(v209) = *(v207 + 236);
          if (atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v209;
            if (v205 == v209)
            {
              goto LABEL_62;
            }
          }

          else
          {
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v209 = v209;
            if (v205 == v209)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_56;
        }

LABEL_53:
        v209 = *(v207 + 236);
        if (v205 == v209)
        {
          goto LABEL_62;
        }

LABEL_56:

        *(a2 + 76) = 0;
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v210 = qword_1EA84DC98;
        if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 134218240;
          *(__p + 4) = v205;
          WORD2(__p[1]) = 2048;
          *(&__p[1] + 6) = v209;
          _os_log_impl(&dword_18366B000, v210, OS_LOG_TYPE_ERROR, "Expected total Num points %zu differ from seed num points %zu", __p, 0x16u);
        }

        goto LABEL_61;
      }

LABEL_41:
      v207 = *(a2 + 16);
      v208 = *(a2 + 24);
      if (v208)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

LABEL_46:
    if (!*(v196 + 236))
    {
      goto LABEL_47;
    }

    goto LABEL_28;
  }

  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v217 = objc_msgSend_objectForKey_(*v18, a2, @"input_style_features", a4, a5, a6);
  v25 = objc_msgSend_shape(v217, v20, v21, v22, v23, v24);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 1, v27, v28, v29);
  v36 = objc_msgSend_unsignedLongValue(v30, v31, v32, v33, v34, v35);

  __p[0] = &unk_1EF1ED0D8;
  v41 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v37, v36, v38, v39, v40);
  v214 = v36;
  v212 = v19;
  __p[1] = v41;
  __p[2] = &unk_1EF1ED0F0;
  v213 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v42, __p, 3, v43, v44);

  v45 = objc_alloc(MEMORY[0x1E695FED0]);
  v48 = objc_msgSend_initWithShape_dataType_error_(v45, v46, v213, 65568, 0, v47);
  v49 = v48;
  v216 = objc_msgSend_dataPointer(v48, v50, v51, v52, v53, v54);
  v55 = v217;
  v215 = objc_msgSend_dataPointer(v217, v56, v57, v58, v59, v60);
  if (v36)
  {
    v66 = 0;
    do
    {
      v67 = objc_msgSend_strides(v48, v61, v62, v63, v64, v65);
      v72 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, 1, v69, v70, v71);
      v78 = objc_msgSend_unsignedLongValue(v72, v73, v74, v75, v76, v77);
      v84 = objc_msgSend_strides(v48, v79, v80, v81, v82, v83);
      v89 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, 2, v86, v87, v88);
      objc_msgSend_unsignedLongValue(v89, v90, v91, v92, v93, v94);

      v100 = objc_msgSend_strides(v217, v95, v96, v97, v98, v99);
      v105 = objc_msgSend_objectAtIndexedSubscript_(v100, v101, 1, v102, v103, v104);
      v111 = objc_msgSend_unsignedLongValue(v105, v106, v107, v108, v109, v110);
      v117 = objc_msgSend_strides(v217, v112, v113, v114, v115, v116);
      v122 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, 2, v119, v120, v121);
      objc_msgSend_unsignedLongValue(v122, v123, v124, v125, v126, v127);

      *(v216 + 4 * v78 * v66) = *(v215 + 4 * v111 * v66);
      v133 = objc_msgSend_strides(v48, v128, v129, v130, v131, v132);
      v138 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, 1, v135, v136, v137);
      v144 = objc_msgSend_unsignedLongValue(v138, v139, v140, v141, v142, v143);
      v150 = objc_msgSend_strides(v48, v145, v146, v147, v148, v149);
      v155 = objc_msgSend_objectAtIndexedSubscript_(v150, v151, 2, v152, v153, v154);
      v161 = objc_msgSend_unsignedLongValue(v155, v156, v157, v158, v159, v160);

      v167 = objc_msgSend_strides(v217, v162, v163, v164, v165, v166);
      v172 = objc_msgSend_objectAtIndexedSubscript_(v167, v168, 1, v169, v170, v171);
      v178 = objc_msgSend_unsignedLongValue(v172, v173, v174, v175, v176, v177);
      v184 = objc_msgSend_strides(v217, v179, v180, v181, v182, v183);
      v189 = objc_msgSend_objectAtIndexedSubscript_(v184, v185, 2, v186, v187, v188);
      v195 = objc_msgSend_unsignedLongValue(v189, v190, v191, v192, v193, v194);

      *(v216 + 4 * v144 * v66 + 4 * v161) = *(v215 + 4 * v178 * v66 + 4 * v195);
      ++v66;
    }

    while (v214 != v66);
  }

  if (v212 && !atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v212->__on_zero_shared)(v212);
    std::__shared_weak_count::__release_weak(v212);
  }

  v17 = v48;
LABEL_62:

  return v17;
}

void sub_1837AC474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_18369D8F8(&a15);
  sub_18369D8F8(&a17);

  _Unwind_Resume(a1);
}

void sub_1837AC4C0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_1837AC4C8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_1837AC508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_1837AC538(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_1837AC5D4(uint64_t a1, uint64_t a2, void *a3)
{
  v171[3] = *MEMORY[0x1E69E9840];
  v160 = a3;
  v5 = (*(*a1 + 32))(a1, a2);
  v163 = a1;
  v6 = (*(*a1 + 40))(a1, a2);
  v171[0] = &unk_1EF1ED0D8;
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v7, v5, v8, v9, v10);
  v171[1] = v11;
  v171[2] = &unk_1EF1ED0F0;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v171, 3, v13, v14);
  v16 = *(a2 + 72);
  v168 = v15;
  v17 = objc_alloc(MEMORY[0x1E695FED0]);
  v20 = objc_msgSend_initWithShape_dataType_error_(v17, v18, v168, 65568, 0, v19);
  v21 = v20;
  v22 = 1;
  v23 = 5489;
  do
  {
    v23 = v22 + 0x5851F42D4C957F2DLL * (v23 ^ (v23 >> 62));
    v170[v22++] = v23;
  }

  while (v22 != 312);
  v162 = a2;
  v170[0] = v16;
  for (i = 1; i != 312; ++i)
  {
    v16 = i + 0x5851F42D4C957F2DLL * (v16 ^ (v16 >> 62));
    v170[i] = v16;
  }

  v25 = v20;
  v31 = objc_msgSend_dataPointer(v21, v26, v27, v28, v29, v30);
  v161 = v11;
  v37 = objc_msgSend_count(v21, v32, v33, v34, v35, v36);
  if (v37)
  {
    v43 = 0;
    v44 = 0;
    v45 = v31;
    v46 = (v31 + 4 * v37);
    v164 = v46;
    do
    {
      while ((v44 & 1) != 0)
      {
        v44 ^= 1u;
        *v45++ = v42 + 0.0;
        if (v45 == v46)
        {
          goto LABEL_27;
        }
      }

      v165 = v45;
      v166 = v44;
      v47 = v170[v43];
      do
      {
        v48 = (v43 + 1) % 0x138;
        v49 = v170[v48] & 0x7FFFFFFELL | v47 & 0xFFFFFFFF80000000;
        if (v170[v48])
        {
          v50 = 0xB5026F5AA96619E9;
        }

        else
        {
          v50 = 0;
        }

        v51 = v50 ^ v170[(v43 + 156) % 0x138] ^ (v49 >> 1);
        v170[v43] = v51;
        v52 = (((v51 >> 29) & 0x555555555 ^ v51) << 17) & 0x71D67FFFEDA60000 ^ (v51 >> 29) & 0x555555555 ^ v51;
        if (v48 < 0x137)
        {
          v43 = v48 + 1;
        }

        else
        {
          v43 = v48 - 311;
        }

        v47 = v170[v43];
        if (v48 < 0x9C)
        {
          v53 = 156;
        }

        else
        {
          v53 = -156;
        }

        v54 = v170[v53 + v48];
        if (v47)
        {
          v55 = 0xB5026F5AA96619E9;
        }

        else
        {
          v55 = 0;
        }

        v56 = v55 ^ v54 ^ ((v170[v43] & 0x7FFFFFFELL | v170[v48] & 0xFFFFFFFF80000000) >> 1);
        v57 = (((v56 >> 29) & 0x555555555 ^ v56) << 17) & 0x71D67FFFEDA60000 ^ (v56 >> 29) & 0x555555555 ^ v56;
        v58 = (vcvts_n_f32_u64((v52 << 37) & 0xFFF7EEE000000000 ^ v52 ^ (((v52 << 37) & 0xFFF7EEE000000000 ^ v52) >> 43), 0x40uLL) * 2.0) + -1.0;
        v59 = (vcvts_n_f32_u64((v57 << 37) & 0xFFF7EEE000000000 ^ v57 ^ (((v57 << 37) & 0xFFF7EEE000000000 ^ v57) >> 43), 0x40uLL) * 2.0) + -1.0;
        v60 = (v59 * v59) + (v58 * v58);
        v170[v48] = v56;
      }

      while (v60 > 1.0 || v60 == 0.0);
      v61 = sqrtf((logf((v59 * v59) + (v58 * v58)) * -2.0) / v60);
      v42 = v59 * v61;
      v46 = v164;
      v44 = v166 ^ 1;
      *v165 = (v58 * v61) + 0.0;
      v45 = v165 + 1;
    }

    while (v165 + 1 != v164);
  }

LABEL_27:
  while (1)
  {
    v62 = objc_msgSend_objectAtIndexedSubscript_(v168, v38, 1, v39, v40, v41);
    v68 = v6 < objc_msgSend_unsignedLongValue(v62, v63, v64, v65, v66, v67);

    if (!v68)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      v74 = objc_msgSend_objectAtIndexedSubscript_(v168, v69, 2, v70, v71, v72);
      v80 = j < objc_msgSend_unsignedLongValue(v74, v75, v76, v77, v78, v79);

      if (!v80)
      {
        break;
      }

      v82 = objc_msgSend_strides(v21, v38, v81, v39, v40, v41);
      v87 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 1, v84, v85, v86);
      v93 = objc_msgSend_unsignedLongValue(v87, v88, v89, v90, v91, v92);
      v99 = objc_msgSend_strides(v21, v94, v95, v96, v97, v98);
      v104 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, 2, v101, v102, v103);
      *(v31 + 4 * v93 * v6 + 4 * objc_msgSend_unsignedLongValue(v104, v105, v106, v107, v108, v109) * j) = 0;
    }

    ++v6;
  }

  v110 = v162;
  v111 = v163;
  v112 = (*(*v163 + 48))(v163, v162);
  if (v112)
  {
    v113 = (*(*v163 + 56))(v163, v162);
    v167 = v114;
    v169 = *&v113;
    v115 = v21;
    v116 = v112;
    v117 = v115;
    v123 = objc_msgSend_dataPointer(v115, v118, v119, v120, v121, v122);
    v124 = v116;
    v130 = objc_msgSend_dataPointer(v116, v125, v126, v127, v128, v129);
    v136 = objc_msgSend_count(v115, v131, v132, v133, v134, v135);
    v142 = objc_msgSend_count(v116, v137, v138, v139, v140, v141);
    if (v136 && v142)
    {
      v143 = (v142 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v144 = (v136 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v143 >= v144)
      {
        v145 = (v136 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v145 = (v142 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v145 >= 0xB)
      {
        if (v143 >= v144)
        {
          v143 = (v136 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        }

        v148 = 4 * v143 + 4;
        if (v123 >= v130 + v148 || (v149 = v123 + v148, v146 = v123, v147 = v130, v130 >= v149))
        {
          v150 = v145 + 1;
          v151 = 4 * (v150 & 0x7FFFFFFFFFFFFFF8);
          v146 = v123 + v151;
          v147 = v130 + v151;
          v152 = vdupq_lane_s32(v167, 0);
          v153 = (v130 + 16);
          v154 = (v123 + 16);
          v155 = v150 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v156 = vmlaq_f32(vmulq_n_f32(*v153, v169), *v154, v152);
            v154[-1] = vmlaq_f32(vmulq_n_f32(v153[-1], v169), v154[-1], v152);
            *v154 = v156;
            v153 += 2;
            v154 += 2;
            v155 -= 8;
          }

          while (v155);
          if (v150 == (v150 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v146 = v123;
        v147 = v130;
      }

      v157 = v146 + 4;
      v158 = v147 + 4;
      do
      {
        *(v157 - 4) = (v169 * *(v158 - 4)) + (*v167.i32 * *(v157 - 4));
        if (v157 == v123 + 4 * v136)
        {
          break;
        }

        v157 += 4;
        v159 = v158 == v130 + 4 * v142;
        v158 += 4;
      }

      while (!v159);
    }

LABEL_50:

    v110 = v162;
    v111 = v163;
  }

  (*(*v111 + 24))(v111, v110, v21);
}

void sub_1837ACDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v4;
  sub_18384B030(v5, @"input_diffusion_x_timestep", v4);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = v8;
  }

  else
  {
    v7 = v8;
  }
}

void sub_1837ACE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, char a11)
{
  sub_18369D8F8(&a11);

  _Unwind_Resume(a1);
}

uint64_t sub_1837ACEA4(uint64_t a1, uint64_t a2)
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

void sub_1837AD024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

unint64_t sub_1837AD05C(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v2 = a2[5];
  v14 = v3;
  v15 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  v7 = *v4;
  v6 = v4[1];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v8 = sub_18384AC9C(v3, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  return v8;
}

void sub_1837AD1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
    sub_18369D8F8(&a10);
    sub_18369D8F8(&a15);
    _Unwind_Resume(a1);
  }

  sub_18369D8F8(&a10);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1837AE724(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = open(v4, 0);
  v6 = v5;
  if (v5 < 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v30 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = v2;
      if (*(v2 + 23) < 0)
      {
        v31 = *v2;
      }

      v41.st_dev = 136315138;
      *&v41.st_mode = v31;
      _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "Error opening binary resource: %s", &v41, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v32 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
LABEL_75:
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        v41.st_dev = 136315138;
        *&v41.st_mode = v2;
        _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_FAULT, "Error opening binary resource: %s", &v41, 0xCu);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v32 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_75;
      }
    }

    return a1;
  }

  if (!fstat(v5, &v41))
  {
    st_size = v41.st_size;
    *(a1 + 8) = v41.st_size;
    v8 = mmap(0, st_size, 1, 2, v6, 0);
    *a1 = v8;
    if (v8 != -1)
    {
      madvise(v8, *(a1 + 8), 2);
      goto LABEL_7;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v36 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = v2;
      if (*(v2 + 23) < 0)
      {
        v37 = *v2;
      }

      v39 = 136315138;
      v40 = v37;
      _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_ERROR, "Error mapping binary resource: %s", &v39, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v38 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
LABEL_99:
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        v39 = 136315138;
        v40 = v2;
        _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_FAULT, "Error mapping binary resource: %s", &v39, 0xCu);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v38 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_99;
      }
    }

    return a1;
  }

LABEL_7:
  v9 = *(a1 + 8);
  if (v9 < 0x18)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v10 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap binary resource format error: the size of the header shall not surpass mapSize", &v41, 2u);
    }

    if (*(a1 + 8) <= 0x17uLL)
    {
      if (qword_1EA84DC48 == -1)
      {
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v11 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_16;
        }
      }

      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "CHFastPathCharacterMMap binary resource format error: the size of the header shall not surpass mapSize", &v41, 2u);
      goto LABEL_16;
    }
  }

LABEL_17:
  if (*sub_1837AF1C0(a1) != 23)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap error, magic number in binary does not match expected magic number", &v41, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v34 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
LABEL_86:

        sub_1837AF2FC(a1);
LABEL_89:
        *a1 = 0;
        *(a1 + 8) = 0;
        return a1;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v34 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_86;
      }
    }

    LOWORD(v41.st_dev) = 0;
    _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_FAULT, "CHFastPathCharacterMMap error, magic number in binary does not match expected magic number", &v41, 2u);
    goto LABEL_86;
  }

  *(a1 + 32) = *(sub_1837AF1C0(a1) + 4);
  *(a1 + 36) = *(sub_1837AF1C0(a1) + 8);
  *(a1 + 40) = *(sub_1837AF1C0(a1) + 12);
  *(a1 + 44) = *(sub_1837AF1C0(a1) + 16);
  *(a1 + 48) = *(sub_1837AF1C0(a1) + 20);
  v12 = *(a1 + 40);
  v13 = 4 * *(a1 + 44);
  v14 = v13 > v12 || v9 < 0x18;
  if (v13 > v12)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap binary resource format error: the size of the characters shall not surpass the indexSize", &v41, 2u);
    }

    v12 = *(a1 + 40);
    v13 = 4 * *(a1 + 44);
  }

  if (v13 > v12)
  {
    v14 = 1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_FAULT, "CHFastPathCharacterMMap binary resource format error: the size of the characters shall not surpass the indexSize", &v41, 2u);
    }
  }

  v17 = *(a1 + 36);
  v18 = *(a1 + 8);
  if (v18 < v17)
  {
    v14 = 1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap binary resource format error:  indexOffset must not exceed mapSize", &v41, 2u);
    }

    v17 = *(a1 + 36);
    v18 = *(a1 + 8);
  }

  if (v18 < v17)
  {
    v14 = 1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_FAULT, "CHFastPathCharacterMMap binary resource format error:  indexOffset must not exceed mapSize", &v41, 2u);
    }

    LODWORD(v17) = *(a1 + 36);
    v18 = *(a1 + 8);
  }

  v21 = (*(a1 + 40) + v17);
  if (v18 < v21)
  {
    v14 = 1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v22 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap binary resource format error: the indexOffset + indexSize shall not surpass the mapSize", &v41, 2u);
    }

    LODWORD(v17) = *(a1 + 36);
    v18 = *(a1 + 8);
    v21 = (*(a1 + 40) + v17);
  }

  if (v18 < v21)
  {
    v14 = 1;
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_FAULT, "CHFastPathCharacterMMap binary resource format error: the indexOffset + indexSize shall not surpass the mapSize", &v41, 2u);
    }

    LODWORD(v17) = *(a1 + 36);
  }

  *(a1 + 16) = sub_1837AF3A0(a1, v17);
  v24 = sub_1837AF3A0(a1, *(a1 + 36));
  v25 = *(a1 + 44);
  v26 = *(a1 + 48);
  *(a1 + 24) = v24 + 4 * v25;
  v27 = (*(a1 + 40) + *(a1 + 36) + v26 * v25);
  if (*(a1 + 8) < v27)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v28 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41.st_dev) = 0;
      _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap binary resource format error: the biggest offset for the character in the header shall not surpass the mapSize", &v41, 2u);
    }

    if (*(a1 + 8) >= v27)
    {
      goto LABEL_88;
    }

    if (qword_1EA84DC48 == -1)
    {
      v29 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_66:

LABEL_88:
        sub_1837AF2FC(a1);
        goto LABEL_89;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v29 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_66;
      }
    }

    LOWORD(v41.st_dev) = 0;
    _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "CHFastPathCharacterMMap binary resource format error: the biggest offset for the character in the header shall not surpass the mapSize", &v41, 2u);
    goto LABEL_66;
  }

  if (v14)
  {
    goto LABEL_88;
  }

  return a1;
}

uint64_t sub_1837AF1C0(void *a1)
{
  if (a1[1] <= 0x17uLL)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v2 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "", buf, 2u);
    }

    if (a1[1] <= 0x17uLL)
    {
      if (qword_1EA84DC48 == -1)
      {
        v3 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          return *a1;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v3 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v5 = 0;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_FAULT, "", v5, 2u);
      goto LABEL_10;
    }
  }

  return *a1;
}

void sub_1837AF2FC(uint64_t a1)
{
  if (munmap(*a1, *(a1 + 8)))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v1 = qword_1EA84DC98;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_18366B000, v1, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap constructor abort operation failed at munmap operation", v2, 2u);
    }
  }
}

uint64_t sub_1837AF3A0(void *a1, uint64_t a2)
{
  v4 = a2 + 4;
  v5 = a1[1];
  if (a2 + 4 > v5)
  {
    if (qword_1EA84DC48 == -1)
    {
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        v5 = a1[1];
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (v4 > v5)
  {
    if (qword_1EA84DC48 == -1)
    {
      v7 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        return *a1 + a2;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v7 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v9 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_FAULT, "", v9, 2u);
    goto LABEL_10;
  }

  return *a1 + a2;
}

void sub_1837AF508(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v6 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_43;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_43:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC98;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "getFastPathCharacter unable to find requested character.", v30, 2u);
    }

    *a3 = 0;
    a3[16] = 0;
  }

  else
  {
    v27 = a3;
    v7 = objc_alloc_init(CHDrawing);
    *v30 = 0;
    v31 = 0;
    v32 = 0;
    v8 = (*(a1 + 40) + *(a1 + 36)) + ((v6 - *(a1 + 16)) >> 2) * *(a1 + 48);
    v26 = *sub_1837AF9C8(a1, v8);
    v28 = *(sub_1837AF9C8(a1, v8) + 4);
    if (v28)
    {
      v9 = 0;
      v10 = v8 + 8;
      while (1)
      {
        v16 = *sub_1837AF3A0(a1, v10);
        if (v16)
        {
          break;
        }

        v10 += 4;
LABEL_41:
        objc_msgSend_endStroke(v7, v11, v12, v13, v14, v15);
        if (++v9 == v28)
        {
          goto LABEL_42;
        }
      }

      v29 = v9;
      while (1)
      {
        v17 = v10 + 8;
        v18 = *(a1 + 8);
        if (v10 + 8 <= v18)
        {
LABEL_11:
          v19 = *(*a1 + v10 + 4);
          v20 = v10 + 12;
          if (v10 + 12 <= v18)
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }

        if (qword_1EA84DC48 == -1)
        {
          break;
        }

        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v21 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

LABEL_17:

        v18 = *(a1 + 8);
        if (v17 <= v18)
        {
          goto LABEL_11;
        }

        if (qword_1EA84DC48 == -1)
        {
          v22 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_21;
          }

LABEL_20:
          *buf = 0;
          _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_FAULT, "", buf, 2u);
          goto LABEL_21;
        }

        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v22 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_20;
        }

LABEL_21:

        v18 = *(a1 + 8);
        v19 = *(*a1 + v10 + 4);
        v20 = v10 + 12;
        if (v10 + 12 <= v18)
        {
LABEL_12:
          if (v20 <= v18)
          {
            goto LABEL_30;
          }

LABEL_26:
          if (qword_1EA84DC48 == -1)
          {
            v24 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_28;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v24 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
LABEL_28:
              *buf = 0;
              _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_FAULT, "", buf, 2u);
            }
          }

          goto LABEL_30;
        }

LABEL_22:
        if (qword_1EA84DC48 == -1)
        {
          v23 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

LABEL_24:
          *buf = 0;
          _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "", buf, 2u);
          goto LABEL_25;
        }

        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v23 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

LABEL_25:

        if (v20 > *(a1 + 8))
        {
          goto LABEL_26;
        }

LABEL_30:
        objc_msgSend_addPoint_(v7, v11, v12, v13, v14, v15, v19, -*(*a1 + v10 + 8));
        v10 += 8;
        if (!--v16)
        {
          v10 = v17 + 4;
          v9 = v29;
          goto LABEL_41;
        }
      }

      v21 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

LABEL_16:
      *buf = 0;
      _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_ERROR, "", buf, 2u);
      goto LABEL_17;
    }

LABEL_42:
    *v27 = v7;
    *(v27 + 2) = v26;
    v27[16] = 1;
  }
}

void sub_1837AF968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_18368EE60(va);

  _Unwind_Resume(a1);
}

void sub_1837AF980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_18368EE60(va);

  _Unwind_Resume(a1);
}

void sub_1837AF998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_18368EE60(va);

  _Unwind_Resume(a1);
}

void sub_1837AF9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_18368EE60(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1837AF9C8(void *a1, uint64_t a2)
{
  v4 = a2 + 8;
  v5 = a1[1];
  if (a2 + 8 > v5)
  {
    if (qword_1EA84DC48 == -1)
    {
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        v5 = a1[1];
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v6 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_ERROR, "", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  if (v4 > v5)
  {
    if (qword_1EA84DC48 == -1)
    {
      v7 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        return *a1 + a2;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v7 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    *v9 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_FAULT, "", v9, 2u);
    goto LABEL_10;
  }

  return *a1 + a2;
}

void *sub_1837AFB30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (!a1[9])
  {
    v5 = a1[2];
    v4 = a1[3];
    if (v5 != v4)
    {
      v6 = a1 + 8;
      do
      {
        v7 = *v6;
        if (!*v6)
        {
LABEL_14:
          operator new();
        }

        v8 = *v5;
        while (1)
        {
          while (1)
          {
            v9 = v7;
            v10 = *(v7 + 32);
            if (v8 >= v10)
            {
              break;
            }

            v7 = *v9;
            if (!*v9)
            {
              goto LABEL_14;
            }
          }

          if (v10 >= v8)
          {
            break;
          }

          v7 = v9[1];
          if (!v7)
          {
            goto LABEL_14;
          }
        }

        ++v9[5];
        ++v5;
      }

      while (v5 != v4);
    }
  }

  return sub_1837AFC6C(a2, a1 + 7);
}

void *sub_1837AFC6C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_18368ECB0(a1, v3, &v11, &v10, v5 + 8))
      {
        operator new();
      }

      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
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

uint64_t sub_1837AFDAC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *(a2 + 12);
  *(a2 + 12) = 0;
  v21 = a2[7];
  v7 = a2[8];
  v8 = a2[9];
  a2[9] = 0;
  a2[8] = 0;
  if (v8)
  {
    v9 = (v7 + 16);
  }

  else
  {
    v9 = &v21;
  }

  *v9 = v22;
  a2[7] = (a2 + 8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v12;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 32) = v13;
  *(a1 + 48) = v6;
  v14 = (a1 + 56);
  v15 = *(a1 + 56);
  *(a1 + 56) = v21;
  v16 = *(a1 + 64);
  v21 = v15;
  v22[0] = v16;
  v17 = *(a1 + 72);
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  v22[1] = v17;
  if (v8)
  {
    v14 = (v7 + 16);
  }

  *v14 = a1 + 64;
  v18 = v16 + 2;
  if (!v17)
  {
    v18 = &v21;
  }

  *v18 = v22;
  if (v10 && munmap(v10, v11))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC98;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_ERROR, "CHFastPathCharacterMMap constructor abort operation failed at munmap operation", buf, 2u);
    }
  }

  sub_18368D56C(&v21, v22[0]);
  return a1;
}

uint64_t sub_1837AFF34(uint64_t a1)
{
  if (*a1)
  {
    sub_1837AF2FC(a1);
  }

  sub_18368D56C(a1 + 56, *(a1 + 64));
  return a1;
}

void sub_1837AFF78()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.CoreHandwriting.CHSingletonMLModelQueue", v0);
  v2 = qword_1EA84CFB0;
  qword_1EA84CFB0 = v1;

  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4, v5, v6, v7);
  v9 = qword_1EA84CFA0;
  qword_1EA84CFA0 = v8;

  v10 = objc_opt_new();
  v11 = qword_1EA84CFA8;
  qword_1EA84CFA8 = v10;
}

void sub_1837B01D8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_objectForKey_(qword_1EA84CFA0, a2, a1[4], a4, a5, a6);

  if (!v7)
  {
    v10 = objc_msgSend_modelWithContentsOfURL_configuration_error_(MEMORY[0x1E695FE90], v8, a1[5], a1[6], a1[7], v9);
    v11 = [CHSingletonMLModel alloc];
    v12 = a1[4];
    v28 = v10;
    v13 = v12;
    if (v11)
    {
      objc_opt_self();
      if (qword_1EA84CFB8 != -1)
      {
        dispatch_once(&qword_1EA84CFB8, &unk_1EF1BDE48);
      }

      v29.receiver = v11;
      v29.super_class = CHSingletonMLModel;
      v14 = objc_msgSendSuper2(&v29, sel_init);
      v15 = v14;
      if (v14)
      {
        objc_storeStrong(v14 + 1, v12);
        *(v15 + 16) = 0;
        objc_storeStrong((v15 + 24), v10);
      }
    }

    else
    {
      v15 = 0;
    }

    objc_msgSend_setObject_forKey_(qword_1EA84CFA0, v16, v15, a1[4], v17, v18);
    v24 = objc_msgSend_powerLogModelNameForModelKey_(CHSingletonMLModel, v19, a1[4], v20, v21, v22);
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_logModelLoaded_(qword_1EA84CFA8, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_1837B056C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837B0584(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[5];
  v8 = *(a1[4] + 24);
  v9 = a1[6];
  v10 = *(a1[8] + 8);
  obj = *(v10 + 40);
  v11 = objc_msgSend_predictionFromFeatures_options_error_(v8, a2, v7, v9, &obj, a6);
  objc_storeStrong((v10 + 40), obj);
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1837B06B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = objc_msgSend_objectForKey_(qword_1EA84CFA0, a2, *(a1 + 32), a4, a5, a6);
  if (v25)
  {
    --v25[2];
    if (!objc_msgSend_usageCount(v25, v7, v8, v9, v10, v11))
    {
      objc_msgSend_removeObjectForKey_(qword_1EA84CFA0, v12, *(a1 + 32), v13, v14, v15);
      v21 = objc_msgSend_powerLogModelNameForModelKey_(CHSingletonMLModel, v16, *(a1 + 32), v17, v18, v19);
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_logModelUnloaded_(qword_1EA84CFA8, v20, v21, v22, v23, v24);
      }
    }
  }
}

void sub_1837B0FD8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1837B2018(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1837B25B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1837B2BB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1837B498C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v11 = objc_msgSend_ancestorIdentifier(v4, v6, v7, v8, v9, v10);
  if (v11 <= objc_msgSend_ancestorIdentifier(v5, v12, v13, v14, v15, v16))
  {
    v23 = objc_msgSend_ancestorIdentifier(v4, v17, v18, v19, v20, v21);
    if (v23 >= objc_msgSend_ancestorIdentifier(v5, v24, v25, v26, v27, v28))
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

void sub_1837B5404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1837B5468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__teardownXPCConnection(WeakRetained, v2, v3, v4, v5, v6);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd for CHRemotePowerLogger was interrupted", v8, 2u);
  }
}

void sub_1837B5510()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd for CHRemotePowerLogger was invalidated", v1, 2u);
  }
}

void sub_1837B58EC()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.corehandwriting.remotePowerLoggerQueue", v0);
  v2 = qword_1EA84CFC0;
  qword_1EA84CFC0 = v1;
}

void sub_1837B5970(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  objc_msgSend_setupXPCConnectionIfNeeded(*(a1 + 32), a2, a3, a4, a5, a6);
  v12 = objc_msgSend_connection(*(a1 + 32), v7, v8, v9, v10, v11);

  if (!v12)
  {
    if (qword_1EA84DC48 == -1)
    {
      v18 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v18 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
    goto LABEL_5;
  }

LABEL_6:
  v19 = objc_msgSend_connection(*(a1 + 32), v13, v14, v15, v16, v17);
  v20 = v19 == 0;

  if (!v20)
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v26 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
  }

LABEL_10:

LABEL_11:
  *buf = 0;
  v53 = buf;
  v54 = 0x3032000000;
  v55 = sub_1837B5CD8;
  v56 = sub_1837B5CE8;
  v57 = 0;
  v27 = objc_msgSend_connection(*(a1 + 32), v21, v22, v23, v24, v25);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_1837B5CF0;
  v51[3] = &unk_1E6DDD0C0;
  v51[4] = buf;
  v32 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v27, v28, v51, v29, v30, v31);

  objc_msgSend_handlePowerLoggingRequest_(v32, v33, *(a1 + 40), v34, v35, v36);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v37 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v37 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
LABEL_13:
    v38 = objc_opt_class();
    v44 = objc_msgSend_description(v38, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_modelIdentifier(*(a1 + 40), v45, v46, v47, v48, v49);
    *v58 = 138412546;
    v59 = v44;
    v60 = 2048;
    v61 = v50;
    _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEBUG, "CHPowerLog: remote power logging request sent for request type %@, model %lu", v58, 0x16u);
  }

LABEL_14:

  _Block_object_dispose(buf, 8);
}

void sub_1837B5CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837B5CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1837B5CD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837B5CF0(uint64_t a1, void *a2)
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

uint64_t sub_1837B6D7C(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    result = 0;
    v6 = llroundf(*(a1 + 32) * a2);
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v8 = *v2 - v6;
      if (v8 < 0)
      {
        v8 = v6 - *v2;
      }

      if (v8 < v7)
      {
        result = *v2;
        v7 = v8;
      }

      else if (v8 > v7)
      {
        return result;
      }

      if (++v2 == v3)
      {
        return result;
      }
    }
  }

  return 0;
}

_DWORD *sub_1837B6DE4(void *a1)
{
  v2 = (*(*a1 + 56))(a1);
  result = a1[1];
  v4 = a1[2];
  if (result != v4)
  {
    while (v2 < *result)
    {
      if (++result == v4)
      {
        return a1[2];
      }
    }
  }

  return result;
}

void sub_1837B6E5C(uint64_t a1, int a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x1E000003E8;
  *a1 = &unk_1EF1BDED8;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 188) = 0x1E000003E8;
  if (a2 != -1)
  {
    if (a2 > -2)
    {
      operator new();
    }

    sub_18369761C();
  }

  cos(((0 / -1) + 0.008) / 1.008 * 3.14159265 * 0.5);
  operator new();
}

void sub_1837B7B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void **a14, void **a15, uint64_t a16, uint64_t a17, void *a18, void *__p, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  sub_1837B8778(&a20);
  if (__p)
  {
    operator delete(__p);
  }

  v42 = a18[20];
  if (v42)
  {
    a18[21] = v42;
    operator delete(v42);
    v43 = *a15;
    if (!*a15)
    {
LABEL_5:
      v44 = a18[14];
      if (!v44)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v43 = *a15;
    if (!*a15)
    {
      goto LABEL_5;
    }
  }

  a18[18] = v43;
  operator delete(v43);
  v44 = a18[14];
  if (!v44)
  {
LABEL_6:
    v45 = *a14;
    if (!*a14)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  a18[15] = v44;
  operator delete(v44);
  v45 = *a14;
  if (!*a14)
  {
LABEL_7:
    v46 = a18[8];
    if (!v46)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  a18[12] = v45;
  operator delete(v45);
  v46 = a18[8];
  if (!v46)
  {
LABEL_8:
    v47 = *a13;
    if (!*a13)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  a18[9] = v46;
  operator delete(v46);
  v47 = *a13;
  if (!*a13)
  {
LABEL_9:
    *a18 = a11;
    v48 = a18[1];
    if (!v48)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  a18[6] = v47;
  operator delete(v47);
  *a18 = a11;
  v48 = a18[1];
  if (!v48)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

LABEL_17:
  a18[2] = v48;
  operator delete(v48);
  _Unwind_Resume(a1);
}

id sub_1837B7D5C(void *a1, id **a2, int a3, void *a4)
{
  v236 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a1[1];
  v9 = a1[2];
  v10 = v8;
  if (v8 != v9)
  {
    v11 = a1[1];
    while (*v11 != a3)
    {
      v11 += 4;
      v10 += 4;
      if (v11 == v9)
      {
        v10 = a1[2];
        break;
      }
    }
  }

  v12 = v10 - v8;
  v13 = (v10 - v8) >> 2;
  if (v13 >= ((v9 - v8) >> 2) - 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v10 + 1);
  }

  v15 = *(a1[11] + 4 * a3);
  v16 = *(a1[14] + 4 * a3);
  v17 = *(a2[1] - 1);
  v233 = v7;
  v23 = objc_msgSend_dataPointer(v17, v18, v19, v20, v21, v22);
  v24 = v7;
  v35 = objc_msgSend_dataPointer(v24, v25, v26, v27, v28, v29);
  v36 = 0;
  v37 = a3;
  v38 = v15;
  v39 = v16;
  while (v36 < objc_msgSend_count(*(a2[1] - 1), v30, v31, v32, v33, v34))
  {
    v40 = (*(v35 + 4 * v36) - *(v23 + 4 * v36) * v39) / v38;
    *(v23 + 4 * v36++) = v40;
  }

  v42 = a1[1];
  v41 = a1[2];
  v44 = *a2;
  v43 = a2[1];
  v45 = (*(*a1 + 72))(a1);
  v46 = (v41 - v42) >> 2;
  v48 = v46 < 0xF && v13 >= v46 - 2;
  v49 = v45 <= (v43 - v44) && !v48;
  if (v49)
  {
    v106 = *(a1[1] + v12 - 4);
    v107 = v233;
    v109 = *a2;
    v108 = a2[1];
    if ((*(*a1 + 72))(a1) != v108 - v109)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v110 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        v111 = a2[1] - *a2;
        *buf = 134217984;
        v235 = v111;
        _os_log_impl(&dword_18366B000, v110, OS_LOG_TYPE_ERROR, "Expected two model outputs, but got %lu", buf, 0xCu);
      }
    }

    v113 = *a2;
    v112 = a2[1];
    v49 = (*(*a1 + 72))(a1) == v112 - v113;
    v51 = v233;
    if (!v49)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v114 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
      {
        v115 = a2[1] - *a2;
        *buf = 134217984;
        v235 = v115;
        _os_log_impl(&dword_18366B000, v114, OS_LOG_TYPE_FAULT, "Expected two model outputs, but got %lu", buf, 0xCu);
      }
    }

    v116 = a1[17];
    v117 = *(v116 + 4 * v14);
    v118 = *(v116 + 4 * v37);
    v119 = *(v116 + 4 * v106);
    v120 = *(a1[11] + 4 * v14);
    v121 = a1[14];
    v122 = *(v121 + 4 * v14);
    v123 = *(v121 + 4 * v37);
    v124 = objc_alloc(MEMORY[0x1E695FED0]);
    v130 = objc_msgSend_shape((*a2)[1], v125, v126, v127, v128, v129);
    v136 = objc_msgSend_dataType((*a2)[1], v131, v132, v133, v134, v135);
    v139 = objc_msgSend_initWithShape_dataType_error_(v124, v137, v130, v136, 0, v138);

    v140 = v139;
    v146 = objc_msgSend_dataPointer(v139, v141, v142, v143, v144, v145);
    v147 = (*a2)[1];
    v153 = objc_msgSend_dataPointer(v147, v148, v149, v150, v151, v152);
    v154 = **a2;
    v165 = objc_msgSend_dataPointer(v154, v155, v156, v157, v158, v159);
    v166 = 0;
    v167 = v117;
    v168 = v118;
    v169 = v120;
    v170 = v122;
    v171 = v167 - v168;
    v172 = 1.0 / ((v168 - v119) / (v167 - v168));
    while (v166 < objc_msgSend_count((*a2)[1], v160, v161, v162, v163, v164))
    {
      v173 = -v172 * *(v165 + 4 * v166) + *(v153 + 4 * v166) * v172;
      *(v146 + 4 * v166++) = v173;
    }

    v174 = objc_alloc(MEMORY[0x1E695FED0]);
    v180 = objc_msgSend_shape((*a2)[1], v175, v176, v177, v178, v179);
    v186 = objc_msgSend_dataType((*a2)[1], v181, v182, v183, v184, v185);
    v76 = objc_msgSend_initWithShape_dataType_error_(v174, v187, v180, v186, 0, v188);

    v189 = v76;
    v195 = objc_msgSend_dataPointer(v76, v190, v191, v192, v193, v194);
    v196 = (*a2)[1];
    v202 = objc_msgSend_dataPointer(v196, v197, v198, v199, v200, v201);
    v203 = v139;
    v209 = objc_msgSend_dataPointer(v139, v204, v205, v206, v207, v208);
    v210 = v107;
    v216 = objc_msgSend_dataPointer(v107, v211, v212, v213, v214, v215);
    v217 = v170 / v123;
    v218 = 0;
    v219 = -(v169 * (exp(-v171) + -1.0));
    for (i = objc_msgSend_count((*a2)[1], v220, v221, v222, v223, v224, 0.5); v218 < i; i = objc_msgSend_count((*a2)[1], v226, v227, v228, v229, v230, v231))
    {
      v231 = v219 * *(v202 + 4 * v218) + *(v216 + 4 * v218) * v217 + *(v209 + 4 * v218) * (v219 * 0.5);
      *&v231 = v231;
      *(v195 + 4 * v218++) = LODWORD(v231);
    }
  }

  else
  {
    v50 = *(a2[1] - 1);
    v51 = v233;
    v52 = v233;
    v53 = a1[17];
    v54 = *(v53 + 4 * v37);
    v55 = *(v53 + 4 * v14);
    v56 = *(a1[11] + 4 * v14);
    v57 = a1[14];
    v58 = *(v57 + 4 * v37);
    v59 = *(v57 + 4 * v14);
    v60 = exp(v54 - v55);
    v61 = objc_alloc(MEMORY[0x1E695FED0]);
    v67 = objc_msgSend_shape(v50, v62, v63, v64, v65, v66);
    v73 = objc_msgSend_dataType(v50, v68, v69, v70, v71, v72);
    v76 = objc_msgSend_initWithShape_dataType_error_(v61, v74, v67, v73, 0, v75);

    v77 = v76;
    v83 = objc_msgSend_dataPointer(v77, v78, v79, v80, v81, v82);
    v84 = v52;
    v90 = objc_msgSend_dataPointer(v84, v85, v86, v87, v88, v89);
    v91 = v50;
    v102 = objc_msgSend_dataPointer(v91, v92, v93, v94, v95, v96);
    v103 = 0;
    v104 = -(v56 * (v60 + -1.0));
    while (v103 < objc_msgSend_count(v50, v97, v98, v99, v100, v101))
    {
      v105 = v104 * *(v102 + 4 * v103) + v59 / v58 * *(v90 + 4 * v103);
      *(v83 + 4 * v103++) = v105;
    }
  }

  return v76;
}

float sub_1837B8534(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 160);
  v6 = (*(a1 + 168) - v5) >> 2;
  if (v6 <= a2)
  {
    if (qword_1EA84DC48 == -1)
    {
      v7 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        v5 = *(a1 + 160);
        v6 = (*(a1 + 168) - v5) >> 2;
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v7 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    v8 = (*(a1 + 168) - *(a1 + 160)) >> 2;
    v12 = 67109376;
    v13 = a2;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Got timestep beyond available alpha coefficients: t=%i vs size=%lu", &v12, 0x12u);
    goto LABEL_5;
  }

LABEL_6:
  if (v6 <= v4)
  {
    if (qword_1EA84DC48 == -1)
    {
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        v5 = *(a1 + 160);
        return sqrtf(*(v5 + 4 * v4));
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v9 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }
    }

    v10 = (*(a1 + 168) - *(a1 + 160)) >> 2;
    v12 = 67109376;
    v13 = a2;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_FAULT, "Got timestep beyond available alpha coefficients: t=%i vs size=%lu", &v12, 0x12u);
    goto LABEL_10;
  }

  return sqrtf(*(v5 + 4 * v4));
}

void sub_1837B8738(void *a1)
{
  sub_1837B8778(a1);

  JUMPOUT(0x1865E5EC0);
}

void *sub_1837B8778(void *a1)
{
  *a1 = &unk_1EF1BDED8;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;
    operator delete(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    a1[9] = v6;
    operator delete(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    a1[6] = v7;
    operator delete(v7);
  }

  *a1 = &unk_1EF1BDF38;
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_1837B8C78(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v11 = objc_msgSend_ancestorIdentifier(v4, v6, v7, v8, v9, v10);
  if (v11 <= objc_msgSend_ancestorIdentifier(v5, v12, v13, v14, v15, v16))
  {
    v23 = objc_msgSend_ancestorIdentifier(v4, v17, v18, v19, v20, v21);
    if (v23 >= objc_msgSend_ancestorIdentifier(v5, v24, v25, v26, v27, v28))
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

void sub_1837B8CFC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  IsEmpty = CGPathIsEmpty(*(a1 + 32));
  v7 = *(a1 + 32);
  if (IsEmpty)
  {

    CGPathMoveToPoint(v7, 0, a2, a3);
  }

  else
  {

    CGPathAddLineToPoint(v7, 0, a2, a3);
  }
}

void *sub_1837BA0E4(void *a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v75.receiver = a1;
    v75.super_class = CHSearchQueryItem;
    a1 = objc_msgSendSuper2(&v75, sel_init);
    if (a1)
    {
      v9 = objc_msgSend_set(MEMORY[0x1E695DFA8], v4, v5, v6, v7, v8);
      v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11, v12, v13, v14);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v70 = v3;
      v16 = v3;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v71, v76, 16, v18);
      if (v19)
      {
        v25 = v19;
        v26 = *v72;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v72 != v26)
            {
              objc_enumerationMutation(v16);
            }

            v28 = *(*(&v71 + 1) + 8 * i);
            v29 = objc_msgSend_strokeIdentifier(v28, v20, v21, v22, v23, v24);
            objc_msgSend_addObject_(v9, v30, v29, v31, v32, v33);

            v34 = MEMORY[0x1E696B098];
            objc_msgSend_bounds(v28, v35, v36, v37, v38, v39);
            v45 = objc_msgSend_ch_valueWithCGRect_(v34, v40, v41, v42, v43, v44);
            v51 = objc_msgSend_strokeIdentifier(v28, v46, v47, v48, v49, v50);
            objc_msgSend_setObject_forKeyedSubscript_(v15, v52, v45, v51, v53, v54);
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v20, &v71, v76, 16, v24);
        }

        while (v25);
      }

      v60 = objc_msgSend_copy(v9, v55, v56, v57, v58, v59);
      v61 = a1[2];
      a1[2] = v60;

      v67 = objc_msgSend_copy(v15, v62, v63, v64, v65, v66);
      v68 = a1[1];
      a1[1] = v67;

      v3 = v70;
    }
  }

  return a1;
}

uint64_t sub_1837BA2E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1837BA300(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(*(*(a1 + 32) + 8) + 40);
  v12 = v3;
  if (!v8)
  {
    v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v3 = v12;
    v8 = *(*(*(a1 + 32) + 8) + 40);
  }

  objc_msgSend_addObject_(v8, v3, v3, v5, v6, v7);
}

BOOL sub_1837BA394(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, void *a6, id *a7)
{
  v196 = a1;
  v205 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a4;
  v14 = a6;
  v202 = *a3;
  v194 = a3;
  v203 = a3[2];
  v19 = objc_msgSend_tokenAtLocation_(v12, v15, &v202, v16, v17, v18);
  *&v202 = 0;
  *(&v202 + 1) = &v202;
  v203 = 0x2020000000;
  v204 = 1;
  v199[0] = MEMORY[0x1E69E9820];
  v199[1] = 3221225472;
  v199[2] = sub_1837BACEC;
  v199[3] = &unk_1E6DDE328;
  v195 = v19;
  v200 = v195;
  v201 = &v202;
  objc_msgSend_enumerateRangesUsingBlock_(v14, v20, v199, v21, v22, v23);
  if (*(*(&v202 + 1) + 24) == 1)
  {
    v29 = *v194;
    v30 = v194[2];
    v31 = v195;
    v193 = v12;
    v37 = v13;
    if (v29 > 0 || v30 >= 1)
    {
      v38 = objc_msgSend_precedingSeparatorForToken_(v193, v32, v31, v34, v35, v36);
      v39 = objc_msgSend_length(v38, v45, v46, v47, v48, v49);
    }

    else
    {
      v38 = 0;
      v39 = objc_msgSend_length(0, v32, v33, v34, v35, v36);
    }

    if (v39)
    {
      v50 = objc_msgSend_length(v38, v40, v41, v42, v43, v44);
      if (objc_msgSend_length(v37, v51, v52, v53, v54, v55) >= (v50 + a5))
      {
        v64 = objc_msgSend_rangeOfString_options_range_(v37, v56, v38, 0, a5, v50) == a5 && v59 == v50;
        v58 = v64;
        if (v64)
        {
          v57 = objc_msgSend_length(v38, v59, v60, v61, v62, v63);
        }

        else
        {
          v57 = 0;
        }

        if (!a5)
        {
          v58 = 1;
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
      }
    }

    else
    {
      v57 = 0;
      v58 = 1;
    }

    *(*(&v202 + 1) + 24) = v58;
    a5 += v57;
    if (v58)
    {
      v65 = v31;
      v193 = v37;
      if (a5 <= 0)
      {
        v72 = v196;
        v71 = *(v196 + 73);
      }

      else
      {
        v71 = 1;
        v72 = v196;
      }

      v74 = *(v72 + 72);
      v75 = 256;
      if (!*(v72 + 72))
      {
        v75 = 257;
      }

      v191 = v65;
      v192 = v75;
      v76 = objc_msgSend_string(v65, v66, v67, v68, v69, v70);
      v82 = objc_msgSend_length(v76, v77, v78, v79, v80, v81);
      if (objc_msgSend_length(v193, v83, v84, v85, v86, v87) == a5)
      {
        v93 = 0;
        if (v82)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v93 = objc_msgSend_length(v193, v88, v89, v90, v91, v92) - a5;
        if (v82)
        {
LABEL_30:
          if (v74)
          {
            isTopOriginal = objc_msgSend_isTopOriginal(v191, v88, v89, v90, v91, v92);
            if (v93)
            {
              v95 = isTopOriginal;
            }

            else
            {
              v95 = 0;
            }

            if ((v95 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          else if (!v93)
          {
LABEL_74:
            v96 = 0;
            v97 = 0;
            goto LABEL_75;
          }

          v190 = v76;
          if (v71)
          {
            if (v82 >= v93)
            {
              v124 = objc_msgSend_substringFromIndex_(v193, v88, a5, v90, v91, v92);
              v126 = objc_msgSend_rangeOfString_options_range_(v76, v125, v124, v192, 0, v93);
              v127 = v124;
              v98 = v126;
              v100 = v128;

              v101 = 0;
              v76 = v190;
            }

            else
            {
              v98 = objc_msgSend_rangeOfString_options_range_(v193, v88, v76, v192, a5, v82);
              v100 = v99;
              v101 = a5;
              v93 = v82;
            }

            v129 = v98 == v101;
            v130 = v100 == v93;
            v131 = v129 && v130;
            if (v129 && v130)
            {
              v93 = v100;
            }

            else
            {
              v93 = 0;
            }

            if (*(v196 + 73))
            {
LABEL_67:
              v109 = v131;
              goto LABEL_68;
            }
          }

          else
          {
            if (v82 >= v93)
            {
              v102 = objc_msgSend_substringFromIndex_(v193, v88, a5, v90, v91, v92);
              v107 = objc_msgSend_rangeOfString_options_(v190, v103, v102, v192, v104, v105) != 0x7FFFFFFFFFFFFFFFLL && v106 == v93;
              v108 = v107;

              if (v108)
              {
                if (*(v196 + 73) == 1)
                {
                  v109 = 1;
                  v76 = v190;
LABEL_68:
                  v97 = 0;
                  v96 = 0;
                  if ((v109 & 1) == 0 || v93 != v82)
                  {
                    goto LABEL_75;
                  }

                  goto LABEL_38;
                }

                v76 = v190;
                goto LABEL_38;
              }
            }

            v110 = objc_msgSend_substringWithRange_(v193, v88, a5, 1, v91, v92);
            v112 = v110;
            if (v82 >= v93)
            {
              v113 = objc_msgSend_rangeOfString_options_range_(v190, v111, v110, v192, v82 - v93, v93);
            }

            else
            {
              v113 = objc_msgSend_rangeOfString_options_range_(v190, v111, v110, v192, 0, v82);
            }

            v117 = v113;
            v118 = v190;
            v119 = v112;
            v93 = 0;
            v189 = 0;
            if (v117 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v120 = v82 - v117;
              if (v82 != v117)
              {
                while (1)
                {
                  v121 = objc_msgSend_substringWithRange_(v118, v114, v117, v120, v115, v116);
                  if (objc_msgSend_rangeOfString_options_range_(v193, v122, v121, v192, a5, v120) == a5 && v120 == v123)
                  {
                    break;
                  }

                  ++v117;
                  --v120;
                  v118 = v190;
                  if (!v120)
                  {
                    v189 = 0;
                    v93 = 0;
                    goto LABEL_72;
                  }
                }

                v189 = 1;
                v93 = v120;
              }
            }

LABEL_72:

            v76 = v190;
            v131 = v189;
            if (*(v196 + 73))
            {
              goto LABEL_67;
            }
          }

          if ((v131 & 1) == 0)
          {
            goto LABEL_74;
          }

LABEL_38:
          v96 = 1;
          v97 = v93;
LABEL_75:

          v73 = v96;
          a5 += v97;
          goto LABEL_76;
        }
      }

      v93 = 0;
      goto LABEL_38;
    }
  }

  v73 = 0;
LABEL_76:
  v132 = objc_msgSend_length(v13, v24, v25, v26, v27, v28);
  v138 = a5 == v132;
  if (a5 != v132 && ((v73 ^ 1) & 1) == 0)
  {
    v139 = objc_msgSend_tokenColumnCount(v12, v133, v134, v135, v136, v137);
    v140 = *v194;
    v149 = objc_msgSend_tokenRowsAtColumnIndex_(v12, v141, *v194, v142, v143, v144);
    v150 = v140 + 1;
    if (v150 >= v139)
    {
      v193 = 0;
    }

    else
    {
      v193 = objc_msgSend_tokenRowsAtColumnIndex_(v12, v145, v150, v146, v147, v148);
    }

    v151 = v194[2];
    v152 = objc_msgSend_objectAtIndexedSubscript_(v149, v145, v194[1], v146, v147, v148);
    LODWORD(v151) = v151 == objc_msgSend_count(v152, v153, v154, v155, v156, v157) - 1;

    if (!v151)
    {
      v191 = v149;
      LODWORD(v192) = v73;
      v190 = v188;
      MEMORY[0x1EEE9AC00](v158);
      v167 = &v186;
      v170 = v194[2] + 1;
      v186 = *v194;
      v187 = v170;
      v165 = 1;
      goto LABEL_92;
    }

    v164 = objc_msgSend_count(v193, v159, v160, v161, v162, v163);
    v165 = v164;
    if (v164 < 1)
    {
      v138 = 0;
LABEL_99:

      goto LABEL_100;
    }

    LODWORD(v192) = v73;
    MEMORY[0x1EEE9AC00](v164);
    v167 = &v188[-((v166 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v191 = v149;
    v190 = v168;
    if (v165 > 3)
    {
      v169 = v165 & 0x7FFFFFFFFFFFFFFCLL;
      v171 = xmmword_1839CD610;
      v172 = vdupq_n_s64(v150);
      v173 = vdupq_n_s64(2uLL);
      v174 = 0uLL;
      v175 = vdupq_n_s64(4uLL);
      v176 = v165 & 0x7FFFFFFFFFFFFFFCLL;
      v177 = v167;
      do
      {
        v206.val[1] = vaddq_s64(v171, v173);
        v178 = v171;
        v206.val[0] = v172;
        v206.val[2] = 0uLL;
        v179 = v177 + 12;
        vst3q_f64(v177, *v172.i8);
        v180 = v177 + 6;
        vst3q_f64(v180, v206);
        v171 = vaddq_s64(v171, v175);
        v177 = v179;
        v176 -= 4;
      }

      while (v176);
      if (v165 == v169)
      {
LABEL_92:
        if (v165 <= 1)
        {
          v182 = 1;
        }

        else
        {
          v182 = v165;
        }

        v183 = 1;
        v138 = 1;
        do
        {
          v197 = *v167;
          v198 = *(v167 + 2);
          if (sub_1837BA394(v196, v12, &v197, v13, a5, v14, a7))
          {
            break;
          }

          v138 = v183 < v165;
          v167 += 3;
          ++v183;
          --v182;
        }

        while (v182);
        v73 = v192;
        v149 = v191;
        goto LABEL_99;
      }
    }

    else
    {
      v169 = 0;
    }

    v181 = &v167[3 * v169 + 2];
    do
    {
      *(v181 - 2) = v150;
      *(v181 - 1) = v169;
      *v181 = 0.0;
      v181 += 3;
      ++v169;
    }

    while (v165 != v169);
    goto LABEL_92;
  }

LABEL_100:
  if ((v73 & v138 & (a7 != 0)) == 1)
  {
    v184 = *a7;
    if (!*a7)
    {
      v184 = objc_msgSend_array(MEMORY[0x1E695DF70], v133, v134, v135, v136, v137);
      *a7 = v184;
    }

    objc_msgSend_addObject_(v184, v133, v195, v135, v136, v137);
  }

  _Block_object_dispose(&v202, 8);
  return v138;
}

void sub_1837BACEC(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v10 = objc_msgSend_strokeIndexes(*(a1 + 32), a2, a3, a4, a5, a6);
  LODWORD(v7) = objc_msgSend_intersectsIndexesInRange_(v10, v11, a2, v7, v12, v13);

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t sub_1837BAE18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 40);
  result = *(*(a1 + 32) + 88);
  if (result != v7)
  {
    result = objc_msgSend_isEqualToString_(result, a2, v7, a4, a5, a6);
    if ((result & 1) == 0)
    {
      v14 = objc_msgSend_copy(*(a1 + 40), v9, v10, v11, v12, v13);
      v15 = *(a1 + 32);
      v16 = *(v15 + 88);
      *(v15 + 88) = v14;

      v22 = *(a1 + 32);

      return objc_msgSend_q_setNeedsQueryResultUpdating(v22, v17, v18, v19, v20, v21);
    }
  }

  return result;
}

void sub_1837BAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837BB0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1837BBA00(id a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v44.receiver = a1;
    v44.super_class = CHRemoteInventoryRequest;
    a1 = objc_msgSendSuper2(&v44, sel_init);
    if (a1)
    {
      v20 = objc_msgSend_copy(v11, v15, v16, v17, v18, v19);
      v21 = *(a1 + 3);
      *(a1 + 3) = v20;

      v27 = objc_msgSend_copy(v12, v22, v23, v24, v25, v26);
      v28 = *(a1 + 2);
      *(a1 + 2) = v27;

      v34 = objc_msgSend_copy(v13, v29, v30, v31, v32, v33);
      v35 = *(a1 + 4);
      *(a1 + 4) = v34;

      v41 = objc_msgSend_copy(v14, v36, v37, v38, v39, v40);
      v42 = *(a1 + 5);
      *(a1 + 5) = v41;

      *(a1 + 8) = a6;
    }
  }

  return a1;
}

double sub_1837BCB74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_localWritingOrientationAtStrokeIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 32) = v7 + *(*(*(a1 + 40) + 8) + 32);
  v8 = *(*(a1 + 40) + 8);
  result = v9 + *(v8 + 40);
  *(v8 + 40) = result;
  return result;
}

id sub_1837BD544(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_textResult(a2, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_refinableTranscription(v6, v7, v8, v9, v10, v11);

  return v12;
}

void sub_1837BD608(void *a1@<X0>, __int128 *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = *a2;
  *(a4 + 32) = 0u;
  *(a4 + 48) = v8;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  v13[0] = &unk_1EF1BE000;
  v14 = v13;
  sub_1837BD790(v7, v13, a3, &v11);
  v9 = v14;
  v10 = v12;
  *a4 = v11;
  *(a4 + 16) = v10;
  v12 = 0;
  v11 = 0uLL;
  if (v9 == v13)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  sub_1836FB830(a4 + 24, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), 0);
}

void sub_1837BD760(_Unwind_Exception *a1)
{
  sub_18369D068(v2);

  _Unwind_Resume(a1);
}

void sub_1837BD790(void *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void **a4@<X8>)
{
  v6 = a1;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v12 = objc_msgSend_strokeCount(v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    if (v12 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18369F168();
  }

  v76 = a3;
  v18 = 0;
  v82 = 0;
  v19 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v80 = v6;
  v20 = a4;
  while (objc_msgSend_strokeCount(v6, v13, v14, v15, v16, v17) > v19)
  {
    if (v76)
    {
      if ((v82 & (v18 != 0)) == 1)
      {
        operator delete(v18);
      }

      v78 = 0;
      v79 = 0;
      v77 = 0;
      v82 = 1;
    }

    else
    {
      v79 = v18;
    }

    v25 = objc_msgSend_pointCountForStrokeIndex_(v6, v21, v19, v22, v23, v24);
    if (!v25)
    {
      v18 = v79;
      ++v19;
      continue;
    }

    v26 = v20;
    v28 = v20[1];
    v27 = v20[2];
    if (v28 >= v27)
    {
      v30 = *v20;
      v31 = v28 - *v20;
      v32 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3) + 1;
      if (v32 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_18369F168();
      }

      v33 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v30) >> 3);
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x555555555555555)
      {
        v34 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (v34 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      v35 = (8 * (v31 >> 3));
      v29 = v35 + 3;
      v36 = v35 - v31;
      *v35 = 0;
      v35[1] = 0;
      v35[2] = 0;
      memcpy(v35 - v31, v30, v31);
      *v20 = v36;
      v20[2] = 0;
      v26 = v20;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      v29 = v28 + 3;
      *v28 = 0;
      v28[1] = 0;
      v28[2] = 0;
    }

    v26[1] = v29;
    if (v25 > (*(v29 - 1) - *(v29 - 3)) >> 5)
    {
      if (!(v25 >> 59))
      {
        operator new();
      }

      sub_18369F168();
    }

    v37 = 0;
    v18 = v79;
    v38 = v20;
    objc_msgSend_pointForStrokeIndex_pointIndex_(v6, v13, v19, 0, v16, v17);
    while (1)
    {
      v85 = v39;
      v86 = v40;
      v41 = v38[1];
      v42 = *(v41 - 2);
      if (v42 != *(v41 - 3) && *(v42 - 32) == v39 && *(v42 - 24) == v40)
      {
        break;
      }

      v43 = *(a2 + 24);
      if (!v43)
      {
        sub_1837916E4();
      }

      v44 = v18;
      (*(*v43 + 48))(&v83);
      v45 = *(v41 - 2);
      v46 = *(v41 - 1);
      if (v45 >= v46)
      {
        v48 = *(v41 - 3);
        v49 = v45 - v48;
        v50 = (v45 - v48) >> 5;
        v51 = v50 + 1;
        if ((v50 + 1) >> 59)
        {
          sub_18369F168();
        }

        v52 = v46 - v48;
        if (v52 >> 4 > v51)
        {
          v51 = v52 >> 4;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFE0)
        {
          v53 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (!(v53 >> 59))
          {
            operator new();
          }

          sub_183688F00();
        }

        v54 = (32 * v50);
        v55 = v84;
        *v54 = v83;
        v54[1] = v55;
        v56 = 32 * v50 + 32;
        memcpy(0, v48, v49);
        *(v41 - 3) = 0;
        *(v41 - 2) = v56;
        *(v41 - 1) = 0;
        if (v48)
        {
          operator delete(v48);
        }

        v6 = v80;
        v18 = v44;
        *(v41 - 2) = v56;
        if ((v82 & 1) == 0)
        {
LABEL_40:
          ++v37;
          v38 = v20;
          if (v37 == v25)
          {
            goto LABEL_6;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v47 = v84;
        *v45 = v83;
        *(v45 + 1) = v47;
        *(v41 - 2) = v45 + 32;
        if ((v82 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (v78 >= v77)
      {
        v57 = v78 - v18;
        v58 = (v78 - v18) >> 4;
        v59 = v58 + 1;
        if ((v58 + 1) >> 60)
        {
          sub_1837A0C50();
        }

        if ((v77 - v18) >> 3 > v59)
        {
          v59 = (v77 - v18) >> 3;
        }

        if (v77 - v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v60 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v59;
        }

        if (v60)
        {
          if (!(v60 >> 60))
          {
            operator new();
          }

          sub_183688F00();
        }

        v18 = 0;
        v61 = (16 * v58);
        *v61 = v19;
        v61[1] = v37;
        v77 = 0;
        v78 = 16 * v58 + 16;
        memcpy(0, v44, v57);
      }

      else
      {
        *v78 = v19;
        *(v78 + 8) = v37;
        v78 += 16;
      }

      v38 = v20;
      if (++v37 == v25)
      {
        goto LABEL_69;
      }

LABEL_33:
      objc_msgSend_pointForStrokeIndex_pointIndex_(v6, v13, v19, v37, v16, v17);
    }

    if (++v37 != v25)
    {
      goto LABEL_33;
    }

    if ((v82 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_69:
    v62 = v87;
    v63 = 0xAAAAAAAAAAAAAAABLL * ((v88 - v87) >> 3);
    if (v63 <= v19)
    {
      sub_18387E2B4(&v87, v19 - v63 + 1);
      v62 = v87;
    }

    sub_1837A1EB0(v62 + 24 * v19, v18, v78, (v78 - v18) >> 4);
LABEL_6:
    ++v19;
  }

  if (v76)
  {
    sub_18387DD3C(&v87, v76, &v83);
    v64 = *v76;
    if (*v76)
    {
      v65 = v76[1];
      v66 = *v76;
      if (v65 != v64)
      {
        v67 = v76[1];
        do
        {
          v69 = *(v67 - 3);
          v67 -= 24;
          v68 = v69;
          if (v69)
          {
            *(v65 - 2) = v68;
            operator delete(v68);
          }

          v65 = v67;
        }

        while (v67 != v64);
        v66 = *v76;
      }

      v76[1] = v64;
      operator delete(v66);
      *v76 = 0;
      v76[1] = 0;
      v76[2] = 0;
    }

    *v76 = v83;
    v76[2] = v84;
  }

  if ((v82 & (v18 != 0)) == 1)
  {
    operator delete(v18);
  }

  v70 = v87;
  if (v87)
  {
    v71 = v88;
    v72 = v87;
    if (v88 != v87)
    {
      v73 = v88;
      do
      {
        v75 = *(v73 - 3);
        v73 -= 24;
        v74 = v75;
        if (v75)
        {
          *(v71 - 2) = v74;
          operator delete(v74);
        }

        v71 = v73;
      }

      while (v73 != v70);
      v72 = v87;
    }

    v88 = v70;
    operator delete(v72);
  }
}

void sub_1837BDE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17)
{
  if (a17)
  {
    if (v18)
    {
      operator delete(v18);
    }
  }

  sub_18369F0F0((v20 - 104));
  sub_18369F0F0(v17);

  _Unwind_Resume(a1);
}

id sub_1837BDED8(uint64_t **a1)
{
  v7 = objc_opt_new();
  v9 = *a1;
  for (i = a1[1]; v9 != i; v9 += 3)
  {
    v10 = *v9;
    v11 = v9[1];
    while (v10 != v11)
    {
      if ((*(v10 + 24) & 1) == 0)
      {
        objc_msgSend_addPoint_(v7, v2, v3, v4, v5, v6, *v10, *(v10 + 8));
      }

      v10 += 32;
    }

    objc_msgSend_endStroke(v7, v2, v3, v4, v5, v6);
  }

  return v7;
}

id sub_1837BDF98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(v7, v8, &unk_1EF1ED210, v9, v10, v11);
  v17 = *a1;
  v18 = *(a1 + 8);
  if (*a1 != v18)
  {
    do
    {
      v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v12, *v17, v14, v15, v16);
      objc_msgSend_addObject_(v7, v20, v19, v21, v22, v23);

      ++v17;
    }

    while (v17 != v18);
  }

  v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  objc_msgSend_addObject_(v24, v25, &unk_1EF1ED210, v26, v27, v28);
  v33 = *(a1 + 24);
  for (i = *(a1 + 32); v33 != i; ++v33)
  {
    v35 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v29, *v33, v30, v31, v32);
    objc_msgSend_addObject_(v24, v36, v35, v37, v38, v39);
  }

  v40 = objc_alloc(MEMORY[0x1E695FED0]);
  v41 = *(a1 + 48);
  v45 = 0;
  v43 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v40, v42, v41, v7, 65568, v24, 0, &v45);

  return v43;
}

__n128 sub_1837BE204@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = 0;
  return result;
}

uint64_t sub_1837BE218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN15CoreHandwriting12drawingToInkEP9CHDrawingRK7CGPointPNS_10InkMappingEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN15CoreHandwriting12drawingToInkEP9CHDrawingRK7CGPointPNS_10InkMappingEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN15CoreHandwriting12drawingToInkEP9CHDrawingRK7CGPointPNS_10InkMappingEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN15CoreHandwriting12drawingToInkEP9CHDrawingRK7CGPointPNS_10InkMappingEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1837BE290(uint64_t a1)
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

void sub_1837BE4E4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_1837BED20(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69D9D50]);
  v8 = v2;
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      goto LABEL_6;
    }

    objc_msgSend_setAngleThresholdForRotationCorrection_(v2, v3, v4, v5, v6, v7, 0.0);
    objc_msgSend_setFlatMergeJumps_(v8, v60, 1, v61, v62, v63);
    LODWORD(v64) = 1063675494;
    objc_msgSend_setAllowedOverlap_(v8, v65, v66, v67, v68, v69, v64);
    objc_msgSend_setMaxRegions_(v8, v70, 169, v71, v72, v73);
    objc_msgSend_setMaxQueueCapacity_(v8, v74, 0xFFFFFFFFLL, v75, v76, v77);
    LODWORD(v78) = 1.0;
    objc_msgSend_setMinWhitespaceWidth_(v8, v79, v80, v81, v82, v83, v78);
    LODWORD(v84) = 1050253722;
    objc_msgSend_setMinWhitespaceHeight_(v8, v85, v86, v87, v88, v89, v84);
    objc_msgSend_setNumLookupElements_(v8, v90, 57, v91, v92, v93);
    objc_msgSend_setNumPointsForSegmentsIntersection_(v8, v94, 6, v95, v96, v97);
    v47 = 2.0;
    LODWORD(v98) = 1.0;
    objc_msgSend_setQualityHeightFactor_(v8, v99, v100, v101, v102, v103, v98);
  }

  else
  {
    objc_msgSend_setAngleThresholdForRotationCorrection_(v2, v3, v4, v5, v6, v7, 0.0);
    objc_msgSend_setFlatMergeJumps_(v8, v9, 1, v10, v11, v12);
    LODWORD(v13) = 1064514355;
    objc_msgSend_setAllowedOverlap_(v8, v14, v15, v16, v17, v18, v13);
    objc_msgSend_setMaxRegions_(v8, v19, 169, v20, v21, v22);
    objc_msgSend_setMaxQueueCapacity_(v8, v23, 0xFFFFFFFFLL, v24, v25, v26);
    LODWORD(v27) = 1061997773;
    objc_msgSend_setMinWhitespaceWidth_(v8, v28, v29, v30, v31, v32, v27);
    LODWORD(v33) = 1060320051;
    objc_msgSend_setMinWhitespaceHeight_(v8, v34, v35, v36, v37, v38, v33);
    objc_msgSend_setNumLookupElements_(v8, v39, 57, v40, v41, v42);
    objc_msgSend_setNumPointsForSegmentsIntersection_(v8, v43, 4, v44, v45, v46);
    v47 = 1.0;
    LODWORD(v48) = 1066192077;
    objc_msgSend_setQualityHeightFactor_(v8, v49, v50, v51, v52, v53, v48);
  }

  *&v59 = v47;
  objc_msgSend_setQualityWidthFactor_(v8, v54, v55, v56, v57, v58, v59);
  LODWORD(v104) = 8.0;
  objc_msgSend_setMinSubRectangleSize_(v8, v105, v106, v107, v108, v109, v104);
  LODWORD(v110) = 1035122882;
  objc_msgSend_setMinQuadrilateralRotation_(v8, v111, v112, v113, v114, v115, v110);
  LODWORD(v116) = 1053609165;
  objc_msgSend_setMinWhitespaceHeightForReadingOrder_(v8, v117, v118, v119, v120, v121, v116);
LABEL_6:

  return v8;
}

uint64_t sub_1837BFCF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_strokeProvider(*(a1 + 32), v7, v8, v9, v10, v11);
  v17 = objc_msgSend_strokeIdentifierFromData_(v12, v13, v5, v14, v15, v16);

  v23 = objc_msgSend_strokeProvider(*(a1 + 32), v18, v19, v20, v21, v22);
  v28 = objc_msgSend_strokeIdentifierFromData_(v23, v24, v6, v25, v26, v27);

  v34 = objc_msgSend_strokeProvider(*(a1 + 32), v29, v30, v31, v32, v33);
  v38 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v34, v35, v17, v28, v36, v37);

  return v38;
}

uint64_t sub_1837BFE24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_addPoint_(v7, a2, a3, a4, a5, a6);
  }

  v8 = *(a1 + 40);

  return objc_msgSend_addPoint_(v8, a2, a3, a4, a5, a6);
}

void sub_1837C0350(uint64_t a1, _OWORD *a2)
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
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_18368964C();
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

    sub_183688F00();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
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

void sub_1837C076C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHQuadCurvePointFIFO;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1837C11B0(uint64_t a1, void *a2)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) - 0x5555555555555555 * ((a2[1] - *a2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < v3)
  {
    if (v3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_27:
    sub_18369F168();
  }

  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = *(a1 + 8);
    do
    {
      while (1)
      {
        v7 = *(a1 + 16);
        if (v6 >= v7)
        {
          break;
        }

        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        v8 = v4[1];
        if (v8 != *v4)
        {
          if (((v8 - *v4) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18369F168();
        }

        v6 += 3;
        *(a1 + 8) = v6;
        *(a1 + 8) = v6;
        v4 += 3;
        if (v4 == v5)
        {
          return;
        }
      }

      v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
      if (v9 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_27;
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
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
        if (v11 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      v12 = (8 * ((v6 - *a1) >> 3));
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
      v13 = v4[1];
      if (v13 != *v4)
      {
        if (((v13 - *v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      v6 = v12 + 3;
      v14 = *a1;
      v15 = *(a1 + 8) - *a1;
      v16 = v12 - v15;
      memcpy(v12 - v15, *a1, v15);
      *a1 = v16;
      *(a1 + 8) = v12 + 3;
      *(a1 + 16) = 0;
      if (v14)
      {
        operator delete(v14);
      }

      *(a1 + 8) = v6;
      v4 += 3;
    }

    while (v4 != v5);
  }
}

void sub_1837C1464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  *(v10 + 8) = v11;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1837C14B0(void *a1)
{
  v5 = a1;
  if (qword_1EA84C990 != -1)
  {
    dispatch_once(&qword_1EA84C990, &unk_1EF1BE080);
  }

  v6 = objc_msgSend_containsObject_(qword_1EA84C988, v1, v5, v2, v3, v4);

  return v6;
}

void sub_1837C1528(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"{", a4, a5, a6, @"}", @"[", @"]", @"_", @"^", @"&", @"\, @"\\,", @"\\", @"\\\, @"\\\\[1em]", @"\\mathbb", @"\\mathcal", @"\\mathfrak", @"\\mathrm", @"\\left.", @"\\right.", @"\\begin{matrix}", @"\\end{matrix}", @"\\begin{aligned}", @"\\end{aligned}", @"\\begin{array}{l}", @"\\begin{array}{lr}", @"\\end{array}", 0);;
  v7 = qword_1EA84C988;
  qword_1EA84C988 = v6;
}

void sub_1837C166C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"{", a4, a5, a6, @"[", @"_", @"^", @"&", @"\, @"\\,", @"\\", @"\\\, @"\\\\[1em]", @"\\left.", @"\\mathbb", @"\\mathcal", @"\\mathfrak", @"\\mathrm", @"\\color{orange}{+}", @"\\begin{matrix}", @"\\begin{aligned}", @"\\begin{array}{l}", @"\\begin{array}{lr}", 0);;
  v7 = qword_1EA84C998;
  qword_1EA84C998 = v6;
}

void sub_1837C177C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"}", a4, a5, a6, @"]", @"\\right.", @"\\end{matrix}", @"\\end{aligned}", @"\\end{array}", 0);
  v7 = qword_1EA84C9A8;
  qword_1EA84C9A8 = v6;
}

void sub_1837C1800(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"+", a4, a5, a6, @"-", @"\\times", @"\\ast", @"\\cdot", @"\\div", @"/", @":", 0);
  v7 = qword_1EA84C9C0;
  qword_1EA84C9C0 = v6;
}

id sub_1837C1898(void *a1)
{
  v5 = a1;
  if (qword_1EA84C9C8 != -1)
  {
    dispatch_once(&qword_1EA84C9C8, &unk_1EF1BE100);
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84C9D0, v1, v5, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = v6;
  }

  else if (objc_msgSend_hasPrefix_(v5, v7, @"\\text{", v8, v9, v10) && objc_msgSend_hasSuffix_(v5, v13, @"}", v14, v15, v16))
  {
    v19 = objc_msgSend_length(v5, v13, v17, v18, v15, v16);
    v12 = objc_msgSend_substringWithRange_(v5, v20, 6, v19 - 7, v21, v22);
  }

  else
  {
    v12 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v13, @"\", &stru_1EF1C0318, v15, v16);
  }

  v23 = v12;

  return v23;
}

void sub_1837C19B4()
{
  v0 = qword_1EA84C9D0;
  qword_1EA84C9D0 = &unk_1EF1EBA90;
}

void sub_1837C19CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_componentsSeparatedByCharactersInSet_(@"0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z b d f g h j k l p q t y ! \\% \\$ \\tan \\arctan \\sinh \\cosh \\tanh \\coth \\ln", v8, v7, v9, v10, v11);
  v17 = objc_msgSend_setWithArray_(v6, v13, v12, v14, v15, v16);
  v18 = qword_1EA84C9E0;
  qword_1EA84C9E0 = v17;

  v19 = MEMORY[0x1E695DFD8];
  v25 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v20, v21, v22, v23, v24);
  v30 = objc_msgSend_componentsSeparatedByCharactersInSet_(@"a c e i m n o r s u v w x \\pi \\sin \\cos \\arcsin \\arccos \\sec \\csc", v26, v25, v27, v28, v29);
  v35 = objc_msgSend_setWithArray_(v19, v31, v30, v32, v33, v34);
  v36 = qword_1EA84C9E8;
  qword_1EA84C9E8 = v35;

  v37 = MEMORY[0x1E695DFD8];
  v43 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v38, v39, v40, v41, v42);
  v48 = objc_msgSend_componentsSeparatedByCharactersInSet_(@"\\log \\lg", v44, v43, v45, v46, v47);
  v53 = objc_msgSend_setWithArray_(v37, v49, v48, v50, v51, v52);
  v54 = qword_1EA84C9F0;
  qword_1EA84C9F0 = v53;

  v59 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v55, @"gjpqy", v56, v57, v58);
  v60 = qword_1EA84C9F8;
  qword_1EA84C9F8 = v59;

  v65 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v61, @"aceimnorsuvwxz+×*÷:¢=", v62, v63, v64);
  v66 = qword_1EA84CA00;
  qword_1EA84CA00 = v65;

  v71 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v67, @"-⋅.,°'", v68, v69, v70);
  v72 = qword_1EA84CA08;
  qword_1EA84CA08 = v71;
}

void sub_1837C1B6C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1837C1BBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x5012000000;
  v47 = sub_1837C5E08;
  v48 = nullsub_40;
  v49 = &unk_183A5AC72;
  v7 = *(MEMORY[0x1E695F050] + 16);
  v50 = *MEMORY[0x1E695F050];
  v51 = v7;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4, a5, a6);
  for (i = 0; i < objc_msgSend_count(*(a1 + 88), v8, v9, v10, v11, v12); ++i)
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 88), v15, i, v16, v17, v18);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0x3FF0000000000000;
    v25 = objc_msgSend_count(*(a1 + 32), v20, v21, v22, v23, v24);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1837C5E18;
    v39[3] = &unk_1E6DDE430;
    v39[5] = &v40;
    v39[6] = i;
    v39[4] = &v44;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(a1, v26, v19, 0, v25, v39);
    v32 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v27, v28, v29, v30, v31, v41[3]);
    objc_msgSend_addObject_(v13, v33, v32, v34, v35, v36);

    _Block_object_dispose(&v40, 8);
  }

  v37 = *(v45 + 4);
  *(a1 + 104) = *(v45 + 3);
  *(a1 + 120) = v37;
  v38 = *(a1 + 96);
  *(a1 + 96) = v13;

  _Block_object_dispose(&v44, 8);
}

void sub_1837C1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1837C1DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1837C2000(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v957[1] = *MEMORY[0x1E69E9840];
  v934 = a2;
  objc_opt_self();
  if (!objc_msgSend_count(v934, v4, v5, v6, v7, v8))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_ERROR, "CHTokenizedMathResult must be initialized with at least one token path.", buf, 2u);
    }
  }

  if (!objc_msgSend_count(v934, v9, v10, v11, v12, v13, a4))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_FAULT, "CHTokenizedMathResult must be initialized with at least one token path.", buf, 2u);
    }
  }

  v21 = 0x1E695D000uLL;
  v933 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
  v926 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v22, v23, v24, v25, v26);
  for (i = 0; i < objc_msgSend_count(v934, v27, v28, v29, v30, v31); ++i)
  {
    v931 = objc_msgSend_array(*(v21 + 3952), v33, v34, v35, v36, v37);
    v47 = objc_msgSend_array(*(v21 + 3952), v38, v39, v40, v41, v42);
    for (j = 0; ; ++j)
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(v934, v43, i, v44, v45, v46);
      v55 = j < objc_msgSend_count(v49, v50, v51, v52, v53, v54);

      if (!v55)
      {
        break;
      }

      v61 = objc_msgSend_objectAtIndexedSubscript_(v934, v56, i, v58, v59, v60);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, j, v63, v64, v65);

      v76 = objc_msgSend_string(v66, v67, v68, v69, v70, v71);
      if (qword_1EA84C9A0 != -1)
      {
        dispatch_once(&qword_1EA84C9A0, &unk_1EF1BE0A0);
      }

      v77 = objc_msgSend_containsObject_(qword_1EA84C998, v72, v76, v73, v74, v75);

      if (v77)
      {
        v83 = objc_msgSend_lastObject(v47, v78, v79, v80, v81, v82);
        v93 = objc_msgSend_string(v83, v84, v85, v86, v87, v88);
        if (qword_1EA84C9A0 != -1)
        {
          dispatch_once(&qword_1EA84C9A0, &unk_1EF1BE0A0);
        }

        v94 = objc_msgSend_containsObject_(qword_1EA84C998, v89, v93, v90, v91, v92);

        if (!((objc_msgSend_count(v47, v95, v96, v97, v98, v99) == 0) | v94 & 1))
        {
          v104 = [CHTokenizedResultColumn alloc];
          v110 = objc_msgSend_copy(v47, v105, v106, v107, v108, v109);
          v957[0] = v110;
          v114 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v111, v957, 1, v112, v113);
          v119 = objc_msgSend_initWithTokenRows_(v104, v115, v114, v116, v117, v118);

          objc_msgSend_addObject_(v931, v120, v119, v121, v122, v123);
          objc_msgSend_removeAllObjects(v47, v124, v125, v126, v127, v128);
        }
      }

      else
      {
        v133 = objc_msgSend_string(v66, v78, v79, v80, v81, v82);
        if (qword_1EA84C9B0 != -1)
        {
          dispatch_once(&qword_1EA84C9B0, &unk_1EF1BE0C0);
        }

        v134 = objc_msgSend_containsObject_(qword_1EA84C9A8, v129, v133, v130, v131, v132);

        if (!v134)
        {
          v136 = objc_msgSend_lastObject(v47, v100, v135, v101, v102, v103);
          v146 = objc_msgSend_string(v136, v137, v138, v139, v140, v141);
          if (qword_1EA84C9A0 != -1)
          {
            dispatch_once(&qword_1EA84C9A0, &unk_1EF1BE0A0);
          }

          v147 = objc_msgSend_containsObject_(qword_1EA84C998, v142, v146, v143, v144, v145);

          if (!((objc_msgSend_count(v47, v148, v149, v150, v151, v152) == 0) | v147 & 1))
          {
            v153 = [CHTokenizedResultColumn alloc];
            v159 = objc_msgSend_copy(v47, v154, v155, v156, v157, v158);
            v956 = v159;
            v163 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v160, &v956, 1, v161, v162);
            v168 = objc_msgSend_initWithTokenRows_(v153, v164, v163, v165, v166, v167);

            objc_msgSend_addObject_(v931, v169, v168, v170, v171, v172);
            objc_msgSend_removeAllObjects(v47, v173, v174, v175, v176, v177);
          }
        }
      }

      objc_msgSend_addObject_(v47, v100, v66, v101, v102, v103);
    }

    if (objc_msgSend_count(v47, v56, v57, v58, v59, v60))
    {
      v183 = [CHTokenizedResultColumn alloc];
      v189 = objc_msgSend_copy(v47, v184, v185, v186, v187, v188);
      v955 = v189;
      v193 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v190, &v955, 1, v191, v192);
      v198 = objc_msgSend_initWithTokenRows_(v183, v194, v193, v195, v196, v197);

      objc_msgSend_addObject_(v931, v199, v198, v200, v201, v202);
    }

    v208 = objc_msgSend_count(v931, v178, v179, v180, v181, v182);
    v209 = v208 != 0;
    if (i)
    {
      v210 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v203, v204, v205, v206, v207);
      v941 = 0u;
      v942 = 0u;
      v939 = 0u;
      v940 = 0u;
      v211 = v931;
      v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v212, &v939, v953, 16, v213);
      v929 = v209;
      if (v219)
      {
        v220 = *v940;
        while (2)
        {
          for (k = 0; k != v219; ++k)
          {
            if (*v940 != v220)
            {
              objc_enumerationMutation(v211);
            }

            v222 = *(*(&v939 + 1) + 8 * k);
            v223 = objc_msgSend_strokeIndexes(v222, v214, v215, v216, v217, v218);
            v229 = objc_msgSend_count(v223, v224, v225, v226, v227, v228) == 0;

            if (v229)
            {
              v929 = 0;
              goto LABEL_46;
            }

            v235 = objc_msgSend_strokeIndexes(v222, v230, v231, v232, v233, v234);
            objc_msgSend_addIndexes_(v210, v236, v235, v237, v238, v239);
          }

          v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v214, &v939, v953, 16, v218);
          if (v219)
          {
            continue;
          }

          break;
        }
      }

LABEL_46:

      isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v210, v240, v926, v241, v242, v243);
      if (isEqualToIndexSet & v929)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v945 = 0u;
      v946 = 0u;
      v943 = 0u;
      v944 = 0u;
      v249 = v931;
      v257 = objc_msgSend_countByEnumeratingWithState_objects_count_(v249, v250, &v943, v954, 16, v251);
      if (v257)
      {
        v258 = *v944;
        while (2)
        {
          for (m = 0; m != v257; ++m)
          {
            if (*v944 != v258)
            {
              objc_enumerationMutation(v249);
            }

            v260 = *(*(&v943 + 1) + 8 * m);
            v261 = objc_msgSend_strokeIndexes(v260, v252, v253, v254, v255, v256);
            v267 = objc_msgSend_count(v261, v262, v263, v264, v265, v266) == 0;

            if (v267)
            {

              goto LABEL_59;
            }

            v273 = objc_msgSend_strokeIndexes(v260, v268, v269, v270, v271, v272);
            objc_msgSend_addIndexes_(v926, v274, v273, v275, v276, v277);
          }

          v257 = objc_msgSend_countByEnumeratingWithState_objects_count_(v249, v252, &v943, v954, 16, v256);
          if (v257)
          {
            continue;
          }

          break;
        }
      }

      if (v208)
      {
LABEL_57:
        objc_msgSend_addObject_(v933, v245, v931, v246, v247, v248);
        goto LABEL_60;
      }
    }

LABEL_59:
    if (!i)
    {
      objc_msgSend_addObject_(v933, v245, v931, v246, v247, v248);

      v21 = 0x1E695D000uLL;
      break;
    }

LABEL_60:

    v21 = 0x1E695D000;
  }

  if (!objc_msgSend_count(v933, v33, v34, v35, v36, v37))
  {
    goto LABEL_191;
  }

  if (objc_msgSend_count(v933, v278, v279, v280, v281, v282) != 1)
  {
    v927 = objc_msgSend_array(*(v21 + 3952), v283, v284, v285, v286, v287);
    v924 = objc_msgSend_array(*(v21 + 3952), v295, v296, v297, v298, v299);
    v305 = objc_msgSend_count(v933, v300, v301, v302, v303, v304);
    if (v305)
    {
      if (!(v305 >> 61))
      {
        operator new();
      }

      sub_18368964C();
    }

    v925 = objc_msgSend_array(*(v21 + 3952), v306, v307, v308, v309, v310);
    v932 = objc_msgSend_array(*(v21 + 3952), v327, v328, v329, v330, v331);
    for (n = 0; n < objc_msgSend_count(v933, v332, v333, v334, v335, v336); ++n)
    {
      v343 = objc_msgSend_array(MEMORY[0x1E695DF70], v338, v339, v340, v341, v342);
      objc_msgSend_addObject_(v932, v344, v343, v345, v346, v347);

      v353 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v348, v349, v350, v351, v352);
      objc_msgSend_addObject_(v925, v354, v353, v355, v356, v357);
    }

    v930 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v338, v339, v340, v341, v342);
    v928 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v358, v359, v360, v361, v362);
LABEL_79:
    v921 = objc_msgSend_copy(v930, v363, v364, v365, v366, v367);
    for (ii = 0; ; ++ii)
    {
      if (ii >= objc_msgSend_count(v933, v368, v369, v370, v371, v372))
      {
        v505 = 0;
        while (v505 < objc_msgSend_count(v933, v374, v375, v376, v377, v378))
        {
          v510 = objc_msgSend_objectAtIndexedSubscript_(v925, v506, v505, v507, v508, v509);
          v516 = objc_msgSend_mutableCopy(v510, v511, v512, v513, v514, v515);

          objc_msgSend_addIndexes_(v516, v517, v921, v518, v519, v520);
          LOBYTE(v510) = objc_msgSend_isEqualToIndexSet_(v516, v521, v930, v522, v523, v524);

          ++v505;
          if ((v510 & 1) == 0)
          {
LABEL_124:

            goto LABEL_79;
          }
        }

        v921 = objc_msgSend_array(MEMORY[0x1E695DF70], v525, v526, v527, v528, v529);
        for (jj = 0; jj < objc_msgSend_count(v932, v530, v531, v532, v533, v534); ++jj)
        {
          v540 = objc_msgSend_objectAtIndexedSubscript_(v932, v536, jj, v537, v538, v539);
          if (!objc_msgSend_count(v540, v541, v542, v543, v544, v545))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v551 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v551, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v551, OS_LOG_TYPE_ERROR, "Found empty row when creating result with best path tokens. It indicates that the given paths don't cover the same strokes.", buf, 2u);
            }
          }

          if (!objc_msgSend_count(v540, v546, v547, v548, v549, v550))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v557 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v557, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v557, OS_LOG_TYPE_FAULT, "Found empty row when creating result with best path tokens. It indicates that the given paths don't cover the same strokes.", buf, 2u);
            }
          }

          v558 = objc_msgSend_count(v921, v552, v553, v554, v555, v556);
          if (objc_msgSend_count(v540, v559, v560, v561, v562, v563))
          {
            v558 = objc_msgSend_mergeTokenRow_intoUniqueRows_(CHTokenizedMathResult, v564, v540, v921, v567, v568);
          }

          if (objc_msgSend_count(v924, v564, v565, v566, v567, v568) <= jj)
          {
            v573 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v569, v558, v570, v571, v572);
            objc_msgSend_addObject_(v924, v582, v573, v583, v584, v585);
          }

          else
          {
            v573 = objc_msgSend_objectAtIndexedSubscript_(v924, v569, jj, v570, v571, v572);
            v578 = objc_msgSend_indexPathByAddingIndex_(v573, v574, v558, v575, v576, v577);
            objc_msgSend_setObject_atIndexedSubscript_(v924, v579, v578, jj, v580, v581);
          }
        }

        v586 = [CHTokenizedResultColumn alloc];
        v591 = objc_msgSend_initWithTokenRows_(v586, v587, v921, v588, v589, v590);
        objc_msgSend_addObject_(v927, v592, v591, v593, v594, v595);
        objc_msgSend_removeAllIndexes(v928, v596, v597, v598, v599, v600);
        for (kk = 0; kk < objc_msgSend_count(v933, v601, v602, v603, v604, v605); ++kk)
        {
          v612 = objc_msgSend_array(MEMORY[0x1E695DF70], v607, v608, v609, v610, v611);
          objc_msgSend_setObject_atIndexedSubscript_(v932, v613, v612, kk, v614, v615);

          v620 = objc_msgSend_objectAtIndexedSubscript_(v925, v616, kk, v617, v618, v619);
          objc_msgSend_removeAllIndexes(v620, v621, v622, v623, v624, v625);
        }

        v626 = 0;
        while (v626 < objc_msgSend_count(v933, v607, v608, v609, v610, v611))
        {
          v631 = *(8 * v626);
          v632 = objc_msgSend_objectAtIndexedSubscript_(v933, v627, v626, v628, v629, v630);
          LOBYTE(v631) = v631 == objc_msgSend_count(v632, v633, v634, v635, v636, v637);

          ++v626;
          if ((v631 & 1) == 0)
          {

            goto LABEL_124;
          }
        }

        v643 = objc_msgSend_count(v924, v638, v639, v640, v641, v642);
        if (v643 != objc_msgSend_count(v933, v644, v645, v646, v647, v648))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v654 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v654, OS_LOG_TYPE_ERROR))
          {
            v660 = objc_msgSend_count(v924, v655, v656, v657, v658, v659);
            v666 = objc_msgSend_count(v933, v661, v662, v663, v664, v665);
            *buf = 134218240;
            v949 = v660;
            v950 = 2048;
            v951 = v666;
            _os_log_impl(&dword_18366B000, v654, OS_LOG_TYPE_ERROR, "transcriptionPaths count (%ld) != transcriptions count (%ld) after tokenized result is built", buf, 0x16u);
          }
        }

        v667 = objc_msgSend_count(v924, v649, v650, v651, v652, v653);
        if (v667 != objc_msgSend_count(v933, v668, v669, v670, v671, v672))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v678 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v678, OS_LOG_TYPE_FAULT))
          {
            v684 = objc_msgSend_count(v924, v679, v680, v681, v682, v683);
            v690 = objc_msgSend_count(v933, v685, v686, v687, v688, v689);
            *buf = 134218240;
            v949 = v684;
            v950 = 2048;
            v951 = v690;
            _os_log_impl(&dword_18366B000, v678, OS_LOG_TYPE_FAULT, "transcriptionPaths count (%ld) != transcriptions count (%ld) after tokenized result is built", buf, 0x16u);
          }
        }

        v691 = MEMORY[0x1E695DF70];
        v692 = objc_msgSend_firstObject(v924, v673, v674, v675, v676, v677);
        v697 = objc_msgSend_arrayWithObject_(v691, v693, v692, v694, v695, v696);

        for (mm = 1; mm < objc_msgSend_count(v924, v698, v699, v700, v701, v702); ++mm)
        {
          v709 = objc_msgSend_objectAtIndexedSubscript_(v924, v704, mm, v706, v707, v708);
          v714 = objc_msgSend_containsObject_(v697, v710, v709, v711, v712, v713);

          if ((v714 & 1) == 0)
          {
            v715 = objc_msgSend_objectAtIndexedSubscript_(v924, v698, mm, v700, v701, v702);
            objc_msgSend_addObject_(v697, v716, v715, v717, v718, v719);
          }
        }

        v920 = objc_msgSend_set(MEMORY[0x1E695DFA8], v704, v705, v706, v707, v708);
        v919 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v720, v721, v722, v723, v724);
        for (nn = 0; nn < objc_msgSend_count(v697, v725, v726, v727, v728, v729); ++nn)
        {
          v734 = objc_msgSend_objectAtIndexedSubscript_(v697, v730, nn, v731, v732, v733);
          v745 = objc_msgSend_string(MEMORY[0x1E696AD60], v735, v736, v737, v738, v739);
          for (i1 = 0; i1 < objc_msgSend_count(v927, v740, v741, v742, v743, v744); ++i1)
          {
            v751 = objc_msgSend_objectAtIndexedSubscript_(v927, v747, i1, v748, v749, v750);
            v757 = objc_msgSend_mathTokenRows(v751, v752, v753, v754, v755, v756);
            v762 = objc_msgSend_indexAtPosition_(v734, v758, i1, v759, v760, v761);
            v767 = objc_msgSend_objectAtIndexedSubscript_(v757, v763, v762, v764, v765, v766);

            v937 = 0u;
            v938 = 0u;
            v935 = 0u;
            v936 = 0u;
            v768 = v767;
            v776 = objc_msgSend_countByEnumeratingWithState_objects_count_(v768, v769, &v935, v947, 16, v770);
            if (v776)
            {
              v777 = *v936;
              do
              {
                for (i2 = 0; i2 != v776; ++i2)
                {
                  if (*v936 != v777)
                  {
                    objc_enumerationMutation(v768);
                  }

                  v779 = objc_msgSend_string(*(*(&v935 + 1) + 8 * i2), v771, v772, v773, v774, v775);
                  objc_msgSend_appendString_(v745, v780, v779, v781, v782, v783);
                }

                v776 = objc_msgSend_countByEnumeratingWithState_objects_count_(v768, v771, &v935, v947, 16, v775);
              }

              while (v776);
            }
          }

          if (objc_msgSend_containsObject_(v920, v747, v745, v748, v749, v750))
          {
            objc_msgSend_addIndex_(v919, v784, nn, v785, v786, v787);
          }

          else
          {
            objc_msgSend_addObject_(v920, v784, v745, v785, v786, v787);
          }
        }

        if (objc_msgSend_count(v919, v730, nn, v731, v732, v733))
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v788 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v788, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_18366B000, v788, OS_LOG_TYPE_DEBUG, "Found different segmentation leading to the same transcription. Deduping keeping the transcription path closer to the top.", buf, 2u);
          }

          objc_msgSend_removeObjectsAtIndexes_(v697, v789, v919, v790, v791, v792);
          v793 = 0x1E696A000uLL;
          v923 = objc_msgSend_array(MEMORY[0x1E695DF70], v794, v795, v796, v797, v798);
          v809 = objc_msgSend_array(MEMORY[0x1E695DF70], v799, v800, v801, v802, v803);
          for (i3 = 0; i3 < objc_msgSend_count(v927, v804, v805, v806, v807, v808); ++i3)
          {
            v815 = objc_msgSend_objectAtIndexedSubscript_(v927, v811, i3, v812, v813, v814);
            v826 = objc_msgSend_indexSet(*(v793 + 3408), v816, v817, v818, v819, v820);
            for (i4 = 0; ; ++i4)
            {
              v828 = objc_msgSend_mathTokenRows(v815, v821, v822, v823, v824, v825);
              v834 = i4 < objc_msgSend_count(v828, v829, v830, v831, v832, v833);

              if (!v834)
              {
                break;
              }

              v835 = 0;
              while (v835 < objc_msgSend_count(v697, v821, v822, v823, v824, v825))
              {
                v840 = objc_msgSend_objectAtIndexedSubscript_(v697, v836, v835, v837, v838, v839);
                v845 = objc_msgSend_indexAtPosition_(v840, v841, i3, v842, v843, v844) == i4;

                ++v835;
                if (v845)
                {
                  goto LABEL_167;
                }
              }

              objc_msgSend_addIndex_(v826, v836, i4, v837, v838, v839);
LABEL_167:
              ;
            }

            for (i5 = 0; i5 < objc_msgSend_count(v697, v821, v822, v823, v824, v825); ++i5)
            {
              v852 = objc_msgSend_objectAtIndexedSubscript_(v697, v847, i5, v849, v850, v851);
              v857 = objc_msgSend_indexAtPosition_(v852, v853, i3, v854, v855, v856);

              v870 = v857 - objc_msgSend_countOfIndexesInRange_(v826, v858, 0, v857, v859, v860);
              if (objc_msgSend_count(v809, v861, v862, v863, v864, v865) <= i5)
              {
                v871 = objc_msgSend_indexPathWithIndex_(MEMORY[0x1E696AC88], v866, v870, v867, v868, v869);
                objc_msgSend_addObject_(v809, v880, v871, v881, v882, v883);
              }

              else
              {
                v871 = objc_msgSend_objectAtIndexedSubscript_(v809, v866, i5, v867, v868, v869);
                v876 = objc_msgSend_indexPathByAddingIndex_(v871, v872, v870, v873, v874, v875);
                objc_msgSend_setObject_atIndexedSubscript_(v809, v877, v876, i5, v878, v879);
              }
            }

            if (objc_msgSend_count(v826, v847, v848, v849, v850, v851))
            {
              v889 = objc_msgSend_mathTokenRows(v815, v884, v885, v886, v887, v888);
              v895 = objc_msgSend_mutableCopy(v889, v890, v891, v892, v893, v894);

              objc_msgSend_removeObjectsAtIndexes_(v895, v896, v826, v897, v898, v899);
              v900 = [CHTokenizedResultColumn alloc];
              v905 = objc_msgSend_initWithTokenRows_(v900, v901, v895, v902, v903, v904);
              objc_msgSend_addObject_(v923, v906, v905, v907, v908, v909);
            }

            else
            {
              v895 = objc_msgSend_objectAtIndexedSubscript_(v927, v884, i3, v886, v887, v888);
              objc_msgSend_addObject_(v923, v910, v895, v911, v912, v913);
            }

            v793 = 0x1E696A000;
          }

          if (a3)
          {
LABEL_184:
            v914 = v923;
            *a3 = v923;
            if (!v917)
            {
LABEL_189:

              v326 = v923;
              goto LABEL_190;
            }

LABEL_188:
            v915 = v809;
            *v917 = v809;
            goto LABEL_189;
          }
        }

        else
        {
          v809 = v697;
          v923 = v927;
          if (a3)
          {
            goto LABEL_184;
          }
        }

        if (!v917)
        {
          goto LABEL_189;
        }

        goto LABEL_188;
      }

      v379 = objc_msgSend_objectAtIndexedSubscript_(v925, v374, ii, v376, v377, v378);
      v385 = objc_msgSend_mutableCopy(v928, v380, v381, v382, v383, v384);
      objc_msgSend_removeIndexes_(v385, v386, v379, v387, v388, v389);
      v390 = *(8 * ii);
      v395 = objc_msgSend_objectAtIndexedSubscript_(v933, v391, ii, v392, v393, v394);
      if (v390 < objc_msgSend_count(v395, v396, v397, v398, v399, v400))
      {
        v405 = objc_msgSend_objectAtIndexedSubscript_(v933, v401, ii, v402, v403, v404);
        v410 = objc_msgSend_objectAtIndexedSubscript_(v405, v406, v390, v407, v408, v409);

        if (!v410)
        {
          goto LABEL_91;
        }

        while (1)
        {
          if (objc_msgSend_count(v379, v411, v412, v413, v414, v415))
          {
            if (!objc_msgSend_count(v385, v416, v417, v418, v419, v420))
            {
              v422 = objc_msgSend_strokeIndexes(v410, v416, v421, v418, v419, v420);
              v427 = objc_msgSend_ch_intersectsIndexSet_(v422, v423, v930, v424, v425, v426);

              if (!v427)
              {
                break;
              }
            }
          }

          v428 = objc_msgSend_objectAtIndexedSubscript_(v932, v416, ii, v418, v419, v420);
          v434 = objc_msgSend_mathTokenRows(v410, v429, v430, v431, v432, v433);
          v440 = objc_msgSend_firstObject(v434, v435, v436, v437, v438, v439);
          objc_msgSend_addObjectsFromArray_(v428, v441, v440, v442, v443, v444);

          v450 = objc_msgSend_strokeIndexes(v410, v445, v446, v447, v448, v449);
          objc_msgSend_addIndexes_(v379, v451, v450, v452, v453, v454);

          v460 = objc_msgSend_strokeIndexes(v410, v455, v456, v457, v458, v459);
          objc_msgSend_addIndexes_(v928, v461, v460, v462, v463, v464);

          v470 = objc_msgSend_strokeIndexes(v410, v465, v466, v467, v468, v469);
          objc_msgSend_addIndexes_(v930, v471, v470, v472, v473, v474);

          v480 = objc_msgSend_strokeIndexes(v410, v475, v476, v477, v478, v479);
          objc_msgSend_removeIndexes_(v385, v481, v480, v482, v483, v484);

          v485 = *(8 * ii) + 1;
          *(8 * ii) = v485;
          v395 = objc_msgSend_objectAtIndexedSubscript_(v933, v486, ii, v487, v488, v489);
          if (v485 >= objc_msgSend_count(v395, v490, v491, v492, v493, v494))
          {

            goto LABEL_90;
          }

          v499 = objc_msgSend_objectAtIndexedSubscript_(v933, v495, ii, v496, v497, v498);
          v504 = objc_msgSend_objectAtIndexedSubscript_(v499, v500, v485, v501, v502, v503);

          v410 = v504;
          if (!v504)
          {
            v395 = 0;
            goto LABEL_90;
          }
        }

        v395 = v410;
      }

LABEL_90:

LABEL_91:
    }
  }

  v288 = objc_msgSend_firstObject(v933, v283, v284, v285, v286, v287);
  v294 = objc_msgSend_count(v288, v289, v290, v291, v292, v293);
  if (v294)
  {
    if (!(v294 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v311 = objc_alloc(MEMORY[0x1E696AC88]);
  v317 = objc_msgSend_count(v288, v312, v313, v314, v315, v316);
  v324 = objc_msgSend_initWithIndexes_length_(v311, v318, 0, v317, v319, v320);
  if (a3)
  {
    v325 = v288;
    *a3 = v288;
  }

  v326 = v288;
  if (v917)
  {
    v952 = v324;
    *v917 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v321, &v952, 1, v322, v323);
  }

LABEL_190:
LABEL_191:
}

void sub_1837C3684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_1837C4570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26)
{
  sub_183686934(v27 + 112);

  sub_183686934(&STACK[0x300]);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);

  _Unwind_Resume(a1);
}

void sub_1837C46A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  v10 = a1 + 80;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v11 = objc_msgSend_strokeIndexes(v3, v4, v5, v6, v7, v8);
    v181[0] = MEMORY[0x1E69E9820];
    v181[1] = 3221225472;
    v181[2] = sub_1837C4E08;
    v181[3] = &unk_1E6DDE3C0;
    v182 = *(a1 + 32);
    v16 = objc_msgSend_indexesPassingTest_(v11, v12, v181, v13, v14, v15);

    v172 = v16;
    if (!objc_msgSend_count(v16, v17, v18, v19, v20, v21))
    {
      v10 = a1 + 88;
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        for (i = 0; i < objc_msgSend_count(*(a1 + 40), v22, v23, v24, v25, v26); ++i)
        {
          v44 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v22, i, v24, v25, v26);
          v50 = objc_msgSend_mutableCopy(v44, v45, v46, v47, v48, v49);

          objc_msgSend_shiftIndexesStartingAtIndex_by_(v50, v51, 0, *(a1 + 104), v52, v53);
          v54 = *(a1 + 56);
          v59 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v55, i, v56, v57, v58);
          objc_msgSend_boundsForStrokeIndexes_(v54, v60, v59, v61, v62, v63);
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v76 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v72, i, v73, v74, v75);
          v77 = v76;
          v83 = objc_msgSend_UTF8String(v77, v78, v79, v80, v81, v82);
          v84 = strlen(v83);
          if (v84 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_183688FF0();
          }

          v85 = v84;
          if (v84 >= 0x17)
          {
            operator new();
          }

          v180 = v84;
          if (v84)
          {
            memmove(&__dst, v83, v84);
          }

          *(&__dst + v85) = 0;
          v86 = sub_18367D41C((a1 + 112), &__dst);
          if (v180 < 0)
          {
            operator delete(__dst);
          }

          v87 = [CHTokenizedMathResultToken alloc];
          v92 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v88, i, v89, v90, v91);
          v95 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v87, v93, v92, v50, v86 | 0x100000, v94, 1.0, v65, v67, v69, v71);

          objc_msgSend_addObject_(*(a1 + 64), v96, v95, v97, v98, v99);
          objc_msgSend_addIndexes_(*(a1 + 72), v100, v50, v101, v102, v103);
        }
      }

      if (*(*(*(a1 + 96) + 8) + 24) == 1)
      {
        v104 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v22, v23, v24, v25, v26);
        v110 = objc_msgSend_strokeIndexes(v9, v105, v106, v107, v108, v109);
        v173[0] = MEMORY[0x1E69E9820];
        v173[1] = 3221225472;
        v173[2] = sub_1837C4E14;
        v173[3] = &unk_1E6DDE408;
        v174 = *(a1 + 32);
        v111 = v9;
        v175 = v111;
        v112 = *(a1 + 72);
        v113 = *(a1 + 592);
        v176 = v112;
        v178 = v113;
        v114 = v104;
        v177 = v114;
        objc_msgSend_enumerateIndexesUsingBlock_(v110, v115, v173, v116, v117, v118);

        v119 = [CHTokenizedMathResultToken alloc];
        v125 = objc_msgSend_string(v111, v120, v121, v122, v123, v124);
        objc_msgSend_score(v111, v126, v127, v128, v129, v130);
        v132 = v131;
        objc_msgSend_bounds(v111, v133, v134, v135, v136, v137);
        v139 = v138;
        v141 = v140;
        v143 = v142;
        v145 = v144;
        v151 = objc_msgSend_properties(v111, v146, v147, v148, v149, v150);
        v157 = objc_msgSend_maskedAlternative(v111, v152, v153, v154, v155, v156);
        objc_msgSend_maskedAlternativeScore(v111, v158, v159, v160, v161, v162);
        v165 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v119, v163, v125, v114, v151, v157, v132, v139, v141, v143, v145, v164);

        objc_msgSend_addObject_(*(a1 + 64), v166, v165, v167, v168, v169);
      }

      else
      {
        objc_msgSend_addObject_(*(a1 + 64), v22, v9, v24, v25, v26);
      }

      goto LABEL_28;
    }

    v27 = objc_msgSend_count(v16, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_strokeIndexes(v9, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);

    if (v27 == v39)
    {
      v40 = *(*(a1 + 96) + 8);
      v41 = v172;
      if (*(v40 + 24) != 1 || (*(*(*(a1 + 88) + 8) + 24) & 1) != 0)
      {
        v42 = 1;
        *(v40 + 24) = 1;
        v10 = a1 + 88;
LABEL_29:
        *(*(*v10 + 8) + 24) = v42;

        goto LABEL_30;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v170 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      LOWORD(__dst) = 0;
      v171 = "Non-consecutive sequence of tokens encountered when replacing scrubbed value.";
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v170 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      LOWORD(__dst) = 0;
      v171 = "Partially covered token encountered when replacing scrubbed value.";
    }

    _os_log_impl(&dword_18366B000, v170, OS_LOG_TYPE_ERROR, v171, &__dst, 2u);
LABEL_26:

LABEL_28:
    v42 = 0;
    v41 = v172;
    goto LABEL_29;
  }

LABEL_30:
}

uint64_t sub_1837C4E14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1837C4F20;
  v39[3] = &unk_1E6DDE3E0;
  v39[4] = a2;
  v9 = objc_msgSend_indexesPassingTest_(v8, a2, v39, a4, a5, a6);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);

  v21 = objc_msgSend_strokeIndexes(*(a1 + 40), v16, v17, v18, v19, v20);
  Index = objc_msgSend_lastIndex(v21, v22, v23, v24, v25, v26);
  if (Index >= objc_msgSend_firstIndex(*(a1 + 48), v28, v29, v30, v31, v32))
  {
    v33 = *(a1 + 64);
  }

  else
  {
    v33 = 0;
  }

  return objc_msgSend_addIndex_(*(a1 + 56), v34, &a2[v33 - v15], v35, v36, v37);
}