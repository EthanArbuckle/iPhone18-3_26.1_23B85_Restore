void sub_1AE71426C()
{
  v0 = qword_1ED9AC800;
  if (qword_1ED9AC800)
  {
    do
    {
      v2 = *v0;
      sub_1AE659D30((v0 + 5));
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v2;
    }

    while (v2);
  }

  v1 = xmmword_1ED9AC7F0;
  *&xmmword_1ED9AC7F0 = 0;
  if (v1)
  {

    operator delete(v1);
  }
}

uint64_t sub_1AE7142F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 - 1) < 2)
  {
    return *(a2 + 24);
  }

  if (v3 == 3)
  {

    return sub_1AE7004D8(a2);
  }

  else
  {
    if (v3)
    {
      __assert_rtn("convert", "LinguisticTokenConverter.cpp", 293, "false");
    }

    v4 = *(*a1 + 32);

    return v4();
  }
}

uint64_t sub_1AE71438C(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, unsigned int a5, int a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  *a3 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v10)
  {
    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    cf = CFStringCreateWithBytes(0, v10, v11, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v13 = *(a1 + 16);
  if (*(a1 + 12))
  {
    v13 = *(v13 + 464);
  }

  sub_1AE65B084(&theArray, *(v13 + 176));
  v14 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v16 = theArray;
    if (theArray)
    {
      v17 = CFArrayGetCount(theArray);
      if (v14 != v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = 0;
      if (v14)
      {
LABEL_18:
        v18 = 0;
        while (Count != v18)
        {
          sub_1AE65B144(v44, v14, v18);
          v19 = cf;
          v20 = v44[0];
          v45 = v44[0];
          v44[0] = 0;
          if (cf)
          {
            CFRetain(cf);
          }

          __p[0] = v19;
          v21 = sub_1AE781358(__p, v20);
          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          ++v18;
          if (v21)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_39;
      }
    }

    v22 = 0;
    if (v17 >= Count)
    {
      v23 = Count;
    }

    else
    {
      v23 = v17;
    }

    while (v23 != v22)
    {
      sub_1AE65B144(v44, v14, v22);
      v24 = cf;
      v25 = v44[0];
      v45 = v44[0];
      v44[0] = 0;
      if (cf)
      {
        CFRetain(cf);
      }

      __p[0] = v24;
      v26 = sub_1AE781358(__p, v25);
      if (v24)
      {
        CFRelease(v24);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      ++v22;
      if (v26)
      {
LABEL_53:
        if (*(a1 + 12) == 1)
        {
          v33 = sub_1AE7098C0(*(*(a1 + 16) + 464), a2);
        }

        else
        {
          v35 = *(a1 + 16);
          if (a6 == 2)
          {
            v33 = sub_1AE66FF64(v35, a2);
          }

          else
          {
            v33 = sub_1AE658250(v35, a2, 0);
          }
        }

        v36 = v33;
        if (!v33)
        {
          sub_1AE7150A8(a1, a2);
        }

        goto LABEL_65;
      }
    }
  }

LABEL_39:
  for (i = a5; i >= 1; --i)
  {
    v28 = *(a4 - 4 + 4 * i);
    if (v28 != 19 && v28 != 34 && (v28 & 0xFFFFFFFD) != 0x28)
    {
      v29 = 0;
      do
      {
        v30 = dword_1AE7A1744[v29];
        if (v28 == v30)
        {
          break;
        }
      }

      while (v29++ != 9);
      if (v28 == v30)
      {
        sub_1AE7150A8(a1, a2);
      }

      break;
    }
  }

  if (*(a1 + 12) == 1)
  {
    v32 = sub_1AE7098C0(*(*(a1 + 16) + 464), a2);
  }

  else
  {
    v34 = *(a1 + 16);
    if (a6 == 2)
    {
      v32 = sub_1AE66FF64(v34, a2);
    }

    else
    {
      v32 = sub_1AE658250(v34, a2, 0);
    }
  }

  v36 = v32;
  if (!v32)
  {
    sub_1AE7150A8(a1, a2);
  }

LABEL_65:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v36;
}

void sub_1AE714F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE7150A8(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (*(a1 + 12))
  {
    v5 = *(v4 + 464);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v6 = a1 + 40;
    while (v8 != v7)
    {
      v9 = *(v8 - 8);
      if (v9)
      {
        CFRelease(v9);
      }

      v8 -= 32;
    }

    *(a1 + 48) = v7;
    *v14 = 0u;
    *__p = 0u;
    v16 = 1065353216;
    v17 = &unk_1F242EF00;
    v18 = v14;
    v19 = v6;
    v20 = &v17;
    sub_1AE7164E8(v5, a2, 1);
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v10 = a1 + 40;
  while (v12 != v11)
  {
    v13 = *(v12 - 8);
    if (v13)
    {
      CFRelease(v13);
    }

    v12 -= 32;
  }

  *(a1 + 48) = v11;
  *v14 = 0u;
  *__p = 0u;
  v16 = 1065353216;
  v17 = &unk_1F242EE80;
  v18 = v14;
  v19 = v10;
  v20 = &v17;
  sub_1AE6A7CB0(v4, a2, 0, 1);
}

void sub_1AE715350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_1AE65714C(&a14);
  sub_1AE715D50(&a9);
  _Unwind_Resume(a1);
}

void sub_1AE715370(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

uint64_t sub_1AE715394(unsigned int **a1, const void **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    if (v5 - v6 == 32)
    {
      v8 = *a2;
      v9 = *(v6 + 3);
      *a2 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v10 = *a1;
      return *v10;
    }

    v26 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v14 = xmmword_1AE79A550;
      v27 = v26;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = xmmword_1AE79A550;
      v32 = 0;
      v33 = xmmword_1AE79A550;
      v34 = 0xFFEFFFFFFFFFFFFFLL;
      v35 = 0;
      v36 = 0;
      if (a5[31] || a5[17] != a5[16] || a5[20] != a5[19] || v6[4])
      {
        v15 = *v6;
        if ((atomic_load_explicit(&qword_1ED9AC5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC5D8))
        {
          if (qword_1ED9AC8F8 != -1)
          {
            dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
          }

          qword_1ED9AC538 = qword_1ED9AC900;
          __cxa_guard_release(&qword_1ED9AC5D8);
        }

        *buf = a3;
        *&buf[8] = a4;
        *&buf[16] = a3;
        *&buf[24] = a4;
        v41 = a3;
        v42 = a4;
        v43 = a3;
        v44 = a4;
        v39 = 0;
        if (!sub_1AE66C188(a5, v15 | (v15 << 32), buf, &v27, qword_1ED9AC538, 1, 1, __p, v14))
        {
          if (qword_1ED9ACA10 != -1)
          {
            dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
          }

          v21 = qword_1ED9AC9E0;
          if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
          {
            v22 = *v6;
            *buf = a3;
            *&buf[8] = a4;
            sub_1AE71616C(__p, buf);
            v23 = v38 >= 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "rescoreCandidates";
            *&buf[12] = 1024;
            *&buf[14] = v22;
            *&buf[18] = 2080;
            *&buf[20] = v23;
            _os_log_error_impl(&dword_1AE5C8000, v21, OS_LOG_TYPE_ERROR, "%s: Failed to calculate P( %d | [ %s ])", buf, 0x1Cu);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }
          }

          __assert_rtn("rescoreCandidates", "LinguisticTokenConverter.cpp", 79, "false");
        }

        *(v6 + 1) = v27.i64[0];
      }

      v6 += 8;
    }

    while (v6 != v5);
    v10 = *a1;
    v16 = a1[1];
    if (*a1 != v16)
    {
      v17 = (v10 + 4);
      if (v10 + 4 != v16)
      {
        do
        {
          if (v10[1] < *(v17 + 1))
          {
            v10 = v17;
          }

          v17 += 8;
        }

        while (v17 != v16);
      }
    }

    if (v10 != v16)
    {
      v18 = *a2;
      v19 = *(v10 + 3);
      *a2 = v19;
      if (v19)
      {
        CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      return *v10;
    }
  }

  return 0;
}

void sub_1AE7156F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

CFComparisonResult sub_1AE715730(void *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    v4 = CFHash(*a2);
    v5 = a1[1];
    if (!*&v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0xD7C06285B9DE677ALL;
    v5 = a1[1];
    if (!*&v5)
    {
      goto LABEL_24;
    }
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

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        result = sub_1AE71606C(v9[2], a2);
        if (result == kCFCompareEqualTo)
        {
          return result;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_24;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }

    if (v11 != v7)
    {
      goto LABEL_24;
    }

LABEL_14:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  result = sub_1AE71606C(v9[2], a2);
  if (result)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1AE715A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE716118(va);
  _Unwind_Resume(a1);
}

void *sub_1AE715A6C(void *result, void *a2)
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

void sub_1AE715CC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

uint64_t sub_1AE715CD0(uint64_t a1)
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

uint64_t sub_1AE715D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[2];
      if (v6)
      {
        CFRelease(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1AE715DC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E1_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E1_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E1_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E1_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE715E6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242F010;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE715F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L14trimCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEEEvRKNT_10value_typeERS9_PK9__CFArrayEUlRKS9_E0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1AE715F78(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 16);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = CFStringCompare(*(a2 + 24), v2[2], 0);
    result = v4 != kCFCompareEqualTo;
    if (v4 == kCFCompareEqualTo)
    {
      break;
    }

    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AE715FD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242EF80;
  a2[1] = v2;
  return result;
}

CFComparisonResult sub_1AE71606C(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t sub_1AE716118(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[2];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AE71616C(_BYTE *a1, unsigned int **a2)
{
  sub_1AE5D9464(&v20);
  v3 = a2[1];
  if (v3)
  {
    v4 = *a2;
    for (i = 4 * v3; i; i -= 4)
    {
      if ((v30 & 0x10) != 0)
      {
        v7 = v29;
        v8 = &v25;
        if (v29 < v26)
        {
          v29 = v26;
          v7 = v26;
          v8 = &v25;
        }
      }

      else
      {
        if ((v30 & 8) == 0)
        {
          v6 = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v7 = v24;
        v8 = v23;
      }

      v9 = *v8;
      v6 = v7 - *v8;
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      v19 = v7 - *v8;
      if (v6)
      {
        memmove(__dst, v9, v6);
      }

LABEL_15:
      *(__dst + v6) = 0;
      if ((v19 & 0x80000000) == 0)
      {
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_1AE5DB608(&v20, " ", 1);
        goto LABEL_20;
      }

      v10 = __dst[1];
      operator delete(__dst[0]);
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      MEMORY[0x1B2706110](&v20, *v4++);
    }
  }

  if ((v30 & 0x10) != 0)
  {
    v13 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v13 = v26;
    }

    v14 = &v25;
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v11 = 0;
      v12 = a1;
      a1[23] = 0;
      goto LABEL_34;
    }

    v14 = v23;
    v13 = v24;
  }

  v15 = *v14;
  v11 = v13 - *v14;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v12 = a1;
  if (v11 >= 0x17)
  {
    operator new();
  }

  a1[23] = v11;
  if (v11)
  {
    memmove(a1, v15, v11);
  }

LABEL_34:
  v12[v11] = 0;
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x1B2706340](&v31);
}

void sub_1AE7164B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1AE5F13B8(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B2706340](&a27);
  _Unwind_Resume(a1);
}

void sub_1AE7164E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  cf = 0;
  v4 = a3;
  operator new();
}

void sub_1AE716814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  sub_1AE658924(&a14);
  std::recursive_mutex::unlock(v16);
  sub_1AE65714C(&a16);
  sub_1AE63109C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE716884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM32MultilingualDynamicLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM32MultilingualDynamicLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM32MultilingualDynamicLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v133enumerateComparableLexiconEntriesIN2LM32MultilingualDynamicLanguageModelEEEvRKT_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS2_22TokenEnumerationPolicyEmRKNS7_8functionIFvPK10__CFStringjdNS2_13SourceLexiconEPK10__CFLocaleRbEEEEUlSK_jdSL_SO_SP_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

CFComparisonResult sub_1AE7168F0(uint64_t a1, const __CFString **a2, int *a3, uint64_t *a4, int *a5, const __CFLocale **a6, uint64_t a7)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = *(a1 + 8);
  v15 = *v14;
  if (!*v14)
  {
    v16 = *(a1 + 16);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      if (!*v16)
      {
        v15 = 0;
        *v14 = 0;
        goto LABEL_9;
      }

      v17 = *(v16 + 1);
      v16 = *v16;
    }

    v18 = CFStringCreateWithBytes(0, v16, v17, 0x8000100u, 0);
    v29 = v18;
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = v18;
    v19 = *(a1 + 8);
    v20 = *v19;
    *v19 = v15;
    if (v20)
    {
      CFRelease(v20);
      v15 = **(a1 + 8);
    }
  }

LABEL_9:
  v30.length = CFStringGetLength(v15);
  v30.location = 0;
  result = CFStringCompareWithOptionsAndLocale(v15, v9, v30, **(a1 + 24), v13);
  if (result == kCFCompareEqualTo)
  {
    v22 = *(a1 + 32);
    v29 = v9;
    v28 = v10;
    v27 = v11;
    v26 = v12;
    v25 = v13;
    v23 = *(v22 + 24);
    if (!v23)
    {
      sub_1AE60819C();
    }

    return (*(*v23 + 48))(v23, &v29, &v28, &v27, &v26, &v25, a7);
  }

  return result;
}

void sub_1AE716A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1AE621E54(va);
  _Unwind_Resume(a1);
}

__n128 sub_1AE716AB8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2432D90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE716B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM32MultilingualDynamicLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM32MultilingualDynamicLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM32MultilingualDynamicLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM32MultilingualDynamicLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE716BDC(uint64_t a1, CFTypeRef *a2, int *a3, uint64_t *a4, int *a5, const __CFLocale **a6)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  sub_1AE66A174(&v22, *a2);
  if (!sub_1AE716D48(*(a1 + 8), &v22))
  {
    sub_1AE66A174(&cf, v7);
    v12 = sub_1AE781358(&cf, v11);
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v12)
    {
      v13 = *(a1 + 16);
      LODWORD(v18) = v8;
      *(&v18 + 1) = v9;
      v19 = v10;
      sub_1AE66A174(&v20, v7);
      v14 = *(v13 + 8);
      if (v14 >= *(v13 + 16))
      {
        v16 = sub_1AE716E88(v13, &v18);
        v17 = v20;
        *(v13 + 8) = v16;
        if (v17)
        {
          CFRelease(v17);
        }
      }

      else
      {
        v15 = v18;
        *(v14 + 16) = v19;
        *v14 = v15;
        *(v14 + 24) = v20;
        *(v13 + 8) = v14 + 32;
      }

      sub_1AE716FF0(*(a1 + 8), &v22);
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

void sub_1AE716D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_1AE717338(&a9);
  sub_1AE63109C(&a14);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AE716D48(void *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    v4 = CFHash(*a2);
    v5 = a1[1];
    if (!*&v5)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0xD7C06285B9DE677ALL;
    v5 = a1[1];
    if (!*&v5)
    {
      return 0;
    }
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

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v12 == v4)
        {
          if (sub_1AE71606C(v9[2], a2) == kCFCompareEqualTo)
          {
            return v9;
          }
        }

        else if ((v12 & v10) != v7)
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

    do
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (sub_1AE71606C(v9[2], a2) == kCFCompareEqualTo)
        {
          return v9;
        }
      }

      else
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }

        if (v11 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t sub_1AE716E88(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = 32 * v4;
  *v10 = *a2;
  *(v10 + 16) = *(a2 + 16);
  *(v10 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v11 = v10 - 32 * v9;
  if (v2 != v3)
  {
    v12 = v2;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 4);
      *v13 = v14;
      *(v13 + 24) = v12[3];
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v3);
    do
    {
      v15 = v2[3];
      if (v15)
      {
        CFRelease(v15);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = v10 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10 + 32;
}

CFComparisonResult sub_1AE716FF0(void *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    v4 = CFHash(*a2);
    v5 = a1[1];
    if (!*&v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0xD7C06285B9DE677ALL;
    v5 = a1[1];
    if (!*&v5)
    {
      goto LABEL_24;
    }
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

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        result = sub_1AE71606C(v9[2], a2);
        if (result == kCFCompareEqualTo)
        {
          return result;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_24;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }

    if (v11 != v7)
    {
      goto LABEL_24;
    }

LABEL_14:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  result = sub_1AE71606C(v9[2], a2);
  if (result)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1AE71731C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE716118(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE717338(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

__n128 sub_1AE717374(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242EF00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE71741C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM22CompositeLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM22CompositeLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM22CompositeLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L23getConversionCandidatesINSt3__16vectorINS0_24LinguisticTokenConverter19ConversionCandidateENS2_9allocatorIS5_EEEEN2LM22CompositeLanguageModelEEEvRKNS2_12basic_stringIcNS2_11char_traitsIcEENS6_IcEEEERT0_RT_EUlPK10__CFStringjdNS9_13SourceLexiconEPK10__CFLocaleRbE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE717488(uint64_t a1, CFTypeRef *a2, int *a3, uint64_t *a4, int *a5, const __CFLocale **a6)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  sub_1AE66A174(&v22, *a2);
  if (!sub_1AE716D48(*(a1 + 8), &v22))
  {
    sub_1AE66A174(&cf, v7);
    v12 = sub_1AE781358(&cf, v11);
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v12)
    {
      v13 = *(a1 + 16);
      LODWORD(v18) = v8;
      *(&v18 + 1) = v9;
      v19 = v10;
      sub_1AE66A174(&v20, v7);
      v14 = *(v13 + 8);
      if (v14 >= *(v13 + 16))
      {
        v16 = sub_1AE716E88(v13, &v18);
        v17 = v20;
        *(v13 + 8) = v16;
        if (v17)
        {
          CFRelease(v17);
        }
      }

      else
      {
        v15 = v18;
        *(v14 + 16) = v19;
        *v14 = v15;
        *(v14 + 24) = v20;
        *(v13 + 8) = v14 + 32;
      }

      sub_1AE716FF0(*(a1 + 8), &v22);
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

void sub_1AE7175B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  sub_1AE717338(&a9);
  sub_1AE63109C(&a14);
  _Unwind_Resume(a1);
}

__n128 sub_1AE7175FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242EE80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE717698(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F242ED80;
  v6 = v5;
  v3[0] = &unk_1F242EE00;
  v3[1] = a1;
  v4 = v3;
  sub_1AE6F24C0(a2, v5, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

void sub_1AE717804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1AE6F2684(va);
  sub_1AE6F2784(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE71782C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7178D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242EE00;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE717970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v124LinguisticTokenConverter7convertERNS0_13TokenSequenceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE717A74(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  if (v2)
  {
    return sub_1AE7098C0(v3[58], a2);
  }

  else
  {
    return sub_1AE658250(v3, a2, 0);
  }
}

void sub_1AE717A90(void *a1)
{
  *a1 = &unk_1F242ED08;
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          CFRelease(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE717B88(void *a1)
{
  *a1 = &unk_1F242ED08;
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          CFRelease(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t sub_1AE717C60(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a2)
  {
    *a2 = *(**(a1 + 8) + 4 * *(a1 + 16));
  }

  if (a3)
  {
    v3 = *(*(a1 + 8) + 24) + 120 * *(a1 + 16);
    v5 = *(v3 + 80);
    v4 = *(v3 + 96);
    v6 = *(v3 + 64);
    *(a3 + 112) = *(v3 + 112);
    *(a3 + 80) = v5;
    *(a3 + 96) = v4;
    *(a3 + 64) = v6;
    v7 = *v3;
    v8 = *(v3 + 16);
    v9 = *(v3 + 48);
    *(a3 + 32) = *(v3 + 32);
    *(a3 + 48) = v9;
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  return 1;
}

BOOL sub_1AE717CB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16) + 1;
  *(a1 + 16) = v2;
  return v2 < (v1[1] - *v1) >> 2;
}

void sub_1AE717CF0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xEEEEEEEEEEEEEEEFLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v4 + 120 * a2;
      v10 = 120 * a2;
      v11 = v4 + 64;
      v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      do
      {
        *(v11 - 40) = 0uLL;
        *(v11 - 24) = 0uLL;
        *(v11 - 8) = 0uLL;
        *(v11 + 8) = 0uLL;
        *(v11 + 24) = 0uLL;
        *(v11 + 40) = 0uLL;
        *(v11 - 64) = v12;
        *(v11 - 48) = 0;
        *(v11 - 32) = 1;
        *(v11 - 24) = 0xFFEFFFFFFFFFFFFFLL;
        *v11 = 0xFFEFFFFFFFFFFFFFLL;
        *(v11 + 16) = 0xFFEFFFFFFFFFFFFFLL;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
        v11 += 120;
        v10 -= 120;
      }

      while (v10);
      *(a1 + 8) = v9;
    }

    else
    {
      *(a1 + 8) = v4;
    }
  }

  else
  {
    v5 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x222222222222222)
    {
      sub_1AE5CBB70();
    }

    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x111111111111111)
    {
      v8 = 0x222222222222222;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x222222222222222)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v13 = 0;
    v14 = 120 * v5;
    v15 = 120 * v5 + 120 * a2;
    v16 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v17 = v14 + v13;
      *(v17 + 24) = 0uLL;
      *(v17 + 40) = 0uLL;
      *(v17 + 56) = 0uLL;
      *(v17 + 72) = 0uLL;
      *(v17 + 88) = 0uLL;
      *(v17 + 104) = 0uLL;
      *v17 = v16;
      *(v17 + 16) = 0;
      *(v17 + 32) = 1;
      *(v17 + 40) = 0xFFEFFFFFFFFFFFFFLL;
      *(v17 + 64) = 0xFFEFFFFFFFFFFFFFLL;
      *(v17 + 80) = 0xFFEFFFFFFFFFFFFFLL;
      *(v17 + 88) = 0;
      *(v17 + 96) = 0;
      *(v17 + 104) = 0;
      v13 += 120;
      *(v17 + 112) = 0;
    }

    while (120 * a2 != v13);
    v18 = *a1;
    v19 = *(a1 + 8) - *a1;
    v20 = v14 - v19;
    memcpy((v14 - v19), *a1, v19);
    *a1 = v20;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

uint64_t sub_1AE717F10(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_1AE654188(a1, 0x40uLL);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32) - v4;
  v6 = 0xEEEEEEEEEEEEEEEFLL * (v5 >> 3);
  if (v6 > 0x3F)
  {
    if (v5 != 7680)
    {
      *(a1 + 32) = v4 + 7680;
    }
  }

  else
  {
    sub_1AE717CF0(a1 + 24, 64 - v6);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while ((*(*a2 + 16))(a2))
  {
    (*(*a2 + 24))(a2, *a1 + v7, *(a1 + 24) + v8);
    ++v9;
    v8 += 120;
    v7 += 4;
    if (v9 == 64)
    {
      return a1;
    }
  }

  v10 = (*(a1 + 8) - *a1) >> 2;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      *(a1 + 8) = *a1 + 4 * v9;
    }
  }

  else
  {
    sub_1AE654188(a1, v9 - v10);
  }

  v11 = *(a1 + 24);
  v12 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 32) - v11) >> 3);
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      *(a1 + 32) = v11 + 120 * v9;
    }
  }

  else
  {
    sub_1AE717CF0(a1 + 24, v9 - v12);
  }

  return a1;
}

void sub_1AE718098(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

void sub_1AE718110(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1AE718174(uint64_t a1, unsigned int a2, int *a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &v4[2 * v5];
  if (v5)
  {
    do
    {
      v7 = v5 >> 1;
      v8 = &v4[2 * (v5 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v5 += ~(v5 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
    if (a4)
    {
      goto LABEL_7;
    }

    return 1;
  }

  if (!a4)
  {
    return 1;
  }

LABEL_7:
  if (v4 == v6 || *v4 != a2)
  {
    v11 = 3;
  }

  else
  {
    v11 = v4[1];
  }

  *a3 = v11;
  return 1;
}

uint64_t sub_1AE7181E4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return *(*(a1 + 24) + 4 * *a2);
  }

  v3 = a2;
  while (1)
  {
    v4 = *v3++;
    if (*(a1 + 32) <= v4)
    {
      break;
    }

    if (!--a3)
    {
      return *(*(a1 + 24) + 4 * *a2);
    }
  }

  return 0;
}

void sub_1AE718224(uint64_t a1)
{
  *a1 = &unk_1F242F0D8;
  if (*(a1 + 8))
  {
    v1 = a1;
    munmap(*(a1 + 8), *(a1 + 16));
    a1 = v1;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE7182A0(uint64_t result)
{
  *result = &unk_1F242F0D8;
  if (*(result + 8))
  {
    v1 = result;
    munmap(*(result + 8), *(result + 16));
    result = v1;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1AE7182FC(void *a1)
{
  if (a1[1] <= 0xFuLL)
  {
    sub_1AE5F2968(v13);
    v3 = sub_1AE5DB608(v14, "(file_size=", 11);
    v4 = MEMORY[0x1B2706120](v3, a1[1]);
    v5 = sub_1AE5DB608(v4, ", offset=", 9);
    v6 = MEMORY[0x1B2706120](v5, 0);
    v7 = sub_1AE5DB608(v6, ", object_size=", 14);
    v8 = MEMORY[0x1B2706120](v7, 16);
    sub_1AE5DB608(v8, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, v13);
    v10 = sub_1AE67B590(&v12, "attempted to read beyond the end of the mapped file ", &__dst);
    MEMORY[0x1B2705EC0](exception, &v12, v10);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a1;
}

void sub_1AE718408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
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
      sub_1AE644C5C(&a22);
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

uint64_t sub_1AE718478(_DWORD *a1, unsigned int a2)
{
  if (a1[8] <= a2 && a1[9] >= a2 || a1[10] <= a2 && a1[11] >= a2)
  {
    return 0;
  }

  if (a1[12] <= a2 && a1[13] >= a2)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1AE7184D8(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5 = a4;
  if (a3 < 1)
  {
    return v5 - a4;
  }

  v5 = a4;
  if (a5 < 1)
  {
    return v5 - a4;
  }

  v6 = &a2[a3];
  v7 = *(a1 + 88);
  v8 = &a4[a5];
  if (!v7)
  {
    v23 = a2 + 1;
    v5 = a4;
    do
    {
      *v5++ = *(v23 - 1);
      if (v23 >= v6)
      {
        break;
      }

      ++v23;
    }

    while (v5 < v8);
    return v5 - a4;
  }

  v9 = *(a1 + 80);
  v5 = a4;
  while (1)
  {
    v10 = *a2;
    v11 = v9;
    v12 = v7;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v10)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v7] && *v11 == v10)
    {
      break;
    }

    *v5++ = v10;
LABEL_15:
    if (++a2 >= v6 || v5 >= v8)
    {
      return v5 - a4;
    }
  }

  if ((v8 - v5) >= 9)
  {
    v17 = v11[1];
    v18 = *(a1 + 100);
    v19 = *(a1 + 104);
    v20 = (v17 >> (v19 + v18)) & ~(-1 << *(a1 + 96));
    v21 = (v17 >> v19) & ~(-1 << v18);
    *v5 = v20;
    v5[1] = v21;
    v22 = v17 & ~(-1 << v19);
    v5[2] = v22;
    *v5 = *(a1 + 32) + v20;
    v5[1] = *(a1 + 40) + v21;
    v5[2] = *(a1 + 48) + v22;
    v5 += 3;
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1AE718618(uint64_t a1, char *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = a4;
  if (a5 < 1)
  {
    return v5 - a4;
  }

  v5 = a4;
  if (a3 < 1)
  {
    return v5 - a4;
  }

  v6 = &a2[4 * a3];
  v7 = a2;
  v5 = a4;
  while (1)
  {
    if (v6 - v7 < 9)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 12;
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      if (v10 != v9)
      {
        v11 = *(v7 + 2) - *(a1 + 48) + ((*(v7 + 1) - *(a1 + 40)) << *(a1 + 104)) + ((*v7 - *(a1 + 32)) << (*(a1 + 104) + *(a1 + 100)));
        v12 = (v10 - v9) >> 3;
        do
        {
          v13 = v12 >> 1;
          v14 = &v9[8 * (v12 >> 1)];
          v15 = *(v14 + 1);
          v16 = v14 + 8;
          v12 += ~(v12 >> 1);
          if (v15 < v11)
          {
            v9 = v16;
          }

          else
          {
            v12 = v13;
          }
        }

        while (v12);
        if (v9 != v10 && *(v9 + 1) == v11)
        {
          v17 = *v9;
          goto LABEL_17;
        }
      }
    }

    v17 = *a2;
    if (*(a1 + 24) > *a2 || v17 > *(a1 + 28))
    {
      return 0;
    }

LABEL_17:
    *v5++ = v17;
    v18 = v5 >= &a4[a5] || v8 >= v6;
    v7 = v8;
    if (v18)
    {
      return v5 - a4;
    }
  }
}

void sub_1AE718724(void *a1)
{
  *a1 = &unk_1F242F190;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    munmap(v3, a1[2]);
  }

  a1[2] = 0;

  JUMPOUT(0x1B2706400);
}

void *sub_1AE7187AC(void *a1)
{
  *a1 = &unk_1F242F190;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    munmap(v3, a1[2]);
  }

  a1[2] = 0;
  return a1;
}

int8x16_t *sub_1AE718814(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].i64[1];
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      if (a2[-1].i32[3] >= v9->i32[1])
      {
        return result;
      }

      v63 = v9->i64[0];
      goto LABEL_111;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v71 = &v9->u64[1];
      v73 = v9 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v9;
          do
          {
            v77 = v75->u32[3];
            v78 = v75->u32[1];
            v75 = v71;
            if (v77 < v78)
            {
              v79 = v71->i64[0];
              v80 = HIDWORD(v75->i64[0]);
              v81 = v74;
              do
              {
                *(&v9->i64[1] + v81) = *(v9->i64 + v81);
                if (!v81)
                {
                  v76 = v9;
                  goto LABEL_125;
                }

                v82 = *(&v9->u32[-1] + v81);
                v81 -= 8;
              }

              while (v82 > v80);
              v76 = (&v9->i64[1] + v81);
LABEL_125:
              *v76 = v79;
            }

            v71 = &v75->u64[1];
            v74 += 8;
          }

          while (&v75->u64[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v117 = v7->u32[3];
          v118 = v7->u32[1];
          v7 = v71;
          if (v117 < v118)
          {
            v119 = v71->i64[0];
            v120 = HIDWORD(v71->i64[0]);
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
            }

            while (*(v122 - 3) > v120);
            *v121 = v119;
          }

          v71 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v83 = (v10 - 2) >> 1;
        v84 = v83;
        do
        {
          if (v83 >= v84)
          {
            v86 = (2 * (v84 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v87 = &v9->i8[8 * v86];
            if (2 * (v84 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v10)
            {
              v88 = *(v87 + 1);
              v89 = *(v87 + 3);
              v87 += 8 * (v88 < v89);
              if (v88 < v89)
              {
                v86 = 2 * (v84 & 0x1FFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v90 = &v9->i8[8 * v84];
            if (*(v87 + 1) >= *(v90 + 1))
            {
              v91 = *v90;
              v92 = HIDWORD(*v90);
              do
              {
                v93 = v90;
                v90 = v87;
                *v93 = *v87;
                if (v83 < v86)
                {
                  break;
                }

                v94 = (2 * (v86 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v87 = &v9->i8[8 * v94];
                v95 = 2 * v86 + 2;
                if (v95 < v10)
                {
                  v96 = *(v87 + 1);
                  result = *(v87 + 3);
                  v87 += 8 * (v96 < result);
                  if (v96 < result)
                  {
                    v94 = v95;
                  }
                }

                v86 = v94;
              }

              while (*(v87 + 1) >= v92);
              *v90 = v91;
            }
          }

          v85 = v84-- <= 0;
        }

        while (!v85);
        do
        {
          v97 = 0;
          v98 = v9->i64[0];
          v99 = v9;
          do
          {
            v104 = &v99[v97];
            v103 = (v104 + 1);
            v105 = (2 * v97) | 1;
            v97 = 2 * v97 + 2;
            if (v97 < v10)
            {
              v100 = *(v104 + 3);
              v101 = *(v104 + 5);
              v102 = (v104 + 2);
              if (v100 >= v101)
              {
                v97 = v105;
              }

              else
              {
                v103 = v102;
              }
            }

            else
            {
              v97 = v105;
            }

            *v99 = v103->i64[0];
            v99 = v103;
          }

          while (v97 <= ((v10 - 2) >> 1));
          a2 = (a2 - 8);
          if (v103 == a2)
          {
            v103->i64[0] = v98;
          }

          else
          {
            v103->i64[0] = a2->i64[0];
            a2->i64[0] = v98;
            v106 = (v103 - v9 + 8) >> 3;
            v85 = v106 < 2;
            v107 = v106 - 2;
            if (!v85)
            {
              v108 = v107 >> 1;
              v109 = (v9 + 8 * v108);
              if (v109->i32[1] < v103->i32[1])
              {
                v110 = v103->i64[0];
                v111 = HIDWORD(v103->i64[0]);
                do
                {
                  v112 = v103;
                  v103 = v109;
                  *v112 = v109->i64[0];
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = (v9 + 8 * v108);
                }

                while (v109->i32[1] < v111);
                v103->i64[0] = v110;
              }
            }
          }

          v85 = v10-- <= 2;
        }

        while (!v85);
      }

      return result;
    }

    v11 = &v9->i8[8 * (v10 >> 1)];
    v12 = a2[-1].u32[3];
    if (v10 < 0x81)
    {
      v15 = v9->u32[1];
      if (v15 < *(v11 + 1))
      {
        v16 = *v11;
        if (v12 < v15)
        {
          *v11 = *v8;
          goto LABEL_37;
        }

        *v11 = v9->i64[0];
        v9->i64[0] = v16;
        if (a2[-1].i32[3] < HIDWORD(v16))
        {
          v9->i64[0] = *v8;
LABEL_37:
          *v8 = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_39;
      }

      if (v12 >= v15)
      {
        goto LABEL_38;
      }

      v19 = v9->i64[0];
      v9->i64[0] = *v8;
      *v8 = v19;
      if (v9->i32[1] >= *(v11 + 1))
      {
        goto LABEL_38;
      }

      v20 = *v11;
      *v11 = v9->i64[0];
      v9->i64[0] = v20;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_39:
      v27 = v9->i64[0];
LABEL_63:
      v40 = v9;
      do
      {
        v41 = v40;
        v40 = (v40 + 8);
      }

      while (v41->i32[3] < HIDWORD(v27));
      v42 = a2;
      if (v41 == v9)
      {
        v45 = a2;
        while (v40 < v45)
        {
          v43 = (v45 - 8);
          v46 = v45[-1].u32[3];
          v45 = (v45 - 8);
          if (v46 < HIDWORD(v27))
          {
            goto LABEL_71;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = (v42 - 8);
          v44 = v42[-1].u32[3];
          v42 = (v42 - 8);
        }

        while (v44 >= HIDWORD(v27));
LABEL_71:
        if (v40 < v43)
        {
          v47 = v40;
          v48 = v43;
          do
          {
            v49 = v47->i64[0];
            v47->i64[0] = v48->i64[0];
            v48->i64[0] = v49;
            do
            {
              v41 = v47;
              v47 = (v47 + 8);
            }

            while (v41->i32[3] < HIDWORD(v27));
            do
            {
              v50 = v48[-1].u32[3];
              v48 = (v48 - 8);
            }

            while (v50 >= HIDWORD(v27));
          }

          while (v47 < v48);
        }
      }

      if (v41 != v9)
      {
        v9->i64[0] = v41->i64[0];
      }

      v41->i64[0] = v27;
      if (v40 < v43)
      {
        goto LABEL_82;
      }

      v51 = sub_1AE7193B4(v9, v41);
      v9 = &v41->u64[1];
      result = sub_1AE7193B4(&v41->u64[1], a2);
      if (result)
      {
        a2 = v41;
        if (!v51)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v51)
      {
LABEL_82:
        result = sub_1AE718814(v7, v41, a3, a4 & 1);
        a4 = 0;
        v9 = &v41->u64[1];
      }
    }

    else
    {
      v13 = *(v11 + 1);
      if (v13 >= v9->i32[1])
      {
        if (v12 < v13)
        {
          v17 = *v11;
          *v11 = *v8;
          *v8 = v17;
          if (*(v11 + 1) < v9->i32[1])
          {
            v18 = v9->i64[0];
            v9->i64[0] = *v11;
            *v11 = v18;
          }
        }
      }

      else
      {
        v14 = v9->i64[0];
        if (v12 >= v13)
        {
          v9->i64[0] = *v11;
          *v11 = v14;
          if (a2[-1].i32[3] >= HIDWORD(v14))
          {
            goto LABEL_29;
          }

          *v11 = *v8;
        }

        else
        {
          v9->i64[0] = *v8;
        }

        *v8 = v14;
      }

LABEL_29:
      v21 = (v11 - 8);
      v22 = *(v11 - 1);
      v23 = a2[-1].u32[1];
      if (v22 >= v9->i32[3])
      {
        if (v23 < v22)
        {
          v25 = *v21;
          *v21 = a2[-1].i64[0];
          a2[-1].i64[0] = v25;
          if (*(v11 - 1) < v9->i32[3])
          {
            v26 = v9->i64[1];
            v9->i64[1] = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = v9->i64[1];
        if (v23 >= v22)
        {
          v9->i64[1] = *v21;
          *v21 = v24;
          if (a2[-1].i32[1] >= HIDWORD(v24))
          {
            goto LABEL_43;
          }

          *v21 = a2[-1].i64[0];
        }

        else
        {
          v9->i64[1] = a2[-1].i64[0];
        }

        a2[-1].i64[0] = v24;
      }

LABEL_43:
      v28 = *(v11 + 3);
      v29 = a2[-2].u32[3];
      if (v28 >= v9[1].i32[1])
      {
        if (v29 < v28)
        {
          v31 = *(v11 + 1);
          *(v11 + 1) = a2[-2].i64[1];
          a2[-2].i64[1] = v31;
          if (*(v11 + 3) < v9[1].i32[1])
          {
            v32 = v9[1].i64[0];
            v9[1].i64[0] = *(v11 + 1);
            *(v11 + 1) = v32;
          }
        }
      }

      else
      {
        v30 = v9[1].i64[0];
        if (v29 >= v28)
        {
          v9[1].i64[0] = *(v11 + 1);
          *(v11 + 1) = v30;
          if (a2[-2].i32[3] >= HIDWORD(v30))
          {
            goto LABEL_52;
          }

          *(v11 + 1) = a2[-2].i64[1];
        }

        else
        {
          v9[1].i64[0] = a2[-2].i64[1];
        }

        a2[-2].i64[1] = v30;
      }

LABEL_52:
      v33 = *(v11 + 1);
      v34 = *(v11 - 1);
      v35 = *(v11 + 3);
      if (v33 >= v34)
      {
        v36 = *v11;
        if (v35 < v33)
        {
          v37 = *(v11 + 1);
          *v11 = v37;
          *(v11 + 1) = v36;
          if (v34 <= HIDWORD(v37))
          {
            v36 = v37;
          }

          else
          {
            v36 = *v21;
            *v21 = v37;
            *v11 = v36;
          }
        }
      }

      else
      {
        v36 = *v21;
        if (v35 >= v33)
        {
          *v21 = *v11;
          *v11 = v36;
          if (v35 < HIDWORD(v36))
          {
            v38 = *(v11 + 1);
            *v11 = v38;
            *(v11 + 1) = v36;
            v36 = v38;
          }
        }

        else
        {
          *v21 = *(v11 + 1);
          *(v11 + 1) = v36;
          v36 = *v11;
        }
      }

      v39 = v9->i64[0];
      v9->i64[0] = v36;
      *v11 = v39;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_62:
      v27 = v9->i64[0];
      if (v9[-1].i32[3] < v9->i32[1])
      {
        goto LABEL_63;
      }

      if (a2[-1].i32[3] <= HIDWORD(v27))
      {
        v54 = &v9->u64[1];
        do
        {
          v9 = v54;
          if (v54 >= a2)
          {
            break;
          }

          v55 = v54->u32[1];
          v54 = (v54 + 8);
        }

        while (v55 <= HIDWORD(v27));
      }

      else
      {
        v52 = v9;
        do
        {
          v9 = &v52->u64[1];
          v53 = v52->u32[3];
          v52 = (v52 + 8);
        }

        while (v53 <= HIDWORD(v27));
      }

      v56 = a2;
      if (v9 < a2)
      {
        v57 = a2;
        do
        {
          v56 = (v57 - 8);
          v58 = v57[-1].u32[3];
          v57 = (v57 - 8);
        }

        while (v58 > HIDWORD(v27));
      }

      while (v9 < v56)
      {
        v59 = v9->i64[0];
        v9->i64[0] = v56->i64[0];
        v56->i64[0] = v59;
        do
        {
          v60 = v9->u32[3];
          v9 = (v9 + 8);
        }

        while (v60 <= HIDWORD(v27));
        do
        {
          v61 = v56[-1].u32[3];
          v56 = (v56 - 8);
        }

        while (v61 > HIDWORD(v27));
      }

      v62 = &v9[-1].i64[1];
      if (&v9[-1].u64[1] != v7)
      {
        v7->i64[0] = *v62;
      }

      a4 = 0;
      *v62 = v27;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      v66 = v9->u32[3];
      v67 = v9->u32[1];
      LODWORD(v68) = v9[1].i32[1];
      if (v66 >= v67)
      {
        if (v68 < v66)
        {
          v114 = v9->u64[1];
          v115 = v9[1].i64[0];
          v9->i64[1] = v115;
          v9[1].i64[0] = v114;
          v68 = HIDWORD(v114);
          if (v67 > HIDWORD(v115))
          {
            v116 = v9->i64[0];
            v9->i64[0] = v115;
            v9->i64[1] = v116;
          }
        }
      }

      else
      {
        v69 = v9->i64[0];
        v70 = HIDWORD(v9->i64[0]);
        if (v68 < v66)
        {
          v9->i64[0] = v9[1].i64[0];
          goto LABEL_181;
        }

        v9->i64[0] = v9->i64[1];
        v9->i64[1] = v69;
        if (v68 < v70)
        {
          v9->i64[1] = v9[1].i64[0];
LABEL_181:
          v9[1].i64[0] = v69;
          LODWORD(v68) = v70;
        }
      }

      if (a2[-1].i32[3] < v68)
      {
        v124 = v9[1].i64[0];
        v9[1].i64[0] = *v8;
        *v8 = v124;
        if (v9[1].i32[1] < v9->i32[3])
        {
          v126 = v9->i64[1];
          v125 = v9[1].i64[0];
          v9->i64[1] = v125;
          v9[1].i64[0] = v126;
          if (v9->i32[1] > HIDWORD(v125))
          {
            v127 = v9->i64[0];
            v9->i64[0] = v125;
            v9->i64[1] = v127;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return sub_1AE71922C(v9, &v9->u64[1], &v9[1], &v9[1].u64[1], &a2[-1].u64[1]);
    }

    goto LABEL_10;
  }

  v64 = v9->u32[3];
  v65 = a2[-1].u32[3];
  if (v64 >= v9->i32[1])
  {
    if (v65 < v64)
    {
      v113 = v9->i64[1];
      v9->i64[1] = *v8;
      *v8 = v113;
      if (v9->i32[3] < v9->i32[1])
      {
        *v9 = vextq_s8(*v9, *v9, 8uLL);
      }
    }
  }

  else
  {
    v63 = v9->i64[0];
    if (v65 < v64)
    {
LABEL_111:
      v9->i64[0] = *v8;
      *v8 = v63;
      return result;
    }

    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v63;
    if (a2[-1].i32[3] < HIDWORD(v63))
    {
      v9->i64[1] = *v8;
      *v8 = v63;
    }
  }

  return result;
}

unint64_t *sub_1AE71922C(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if (*(a2 + 1) >= *(result + 1))
      {
        v6 = HIDWORD(v8);
      }

      else
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *(a3 + 1);
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      *result = *a2;
      *a2 = v7;
      LODWORD(v6) = *(a3 + 1);
      if (v6 < HIDWORD(v7))
      {
        *a2 = *a3;
        *a3 = v7;
        v6 = HIDWORD(v7);
      }
    }

    else
    {
      *result = *a3;
      *a3 = v7;
      v6 = HIDWORD(v7);
    }
  }

  if (*(a4 + 1) < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*(a2 + 1) < *(result + 1))
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*(a2 + 1) < *(result + 1))
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AE7193B4(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->u32[3];
      v5 = a2[-1].u32[3];
      if (v4 >= a1->i32[1])
      {
        if (v5 < v4)
        {
          v15 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if (a1->i32[3] < a1->i32[1])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].i32[3] < HIDWORD(v3))
        {
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v3;
        }

        return 1;
      }

      goto LABEL_12;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_1AE71922C(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_13;
    }

    v10 = a1->u32[3];
    v11 = a1->u32[1];
    LODWORD(v12) = a1[1].i32[1];
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v19 = a1->u64[1];
        v20 = a1[1].i64[0];
        a1->i64[1] = v20;
        a1[1].i64[0] = v19;
        v12 = HIDWORD(v19);
        if (v11 > HIDWORD(v20))
        {
          v21 = a1->i64[0];
          a1->i64[0] = v20;
          a1->i64[1] = v21;
        }
      }

      goto LABEL_46;
    }

    v13 = a1->i64[0];
    v14 = HIDWORD(a1->i64[0]);
    if (v12 >= v10)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v13;
      if (v12 >= v14)
      {
LABEL_46:
        if (a2[-1].i32[3] < v12)
        {
          v31 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v31;
          if (a1[1].i32[1] < a1->i32[3])
          {
            v33 = a1->i64[1];
            v32 = a1[1].i64[0];
            a1->i64[1] = v32;
            a1[1].i64[0] = v33;
            if (a1->i32[1] > HIDWORD(v32))
            {
              v34 = a1->i64[0];
              a1->i64[0] = v32;
              a1->i64[1] = v34;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v13;
    LODWORD(v12) = v14;
    goto LABEL_46;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].i32[3] < a1->i32[1])
    {
      v3 = a1->i64[0];
LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v3;
    }

    return 1;
  }

LABEL_13:
  v6 = a1->u32[3];
  v7 = a1->u32[1];
  v8 = a1[1].u32[1];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = a1->i64[1];
      v16 = a1[1].i64[0];
      a1->i64[1] = v16;
      a1[1].i64[0] = v17;
      if (v7 > HIDWORD(v16))
      {
        v18 = a1->i64[0];
        a1->i64[0] = v16;
        a1->i64[1] = v18;
      }
    }
  }

  else
  {
    v9 = a1->i64[0];
    if (v8 >= v6)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v9;
      if (v8 >= HIDWORD(v9))
      {
        goto LABEL_33;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v9;
  }

LABEL_33:
  v22 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 1;
  while (1)
  {
    if (v22->i32[1] < v25->i32[1])
    {
      v27 = v22->i64[0];
      v28 = HIDWORD(v22->i64[0]);
      v29 = v23;
      do
      {
        *(&a1[1].i64[1] + v29) = *(a1[1].i64 + v29);
        if (v29 == -16)
        {
          v26 = a1;
          goto LABEL_36;
        }

        v30 = *(&a1->u32[3] + v29);
        v29 -= 8;
      }

      while (v30 > v28);
      v26 = (&a1[1].i64[1] + v29);
LABEL_36:
      *v26 = v27;
      if (++v24 == 8)
      {
        return &v22->u64[1] == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 = (v22 + 8);
    if (v22 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_1AE7196A4(uint64_t a1, int a2, CFDictionaryRef theDict, int a4)
{
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = a4;
  *(a1 + 52) = a2;
  if (a2 == 1 && a4 == 8)
  {
    v6 = 63;
  }

  else if (a2 == 1 && a4 == 16)
  {
    v6 = 255;
  }

  else if (a2 == 2 && a4 == 8)
  {
    v6 = 0;
  }

  else if (a4 == 16 && a2 == 2)
  {
    v6 = 63;
  }

  else
  {
    v6 = -1;
  }

  memset(v11, 0, sizeof(v11));
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    Count = CFDictionaryGetCount(theDict);
    if (Count)
    {
      if (!(Count >> 61))
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    CFDictionaryGetKeysAndValues(theDict, 0, 0);
  }

  if (v6)
  {
    v9 = 1;
    do
    {
      if (v9 == 256)
      {
        sub_1AE5F1DA4("bitset test argument out of range");
      }

      if (((*(v11 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        operator new();
      }

      ++v9;
    }

    while (v6 + 1 != v9);
  }

  return a1;
}

void sub_1AE7199A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  operator delete(v18);
  sub_1AE6BD1D0(v17);
  sub_1AE627688(*v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE719A24(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(v3 + 40))
    {
      v4 = *(v3 + 32);
      v5 = *(*(v3 + 24) + 8);
      v6 = *v4;
      *(v6 + 8) = v5;
      *v5 = v6;
      *(v3 + 40) = 0;
      if (v4 != (v3 + 24))
      {
        do
        {
          v7 = v4[1];
          operator delete(v4);
          v4 = v7;
        }

        while (v7 != (v3 + 24));
      }
    }

    sub_1AE627688(*(v3 + 8));
    MEMORY[0x1B2706400](v3, 0x1020C4014A78C51);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    if (*(v8 + 40))
    {
      v9 = *(v8 + 32);
      v10 = *(*(v8 + 24) + 8);
      v11 = *v9;
      *(v11 + 8) = v10;
      *v10 = v11;
      *(v8 + 40) = 0;
      if (v9 != (v8 + 24))
      {
        do
        {
          v12 = v9[1];
          operator delete(v9);
          v9 = v12;
        }

        while (v12 != (v8 + 24));
      }
    }

    sub_1AE627688(*(v8 + 8));
    MEMORY[0x1B2706400](v8, 0x1020C4014A78C51);
  }

  return a1;
}

BOOL sub_1AE719B30(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 52);
  v5 = 220;
  v6 = v4 == 16 && v3 == 2;
  v7 = 0xFFFFFFFFLL;
  if (v6)
  {
    v7 = 55;
  }

  if (v3 != 1 || v4 != 16)
  {
    v5 = v7;
  }

  if (v3 == 1 && v4 == 8)
  {
    v10 = 55;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(a1 + 16);
  if (v11 >= v10)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x4002000000;
    v53 = sub_1AE71A05C;
    v56[0] = 0;
    v56[1] = 0;
    v54 = sub_1AE71A098;
    v55 = v56;
    v48 = 0;
    v49 = 0;
    v46[5] = a1;
    v47 = &v48;
    v46[0] = MEMORY[0x1E69E9820];
    a3.n128_u64[0] = 0x40000000;
    v46[1] = 0x40000000;
    v46[2] = sub_1AE71A0A0;
    v46[3] = &unk_1E7A2EF88;
    v46[4] = &v50;
    v13 = *a2;
    if (*a2)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        v15 = a2;
        v16 = *(v13 + 6);
        v57[0] = 0;
        sub_1AE774C98(v14, 1u, v16, v57, 1, v14 + 4, v46, a3);
        v4 = *(a1 + 48);
        v3 = *(a1 + 52);
        a2 = v15;
      }
    }

    v43 = v10;
    v42 = a2;
    if (v3 == 1 && v4 == 8 || v3 == 1 && v4 == 16 || (v4 == 16 ? (v17 = v3 == 2) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 5), v18))
    {
      v19 = v51[5];
      if (v19 != v51 + 6)
      {
        v20 = v48;
        if (v48)
        {
          v21 = *(v19 + 32);
          do
          {
            while (1)
            {
              v22 = v20;
              v23 = *(v20 + 7);
              if (v21 >= v23)
              {
                break;
              }

              v20 = *v22;
              if (!*v22)
              {
                goto LABEL_39;
              }
            }

            if (v23 >= v21)
            {
              operator new();
            }

            v20 = v22[1];
          }

          while (v20);
        }

LABEL_39:
        operator new();
      }
    }

    if (v49)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 1174405120;
      v44[2] = sub_1AE71A1BC;
      v44[3] = &unk_1F242F1D0;
      v44[4] = a1;
      sub_1AE71A24C(v45, &v47);
      if (*v42)
      {
        sub_1AE7793E0(*v42, 0, v44, *(*v42 + 6));
      }

      sub_1AE673B40(v45[1]);
    }

    v24 = *a1;
    v25 = v48;
    if (*a1 != a1 + 8 && v48)
    {
      do
      {
        if (!v25)
        {
          goto LABEL_60;
        }

        v27 = *(v24 + 14);
        v28 = &v48;
        v29 = v25;
        do
        {
          v30 = v29;
          v31 = v28;
          v32 = *(v29 + 7);
          if (v32 >= v27)
          {
            v28 = v29;
          }

          v29 = v29[v32 < v27];
        }

        while (v29);
        if (v28 == &v48)
        {
          goto LABEL_60;
        }

        if (v32 < v27)
        {
          v30 = v31;
        }

        if (v27 >= *(v30 + 7))
        {
          v36 = v24[1];
          v37 = v36;
          v38 = v24;
          if (v36)
          {
            do
            {
              v34 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v34 = v38[2];
              v6 = *v34 == v38;
              v38 = v34;
            }

            while (!v6);
          }

          v39 = v24;
          if (v36)
          {
            do
            {
              v40 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v40 = v39[2];
              v6 = *v40 == v39;
              v39 = v40;
            }

            while (!v6);
          }

          if (*a1 == v24)
          {
            *a1 = v40;
          }

          v41 = *(a1 + 8);
          --*(a1 + 16);
          sub_1AE615AE0(v41, v24);
          if (*(v24 + 55) < 0)
          {
            operator delete(v24[4]);
          }

          operator delete(v24);
          v25 = v48;
        }

        else
        {
LABEL_60:
          v33 = v24[1];
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v35 = v24;
              v24 = v24[2];
            }

            while (*v24 != v35);
            v34 = v24;
          }
        }

        v24 = v34;
      }

      while (v34 != (a1 + 8));
    }

    sub_1AE673B40(v25);
    _Block_object_dispose(&v50, 8);
    sub_1AE673B40(v56[0]);
    v10 = v43;
  }

  return v11 >= v10;
}

void sub_1AE71A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_1AE673B40(a18);
  sub_1AE673B40(a27);
  _Block_object_dispose(&a29, 8);
  sub_1AE673B40(a35);
  _Unwind_Resume(a1);
}

void *sub_1AE71A05C(void *result, void *a2)
{
  v2 = a2 + 6;
  v3 = a2[6];
  v4 = a2[5];
  result[6] = v3;
  v5 = result + 6;
  result[5] = v4;
  v6 = a2[7];
  result[7] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v5;
  }

  return result;
}

uint64_t sub_1AE71A0A0(uint64_t result, unsigned int a2, float a3)
{
  v4 = *(*(result + 40) + 48);
  v5 = a2 & 0x3F;
  v6 = v4 == 8;
  if (v4 == 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2 & 0x3F;
  }

  if (!v6)
  {
    v5 = (a2 >> 6);
  }

  if (*(*(result + 40) + 52) == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(result + 32) + 8) + 48);
  if (!v9)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 28);
      v12 = *(v9 + 32);
      v13 = v8 < v12;
      if (v11 != a3)
      {
        v13 = v11 > a3;
      }

      if (!v13)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_19;
      }
    }

    v14 = v12 < v8;
    if (v11 != a3)
    {
      v14 = v11 < a3;
    }

    if (!v14)
    {
      return result;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_1AE71A1BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 48);
  v2 = *(*(a1 + 32) + 52);
  v4 = a2 & 0x3F;
  if (v3 == 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 & 0x3F;
  }

  if (v3 == 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = *(*(a1 + 32) + 48);
  }

  if (v3 != 8)
  {
    v4 = (a2 >> 6);
  }

  if (v2 == 1)
  {
    v3 = v6;
  }

  else
  {
    v4 = v5;
  }

  v9 = *(a1 + 48);
  v7 = a1 + 48;
  v8 = v9;
  if (v9)
  {
    v10 = v7;
    do
    {
      v11 = *(v8 + 28);
      v12 = v11 >= v4;
      v13 = v11 < v4;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != v7 && v4 >= *(v10 + 28))
    {
      v14 = v2 == 1;
      v15 = a2 & 0xFFFFFFC0;
      v16 = a2 & 0xFFFFC03F;
      if (!v14)
      {
        v16 = a2 & 0xFFFFFFC0;
      }

      if (v3 != 8)
      {
        v15 = a2;
      }

      if (v3 == 16)
      {
        return v16;
      }

      else
      {
        return v15;
      }
    }
  }

  return a2;
}

void *sub_1AE71A24C(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_10;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_10:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v11 = v3;
              v12 = *(v3 + 28);
              if (v8 >= v12)
              {
                break;
              }

              v3 = *v11;
              v9 = v11;
              if (!*v11)
              {
                goto LABEL_22;
              }
            }

            if (v12 >= v8)
            {
              break;
            }

            v9 = v11 + 1;
            v3 = v11[1];
            if (!v3)
            {
              goto LABEL_22;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_22:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v13 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

__CFDictionary *sub_1AE71A420(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CFNumberCreate(0, kCFNumberIntType, &unk_1AE7A2294);
  CFDictionarySetValue(Mutable, @"Version", v3);
  CFRelease(v3);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = sub_1AE71A4F8(v4);
    CFDictionarySetValue(Mutable, @"Recipients", v5);
    CFRelease(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = sub_1AE71A4F8(v6);
    CFDictionarySetValue(Mutable, @"SpatialTemporal", v7);
    CFRelease(v7);
  }

  return Mutable;
}

__CFDictionary *sub_1AE71A4F8(void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      if (*(v4 + 55) < 0)
      {
        sub_1AE5DBF1C(__p, v4[4], v4[5]);
      }

      else
      {
        *__p = *(v4 + 2);
        v15 = v4[6];
      }

      v16 = *(v4 + 14);
      if (v15 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
      valuePtr = v16;
      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, v7, v8);
      CFRelease(v8);
      CFRelease(v7);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
        v9 = v4[1];
        if (v9)
        {
          do
          {
LABEL_14:
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
          goto LABEL_3;
        }
      }

      else
      {
        v9 = v4[1];
        if (v9)
        {
          goto LABEL_14;
        }
      }

      do
      {
        v10 = v4[2];
        v11 = *v10 == v4;
        v4 = v10;
      }

      while (!v11);
LABEL_3:
      v4 = v10;
    }

    while (v10 != v3);
  }

  return Mutable;
}

void sub_1AE71A650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE71A670(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_1AE627688(*(a1 + 8));
  *a1 = v2;
  *(a1 + 16) = 0;
  *v2 = 0;
  v3 = (a1 + 24);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 24) + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(a1 + 40) = 0;
    if (v4 != v3)
    {
      do
      {
        v7 = v4[1];
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v3);
    }
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 52);
  v10 = v8 == 1 && v9 == 8;
  if (v10 || (v8 == 1 ? (v11 = v9 == 16) : (v11 = 0), v11 || v8 != 2 || v9 != 8))
  {
    operator new();
  }
}

uint64_t sub_1AE71A790(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a2 = *(*(a1 + 16) + 16 * *(a1 + 8));
  if (a3)
  {
    *a3 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 64) = xmmword_1AE79A550;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    v3 = *(*(a1 + 16) + 16 * *(a1 + 8) + 8);
    *(a3 + 40) = v3;
    *(a3 + 48) = 0x3FF0000000000000;
    *a3 = v3;
    *(a3 + 8) = v3;
    *(a3 + 116) = 1;
  }

  return 1;
}

BOOL sub_1AE71A804(void *a1)
{
  v1 = a1[2];
  v2 = a1[1] + 1;
  a1[1] = v2;
  return v2 < (a1[3] - v1) >> 4;
}

void sub_1AE71A824(void *a1)
{
  *a1 = &unk_1F242F210;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71A898(void *result)
{
  *result = &unk_1F242F210;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE71A8F0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1AE71A90C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = a2[a3 - 1];
  v7 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((v6 - 1) < 2 || v6 == v7)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = (*(*v10 + 32))(v10);
  v12 = a3;
  while (v12 * 4)
  {
    v13 = a2[--v12];
    if (v13 == v11)
    {
      v14 = &a2[v12 + 1];
      goto LABEL_13;
    }
  }

  v14 = a2;
LABEL_13:
  v15 = a3 - (v14 - a2);
  if (a3 != v14 - a2)
  {
    do
    {
      if ((*v14 - 1) > 1)
      {
        break;
      }

      ++v14;
      --v15;
    }

    while (v15);
  }

  return (*(*v10 + 64))(v10) ^ 1;
}

uint64_t sub_1AE71AA40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v6 = result;
    result = (*(**(result + 8) + 32))(*(result + 8));
    v8 = 4 * a3;
    while (v8)
    {
      v9 = *(a2 + v8 - 4);
      v8 -= 4;
      if (v9 == result)
      {
        v10 = a2 + v8 + 4;
        goto LABEL_7;
      }
    }

    v10 = a2;
LABEL_7:
    v11 = (v10 - a2) >> 2;
    v12 = a3 - v11;
    if (a3 != v11)
    {
      v13 = v10;
      v14 = 4 * v11 - 4 * a3;
      while ((*v13 - 1) <= 1)
      {
        ++v13;
        v14 += 4;
        if (!--v12)
        {
          return result;
        }
      }

      v15 = v13[v12 - 1];
      result = (*(**(v6 + 8) + 32))(*(v6 + 8));
      if ((v15 - 1) >= 2 && v15 != result)
      {
        v17 = *(v6 + 8);
        v18 = (*(*v17 + 32))(v17);
        v19 = (v10 + 4 * a3 - 4 * v11 + 4);
        while (v14)
        {
          v20 = *(v19 - 2);
          --v19;
          v14 += 4;
          if (v20 == v18)
          {
            goto LABEL_21;
          }
        }

        v19 = v13;
LABEL_21:
        v21 = v12 - (v19 - v13);
        if (v12 != v19 - v13)
        {
          do
          {
            if ((*v19 - 1) > 1)
            {
              break;
            }

            ++v19;
            --v21;
          }

          while (v21);
        }

        result = (*(*v17 + 64))(v17);
        if ((result & 1) == 0)
        {
          return (*(**(v6 + 8) + 56))(*(v6 + 8), v13, v12, a4);
        }
      }
    }
  }

  return result;
}

void sub_1AE71AC50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE71ADC8(void *a1)
{
  *a1 = &unk_1F242F258;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71AE80(void *a1)
{
  *a1 = &unk_1F242F258;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

const void **sub_1AE71AF18(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE71AF74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242F310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE71AFE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v4 = (v2 + 1);
    if (v3 > (v2 + 1))
    {
      do
      {
        v5 = *v4++;
        free(v5);
        v3 = *(a1 + 32);
      }

      while (v4 < v3);
      v2 = *(a1 + 24);
    }
  }

  if (v3 - v2 < 9)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v2;
    *(a1 + 32) = v2 + 1;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v6;
  *(a1 + 72) = 0;
}

_DWORD *sub_1AE71B064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 56);
    v4 = *(a1 + 64);
    v6 = v5 - v3;
    if (0x6DB6DB6DB6DB6DB7 * ((v5 - v3) >> 3) != v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 56 * *(a1 + 64);
  }

  v5 = malloc_type_malloc(v6, 0x10F10408BCD9BB6uLL);
  v13[0] = v5;
  sub_1AE671F84(a1 + 24, v13);
  *(a1 + 48) = v5;
  v1 = *(a1 + 16);
LABEL_8:
  ++*(a1 + 72);
  *(a1 + 56) = v5 + 14;
  v7 = *v1;
  if (*v1)
  {
    if (qword_1EB5E0C40 != -1)
    {
      v12 = *v1;
      dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
      v7 = v12;
    }

    (*(**(qword_1EB5E0C48 + 8 * (*v7 & 3)) + 32))(v13);
    v8 = v13[0];
    v9 = v13[1];
    v10 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  v5[4] = 0;
  *v5 = &unk_1F2431B10;
  *(v5 + 1) = 0;
  *(v5 + 3) = a1;
  v5[8] = v8;
  *(v5 + 5) = v9;
  *(v5 + 48) = v10;
  return v5;
}

void sub_1AE71B1E8(void *a1)
{
  *a1 = &unk_1F242F360;
  v2 = a1[3];
  if (v2 < a1[4])
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < a1[4]);
    v2 = a1[3];
  }

  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (*(v5 + 48))
      {
        free(*(v5 + 8));
      }

      free(v5);
    }

    MEMORY[0x1B2706400](v4, 0x80C40B8603338);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71B2C8(void *a1)
{
  *a1 = &unk_1F242F360;
  v2 = a1[3];
  if (v2 < a1[4])
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < a1[4]);
    v2 = a1[3];
  }

  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (*(v5 + 48))
      {
        free(*(v5 + 8));
      }

      free(v5);
    }

    MEMORY[0x1B2706400](v4, 0x80C40B8603338);
  }

  return a1;
}

void *sub_1AE71B388(void *a1)
{
  *a1 = &unk_1F242F360;
  v2 = a1[3];
  if (v2 < a1[4])
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < a1[4]);
    v2 = a1[3];
  }

  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (*(v5 + 48))
      {
        free(*(v5 + 8));
      }

      free(v5);
    }

    MEMORY[0x1B2706400](v4, 0x80C40B8603338);
  }

  return a1;
}

void sub_1AE71B448(void *a1)
{
  *a1 = &unk_1F242F390;
  v2 = a1[10];
  if (v2)
  {
    munmap(v2, a1[11]);
  }

  a1[11] = 0;
  *a1 = &unk_1F242F360;
  v3 = a1[3];
  if (v3 < a1[4])
  {
    do
    {
      v4 = *v3++;
      free(v4);
    }

    while (v3 < a1[4]);
    v3 = a1[3];
  }

  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      if (*(v6 + 48))
      {
        free(*(v6 + 8));
      }

      free(v6);
    }

    MEMORY[0x1B2706400](v5, 0x80C40B8603338);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71B55C(void *a1)
{
  *a1 = &unk_1F242F390;
  v2 = a1[10];
  if (v2)
  {
    munmap(v2, a1[11]);
  }

  a1[11] = 0;
  *a1 = &unk_1F242F360;
  v3 = a1[3];
  if (v3 < a1[4])
  {
    do
    {
      v4 = *v3++;
      free(v4);
    }

    while (v3 < a1[4]);
    v3 = a1[3];
  }

  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      if (*(v6 + 48))
      {
        free(*(v6 + 8));
      }

      free(v6);
    }

    MEMORY[0x1B2706400](v5, 0x80C40B8603338);
  }

  return a1;
}

void sub_1AE71B650(const void **a1, const void **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  v6 = a2;
  v7 = a1;
  if (a4 == 2)
  {
    v8 = a2 - 3;
    v9 = *(a2 - 1);
    if (v9 >= 0)
    {
      v10 = a2 - 3;
    }

    else
    {
      v10 = *(a2 - 3);
    }

    if (v9 >= 0)
    {
      v11 = *(a2 - 1);
    }

    else
    {
      v11 = *(a2 - 2);
    }

    v12 = *(v7 + 23);
    if (v12 >= 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = *v7;
    }

    if (v12 >= 0)
    {
      v14 = *(v7 + 23);
    }

    else
    {
      v14 = v7[1];
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = memcmp(v10, v13, v15);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v11 >= v14)
    {
      return;
    }

    v24 = v7[2];
    v25 = *v7;
    v26 = v8[2];
    *v7 = *v8;
    v7[2] = v26;
    *v8 = v25;
    v8[2] = v24;
    return;
  }

  if (a4 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v27 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return;
    }

    v28 = 0;
    v29 = a1;
    while (1)
    {
      v30 = v29;
      v29 = v27;
      v32 = *(v30 + 47);
      if (v32 >= 0)
      {
        v33 = v27;
      }

      else
      {
        v33 = *v27;
      }

      if (v32 >= 0)
      {
        v34 = *(v30 + 47);
      }

      else
      {
        v34 = v30[4];
      }

      v35 = *(v30 + 23);
      if (v35 >= 0)
      {
        v36 = v30;
      }

      else
      {
        v36 = *v30;
      }

      if (v35 >= 0)
      {
        v37 = *(v30 + 23);
      }

      else
      {
        v37 = v30[1];
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (v39)
      {
        if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v34 >= v37)
      {
        goto LABEL_34;
      }

      v73 = v29[2];
      v72 = *v29;
      if ((v73 & 0x8000000000000000) == 0)
      {
        v40 = &v72;
      }

      else
      {
        v40 = v72;
      }

      if ((v73 & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v73);
      }

      else
      {
        v41 = *(&v72 + 1);
      }

      v42 = v30[2];
      *v29 = *v30;
      v29[2] = v42;
      *(v30 + 23) = 0;
      *v30 = 0;
      if (v30 == v7)
      {
        v30 = v7;
      }

      else
      {
        v43 = v28;
        do
        {
          v44 = v7 + v43;
          v45 = *(v7 + v43 - 1);
          if (v45 >= 0)
          {
            v46 = v7 + v43 - 24;
          }

          else
          {
            v46 = *(v7 + v43 - 24);
          }

          if (v45 >= 0)
          {
            v47 = *(v7 + v43 - 1);
          }

          else
          {
            v47 = *(v7 + v43 - 16);
          }

          if (v47 >= v41)
          {
            v48 = v41;
          }

          else
          {
            v48 = v47;
          }

          v49 = memcmp(v40, v46, v48);
          if (v49)
          {
            if ((v49 & 0x80000000) == 0)
            {
              v30 = (v7 + v43);
              goto LABEL_77;
            }
          }

          else if (v41 >= v47)
          {
            goto LABEL_77;
          }

          v30 -= 3;
          *v44 = *(v7 + v43 - 24);
          *(v44 + 2) = *(v7 + v43 - 8);
          *(v44 - 1) = 0;
          *(v44 - 24) = 0;
          v43 -= 24;
        }

        while (v43);
        v30 = v7;
LABEL_77:
        v6 = a2;
      }

      v31 = v72;
      v30[2] = v73;
      *v30 = v31;
LABEL_34:
      v27 = v29 + 3;
      v28 += 24;
      if (v29 + 3 == v6)
      {
        return;
      }
    }
  }

  v17 = a5;
  v18 = a4 >> 1;
  v19 = &a1[3 * (a4 >> 1)];
  if (a4 > a6)
  {
    sub_1AE71B650(a1, &a1[3 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
    v23 = a4 - v18;
    sub_1AE71B650(v19, v6, a3, v23, v17, a6);

    sub_1AE71BFC0(v7, v19, v6, v18, v23, v17, a6);
    return;
  }

  v71 = 0;
  *&v72 = a5;
  *(&v72 + 1) = &v71;
  sub_1AE71BB10(a1, &a1[3 * (a4 >> 1)], a3, a4 >> 1, a5);
  v71 = v18;
  v51 = a4 - v18;
  v52 = v17 + 24 * v18;
  sub_1AE71BB10(v19, v6, a3, v51, v52);
  v71 = a4;
  v53 = (v17 + 24 * a4);
  v54 = v52;
  v55 = v17;
  while (v54 != v53)
  {
    v57 = *(v54 + 23);
    if (v57 >= 0)
    {
      v58 = v54;
    }

    else
    {
      v58 = *v54;
    }

    if (v57 >= 0)
    {
      v59 = *(v54 + 23);
    }

    else
    {
      v59 = v54[1];
    }

    v60 = *(v55 + 23);
    if (v60 >= 0)
    {
      v61 = v55;
    }

    else
    {
      v61 = *v55;
    }

    if (v60 >= 0)
    {
      v62 = *(v55 + 23);
    }

    else
    {
      v62 = v55[1];
    }

    if (v62 >= v59)
    {
      v63 = v59;
    }

    else
    {
      v63 = v62;
    }

    v64 = memcmp(v58, v61, v63);
    if (v64)
    {
      if (v64 < 0)
      {
        goto LABEL_102;
      }
    }

    else if (v59 < v62)
    {
LABEL_102:
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v65 = *v54;
      v7[2] = v54[2];
      *v7 = v65;
      *(v54 + 23) = 0;
      *v54 = 0;
      v54 += 3;
      goto LABEL_80;
    }

    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v56 = *v55;
    v7[2] = v55[2];
    *v7 = v56;
    *(v55 + 23) = 0;
    *v55 = 0;
    v55 += 3;
LABEL_80:
    v7 += 3;
    if (v55 == v52)
    {
      while (v54 != v53)
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        v67 = *v54;
        v7[2] = v54[2];
        *v7 = v67;
        v7 += 3;
        *(v54 + 23) = 0;
        *v54 = 0;
        v54 += 3;
      }

      goto LABEL_113;
    }
  }

  while (v55 != v52)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v66 = *v55;
    v7[2] = v55[2];
    *v7 = v66;
    v7 += 3;
    *(v55 + 23) = 0;
    *v55 = 0;
    v55 += 3;
  }

LABEL_113:
  if (v17)
  {
    v68 = v71;
    if (v71)
    {
      v69 = 0;
      do
      {
        if (*(v17 + 23) < 0)
        {
          operator delete(*v17);
          v68 = v71;
        }

        ++v69;
        v17 += 24;
      }

      while (v69 < v68);
    }
  }
}

void sub_1AE71BAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AE71BF4C(va);
  _Unwind_Resume(a1);
}

void sub_1AE71BB10(const void **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = a2;
    v7 = a1;
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        v8 = *a1;
        *(a5 + 16) = a1[2];
        *a5 = v8;
LABEL_110:
        v9 = v7;
        goto LABEL_111;
      }

      if (a4 <= 8)
      {
        if (a1 == a2)
        {
          return;
        }

        v20 = *a1;
        *(a5 + 16) = a1[2];
        *a5 = v20;
        a1[1] = 0;
        a1[2] = 0;
        *a1 = 0;
        v21 = a1 + 3;
        if (a1 + 3 == a2)
        {
          return;
        }

        v22 = 0;
        v23 = a5;
LABEL_29:
        v25 = v21;
        v26 = v23 + 3;
        v27 = *(v7 + 47);
        if (v27 >= 0)
        {
          v28 = v21;
        }

        else
        {
          v28 = *v21;
        }

        if (v27 >= 0)
        {
          v29 = *(v7 + 47);
        }

        else
        {
          v29 = v7[4];
        }

        v30 = *(v23 + 23);
        if (v30 >= 0)
        {
          v31 = v23;
        }

        else
        {
          v31 = *v23;
        }

        if (v30 >= 0)
        {
          v32 = *(v23 + 23);
        }

        else
        {
          v32 = v23[1];
        }

        if (v32 >= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v32;
        }

        v34 = memcmp(v28, v31, v33);
        if (v34)
        {
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v29 >= v32)
        {
LABEL_27:
          v24 = *v25;
          v23[5] = v25[2];
          *v26 = v24;
          v25[1] = 0;
          v25[2] = 0;
          *v25 = 0;
          goto LABEL_28;
        }

        *v26 = *v23;
        v23[5] = v23[2];
        v23[1] = 0;
        v23[2] = 0;
        *v23 = 0;
        v35 = v5;
        if (v23 == v5)
        {
          goto LABEL_75;
        }

        v68 = v23 + 3;
        v36 = v22;
        while (1)
        {
          v37 = v5 + v36;
          v38 = *(v7 + 47);
          if (v38 >= 0)
          {
            v39 = v25;
          }

          else
          {
            v39 = *v25;
          }

          if (v38 >= 0)
          {
            v40 = *(v7 + 47);
          }

          else
          {
            v40 = v7[4];
          }

          v41 = *(v37 - 1);
          if (v41 >= 0)
          {
            v42 = (v5 + v36 - 24);
          }

          else
          {
            v42 = *(v5 + v36 - 24);
          }

          if (v41 >= 0)
          {
            v43 = *(v37 - 1);
          }

          else
          {
            v43 = *(v37 - 16);
          }

          if (v43 >= v40)
          {
            v44 = v40;
          }

          else
          {
            v44 = v43;
          }

          v45 = memcmp(v39, v42, v44);
          if (v45)
          {
            if ((v45 & 0x80000000) == 0)
            {
              v35 = v23;
              goto LABEL_74;
            }
          }

          else if (v40 >= v43)
          {
            v35 = (v5 + v36);
LABEL_74:
            v6 = a2;
            v26 = v68;
LABEL_75:
            if (*(v35 + 23) < 0)
            {
              operator delete(*v35);
            }

            v46 = *v25;
            v35[2] = v25[2];
            *v35 = v46;
            *(v7 + 47) = 0;
            *v25 = 0;
LABEL_28:
            v21 = v25 + 3;
            v22 += 24;
            v23 = v26;
            v7 = v25;
            if (v25 + 3 == v6)
            {
              return;
            }

            goto LABEL_29;
          }

          if (*(v5 + v36 + 23) < 0)
          {
            operator delete(*v37);
          }

          v23 -= 3;
          *v37 = *(v5 + v36 - 24);
          *(v37 + 16) = *(v5 + v36 - 8);
          *(v37 - 1) = 0;
          *(v37 - 24) = 0;
          v36 -= 24;
          if (!v36)
          {
            v35 = v5;
            goto LABEL_74;
          }
        }
      }

      v47 = a4 >> 1;
      v48 = 3 * (a4 >> 1);
      v49 = &a1[v48];
      sub_1AE71B650(a1, &a1[v48], a3, v47, a5, v47);
      sub_1AE71B650(&v7[v48], v6, a3, a4 - v47, v5 + v48 * 8, a4 - v47);
      v52 = &v7[v48];
      while (1)
      {
        if (v52 == v6)
        {
          while (v7 != v49)
          {
            v63 = *v7;
            *(v5 + 16) = v7[2];
            *v5 = v63;
            v5 += 24;
            v7[1] = 0;
            v7[2] = 0;
            *v7 = 0;
            v7 += 3;
          }

          return;
        }

        v54 = *(v52 + 23);
        if (v54 >= 0)
        {
          v55 = v52;
        }

        else
        {
          v55 = *v52;
        }

        if (v54 >= 0)
        {
          v56 = *(v52 + 23);
        }

        else
        {
          v56 = v52[1];
        }

        v57 = *(v7 + 23);
        if (v57 >= 0)
        {
          v58 = v7;
        }

        else
        {
          v58 = *v7;
        }

        if (v57 >= 0)
        {
          v59 = *(v7 + 23);
        }

        else
        {
          v59 = v7[1];
        }

        if (v59 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v59;
        }

        v61 = memcmp(v55, v58, v60);
        if (v61)
        {
          if ((v61 & 0x80000000) == 0)
          {
            goto LABEL_101;
          }
        }

        else if (v56 >= v59)
        {
LABEL_101:
          v62 = *v7;
          *(v5 + 16) = v7[2];
          *v5 = v62;
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v7 += 3;
          goto LABEL_80;
        }

        v53 = *v52;
        *(v5 + 16) = v52[2];
        *v5 = v53;
        v52[1] = 0;
        v52[2] = 0;
        *v52 = 0;
        v52 += 3;
LABEL_80:
        v5 += 24;
        if (v7 == v49)
        {
          while (v52 != v6)
          {
            v64 = *v52;
            *(v5 + 16) = v52[2];
            *v5 = v64;
            v5 += 24;
            v52[1] = 0;
            v52[2] = 0;
            *v52 = 0;
            v52 += 3;
          }

          return;
        }
      }
    }

    v9 = a2 - 3;
    v10 = *(a2 - 1);
    if (v10 >= 0)
    {
      v11 = a2 - 3;
    }

    else
    {
      v11 = *(a2 - 3);
    }

    if (v10 >= 0)
    {
      v12 = *(a2 - 1);
    }

    else
    {
      v12 = *(a2 - 2);
    }

    v13 = *(v7 + 23);
    if (v13 >= 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = *v7;
    }

    if (v13 >= 0)
    {
      v15 = *(v7 + 23);
    }

    else
    {
      v15 = v7[1];
    }

    if (v15 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v17 = memcmp(v11, v14, v16);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
LABEL_22:
        v18 = *v7;
        *(v5 + 16) = v7[2];
        *v5 = v18;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
        v19 = *v9;
        *(v5 + 40) = v9[2];
        *(v5 + 24) = v19;
LABEL_111:
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
        return;
      }
    }

    else if (v12 >= v15)
    {
      goto LABEL_22;
    }

    v65 = *v9;
    *(v5 + 16) = v9[2];
    *v5 = v65;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v66 = *v7;
    *(v5 + 40) = v7[2];
    *(v5 + 24) = v66;
    goto LABEL_110;
  }
}

uint64_t *sub_1AE71BF4C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
          v4 = *v3;
        }

        ++v5;
        v2 += 24;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

void sub_1AE71BFC0(const void **a1, const void **a2, const void **a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v9 = a5;
  while (2)
  {
    while (2)
    {
      if (v9 <= a7 || a4 <= a7)
      {
        if (a4 > v9)
        {
          if (a2 == a3)
          {
            return;
          }

          v62 = 0;
          v63 = a6;
          v64 = a2;
          do
          {
            v65 = *v64;
            *(v63 + 2) = v64[2];
            *v63 = v65;
            v63 = (v63 + 24);
            v64[1] = 0;
            v64[2] = 0;
            *v64 = 0;
            v64 += 3;
            ++v62;
          }

          while (v64 != a3);
          v66 = a3 - 3;
          v107 = a6;
          while (1)
          {
            if (a2 == a1)
            {
              for (; v63 != a6; v63 = (v63 - 24))
              {
                if (*(v66 + 23) < 0)
                {
                  operator delete(*v66);
                }

                v99 = *(v63 - 24);
                v66[2] = *(v63 - 1);
                *v66 = v99;
                v66 -= 3;
                *(v63 - 1) = 0;
                *(v63 - 24) = 0;
              }

              goto LABEL_166;
            }

            v69 = a2 - 3;
            v70 = *(v63 - 1);
            if (v70 >= 0)
            {
              v71 = v63 - 24;
            }

            else
            {
              v71 = *(v63 - 3);
            }

            if (v70 >= 0)
            {
              v72 = *(v63 - 1);
            }

            else
            {
              v72 = *(v63 - 2);
            }

            v68 = a2 - 1;
            v73 = *(a2 - 1);
            if (v73 >= 0)
            {
              v74 = a2 - 3;
            }

            else
            {
              v74 = *(a2 - 3);
            }

            if (v73 >= 0)
            {
              v75 = *(a2 - 1);
            }

            else
            {
              v75 = *(a2 - 2);
            }

            if (v75 >= v72)
            {
              v76 = v72;
            }

            else
            {
              v76 = v75;
            }

            v77 = memcmp(v71, v74, v76);
            if (v77)
            {
              if (v77 < 0)
              {
                goto LABEL_128;
              }
            }

            else if (v72 < v75)
            {
LABEL_128:
              a6 = v107;
              if (*(v66 + 23) < 0)
              {
                operator delete(*v66);
              }

              v78 = *v69;
              v66[2] = *(a2 - 1);
              *v66 = v78;
              a2 -= 3;
              goto LABEL_106;
            }

            a6 = v107;
            if (*(v66 + 23) < 0)
            {
              operator delete(*v66);
            }

            v67 = *(v63 - 24);
            v66[2] = *(v63 - 1);
            *v66 = v67;
            v68 = v63 - 1;
            v69 = v63 - 3;
            v63 = (v63 - 24);
LABEL_106:
            *v68 = 0;
            *v69 = 0;
            v66 -= 3;
            if (v63 == a6)
            {
              goto LABEL_166;
            }
          }
        }

        if (a2 == a1)
        {
          return;
        }

        v62 = 0;
        v79 = a6;
        v80 = a1;
        do
        {
          v81 = v79;
          v82 = *v80;
          *(v79 + 2) = v80[2];
          *v79 = v82;
          v79 = (v79 + 24);
          v80[1] = 0;
          v80[2] = 0;
          *v80 = 0;
          v80 += 3;
          ++v62;
        }

        while (v80 != a2);
        v83 = a6;
        while (1)
        {
          if (a2 == a3)
          {
            do
            {
              if (*(a1 + 23) < 0)
              {
                operator delete(*a1);
              }

              v95 = *v83;
              a1[2] = *(v83 + 2);
              *a1 = v95;
              a1 += 3;
              *(v83 + 23) = 0;
              *v83 = 0;
              v96 = v83 == v81;
              v83 = (v83 + 24);
            }

            while (!v96);
LABEL_166:
            if (a6 && v62)
            {
              for (i = 0; i < v62; ++i)
              {
                if (*(a6 + 23) < 0)
                {
                  operator delete(*a6);
                }

                a6 = (a6 + 24);
              }
            }

            return;
          }

          v85 = a3;
          v86 = *(a2 + 23);
          if (v86 >= 0)
          {
            v87 = a2;
          }

          else
          {
            v87 = *a2;
          }

          if (v86 >= 0)
          {
            v88 = *(a2 + 23);
          }

          else
          {
            v88 = a2[1];
          }

          v89 = *(v83 + 23);
          if (v89 >= 0)
          {
            v90 = v83;
          }

          else
          {
            v90 = *v83;
          }

          if (v89 >= 0)
          {
            v91 = *(v83 + 23);
          }

          else
          {
            v91 = *(v83 + 1);
          }

          if (v91 >= v88)
          {
            v92 = v88;
          }

          else
          {
            v92 = v91;
          }

          v93 = memcmp(v87, v90, v92);
          if (v93)
          {
            if (v93 < 0)
            {
              goto LABEL_158;
            }
          }

          else if (v88 < v91)
          {
LABEL_158:
            a3 = v85;
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v94 = *a2;
            a1[2] = a2[2];
            *a1 = v94;
            *(a2 + 23) = 0;
            *a2 = 0;
            a2 += 3;
            goto LABEL_136;
          }

          a3 = v85;
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v84 = *v83;
          a1[2] = *(v83 + 2);
          *a1 = v84;
          *(v83 + 23) = 0;
          *v83 = 0;
          v83 = (v83 + 24);
LABEL_136:
          a1 += 3;
          if (v83 == v79)
          {
            goto LABEL_166;
          }
        }
      }

      if (!a4)
      {
        return;
      }

      v14 = *(a2 + 23);
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v14 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = a2[1];
      }

      while (1)
      {
        v17 = *(a1 + 23);
        if (v17 >= 0)
        {
          v18 = a1;
        }

        else
        {
          v18 = *a1;
        }

        if (v17 >= 0)
        {
          v19 = *(a1 + 23);
        }

        else
        {
          v19 = a1[1];
        }

        if (v19 >= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v19;
        }

        v21 = memcmp(v15, v18, v20);
        if (!v21)
        {
          if (v16 < v19)
          {
            break;
          }

          goto LABEL_13;
        }

        if (v21 < 0)
        {
          break;
        }

LABEL_13:
        a1 += 3;
        if (!--a4)
        {
          return;
        }
      }

      v108 = v9;
      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          v119 = a1[2];
          v114 = *a1;
          v97 = *a2;
          a1[2] = a2[2];
          *a1 = v97;
          *a2 = v114;
          a2[2] = v119;
          return;
        }

        v36 = a4 / 2;
        v23 = &a1[3 * (a4 / 2)];
        if (a2 == a3)
        {
          v109 = 0;
          v37 = a2;
LABEL_78:
          v22 = 0xAAAAAAAAAAAAAAABLL * (v37 - a2);
          goto LABEL_79;
        }

        v102 = a7;
        v104 = a3;
        v106 = a6;
        v109 = 0;
        v38 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
        v39 = *(v23 + 23);
        if (v39 >= 0)
        {
          v40 = &a1[3 * (a4 / 2)];
        }

        else
        {
          v40 = *v23;
        }

        if (v39 >= 0)
        {
          v41 = *(v23 + 23);
        }

        else
        {
          v41 = v23[1];
        }

        while (1)
        {
          v42 = v38 >> 1;
          v43 = v109 + 24 * (v38 >> 1);
          v44 = *(a2 + v43 + 23);
          if (v44 >= 0)
          {
            v45 = a2 + v43;
          }

          else
          {
            v45 = *(a2 + v43);
          }

          if (v44 >= 0)
          {
            v46 = *(a2 + v43 + 23);
          }

          else
          {
            v46 = *(a2 + v43 + 8);
          }

          if (v41 >= v46)
          {
            v47 = v46;
          }

          else
          {
            v47 = v41;
          }

          v48 = memcmp(v45, v40, v47);
          if (v48)
          {
            if ((v48 & 0x80000000) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (v46 >= v41)
          {
            goto LABEL_62;
          }

          v109 = v43 + 24;
          v42 = v38 + ~v42;
LABEL_62:
          v38 = v42;
          if (!v42)
          {
            v37 = (a2 + v109);
            a3 = v104;
            a6 = v106;
            v23 = &a1[3 * (a4 / 2)];
            a7 = v102;
            v36 = a4 / 2;
            goto LABEL_78;
          }
        }
      }

      v22 = v9 / 2;
      v109 = 8 * (((v9 + (v9 >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v9 / 2);
      v23 = a2;
      if (a2 == a1)
      {
        goto LABEL_54;
      }

      v100 = v9 / 2;
      v101 = a7;
      v103 = a3;
      v105 = a6;
      v24 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
      v25 = *(a2 + v109 + 23);
      if (v25 >= 0)
      {
        v26 = a2 + v109;
      }

      else
      {
        v26 = *(a2 + v109);
      }

      if (v25 >= 0)
      {
        v27 = *(a2 + v109 + 23);
      }

      else
      {
        v27 = *(a2 + v109 + 8);
      }

      v23 = a1;
      while (2)
      {
        v28 = v24 >> 1;
        v29 = v23;
        v30 = &v23[3 * (v24 >> 1)];
        v31 = *(v30 + 23);
        if (v31 >= 0)
        {
          v32 = &v23[3 * (v24 >> 1)];
        }

        else
        {
          v32 = *v30;
        }

        if (v31 >= 0)
        {
          v33 = *(v30 + 23);
        }

        else
        {
          v33 = v30[1];
        }

        if (v33 >= v27)
        {
          v34 = v27;
        }

        else
        {
          v34 = v33;
        }

        v35 = memcmp(v26, v32, v34);
        if (v35)
        {
          v23 = v29;
          if (v35 < 0)
          {
            goto LABEL_35;
          }

LABEL_34:
          v23 = v30 + 3;
          v28 = v24 + ~v28;
          goto LABEL_35;
        }

        v23 = v29;
        if (v27 >= v33)
        {
          goto LABEL_34;
        }

LABEL_35:
        v24 = v28;
        if (v28)
        {
          continue;
        }

        break;
      }

      a3 = v103;
      a6 = v105;
      v22 = v100;
      a7 = v101;
LABEL_54:
      v36 = 0xAAAAAAAAAAAAAAABLL * (v23 - a1);
LABEL_79:
      v49 = (a2 + v109);
      v50 = (a2 + v109);
      if (a2 != v23)
      {
        v50 = v23;
        if (a2 != v49)
        {
          v115 = v23[2];
          v110 = *v23;
          v51 = *a2;
          v23[2] = a2[2];
          *v23 = v51;
          *a2 = v110;
          a2[2] = v115;
          v50 = v23 + 3;
          v52 = v109 - 24;
          if (v109 != 24)
          {
            v53 = a2 + 3;
            do
            {
              if (v50 == a2)
              {
                a2 = v53;
              }

              v116 = v50[2];
              v111 = *v50;
              v54 = *v53;
              v50[2] = v53[2];
              *v50 = v54;
              v50 += 3;
              *v53 = v111;
              v53[2] = v116;
              v53 += 3;
              v52 -= 24;
            }

            while (v52);
          }

          if (v50 != a2)
          {
            v55 = v50;
            v56 = a2;
            while (1)
            {
              v117 = v55[2];
              v112 = *v55;
              v57 = *v56;
              v55[2] = v56[2];
              *v55 = v57;
              v55 += 3;
              v56[2] = v117;
              *v56 = v112;
              v56 += 3;
              v58 = v55 == a2;
              if (v56 == v49)
              {
                if (v55 == a2)
                {
                  break;
                }

                v56 = a2 + 3;
                while (1)
                {
                  v118 = v55[2];
                  v113 = *v55;
                  v59 = *a2;
                  v55[2] = a2[2];
                  *v55 = v59;
                  v55 += 3;
                  a2[2] = v118;
                  *a2 = v113;
                  v58 = v55 == a2;
                  if (v56 != v49)
                  {
                    break;
                  }

                  if (v55 == a2)
                  {
                    goto LABEL_95;
                  }
                }
              }

              if (v58)
              {
                a2 = v56;
              }
            }
          }
        }
      }

LABEL_95:
      a4 -= v36;
      v9 = v108 - v22;
      if (v36 + v22 < a4 + v108 - v22)
      {
        sub_1AE71BFC0(a1, v23, v50, v36, v22, a6, a7);
        a1 = v50;
        a2 = v49;
        if (!v9)
        {
          return;
        }

        continue;
      }

      break;
    }

    a2 = v23;
    v60 = v49;
    v61 = v22;
    sub_1AE71BFC0(v50, v60, a3, a4, v108 - v22, a6, a7);
    v9 = v61;
    a4 = v36;
    a3 = v50;
    if (v61)
    {
      continue;
    }

    break;
  }
}

void sub_1AE71C794(void *a1)
{
  *a1 = &unk_1F242F360;
  v2 = a1[3];
  if (v2 < a1[4])
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < a1[4]);
    v2 = a1[3];
  }

  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (*(v5 + 48))
      {
        free(*(v5 + 8));
      }

      free(v5);
    }

    MEMORY[0x1B2706400](v4, 0x80C40B8603338);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71C874(void *a1)
{
  *a1 = &unk_1F242F360;
  v2 = a1[3];
  if (v2 < a1[4])
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < a1[4]);
    v2 = a1[3];
  }

  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (*(v5 + 48))
      {
        free(*(v5 + 8));
      }

      free(v5);
    }

    MEMORY[0x1B2706400](v4, 0x80C40B8603338);
  }

  return a1;
}

uint64_t sub_1AE71C934(uint64_t a1, void *__dst, uint64_t a3)
{
  if (*(a1 + 168))
  {
    v3 = *(a1 + 176);
    v4 = *(v3 + 160);
    if (__dst && v4)
    {
      v5 = a1;
      v6 = a3;
      memmove(__dst, (*(a1 + 192) + 4 * *(v3 + 152)), 4 * v4);
      a1 = v5;
      a3 = v6;
    }

    if (a3)
    {
      v7 = *(a1 + 176);
      v8 = *(v7 + 32);
      v9 = *(v7 + 48);
      v10 = *(v7 + 80);
      *(a3 + 32) = *(v7 + 64);
      *(a3 + 48) = v10;
      *a3 = v8;
      *(a3 + 16) = v9;
      v11 = *(v7 + 96);
      v12 = *(v7 + 112);
      v13 = *(v7 + 128);
      *(a3 + 112) = *(v7 + 144);
      *(a3 + 80) = v12;
      *(a3 + 96) = v13;
      *(a3 + 64) = v11;
    }

    return v4;
  }

  if (*(a1 + 228))
  {
    return 0;
  }

  v14 = *(a1 + 8);
  v15 = ((v14[20] - v14[19]) >> 3) + ((v14[17] - v14[16]) >> 4);
  if (*(v14[29] + 192) == 1)
  {
    if (v14[33])
    {
      ++v15;
    }

    if (v14[34])
    {
      ++v15;
    }

    if (v14[36])
    {
      ++v15;
    }

    if (v14[37])
    {
      ++v15;
    }

    if (v14[38])
    {
      ++v15;
    }
  }

  if (v15 != 1)
  {
    return 0;
  }

  v16 = *(***(*(a1 + 48) + 40) + 24);

  return v16();
}

uint64_t sub_1AE71CA98(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  if (*(a1 + 228) == 1)
  {
    v2 = (a1 + 146);
    if (*(a1 + 146) != 1)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 168))
  {
    v3 = *(a1 + 176);
    v4 = v3[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v3[2];
        v6 = *v5 == v3;
        v3 = v5;
      }

      while (!v6);
    }

    *(a1 + 176) = v5;
    if (v5 != (a1 + 160))
    {
      v2 = (a1 + 146);
LABEL_11:
      result = 1;
      *v2 = 1;
      return result;
    }

    sub_1AE673B40(*(a1 + 160));
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 152) = a1 + 160;
  }

  v8 = (a1 + 32);
  v9 = *(a1 + 48);
  if (v9 != (a1 + 32))
  {
    v2 = (a1 + 146);
    v88 = (a1 + 160);
    v89 = (a1 + 64);
    v92 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    while (1)
    {
      v10 = v9[5];
      if (v10 == v9[6])
      {
        return 0;
      }

      v11 = *(a1 + 8);
      v12 = ((v11[20] - v11[19]) >> 3) + ((v11[17] - v11[16]) >> 4);
      v13 = v11[29];
      if (*(v13 + 192) == 1)
      {
        if (v11[33])
        {
          ++v12;
        }

        if (v11[34])
        {
          ++v12;
        }

        if (v11[36])
        {
          ++v12;
        }

        if (v11[37])
        {
          ++v12;
        }

        if (v11[38])
        {
          ++v12;
        }
      }

      if (v12 != 1 || *(a1 + 232))
      {
        if (*v2 == 1 && (*(a1 + 228) & 1) == 0)
        {
          v14 = v9[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v9[2];
              v6 = *v15 == v9;
              v9 = v15;
            }

            while (!v6);
          }

          *(a1 + 48) = v15;
          v9 = v15;
        }

        *(a1 + 228) = 0;
        if (v9 != v8)
        {
          v16 = *(a1 + 192);
          v17 = *(a1 + 184);
          v18 = (*(a1 + 200) - v16) >> 2;
          if (v17 <= v18)
          {
            if (v17 < v18)
            {
              *(a1 + 200) = v16 + 4 * v17;
            }
          }

          else
          {
            sub_1AE654188(a1 + 192, v17 - v18);
            v11 = *(a1 + 8);
            v13 = v11[29];
          }

          v97 = v92;
          *&v98 = 0;
          WORD4(v98) = 0;
          v99[0] = 1;
          *&v99[8] = xmmword_1AE79A550;
          *&v99[24] = 0;
          v100 = xmmword_1AE79A550;
          v101 = 0xFFEFFFFFFFFFFFFFLL;
          v102 = 0uLL;
          LOWORD(v103[0]) = 0;
          memset(v103 + 4, 0, 20);
          if (*(v13 + 192) == 1 && (v19 = v11[6]) != 0)
          {
            v20 = *(v19 + 560);
            v21 = *(v19 + 568);
            v95 = v20;
            v96 = v21;
            if (v21)
            {
              atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v95 = 0;
            v96 = 0;
          }

          v22 = v9[5];
          v90 = v9;
          v87 = v9[6];
          if (v22 != v87)
          {
            v23 = 0;
            while (1)
            {
              v91 = 0;
LABEL_51:
              while (1)
              {
                v24 = (*(**v22 + 16))();
                v25 = v91 < 0x32 ? v24 : 0;
                if (v25 != 1 || !v90[4] && *(a1 + 240) > 9uLL)
                {
                  break;
                }

                v26 = *(a1 + 192);
                v27 = *(a1 + 200);
                v28 = (v27 - v26) >> 2;
                v29 = *(a1 + 184) + v23;
                v30 = v29 - v28;
                if (v29 > v28)
                {
                  v31 = *(a1 + 208);
                  if (v30 > (v31 - v27) >> 2)
                  {
                    if (!(v29 >> 62))
                    {
                      v32 = v31 - v26;
                      if (v32 >> 1 > v29)
                      {
                        v29 = v32 >> 1;
                      }

                      if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v33 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v33 = v29;
                      }

                      if (!(v33 >> 62))
                      {
                        operator new();
                      }

                      sub_1AE5CB09C();
                    }

                    sub_1AE5CBB70();
                  }

                  bzero(*(a1 + 200), 4 * v30);
                  *(a1 + 200) = v27 + 4 * v30;
                }

                v34 = (v26 + 4 * v23);
                *v94 = v92;
                *&v94[16] = 0;
                *&v94[24] = 0;
                v94[32] = 1;
                *&v94[40] = xmmword_1AE79A550;
                *&v94[56] = 0;
                *&v94[64] = 0xFFEFFFFFFFFFFFFFLL;
                *&v94[72] = xmmword_1AE79A560;
                *&v94[116] = 0;
                memset(&v94[88], 0, 26);
                v35 = (*(**v22 + 24))(*v22, v34, v94);
                v36 = v35;
                if (v35)
                {
                  v37 = 4 * v35;
                  v38 = v34;
                  while (*v38)
                  {
                    ++v38;
                    v37 -= 4;
                    if (!v37)
                    {
                      if (v35 != 1)
                      {
                        v45 = v35;
                        goto LABEL_84;
                      }

                      v39 = a1 + 64;
                      v40 = *v89;
                      if (!*v89)
                      {
                        v47 = *(a1 + 88);
                        v45 = 1;
                        goto LABEL_88;
                      }

                      v41 = *v34;
                      do
                      {
                        v42 = *(v40 + 28);
                        v43 = v42 >= v41;
                        v44 = v42 < v41;
                        if (v43)
                        {
                          v39 = v40;
                        }

                        v40 = *(v40 + 8 * v44);
                      }

                      while (v40);
                      if (v39 == v89)
                      {
                        v45 = 1;
                        goto LABEL_86;
                      }

                      v45 = 1;
                      if (v41 >= *(v39 + 28))
                      {
                        goto LABEL_51;
                      }

                      goto LABEL_85;
                    }
                  }
                }

                else
                {
                  v45 = 0;
LABEL_84:
                  sub_1AE74EEE8(*(a1 + 80), v34, 4 * v35, 0, 0);
                  if ((v46 & 1) == 0)
                  {
LABEL_85:
                    if (v36)
                    {
LABEL_86:
                      v47 = *(a1 + 88);
LABEL_88:
                      memmove((v47 + 4 * *(a1 + 136)), v34, 4 * v36);
                      memmove((*(a1 + 112) + 4 * *(a1 + 136)), v34, 4 * v36);
                    }

                    sub_1AE70C43C(a1 + 56, v34, v45);
                    if (sub_1AE71D6D8(a1, *(a1 + 88), *(a1 + 136), v36))
                    {
                      *v94 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
                      *&v94[16] = 0;
                      *&v94[24] = 0;
                      v48 = 1;
                      v94[32] = 1;
                      *&v94[40] = xmmword_1AE79A550;
                      *&v94[56] = 0;
                      *&v94[64] = 0xFFEFFFFFFFFFFFFFLL;
                      *&v94[72] = xmmword_1AE79A560;
                      *&v94[88] = 0;
                      *&v94[96] = 0;
                      v49 = *(a1 + 136);
                      if (v49 < v49 + v36)
                      {
                        do
                        {
                          v104 = v92;
                          *&v105 = 0;
                          WORD4(v105) = 0;
                          v106[0] = 1;
                          v55 = xmmword_1AE79A560;
                          *&v106[8] = xmmword_1AE79A550;
                          *&v106[24] = 0;
                          *v107 = 0xFFEFFFFFFFFFFFFFLL;
                          *&v107[8] = xmmword_1AE79A560;
                          *&v107[24] = 0;
                          *&v108 = 0;
                          v56 = *(a1 + 88);
                          v57 = *(a1 + 112);
                          v58 = *(a1 + 8);
                          v59 = *(v56 + 4 * v49);
                          v93[0] = v56;
                          v93[1] = v49;
                          v93[2] = v57;
                          v93[3] = v49;
                          v93[4] = v56;
                          v93[5] = v49;
                          v93[6] = v56;
                          v93[7] = v49;
                          if (qword_1ED9AC8F8 != -1)
                          {
                            v60 = v58;
                            dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
                            v58 = v60;
                          }

                          v110 = 0;
                          sub_1AE66C188(v58, v59 | (v59 << 32), v93, &v104, qword_1ED9AC900, 1, 0, v109, v55);
                          if (v110 == v109)
                          {
                            (*(*v110 + 32))(v110);
                          }

                          else if (v110)
                          {
                            (*(*v110 + 40))();
                          }

                          v50 = *v104.i64;
                          if (*v94 == -1.79769313e308)
                          {
                            v54 = *&v104.i64[1];
                            *&v94[40] = *&v106[8];
                            *&v94[64] = *v107;
                            *&v94[80] = *&v107[16];
                            *&v94[96] = v108;
                          }

                          else
                          {
                            v50 = *v104.i64 + *v94;
                            v54 = *&v94[8] + *&v104.i64[1];
                            v94[32] = 0;
                          }

                          *v94 = v50;
                          *&v94[8] = v54;
                          v48 &= BYTE9(v105);
                          ++v49;
                        }

                        while (v49 < *(a1 + 136) + v36);
                      }

                      else
                      {
                        v50 = -1.79769313e308;
                      }

                      v94[113] = v48 & 1;
                      v51 = v95;
                      if (v95 && *(v13 + 288) != *(v13 + 292) && v36)
                      {
                        v52 = 4 * v36;
                        while (1)
                        {
                          v53 = *(v13 + 288) > *v34 || *v34 > *(v13 + 292);
                          if (!v53 && (*(*v51 + 144))(v51) == 1)
                          {
                            break;
                          }

                          ++v34;
                          v52 -= 4;
                          if (!v52)
                          {
                            v50 = *v94;
                            goto LABEL_115;
                          }
                        }

                        if (*v94 <= *v97.i64)
                        {
                          goto LABEL_130;
                        }

                        v100 = *&v94[64];
                        v101 = *&v94[80];
                        v102 = *&v94[96];
                        v97 = *v94;
                        v98 = *&v94[16];
                        *v99 = *&v94[32];
                        *&v99[16] = *&v94[48];
                        v103[0] = *&v94[112];
                        v103[1] = v23;
                        v103[2] = v36;
                        v23 += v36;
                      }

                      else
                      {
LABEL_115:
                        *v107 = *&v94[72];
                        *&v107[16] = *&v94[88];
                        v108 = *&v94[104];
                        v104 = *&v94[8];
                        v105 = *&v94[24];
                        *v106 = *&v94[40];
                        *&v106[16] = *&v94[56];
                        v61 = *v88;
                        if (!*v88)
                        {
LABEL_128:
                          operator new();
                        }

                        while (1)
                        {
                          while (1)
                          {
                            v62 = v61;
                            v63 = *(v61 + 32);
                            if (v50 == v63)
                            {
                              break;
                            }

                            if (v50 <= v63)
                            {
                              if (v63 <= v50)
                              {
                                goto LABEL_129;
                              }

                              goto LABEL_127;
                            }

LABEL_117:
                            v61 = *v62;
                            if (!*v62)
                            {
                              goto LABEL_128;
                            }
                          }

                          v64 = *(v61 + 152);
                          if (v23 != v64)
                          {
                            if (v23 < v64)
                            {
                              goto LABEL_117;
                            }

                            goto LABEL_127;
                          }

                          v65 = v62[20];
                          if (v36 < v65)
                          {
                            goto LABEL_117;
                          }

                          if (v65 >= v36)
                          {
                            break;
                          }

LABEL_127:
                          v61 = v62[1];
                          if (!v61)
                          {
                            goto LABEL_128;
                          }
                        }

LABEL_129:
                        ++v91;
                        ++*(a1 + 240);
LABEL_130:
                        v23 += v36;
                      }
                    }
                  }
                }
              }

              if (++v22 == v87)
              {
                if (v103[2])
                {
                  sub_1AE71D91C(a1 + 152, &v97);
                  ++*(a1 + 240);
                }

                break;
              }
            }
          }

          v66 = v96;
          if (v96 && !atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v66->__on_zero_shared)(v66);
            std::__shared_weak_count::__release_weak(v66);
          }

          v8 = (a1 + 32);
          v2 = (a1 + 146);
          if (*(a1 + 168))
          {
            *(a1 + 176) = *(a1 + 152);
            goto LABEL_11;
          }
        }

        goto LABEL_138;
      }

      *(a1 + 228) = 0;
      if (((*(**v10 + 16))() & 1) == 0)
      {
        v79 = *(a1 + 48);
        v80 = v79[1];
        if (v80)
        {
          do
          {
            v81 = v80;
            v80 = *v80;
          }

          while (v80);
        }

        else
        {
          do
          {
            v81 = v79[2];
            v6 = *v81 == v79;
            v79 = v81;
          }

          while (!v6);
        }

        *(a1 + 48) = v81;
LABEL_138:
        *v2 = 1;
        goto LABEL_139;
      }

      v67 = *(a1 + 192);
      v68 = (*(**v10 + 24))(*v10, v67, 0);
      v69 = v68;
      v70 = 4 * v68;
      if (v68)
      {
        break;
      }

LABEL_163:
      sub_1AE74EEE8(*(a1 + 80), v67, 4 * v68, 0, 0);
      if (v82)
      {
        goto LABEL_155;
      }

LABEL_164:
      v77 = 1;
      v78 = *(a1 + 88);
      if (v69)
      {
LABEL_167:
        memmove((v78 + 4 * *(a1 + 136)), v67, v70);
        v78 = *(a1 + 88);
        v83 = *(a1 + 136);
        v84 = a1;
        v85 = v69;
        goto LABEL_168;
      }

LABEL_165:
      v83 = *(a1 + 136);
      v84 = a1;
      v85 = 0;
LABEL_168:
      v86 = sub_1AE71D6D8(v84, v78, v83, v85);
      sub_1AE70C43C(a1 + 56, v67, v69);
      result = 1;
      *v2 = 1;
      if (v77 && v86)
      {
        return result;
      }

LABEL_139:
      v9 = *(a1 + 48);
      if (v9 == v8)
      {
        return 0;
      }
    }

    v71 = 0;
    while (v67[v71 / 4])
    {
      v71 += 4;
      if (v70 == v71)
      {
        if (v68 != 1)
        {
          goto LABEL_163;
        }

        v72 = a1 + 64;
        v73 = *v89;
        if (!*v89)
        {
          v78 = *(a1 + 88);
          v77 = 1;
          goto LABEL_167;
        }

        v74 = *v67;
        do
        {
          v75 = *(v73 + 28);
          v43 = v75 >= v74;
          v76 = v75 < v74;
          if (v43)
          {
            v72 = v73;
          }

          v73 = *(v73 + 8 * v76);
        }

        while (v73);
        if (v72 == v89 || v74 < *(v72 + 28))
        {
          goto LABEL_164;
        }

        break;
      }
    }

LABEL_155:
    v77 = 0;
    v78 = *(a1 + 88);
    if (v69)
    {
      goto LABEL_167;
    }

    goto LABEL_165;
  }

  return 0;
}

BOOL sub_1AE71D6D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 && *(a2 + 4 * a3) == 1)
  {
    return 0;
  }

  v8 = a4 + a3;
  if (a4 + a3 > a3)
  {
    v9 = (a2 + 4 * a3);
    v10 = a4;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if ((v12 - 3) <= 0x1F0)
      {
        v13 = v11 - 68;
        if (v13 > 0x3C || ((0x7FFFFFFFFFFFFE0uLL >> v13) & 1) != 0)
        {
          return 0;
        }
      }
    }

    while (--v10);
  }

  v14 = *(a1 + 8);
  v15 = *(v14 + 184);
  v16 = *(v14 + 192);
  if (v16 - v15 == 16)
  {
    if (sub_1AE670588(v14, a2 + 4 * a3, a4, 4, 0, 1, 1, *v15))
    {
      return 0;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 184);
    v16 = *(v14 + 192);
  }

  if (v16 - v15 == 16)
  {
    if ((sub_1AE670588(v14, a2, v4 + a3, 2, 0, 1, 1, *v15) & 1) == 0)
    {
      v14 = *(a1 + 8);
      v15 = *(v14 + 184);
      v16 = *(v14 + 192);
      goto LABEL_16;
    }

    return 0;
  }

LABEL_16:
  if (v16 - v15 == 16 && (sub_1AE670588(v14, a2, v4 + a3, 3, 0, 4, 1, *v15) & 1) != 0)
  {
    return 0;
  }

  while (v4 >= 2)
  {
    v17 = *(a1 + 8);
    v18 = *(v17 + 184);
    if (*(v17 + 192) - v18 == 16 && (sub_1AE670588(v17, a2, a3 + v4 - 1, 2, 0, 1, 1, *v18) & 1) != 0)
    {
      return 0;
    }

    --v4;
  }

  v20 = a3 - 2;
  if (a3 >= 2 && v20 <= v8 - 3)
  {
    v28 = (a2 + 4 * a3);
    do
    {
      v29 = *(v28 - 2);
      if (v29 == *(v28 - 1) && v29 == *v28)
      {
        return 0;
      }

      ++v20;
      ++v28;
    }

    while (v20 <= v8 - 3);
  }

  if (v8 < 4)
  {
    return 1;
  }

  v21 = v8 >> 1;
  if (v8 >> 1 >= 5)
  {
    v21 = 5;
  }

  v22 = 4 * v21;
  v23 = a2 + 4 * v8;
  v24 = (v23 - 16);
  v25 = (v23 - 8);
  v26 = 8;
  do
  {
    v27 = memcmp(v25, v24, v26);
    result = v27 != 0;
    if (v22 == v26)
    {
      break;
    }

    v26 += 4;
    v24 -= 8;
    v25 -= 4;
  }

  while (v27);
  return result;
}

uint64_t sub_1AE71D91C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_23:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 120);
  v5 = *(a2 + 128);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(v2 + 32);
      if (v3 == v7)
      {
        break;
      }

      if (v3 <= v7)
      {
        if (v7 <= v3)
        {
          return result;
        }

        goto LABEL_22;
      }

LABEL_3:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_23;
      }
    }

    v8 = *(v2 + 152);
    if (v4 != v8)
    {
      break;
    }

    v9 = v6[20];
    if (v5 < v9)
    {
      goto LABEL_3;
    }

    v10 = v9 == v5;
    if (v9 >= v5)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    if (v10)
    {
      v11 = 0;
    }

    if ((v11 & 0x80) == 0)
    {
      return result;
    }

LABEL_22:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  if (v4 < v8)
  {
    goto LABEL_3;
  }

  if (v8 >= v4)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v12 < 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_1AE71DA54(uint64_t a1)
{
  sub_1AE71DA8C(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE71DA8C(uint64_t a1)
{
  *a1 = &unk_1F242F448;
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  sub_1AE673B40(*(a1 + 160));
  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  sub_1AE70C3B8(a1 + 56);
  sub_1AE71DB5C(*(a1 + 32));
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_1AE71DB5C(void *a1)
{
  if (a1)
  {
    sub_1AE71DB5C(*a1);
    sub_1AE71DB5C(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
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
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void sub_1AE71DC18(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2 || !a4)
  {
    return;
  }

  v8 = a3 + 4 * a4;
  if (a4 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = a4;
  }

  if (a4 == 1)
  {
    if (*(a1 + 145) == 1)
    {
      if (*(a1 + 144))
      {
        return;
      }
    }

    else
    {
      v10 = *(v8 - 4);
      if (v10 != 1 && (sub_1AE78148C(v10, *(a1 + 8)) & 1) != 0)
      {
        return;
      }
    }
  }

  *v33 = &stru_1F24332A0;
  v11 = sub_1AE6F7A28(a2, a3, a4, &stru_1F24332A0, v9);
  CFRelease(&stru_1F24332A0);
  if (v11)
  {
    v12 = (*(*v11 + 16))(v11);
    v13 = *v11;
    if (v12)
    {
      goto LABEL_44;
    }

    (*(v13 + 8))(v11);
  }

  if (a4 < 2)
  {
    return;
  }

  if (v9 == 2)
  {
    if (*(a1 + 145))
    {
      if (*(a1 + 144))
      {
        return;
      }
    }

    else
    {
      v14 = *(v8 - 4);
      if (v14 != 1 && (sub_1AE78148C(v14, *(a1 + 8)) & 1) != 0)
      {
        return;
      }
    }
  }

  *v33 = &stru_1F24332A0;
  v11 = sub_1AE6F7A28(a2, a3, a4, &stru_1F24332A0, v9 - 1);
  CFRelease(&stru_1F24332A0);
  if (v11)
  {
    v15 = (*(*v11 + 16))(v11);
    v13 = *v11;
    if (v15)
    {
      goto LABEL_44;
    }

    (*(v13 + 8))(v11);
  }

  if (v9 - 1 < 2)
  {
    return;
  }

  if (v9 == 3)
  {
    if (*(a1 + 145))
    {
      if (*(a1 + 144))
      {
        return;
      }
    }

    else
    {
      v16 = *(v8 - 4);
      if (v16 != 1 && (sub_1AE78148C(v16, *(a1 + 8)) & 1) != 0)
      {
        return;
      }
    }
  }

  *v33 = &stru_1F24332A0;
  v11 = sub_1AE6F7A28(a2, a3, a4, &stru_1F24332A0, v9 - 2);
  CFRelease(&stru_1F24332A0);
  if (v11)
  {
    v17 = (*(*v11 + 16))(v11);
    v13 = *v11;
    if ((v17 & 1) == 0)
    {
      (*(v13 + 8))(v11);
      goto LABEL_35;
    }

LABEL_44:
    v23 = *(a1 + 192);
    *(a1 + 228) = 1;
    *v33 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *&v33[16] = 0;
    LOWORD(v34) = 0;
    BYTE8(v34) = 1;
    v35 = xmmword_1AE79A550;
    LODWORD(v36) = 0;
    *(&v36 + 1) = 0xFFEFFFFFFFFFFFFFLL;
    v37 = xmmword_1AE79A560;
    HIDWORD(v39) = 0;
    *&v39 = 0;
    v38 = 0uLL;
    WORD4(v39) = 0;
    v24 = (*(v13 + 24))(v11, v23, v33);
    sub_1AE70C43C(a1 + 56, *(a1 + 192), v24);
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v40 = *&v33[8];
    v41 = v34;
    v42 = v35;
    v43 = v36;
    v25 = *(a1 + 160);
    if (!v25)
    {
LABEL_56:
      operator new();
    }

    while (1)
    {
      v26 = v25;
      v27 = *(v25 + 32);
      if (*v33 == v27)
      {
        if (*(v25 + 152))
        {
          goto LABEL_47;
        }

        v28 = *(v25 + 160);
        if (v24 < v28)
        {
          goto LABEL_47;
        }

        if (v28 >= v24)
        {
LABEL_57:
          v29 = *(a1 + 192);
          v30 = *(a1 + 184) + v24;
          v31 = (*(a1 + 200) - v29) >> 2;
          if (v30 <= v31)
          {
            if (v30 < v31)
            {
              *(a1 + 200) = v29 + 4 * v30;
            }
          }

          else
          {
            sub_1AE654188(a1 + 192, v30 - v31);
          }

          ++*(a1 + 240);
          (*(*v11 + 8))(v11);
          return;
        }

LABEL_51:
        v25 = v26[1];
        if (!v25)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (*v33 <= v27)
        {
          if (v27 <= *v33)
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

LABEL_47:
        v25 = *v26;
        if (!*v26)
        {
          goto LABEL_56;
        }
      }
    }
  }

LABEL_35:
  if (v9 - 2 < 2)
  {
    return;
  }

  v18 = v9 - 3;
  if (v9 == 4)
  {
    if (*(a1 + 145))
    {
      if (*(a1 + 144))
      {
        return;
      }
    }

    else
    {
      v19 = *(v8 - 4);
      if (v19 != 1)
      {
        v20 = sub_1AE78148C(v19, *(a1 + 8));
        v18 = 1;
        if (v20)
        {
          return;
        }
      }
    }
  }

  v21 = sub_1AE6F79C4(a2, a3, a4, v18);
  if (!v21)
  {
    return;
  }

  v11 = v21;
  v22 = (*(*v21 + 16))(v21);
  v13 = *v11;
  if (v22)
  {
    goto LABEL_44;
  }

  v32 = *(v13 + 8);

  v32(v11);
}

void sub_1AE71E254(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE71E2BC(uint64_t result, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a4 >= a2[2] - 1)
  {
    v5 = a2[2] - 1;
  }

  else
  {
    v5 = a4;
  }

  v6 = a5 ^ 1u;
  if (v5 >= v6)
  {
    v10 = result;
    v11 = (result + 32);
    do
    {
      result = (*(*a2 + 24))(a2, a3, a4, v5, *(v10 + 216), *(v10 + 184));
      v15 = result;
      if (result)
      {
        v13 = *v11;
        if (!*v11)
        {
          goto LABEL_16;
        }

        v14 = v11;
        do
        {
          if (v13[4] <= v5)
          {
            v14 = v13;
          }

          v13 = v13[v13[4] > v5];
        }

        while (v13);
        if (v14 == v11 || v5 > v14[4])
        {
LABEL_16:
          operator new();
        }

        sub_1AE71E64C((v14 + 5), &v15);
        result = v15;
        if (v15)
        {
          result = (*(*v15 + 8))(v15);
        }
      }
    }

    while (v5-- > v6);
  }

  return result;
}

void sub_1AE71E560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE71E5BC(void *a1)
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

void sub_1AE71E64C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_1AE5CBB70();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v13 = *a2;
    *a2 = 0;
    *(8 * v9) = v13;
    v6 = 8 * v9 + 8;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AE71E8A0(uint64_t a1)
{
  sub_1AE6F4670((a1 - 120));

  JUMPOUT(0x1B2706400);
}

void sub_1AE71E920(void *a1)
{
  sub_1AE6F4670(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE71E95C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v12 = (*(*a1 + 32))(a1);
  v13 = v12;
  if (a3 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = a3;
  }

  if (a4 == 2 && v12 < a3)
  {
    goto LABEL_7;
  }

  if ((*(*a1 + 24))(a1, a2, v14, a5, a6))
  {
    return 1;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
LABEL_7:
      if (v13)
      {
        v15 = a2 + 4 * a3 - 4;
        v16 = 2;
        do
        {
          result = (*(*a1 + 24))(a1, v15, v16 - 1, a5, a6);
          if (result)
          {
            break;
          }

          v15 -= 4;
          v18 = v16++ > v14;
        }

        while (!v18);
        return result;
      }

      return 0;
    }

    if (a4 == 3)
    {
      v23 = v14 - 8;
      if (v14 <= 9)
      {
        v23 = 1;
      }

      if (v23 < v14 - 1)
      {
        operator new();
      }

      return 0;
    }

    if (a4 != 4)
    {
      return 0;
    }

    v20 = 0;
    while (1)
    {
      v21 = a3 - v20 >= v14 ? v14 : a3 - v20;
      if (v21)
      {
        break;
      }

LABEL_26:
      result = 0;
      if (++v20 == a3)
      {
        return result;
      }
    }

    v22 = 1;
    while (((*(*a1 + 24))(a1, a2 + 4 * v20, v22, a5, a6) & 1) == 0)
    {
      if (++v22 > v21)
      {
        goto LABEL_26;
      }
    }

    return 1;
  }

  if (!v13)
  {
    return 0;
  }

  v19 = 2;
  do
  {
    result = (*(*a1 + 24))(a1, a2, v19 - 1, a5, a6);
    if (result)
    {
      break;
    }

    v18 = v19++ > v14;
  }

  while (!v18);
  return result;
}

void sub_1AE71EC8C(int8x8_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = vcnt_s8(v1);
    v2.i16[0] = vaddlv_u8(v2);
    v3 = *&v1 - 1;
    v4 = *&v1 != 1;
    if (v2.u32[0] < 2uLL)
    {
      v4 = (v1.i8[0] & 1) == 0;
    }

    v5 = *(*&a1[1] + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v2.u32[0] < 2uLL)
        {
          while (1)
          {
            v7 = v6[1];
            if (v7 == 1)
            {
              if (v6[2] == 1)
              {
                goto LABEL_20;
              }
            }

            else if ((v7 & v3) != v4)
            {
              return;
            }

            v6 = *v6;
            if (!v6)
            {
              return;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == 1)
          {
            if (v6[2] == 1)
            {
LABEL_20:
              sub_1AE75F1E8();
              return;
            }
          }

          else
          {
            if (v8 >= *&v1)
            {
              v8 %= *&v1;
            }

            if (v8 != v4)
            {
              return;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }
}

int8x8_t *sub_1AE71ED50@<X0>(int8x8_t *result@<X0>, void *a2@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = result[2];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    v4 = *&v2 - 1;
    v5 = *&v2 != 1;
    if (v3.u32[0] < 2uLL)
    {
      v5 = (v2.i8[0] & 1) == 0;
    }

    v6 = *(*&result[1] + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v3.u32[0] < 2uLL)
        {
          while (1)
          {
            v8 = v7[1];
            if (v8 == 1)
            {
              if (v7[2] == 1)
              {
                goto LABEL_20;
              }
            }

            else if ((v8 & v4) != v5)
            {
              goto LABEL_19;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_19;
            }
          }
        }

        do
        {
          v9 = v7[1];
          if (v9 == 1)
          {
            if (v7[2] == 1)
            {
LABEL_20:
              v10[0] = &unk_1F24313C0;
              v10[3] = v10;
              sub_1AE75ED9C();
            }
          }

          else
          {
            if (v9 >= *&v2)
            {
              v9 %= *&v2;
            }

            if (v9 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

LABEL_19:
  *a2 = 0;
  return result;
}

void sub_1AE71EEFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6B35B4(va);
  _Unwind_Resume(a1);
}

void sub_1AE71EF10(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  for (i = *(a1 + 24); i; i = *i)
  {
    v4 = LXLexiconCopyEntryForTokenID();
    if (v4)
    {
      v5 = v4;
      v6 = LXEntryCopyString();
      CFRelease(v5);
      if (!v6)
      {
        continue;
      }
    }

    else
    {
      v6 = &stru_1F24332A0;
    }

    Length = CFStringGetLength(v6);
    if (Length)
    {
      sub_1AE5CC874(v6, a2);
    }

    CFRelease(v6);
    if (Length)
    {
      return;
    }
  }

  a2[23] = 0;
  *a2 = 0;
}

void sub_1AE71EFDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE67C310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE71F008(uint64_t a1, const UInt8 *a2)
{
  v3 = (a1 + 24);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    result = sub_1AE75EB54(v3[3], a2);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1AE71F050(uint64_t a1)
{
  v1 = (a1 + 24);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    v4 = 0;
    v5 = &v4;
    v7 = 0;
    v6 = 0x2000000000;
    LXLexiconEnumerateEntriesForString();
    v2 = *(v5 + 6);
    _Block_object_dispose(&v4, 8);
    if (v2)
    {
      return v2;
    }
  }

  return 0;
}

void sub_1AE71F138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE71F150(void *a1)
{
  *a1 = &unk_1F242F540;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      if (v5)
      {
        CFRelease(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71F1F8(void *a1)
{
  *a1 = &unk_1F242F540;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        CFRelease(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1AE71F280(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
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

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *&v2 - 1;
        if (v3.u32[0] < 2uLL)
        {
          while (1)
          {
            v9 = v7[1];
            if (v9 == a2)
            {
              if (v7[2] == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v9 & v8) != v4)
            {
              return;
            }

            v7 = *v7;
            if (!v7)
            {
              return;
            }
          }
        }

        do
        {
          v10 = v7[1];
          if (v10 == a2)
          {
            if (v7[2] == a2)
            {
LABEL_22:
              if (v3.u32[0] > 1uLL)
              {
                if (*&v2 <= a2)
                {
                  a2 %= *&v2;
                }
              }

              else
              {
                a2 &= v8;
              }

              v11 = *(v5 + 8 * a2);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == a1 + 2)
              {
                goto LABEL_39;
              }

              v13 = v12[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != a2)
              {
LABEL_39:
                if (!*v7)
                {
                  goto LABEL_40;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v14 >= *&v2)
                  {
                    v14 %= *&v2;
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != a2)
                {
LABEL_40:
                  *(v5 + 8 * a2) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v16 >= *&v2)
                  {
                    v16 %= *&v2;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != a2)
                {
                  *(v5 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              v17 = v7[3];
              if (v17)
              {
                CFRelease(v17);
              }

              operator delete(v7);
              return;
            }
          }

          else
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }

            if (v10 != v4)
            {
              return;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

uint64_t sub_1AE71F48C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_1AE71F4E8(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4, int a5)
{
  v18 = 0;
  v8 = sub_1AE7048D0(*(a1 + 24), a2, a3, &v18);
  if (*(a1 + 33) == 1)
  {
    v9 = v18;
    v10 = v18 & 0x7F;
    if (a4)
    {
      *a4 = v10;
    }

    v11 = v9 & 0x80;
    v13 = (v10 & a5) != 0 || a5 == 0;
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    return !v14 && v13;
  }

  else
  {
    v16 = v18;
    if (a4)
    {
      *a4 = HIBYTE(v18);
    }

    return v16 && v8 == 0;
  }
}

void sub_1AE71F58C(void *a1)
{
  *a1 = &unk_1F242F5C0;
  v2 = a1[3];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        sub_1AE701454(v4 + 8);
        MEMORY[0x1B2706400](v4, 0x1020C403F824CD1);
        if (*v3)
        {
          free(*v3);
        }
      }

      MEMORY[0x1B2706400](v3, 0x1030C40FC63861FLL);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v5 = a1[1];
  if (v5)
  {
    munmap(v5, a1[2]);
  }

  a1[2] = 0;

  JUMPOUT(0x1B2706400);
}

void *sub_1AE71F680(void *a1)
{
  *a1 = &unk_1F242F5C0;
  v2 = a1[3];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        sub_1AE701454(v4 + 8);
        MEMORY[0x1B2706400](v4, 0x1020C403F824CD1);
        if (*v3)
        {
          free(*v3);
        }
      }

      MEMORY[0x1B2706400](v3, 0x1030C40FC63861FLL);
    }

    MEMORY[0x1B2706400](v2, 0x20C4093837F09);
  }

  v5 = a1[1];
  if (v5)
  {
    munmap(v5, a1[2]);
  }

  a1[2] = 0;
  return a1;
}

unint64_t sub_1AE71F754(void *a1, unint64_t a2)
{
  v3 = a1[1];
  result = v3 - a2;
  if (v3 <= a2)
  {
    v5 = a1;
    sub_1AE5F2968(v15);
    v7 = sub_1AE5DB608(v16, "(file_size=", 11);
    v8 = MEMORY[0x1B2706120](v7, v5[1]);
    v9 = sub_1AE5DB608(v8, ", offset=", 9);
    v10 = MEMORY[0x1B2706120](v9, a2);
    sub_1AE5DB608(v10, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, v15);
    v12 = sub_1AE67B590(&v14, "attempted to read beyond the end of the mapped file ", &__dst);
    MEMORY[0x1B2705EC0](exception, &v14, v12);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if ((v3 - a2) < 0 || !*a1)
  {
    sub_1AE6ADB38();
  }

  return result;
}

void sub_1AE71F860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
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
      sub_1AE644C5C(&a22);
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

void sub_1AE71FB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a22);
      sub_1AE6FCC0C(v27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

void sub_1AE71FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE71FC04);
}

uint64_t sub_1AE71FC2C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (a2[1] - *a2) >> 2;
  v3 = *(a1 + 88);
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    __assert_rtn("_truncatedPriorContextLength", "MontrealLanguageModel.cpp", 49, "context.size() > m_forwardPassLimit");
  }

  v7 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  if (v4)
  {
    v8 = v7 == 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    do
    {
      v9 = *(*a2 + 4 * v4 - 4);
      (*(**(a1 + 56) + 136))(v17);
      v10 = (*(**v17 + 32))(*v17);
      v11 = *&v17[8];
      if (*&v17[8] && !atomic_fetch_add((*&v17[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = v10;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = v12;
      }

      if ((v9 - 1) < 2 || v9 == v10)
      {
        break;
      }

      --v4;
    }

    while (v4);
  }

  if (qword_1EB5E0EA8 != -1)
  {
    dispatch_once(&qword_1EB5E0EA8, &unk_1F242F630);
  }

  v14 = qword_1EB5E0EA0;
  if (os_log_type_enabled(qword_1EB5E0EA0, OS_LOG_TYPE_INFO))
  {
    v15 = (a2[1] - *a2) >> 2;
    *v17 = 134218496;
    *&v17[4] = v15 - v4;
    *&v17[12] = 2048;
    *&v17[14] = v15;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_1AE5C8000, v14, OS_LOG_TYPE_INFO, "limiting forward passes to %ld, with contextLength=%zu and priorContextLength=%zu", v17, 0x20u);
  }

  return v4;
}

os_log_t sub_1AE71FE84()
{
  result = os_log_create("com.apple.LanguageModeling", "MontrealLanguageModel");
  qword_1EB5E0EA0 = result;
  return result;
}

unint64_t sub_1AE71FEB4(unint64_t a1, int a2)
{
  switch(a2)
  {
    case 4:
      a1 = (*(**(a1 + 56) + 112))(*(a1 + 56));
      v2 = HIDWORD(a1);
      break;
    case 3:
      a1 = (*(**(a1 + 56) + 104))(*(a1 + 56));
      v2 = HIDWORD(a1);
      break;
    case 2:
      a1 = (*(**(a1 + 56) + 96))(*(a1 + 56));
      v2 = HIDWORD(a1);
      break;
    default:
      v2 = a1;
      LODWORD(a1) = 0;
      LODWORD(v2) = *(v2 + 96) - 1;
      break;
  }

  return a1 | (v2 << 32);
}

BOOL sub_1AE71FF84(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(*a2 + 4 * a3);
  (*(**(a1 + 56) + 136))(&v9);
  v4 = (*(*v9 + 32))(v9);
  v5 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v4 = v6;
  }

  return (v3 - 1) < 2 || v3 == v4;
}

BOOL sub_1AE720080(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = *a2;
  v8 = (a2[1] - *a2) >> 2;
  v9 = v8 - a3;
  v53 = *(a1 + 88);
  if (v8 - a3 <= v53)
  {
    v10 = a3;
    v54 = v8 - a3;
  }

  else
  {
    v10 = sub_1AE71FC2C(a1, a2);
    v7 = *a2;
    v8 = (a2[1] - *a2) >> 2;
    v54 = v8 - v10;
  }

  v11 = (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v10);
  if (v8 != v10)
  {
    v14 = v11;
    v52 = v9;
    v12 = 0;
    v15 = 0;
    v16 = v7 + 4 * v10;
    v17 = v10 + 1;
    while (1)
    {
      ++*a4;
      v18 = *(a1 + 56);
      v19 = *(v16 + 4 * v15);
      if ((*(*v18 + 64))(v18, v19))
      {
        v20 = 3;
      }

      else if ((*(*v18 + 72))(v18, v19))
      {
        v20 = 4;
      }

      else
      {
        v20 = (*(*v18 + 16))(v18) == 2 ? 0 : 5;
      }

      (*(**(a1 + 56) + 120))(__p);
      v21 = (*(**(a1 + 40) + 24))(*(a1 + 40), v14, *(v16 + 4 * v15), v20);
      v23 = v22;
      if (v22)
      {
        break;
      }

LABEL_48:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v23)
      {
        v12 = ++v15 >= v54;
        if (v15 != v54)
        {
          continue;
        }
      }

      return v12;
    }

    v24 = *(a1 + 16);
    if (v22 != (*(a1 + 24) - v24) >> 1)
    {
      __assert_rtn("compressOutputLayer", "NeuralNetworkUtils.hpp", 84, "uncompressed.size() == compressed.size() && mismatched output layer sizes");
    }

    if (4 * v22)
    {
      v25 = (v22 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v25 < 3)
      {
        v26 = v21;
        goto LABEL_31;
      }

      v27 = v25 + 1;
      if (v25 >= 0xF)
      {
        v28 = v27 & 0x7FFFFFFFFFFFFFF0;
        v29 = (v21 + 32);
        v30 = v24 + 1;
        v31 = v27 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v33 = v29[-2];
          v32 = v29[-1];
          v35 = *v29;
          v34 = v29[1];
          v29 += 4;
          v30[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(v33), v32);
          *v30 = vcvt_hight_f16_f32(vcvt_f16_f32(v35), v34);
          v30 += 2;
          v31 -= 16;
        }

        while (v31);
        if (v27 == v28)
        {
          goto LABEL_32;
        }

        if ((v27 & 0xC) == 0)
        {
          v26 = (v21 + 4 * v28);
          v24 = (v24 + 2 * v28);
          do
          {
LABEL_31:
            v40 = *v26++;
            _S0 = v40;
            __asm { FCVT            H0, S0 }

            v24->i16[0] = _S0;
            v24 = (v24 + 2);
          }

          while (v26 != (v21 + 4 * v22));
          goto LABEL_32;
        }
      }

      else
      {
        v28 = 0;
      }

      v36 = v28 - (v27 & 0x7FFFFFFFFFFFFFFCLL);
      v37 = (v21 + 4 * v28);
      v38 = (v24 + 2 * v28);
      do
      {
        v39 = *v37++;
        *v38++ = vcvt_f16_f32(v39);
        v36 += 4;
      }

      while (v36);
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFFCLL))
      {
        v24 = (v24 + 2 * (v27 & 0x7FFFFFFFFFFFFFFCLL));
        v26 = (v21 + 4 * (v27 & 0x7FFFFFFFFFFFFFFCLL));
        goto LABEL_31;
      }
    }

LABEL_32:
    (*(**(a1 + 40) + 32))(&v57);
    v14 = v57;
    if (v52 <= v53)
    {
      v46 = *a2;
    }

    else
    {
      v46 = v16;
    }

    if (v52 > v53)
    {
      v47 = v15 + 1;
    }

    else
    {
      v47 = v17 + v15;
    }

    v56 = v57;
    v57 = 0;
    v48 = (*(**(a1 + 8) + 16))(*(a1 + 8), v46, v47, &v56);
    v49 = v56;
    v56 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    if ((v48 & 1) == 0)
    {
      if (qword_1EB5E0EA8 != -1)
      {
        dispatch_once(&qword_1EB5E0EA8, &unk_1F242F630);
      }

      v50 = qword_1EB5E0EA0;
      if (os_log_type_enabled(qword_1EB5E0EA0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE5C8000, v50, OS_LOG_TYPE_INFO, "failed to insert montreal state into the cache", buf, 2u);
      }

      v14 = 0;
    }

    v51 = v57;
    v57 = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    goto LABEL_48;
  }

  return 1;
}