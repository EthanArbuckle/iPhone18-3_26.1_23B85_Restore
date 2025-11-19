void sub_1AE6221FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1AE621E54(&a10);
  sub_1AE621CF0(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1AE622220(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1AE622258(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE622290(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

const void **sub_1AE6222FC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t LMLanguageModelSetParameterValue(uint64_t a1, const __CFString *a2, __CFString *a3, CFErrorRef *a4)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 24);
    result = sub_1AE7471FC(v4[29], a2, a3, a4);
    if (result)
    {
      if (*(v4[29] + 192) == 1 && !v4[6])
      {
        sub_1AE66652C(v4);
      }

      return 1;
    }
  }

  else
  {
    if (a4)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_1AE622408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double LMLanguageModelConditionalProbability(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9AC8F8 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = qword_1ED9AC900;

  return sub_1AE6224BC(a1, a2, a3, a4, 0, 0, 1, v5);
}

double sub_1AE6224BC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, int a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  result = -1.79769313e308;
  if (a1 && (a4 & 0x8000000000000000) == 0)
  {
    v11 = *(a1 + 24);
    v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = xmmword_1AE79A550;
    v18 = 0;
    v19 = 0xFFEFFFFFFFFFFFFFLL;
    v20 = xmmword_1AE79A560;
    v21 = 0;
    v22 = 0;
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a3;
    v12[3] = a4;
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = a3;
    v12[7] = a4;
    v24 = 0;
    if ((sub_1AE66C188(v11, a2 | (a2 << 32), v12, &v13, a8, a7, 1, v23, xmmword_1AE79A560) & 1) == 0)
    {
      v13.i64[0] = 0xFFEFFFFFFFFFFFFFLL;
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 |= v15 | (2 * HIBYTE(v15));
    }

    return *v13.i64;
  }

  return result;
}

uint64_t sub_1AE6225EC(uint64_t a1)
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

double LMLanguageModelStaticConditionalProbability(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9AC8F8 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = qword_1ED9AC900;

  return sub_1AE6224BC(a1, a2, a3, a4, 0, 0, 0, v5);
}

double LMLanguageModelConditionalProbabilityWithEffectiveOrder(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1ED9AC8F8 != -1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a5;
    v11 = a4;
    v12 = a3;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    a1 = v8;
    a2 = v9;
    a3 = v12;
    a4 = v11;
    a5 = v10;
  }

  v6 = qword_1ED9AC900;

  return sub_1AE6224BC(a1, a2, a3, a4, a5, 0, 1, v6);
}

double LMLanguageModelConditionalProbabilityWithFlags(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  if (qword_1ED9AC8F8 != -1)
  {
    v9 = a1;
    v10 = a2;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    a1 = v9;
    a2 = v10;
    a3 = v14;
    a4 = v13;
    a5 = v12;
    a6 = v11;
  }

  v7 = qword_1ED9AC900;

  return sub_1AE6224BC(a1, a2, a3, a4, a5, a6, 1, v7);
}

double LMLanguageModelConditionalProbabilityWithFlagsAndLogs(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, __CFString *a7)
{
  if (a7)
  {
    v24 = 7;
    v23 = &unk_1F242FFE8;
    v8 = a1;
    v9 = a2;
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    appendedString = CFStringCreateMutable(0, 0);
    v14 = sub_1AE6224BC(v8, v9, v13, v12, v11, v10, 1, &v23);
    CFStringAppend(a7, appendedString);
    v23 = &unk_1F242FFE8;
    CFRelease(appendedString);
    return v14;
  }

  else
  {
    if (qword_1ED9AC8F8 != -1)
    {
      v17 = a1;
      v18 = a2;
      v19 = a6;
      v20 = a5;
      v21 = a4;
      v22 = a3;
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      a1 = v17;
      a2 = v18;
      a3 = v22;
      a4 = v21;
      a5 = v20;
      a6 = v19;
    }

    v16 = qword_1ED9AC900;

    return sub_1AE6224BC(a1, a2, a3, a4, a5, a6, 1, v16);
  }
}

void sub_1AE6229D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE731BE0(va);
  _Unwind_Resume(a1);
}

double LMLanguageModelJointProbability(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = -1.79769313e308;
  if (a1)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v4 = 0.0;
      sub_1AE66D94C(*(a1 + 24), a2, a3, &v4);
      return v4;
    }
  }

  return result;
}

uint64_t LMLanguageModelConditionalProbabilityVectorWithEffectiveOrders(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v7 = 0;
  v41 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v8 = a2;
    if (a2)
    {
      if (a1 && (a5 & 0x8000000000000000) == 0)
      {
        v11 = a6;
        v13 = a3;
        v14 = *(a1 + 24);
        if (qword_1ED9AC8F8 == -1)
        {
          if (a3 >= 1)
          {
            goto LABEL_7;
          }
        }

        else
        {
          dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
          if (v13 >= 1)
          {
LABEL_7:
            v15 = qword_1ED9AC900;
            if (a7)
            {
              v19 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
              LODWORD(v7) = 1;
              do
              {
                v21 = v19;
                v22 = 0;
                v23 = 0;
                v24 = 1;
                v25 = xmmword_1AE79A550;
                v26 = 0;
                v27 = 0xFFEFFFFFFFFFFFFFLL;
                v28 = xmmword_1AE79A560;
                v29 = 0;
                v30 = 0;
                v16 = *v8++;
                v31 = a4;
                v32 = a5;
                v33 = a4;
                v34 = a5;
                v35 = a4;
                v36 = a5;
                v37 = a4;
                v38 = a5;
                v40 = 0;
                v7 = v7 & sub_1AE66C188(v14, v16 | (v16 << 32), &v31, &v21, v15, 1, 1, v39, xmmword_1AE79A560);
                *v11++ = v21.i64[0];
                *a7++ = v22;
                --v13;
              }

              while (v13);
            }

            else
            {
              v20 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
              LODWORD(v7) = 1;
              do
              {
                v21 = v20;
                v22 = 0;
                v23 = 0;
                v24 = 1;
                v25 = xmmword_1AE79A550;
                v26 = 0;
                v27 = 0xFFEFFFFFFFFFFFFFLL;
                v28 = xmmword_1AE79A560;
                v29 = 0;
                v30 = 0;
                v17 = *v8++;
                v31 = a4;
                v32 = a5;
                v33 = a4;
                v34 = a5;
                v35 = a4;
                v36 = a5;
                v37 = a4;
                v38 = a5;
                v40 = 0;
                v7 = v7 & sub_1AE66C188(v14, v17 | (v17 << 32), &v31, &v21, v15, 1, 1, v39, xmmword_1AE79A560);
                *v11++ = v21.i64[0];
                --v13;
              }

              while (v13);
            }

            return v7;
          }
        }

        return 1;
      }
    }
  }

  return v7;
}

uint64_t LMLanguageModelJointProbabilityVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a5 < 0 || a6 == 0;
  v9 = !v8;
  if (!v8)
  {
    if (a5 < 0x3FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return v9;
}

uint64_t LMLanguageModelEnumeratePredictionsWithBlock(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[15] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v3 = *(result + 24);
      v4[0] = a2;
      v4[1] = a3;
      v4[2] = a2;
      v4[3] = a3;
      v4[4] = a2;
      v4[5] = a3;
      v4[6] = a2;
      v4[7] = a3;
      sub_1AE66DAD4(v3, v4);
    }
  }

  return result;
}

uint64_t LMLanguageModelCreatePredictionEnumerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (a3 & 0x8000000000000000) == 0)
  {
    v3 = *(a1 + 24);
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a2;
    v5[3] = a3;
    v5[4] = a2;
    v5[5] = a3;
    v5[6] = a2;
    v5[7] = a3;
    sub_1AE66DAD4(v3, v5);
  }

  return 0;
}

uint64_t LMPredictionEnumeratorAdvance(uint64_t result)
{
  if (result)
  {
    return (*(**(result + 24) + 16))();
  }

  return result;
}

uint64_t LMPredictionEnumeratorGetPrediction(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v10 = xmmword_1AE79A550;
    v11 = 0;
    v12 = xmmword_1AE79A550;
    v18 = 0;
    v13 = 0xFFEFFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    result = (*(**(result + 24) + 24))(*(result + 24), a2, &v6);
    if (a3)
    {
      *a3 = v6.i64[0];
    }

    if (a4)
    {
      *a4 = v16;
    }
  }

  return result;
}

void LMPredictionEnumeratorRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t LMLanguageModelGetTokenIDForString(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    return sub_1AE6589E8(*(a1 + 24), a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t LMLanguageModelGetTokenIDForUTF8String(uint64_t a1, const void *a2, size_t __n, void *a4)
{
  result = 0;
  if (a1 && a2 && __n)
  {
    if (__n >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v8 = *(a1 + 24);
    if (__n >= 0x17)
    {
      operator new();
    }

    v11 = __n;
    memcpy(&__dst, a2, __n);
    *(&__dst + __n) = 0;
    result = sub_1AE658250(v8, &__dst, a4);
    if (v11 < 0)
    {
      v9 = result;
      operator delete(__dst);
      return v9;
    }
  }

  return result;
}

void sub_1AE6231F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef LMLanguageModelCreateStringForTokenID(CFStringRef result, uint64_t a2)
{
  if (result)
  {
    sub_1AE657E48(result->length, a2, cStr);
    if (v5 < 0)
    {
      if (!cStr[1])
      {
        result = 0;
LABEL_11:
        v3 = result;
        operator delete(cStr[0]);
        return v3;
      }

      v2 = cStr[0];
    }

    else
    {
      if (!v5)
      {
        return 0;
      }

      v2 = cStr;
    }

    result = CFStringCreateWithCString(0, v2, 0x8000100u);
    if ((v5 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  return result;
}

void sub_1AE6232A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LMLanguageModelAddTokenForString(uint64_t a1, const __CFString *a2, int *a3)
{
  if (a1 && a2)
  {
    return sub_1AE670120(*(a1 + 24), a2, a3);
  }

  else
  {
    return 0;
  }
}

void LMLanguageModelRecordTokenUsageWithDifferentialPrivacy(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1AE6701FC(*(a1 + 24), a2);
    }
  }
}

void LMLanguageModelRecordRevisedTokenUsageWithDifferentialPrivacy(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1AE670408(*(a1 + 24), a2);
    }
  }
}

uint64_t LMLanguageModelRemoveTokenForString(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (*(*(v2 + 232) + 192) == 1)
    {
      v3 = *(v2 + 48);
      v4 = *(v3 + 560);
      v5 = *(v3 + 568);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = (*(*v4 + 16))(v4, a2, 0);
      result = (*(*v4 + 136))(v4, v6);
      if (result)
      {
        v7 = *(*(v2 + 48) + 544);
        v8 = result;
        std::mutex::lock((v7 + 96));
        *(v7 + 24) = 1;
        std::mutex::unlock((v7 + 96));
        result = v8;
      }

      if (v5)
      {
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v9 = result;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          return v9;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LMLanguageModelAddOrUpdateTokenWithAttributes(uint64_t a1)
{
  if (!a1)
  {
    return 3;
  }

  v1 = *(a1 + 24);
  if (*(*(v1 + 232) + 192) != 1)
  {
    return 3;
  }

  v2 = *(v1 + 48);
  v3 = *(v2 + 560);
  v4 = *(v2 + 568);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = (*(*v3 + 248))(v3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v6;
  }

  if (result <= 1)
  {
    v7 = *(*(v1 + 48) + 544);
    v8 = result;
    std::mutex::lock((v7 + 96));
    *(v7 + 24) = 1;
    std::mutex::unlock((v7 + 96));
    return v8;
  }

  return result;
}

uint64_t LMLanguageModelUpdateAttributesForToken(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (*(*(v1 + 232) + 192) == 1)
    {
      v2 = *(v1 + 48);
      v3 = *(v2 + 560);
      v4 = *(v2 + 568);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      result = (*(*v3 + 256))(v3);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        result = v5;
      }

      if (result)
      {
        v6 = *(*(v1 + 48) + 544);
        std::mutex::lock((v6 + 96));
        *(v6 + 24) = 1;
        std::mutex::unlock((v6 + 96));
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFDictionary *LMLanguageModelCopyTokenAttributes(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if ((a2 & 0x40000000) == 0)
  {
    if (*(v2[29] + 192) == 1)
    {
      v3 = v2[6];
      v4 = *(v3 + 560);
      v5 = *(v3 + 568);
      v32 = v4;
      v33[0] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      Mutable = (*(*v4 + 33))(v4);
      if (v5 && !atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v5 + 16))(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      return Mutable;
    }

    return 0;
  }

  v7 = v2[50];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v2 + 50;
  v9 = v2 + 50;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 != v8 && *(v9 + 8) <= a2)
  {
    sub_1AE659A9C(&v32, v9 + 5);
  }

  else
  {
LABEL_18:
    v32 = v33;
    v33[0] = 0;
    v35 = 0;
    v36 = 0;
    v33[1] = 0;
    v34 = &v35;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = v32;
  if (v32 != v33)
  {
    v14 = *MEMORY[0x1E695E738];
    do
    {
      v15 = (v13 + 4);
      if (*(v13 + 55) < 0)
      {
        v15 = *v15;
      }

      v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
      v17 = (v13 + 7);
      if (*(v13 + 79) < 0)
      {
        v17 = *v17;
      }

      v18 = CFStringCreateWithCString(0, v17, 0x8000100u);
      if (CFStringGetLength(v18) <= 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = v18;
      }

      CFDictionaryAddValue(Mutable, v16, v19);
      CFRelease(v16);
      CFRelease(v18);
      v20 = v13[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v13[2];
          v22 = *v21 == v13;
          v13 = v21;
        }

        while (!v22);
      }

      v13 = v21;
    }

    while (v21 != v33);
  }

  if (v36)
  {
    v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = v34;
    if (v34 != &v35)
    {
      do
      {
        v26 = (v24 + 4);
        if (*(v24 + 55) < 0)
        {
          v26 = *v26;
        }

        v27 = CFStringCreateWithCString(0, v26, 0x8000100u);
        v28 = (v24 + 7);
        if (*(v24 + 79) < 0)
        {
          v28 = *v28;
        }

        v29 = CFStringCreateWithCString(0, v28, 0x8000100u);
        CFDictionaryAddValue(v23, v27, v29);
        CFRelease(v27);
        CFRelease(v29);
        v30 = v24[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v24[2];
            v22 = *v31 == v24;
            v24 = v31;
          }

          while (!v22);
        }

        v24 = v31;
      }

      while (v31 != &v35);
    }

    CFDictionarySetValue(Mutable, kLMAttributedTokenQualifiersKey, v23);
    CFRelease(v23);
  }

  sub_1AE6206F4(v35);
  sub_1AE6206F4(v33[0]);
  return Mutable;
}

void sub_1AE6239F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_1AE6206F4(a13);
  sub_1AE6206F4(a10);
  _Unwind_Resume(a1);
}

uint64_t LMLanguageModelGetIntegerAttributeValue(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (*(*(v1 + 232) + 192) == 1)
    {
      v2 = *(v1 + 48);
      v3 = *(v2 + 560);
      v4 = *(v2 + 568);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      result = (*(*v3 + 272))(v3);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = result;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          return v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LMLanguageModelCopyStringAttributeValue(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (*(*(v1 + 232) + 192) == 1)
    {
      v2 = *(v1 + 48);
      v3 = *(v2 + 560);
      v4 = *(v2 + 568);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      result = (*(*v3 + 280))(v3);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = result;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          return v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void LMLanguageModelEnumerateDynamicTokensWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (*(*(v3 + 232) + 192) == 1)
    {
      v4 = *(v3 + 48);
      v5 = *(v4 + 560);
      v6 = *(v4 + 568);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        (*(*v5 + 88))(v5, a3);
      }

      if (v6)
      {
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }
  }
}

BOOL LMLanguageModelGetDynamicTokenIDRange(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  if (a1)
  {
    v3 = *(*(a1 + 24) + 232);
    if (a2)
    {
      *a2 = *(v3 + 288);
    }

    if (a3)
    {
      *a3 = *(v3 + 292) | 0x80000000;
    }
  }

  return a1 != 0;
}

unint64_t LMLanguageModelTokenIDisUnknown(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(*(result + 24) + 248);
    if (v2)
    {
      return sub_1AE6FAC88(*(v2 + 16), a2);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LMCreateMontrealIDsFromLMTokenIDSequence(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  __p[3] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    sub_1AE5CC874(a3, __p);
    sub_1AE6E195C(&v6, __p);
  }

  return 0;
}

void sub_1AE623EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    operator delete(v17);
  }

  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

uint64_t LMLanguageModelEnumerateCompletionsForPrefixWithBlock(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = *(result + 24);
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
      sub_1AE65739C(&v3, *(v2 + 8), *(v2 + 16));
    }
  }

  return result;
}

uint64_t LMLanguageModelTokenSequenceIsBlocklisted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(v6 + 184);
  v8 = *(v6 + 192) - v7;
  if (v8 >= 0x11)
  {
    __assert_rtn("LMLanguageModelTokenSequenceIsBlocklisted", "LMLanguageModel.cpp", 438, "compositeLanguageModel->getLocaleResources().size() <= 1 && LMLanguageModelTokenSequenceIsBlocklisted() is not supported for multilingual models");
  }

  if (v8 != 16)
  {
    return 0;
  }

  v9 = *v7;

  return sub_1AE670588(v6, a2, a3, a4, a5, 0, 1, v9);
}

uint64_t LMLanguageModelAdaptationIsEnabled(uint64_t a1)
{
  if (a1)
  {
    return *(*(*(a1 + 24) + 232) + 192) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t LMLanguageModelPreheatResources(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    v2 = v1[16];
    for (i = v1[17]; v2 != i; result = (*(*v4 + 32))(v4))
    {
      v4 = *v2;
      v2 += 2;
    }

    v5 = v1[19];
    for (j = v1[20]; v5 != j; result = (*(*v7 + 32))(v7))
    {
      v7 = *v5++;
    }

    if (*(v1[29] + 360) == 1)
    {
      v8[0] = &unk_1AE79A830;
      v8[1] = 1;
      v8[2] = &unk_1AE79A830;
      v8[3] = 1;
      v8[4] = &unk_1AE79A830;
      v8[5] = 1;
      v8[6] = &unk_1AE79A830;
      v8[7] = 1;
      sub_1AE66DAD4(v1, v8);
    }
  }

  return result;
}

uint64_t LMLanguageModelPreheatContexts(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("LMLanguageModelPreheatContexts", "LMLanguageModel.cpp", 500, "false && NULL language model reference");
  }

  return result;
}

void LMLanguageModelIncrementUsageCount(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, unint64_t a5)
{
  if (a1)
  {
    sub_1AE6709E4(*(a1 + 24), a2, 0, a3, a4, a5);
  }
}

void LMLanguageModelIncrementUsageCountWithEffectiveTime(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, unint64_t a5, double a6)
{
  v6 = a6;
  if (a1)
  {
    sub_1AE6709E4(*(a1 + 24), a2, &v6, a3, a4, a5);
  }
}

void LMLanguageModelDecrementUsageCount(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    sub_1AE670C10(*(a1 + 24), a2, a3, a4, a5);
  }
}

void LMLanguageModelRegisterNegativeEvidenceForToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1AE670DDC(*(a1 + 24), a3);
  }
}

float LMLanguageModelGetUsageCount(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  a4.n128_u64[0] = 0;
  if (a1)
  {
    v4 = *(*(a1 + 24) + 272);
    if (v4)
    {
      v8 = 0;
      v5 = *(v4 + 24);
      if (*(v5 + 401))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      (*(**(v4 + 8) + 104))(*(v4 + 8), a2, a3, v5 + 88, v6, &v8, 0, a4);
      a4.n128_u32[0] = v8;
    }
  }

  return a4.n128_f32[0];
}

double LMLanguageModelGetLastOfflineAdaptationTime(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 24);
    v3 = v2[29];
    if (*(v3 + 192) == 1)
    {
      v4 = v2[34];
      if (v4)
      {
        v5 = *(v2[6] + 544);
        v6 = (*(**(v4 + 8) + 72))(*(v4 + 8), v3 + 88, 0.0);
        std::mutex::lock((v5 + 96));
        if (v6 == 1)
        {
          v8 = 72;
        }

        else
        {
          v7 = 0.0;
          if (v6 != 2)
          {
LABEL_9:
            v9 = v7;
            std::mutex::unlock((v5 + 96));
            return v9;
          }

          v8 = 80;
        }

        v7 = *(v5 + v8);
        goto LABEL_9;
      }
    }
  }

  return result;
}

double LMLanguageModelGetLastFlushTime(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 24);
    if (*(*(v2 + 232) + 192) == 1)
    {
      v3 = *(*(v2 + 48) + 544);
      std::mutex::lock((v3 + 96));
      v4 = *(v3 + 88);
      std::mutex::unlock((v3 + 96));
      return v4;
    }
  }

  return result;
}

BOOL LMLanguageModelShouldAdaptToParagraph(_BOOL8 result, const __CFString *a2, CFIndex a3, CFIndex a4)
{
  if (result)
  {
    return sub_1AE6710A0(*(result + 24), a2, a3, a4);
  }

  return result;
}

uint64_t LMLanguageModelShouldAdaptToTokenSequence(uint64_t result, unsigned int *a2, unint64_t a3)
{
  if (result)
  {
    return sub_1AE6712C0(*(result + 24), a2, a3);
  }

  return result;
}

void LMLanguageModelFlushDynamicData(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (*(*(v2 + 232) + 192) == 1)
    {
      v3 = *(v2 + 48);
      if (v3)
      {
        v4 = a2;
        sub_1AE689200(v3);
        a2 = v4;
        v5 = *(v2 + 464);
        if (v5)
        {
          std::recursive_mutex::lock(*(v2 + 464));
          sub_1AE689200(v5[2].__m_.__sig);
          std::recursive_mutex::unlock(v5);
          a2 = v4;
        }
      }
    }

    if (a2)
    {

      sub_1AE671408(v2);
    }
  }
}

uint64_t *LMLanguageModelResetDynamicData(uint64_t *result, char a2)
{
  if (result)
  {
    return sub_1AE671920(result[3], a2);
  }

  return result;
}

void LMLanguageModelAddConversationHistory(uint64_t a1, const __CFString *a2, _DWORD *a3, uint64_t a4)
{
  if (a1)
  {
    sub_1AE671D2C(*(a1 + 24), a2, a3, a4);
  }
}

void LMLanguageModelResetConversationHistory(uint64_t a1)
{
  if (a1)
  {
    sub_1AE6717F8(*(a1 + 24));
  }
}

uint64_t LMLanguageModelPerformMaintenance()
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F242A188;
  v4[1] = CFAbsoluteTimeGetCurrent();
  v5 = v4;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = sub_1AE688DF8;
  v2[3] = &unk_1E7A2DD80;
  v2[4] = v4;
  v0 = sub_1AE687664();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE688E44;
  block[3] = &unk_1E7A2DE60;
  block[4] = v2;
  dispatch_sync(v0, block);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))(v5);
  }

  return result;
}

uint64_t sub_1AE624824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z50LMLanguageModelPerformMaintenanceWithEffectiveTimeE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z50LMLanguageModelPerformMaintenanceWithEffectiveTimeE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z50LMLanguageModelPerformMaintenanceWithEffectiveTimeE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z50LMLanguageModelPerformMaintenanceWithEffectiveTimeE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE624890(uint64_t a1, uint64_t a2)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v4 = os_signpost_id_generate(qword_1ED9AC960);
  if (qword_1ED9AC958 != -1)
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
  }

  v5 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = qword_1ED9AC960;
    if (os_signpost_enabled(qword_1ED9AC960))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PerformMaintenance", &unk_1AE7CF046, __p, 2u);
    }
  }

  if ((*(**(a2 + 640) + 144))(*(a2 + 640)))
  {
    std::mutex::lock((a2 + 664));
    (*(**(a2 + 560) + 176))(*(a2 + 560), *(a2 + 640), v3);
    std::mutex::unlock((a2 + 664));
    if ((*(**(a2 + 640) + 192))(*(a2 + 640)))
    {
      v7 = *(a2 + 544);
      std::mutex::lock((v7 + 96));
      *(v7 + 24) = 1;
      std::mutex::unlock((v7 + 96));
    }

    sub_1AE688F60(a2, 0, v3);
    std::mutex::lock((a2 + 664));
    v8 = *(a2 + 544);
    v9 = *(a2 + 32);
    v10 = (v8 + 96);
    std::mutex::lock((v8 + 96));
    Value = CFLocaleGetValue(v9, *MEMORY[0x1E695E6F0]);
    if ((*(v8 + 25) & 1) == 0)
    {
      v12 = Value;
      if (Value)
      {
        if (CFStringCompare(Value, @"ja", 0))
        {
          v13 = CFStringCompare(v12, @"zh", 0);
          std::mutex::unlock((v8 + 96));
          if (v13 == kCFCompareEqualTo)
          {
LABEL_17:
            std::mutex::unlock((a2 + 664));
            v16 = *(a2 + 360);
            std::mutex::lock((a2 + 664));
            v17 = (*(**(a2 + 640) + 152))(*(a2 + 640), v16);
            if (v17)
            {
              v18 = *(a2 + 544);
              std::mutex::lock((v18 + 96));
              *(v18 + 64) = CFAbsoluteTimeGetCurrent();
              *(v18 + 24) = 1;
              std::mutex::unlock((v18 + 96));
              (*(**(a2 + 560) + 152))(*(a2 + 560), *(a2 + 640), a2 + 40);
            }

            std::mutex::unlock((a2 + 664));
            sub_1AE689200(a2);
            v19 = MEMORY[0x1E695E4D0];
            if (!v17)
            {
              v19 = MEMORY[0x1E695E4C0];
            }

            __p[0] = *v19;
            v20 = CFDictionaryCreate(0, &kLMLanguageModelDidPerformPruningKey, __p, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            buf[0] = v20;
            CFNotificationCenterPostNotification(*(a2 + 656), @"MaintenanceNotification", a2, v20, 0);
            if (v20)
            {
              CFRelease(v20);
            }

            goto LABEL_28;
          }

          (*(**(a2 + 640) + 184))(*(a2 + 640));
          v14 = *(a2 + 544);
          std::mutex::lock((v14 + 96));
          *(v14 + 72) = 0;
          *(v14 + 25) = 1;
          std::mutex::unlock((v14 + 96));
          v15 = *(a2 + 544);
          v10 = (v15 + 96);
          std::mutex::lock((v15 + 96));
          *(v15 + 24) = 1;
        }
      }
    }

    std::mutex::unlock(v10);
    goto LABEL_17;
  }

  if (qword_1EB5E0C38 != -1)
  {
    dispatch_once(&qword_1EB5E0C38, &unk_1F242B4F0);
  }

  v21 = qword_1EB5E0C30;
  if (os_log_type_enabled(qword_1EB5E0C30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1AE5C8000, v21, OS_LOG_TYPE_DEFAULT, "resetting dynamic data due to validation failure", __p, 2u);
  }

  sub_1AE6887B8(a2);
LABEL_28:
  if (qword_1ED9AC958 == -1)
  {
    if (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9AC958, &unk_1F242BDB8);
    if (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      return;
    }
  }

  v22 = qword_1ED9AC960;
  if (os_signpost_enabled(qword_1ED9AC960))
  {
    v23 = MEMORY[0x1B2705500](*(a2 + 32));
    sub_1AE5CC874(v23, __p);
    if (v26 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v24;
    _os_signpost_emit_with_name_impl(&dword_1AE5C8000, v22, OS_SIGNPOST_INTERVAL_END, v4, "PerformMaintenance", "locale=%s", buf, 0xCu);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1AE624DA8(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 96));
  std::mutex::unlock((v1 + 664));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE624E1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A188;
  a2[1] = v2;
  return result;
}

uint64_t LMLanguageModelPerformMaintenanceWithEffectiveTime(double a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F242A188;
  *&v5[1] = a1;
  v6 = v5;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1AE688DF8;
  v3[3] = &unk_1E7A2DD80;
  v3[4] = v5;
  v1 = sub_1AE687664();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE688E44;
  block[3] = &unk_1E7A2DE60;
  block[4] = v3;
  dispatch_sync(v1, block);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))(v6);
  }

  return result;
}

void LMLanguageModelAddObserver(uint64_t a1, const void *a2, void (__cdecl *a3)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (*(*(v3 + 232) + 192) == 1)
    {
      CFNotificationCenterAddObserver(*(*(v3 + 48) + 656), a2, a3, @"MaintenanceNotification", *(v3 + 48), CFNotificationSuspensionBehaviorHold);
    }
  }
}

void LMLanguageModelRemoveObserver(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (*(*(v2 + 232) + 192) == 1)
    {
      CFNotificationCenterRemoveObserver(*(*(v2 + 48) + 656), a2, @"MaintenanceNotification", *(v2 + 48));
    }
  }
}

void sub_1AE6253B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a36 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  if ((a36 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a31);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a37);
  _Unwind_Resume(exception_object);
}

void LMLanguageModelAddTransientVocabulary(uint64_t a1, CFTypeRef cf)
{
  if (a1 && cf)
  {
    v2 = *(a1 + 24);
    CFRetain(cf);
    v4 = *(cf + 3);
    v8 = v4;
    v5 = v2[3];
    v6 = v2[4];
    if (v5 != v6)
    {
      while (*v5 != v4)
      {
        if (++v5 == v6)
        {
          goto LABEL_8;
        }
      }
    }

    if (v5 == v6)
    {
LABEL_8:
      sub_1AE671F84((v2 + 3), &v8);
      v7 = v2[31];
      if (v7)
      {
        (*(**(*(v7 + 16) + 16) + 96))(*(*(v7 + 16) + 16), v4);
      }
    }
  }
}

void LMLanguageModelRemoveTransientVocabulary(uint64_t a1, void *cf)
{
  if (a1 && cf)
  {
    v3 = *(a1 + 24);
    v4 = cf[3];
    v6 = v3[3];
    v5 = v3[4];
    if (v6 != v5)
    {
      while (*v6 != v4)
      {
        v6 += 8;
        if (v6 == v5)
        {
          v6 = v3[4];
          break;
        }
      }
    }

    if (v5 != v6)
    {
      v7 = v5 - (v6 + 8);
      if (v5 != v6 + 8)
      {
        memmove(v6, v6 + 8, v5 - (v6 + 8));
      }

      v3[4] = &v6[v7];
      v8 = v3[31];
      if (v8)
      {
        (*(**(*(v8 + 16) + 16) + 104))(*(*(v8 + 16) + 16), v4);
      }
    }

    CFRelease(cf);
  }
}

uint64_t LMLanguageModelSetLexicon(uint64_t result, uint64_t a2, int64_t a3)
{
  if (result)
  {
    if (a2)
    {
      sub_1AE672088(*(result + 24), a2, a3);
    }
  }

  return result;
}

void LMLanguageModelRemoveLexicon(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    sub_1AE672654(*(a1 + 24), a2);
  }
}

uint64_t LMLanguageModelReset(uint64_t result)
{
  if (result)
  {
    v1 = *(*(result + 24) + 248);
    if (v1)
    {
      return (*(**(*(v1 + 16) + 16) + 72))();
    }
  }

  return result;
}

const void *LMLanguageModelRetain(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

void LMLanguageModelRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t LMPredictionEnumeratorGetPredictionWithFlags(uint64_t result, uint64_t a2, void *a3, void *a4, _DWORD *a5)
{
  if (result)
  {
    v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = xmmword_1AE79A550;
    v13 = 0;
    v14 = xmmword_1AE79A550;
    v20 = 0;
    v15 = 0xFFEFFFFFFFFFFFFFLL;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    result = (*(**(result + 24) + 24))(*(result + 24), a2, &v8);
    if (a3)
    {
      *a3 = v8.i64[0];
    }

    if (a4)
    {
      *a4 = v18;
    }

    if (a5)
    {
      *a5 |= v19 | (2 * HIBYTE(v19));
    }
  }

  return result;
}

void LMStreamTokenizerRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t LMLanguageModelGetOrder(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *(a1 + 24);
  v3 = v1[16];
  v2 = v1[17];
  if (v3 == v2)
  {
    v8 = v1[19];
    v7 = v1[20];
    if (v8 != v7)
    {
      if (v7 - 8 == v8)
      {
        result = -1;
        v9 = v1[19];
      }

      else
      {
        v21 = ((v7 - 8 - v8) >> 3) + 1;
        v9 = &v8[8 * (v21 & 0x3FFFFFFFFFFFFFFELL)];
        v22 = v8 + 8;
        v23 = -1;
        v24 = v21 & 0x3FFFFFFFFFFFFFFELL;
        v25 = -1;
        do
        {
          if (*(*(v22 - 1) + 16) > v23)
          {
            v23 = *(*(v22 - 1) + 16);
          }

          if (*(*v22 + 16) > v25)
          {
            v25 = *(*v22 + 16);
          }

          v22 += 2;
          v24 -= 2;
        }

        while (v24);
        if (v23 <= v25)
        {
          result = v25;
        }

        else
        {
          result = v23;
        }

        if (v21 == (v21 & 0x3FFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      do
      {
        v26 = *v9;
        v9 += 8;
        v27 = *(v26 + 16);
        if (v27 > result)
        {
          result = v27;
        }
      }

      while (v9 != v7);
      return result;
    }

    return -1;
  }

  v4 = v2 - v3 - 16;
  if (v4 < 0x10)
  {
    result = -1;
    v6 = v3;
    do
    {
LABEL_19:
      v19 = *v6;
      v6 += 16;
      v20 = *(v19 + 16);
      if (v20 > result)
      {
        result = v20;
      }
    }

    while (v6 != v2);
    return result;
  }

  v10 = (v4 >> 4) + 1;
  v6 = &v3[16 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
  v11 = (v3 + 16);
  v12 = -1;
  v13 = v10 & 0x1FFFFFFFFFFFFFFELL;
  v14 = -1;
  do
  {
    v15 = *(v11 - 2);
    v16 = *v11;
    v11 += 4;
    v17 = *(v15 + 16);
    v18 = *(v16 + 16);
    if (v17 > v12)
    {
      v12 = v17;
    }

    if (v18 > v14)
    {
      v14 = v18;
    }

    v13 -= 2;
  }

  while (v13);
  if (v12 <= v14)
  {
    result = v14;
  }

  else
  {
    result = v12;
  }

  if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t LMLanguageModelSetLogLevel(uint64_t result)
{
  if (qword_1ED9AC8F8 != -1)
  {
    v1 = result;
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    result = v1;
  }

  *(qword_1ED9AC900 + 8) = result;
  return result;
}

uint64_t LMLanguageModelGetLogLevel()
{
  if (qword_1ED9AC8F8 != -1)
  {
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
  }

  return *(qword_1ED9AC900 + 8);
}

uint64_t LMLanguageModelDumpDynamicData(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 24);
    if (*(*(v3 + 232) + 192) == 1)
    {
      if (a3)
      {
        operator new();
      }

      v4 = *(v3 + 48);
      v5 = MEMORY[0x1E69E9820];
      v6 = 0x40000000;
      v7 = sub_1AE671C60;
      v8 = &unk_1E7A2D9A8;
      v9 = v3;
      v10 = 0;
      std::mutex::lock((v4 + 664));
      sub_1AE61D968();
    }
  }

  return result;
}

void sub_1AE6267B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  __cxa_end_catch();
  sub_1AE644C5C(&a61);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_1AE5F12F0(&STACK[0x2E0], MEMORY[0x1E69E54C8]);
  MEMORY[0x1B2706340](&STACK[0x488]);
  sub_1AE7005E4(a16);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  MEMORY[0x1B2706400](a16, 0x10A1C4020241834);
  _Unwind_Resume(a1);
}

void sub_1AE6267BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6268AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      sub_1AE644C5C(&a26);
      sub_1AE644C5C(&a61);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      if (SLOBYTE(STACK[0x2D7]) < 0)
      {
        operator delete(STACK[0x2C0]);
      }

      sub_1AE5F12F0(&STACK[0x2E0], MEMORY[0x1E69E54C8]);
      MEMORY[0x1B2706340](&STACK[0x488]);
      sub_1AE7005E4(a16);
      if (SHIBYTE(a19) < 0)
      {
        operator delete(a17);
      }

      MEMORY[0x1B2706400](a16, 0x10A1C4020241834);
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

void sub_1AE62694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  std::locale::~locale(&a23);
  sub_1AE644C5C(&a58);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_1AE5F12F0(&STACK[0x2E0], MEMORY[0x1E69E54C8]);
  MEMORY[0x1B2706340](&STACK[0x488]);
  sub_1AE7005E4(a16);
  if (SHIBYTE(a19) < 0)
  {
    operator delete(a17);
  }

  MEMORY[0x1B2706400](a16, 0x10A1C4020241834);
  _Unwind_Resume(a1);
}

uint64_t LMLanguageModelCountDynamicNgrams(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (result)
  {
    v5 = *(result + 24);
    if (a3)
    {
      v6 = *(v5 + 272);
      if (v6)
      {
        result = (*(**(v6 + 8) + 96))(*(v6 + 8));
        *a3 = result;
      }
    }

    if (a4)
    {
      v8 = *(v5 + 264);
      if (v8)
      {
        result = (*(**(v8 + 8) + 96))(*(v8 + 8));
        *a4 = result;
      }
    }
  }

  return result;
}

void LMLanguageModelApplyExponentialDecay(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (*(*(v2 + 232) + 192) == 1)
    {
      v3 = *(v2 + 48);
      Current = CFAbsoluteTimeGetCurrent();

      sub_1AE688F60(v3, 1, Current);
    }
  }
}

uint64_t LMLanguageModelGetDynamicDataSize(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24), *(*(v1 + 232) + 192) == 1))
  {
    return (*(**(*(v1 + 48) + 640) + 40))();
  }

  else
  {
    return 0;
  }
}

void LMLanguageModelPrune(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (*(*(v2 + 232) + 192) == 1)
    {
      v3 = *(v2 + 48);
      std::mutex::lock((v3 + 664));
      if ((*(**(v3 + 640) + 152))(*(v3 + 640), a2))
      {
        v5 = *(v3 + 544);
        std::mutex::lock((v5 + 96));
        *(v5 + 64) = CFAbsoluteTimeGetCurrent();
        *(v5 + 24) = 1;
        std::mutex::unlock((v5 + 96));
        (*(**(v3 + 560) + 152))(*(v3 + 560), *(v3 + 640), v3 + 40);
      }

      std::mutex::unlock((v3 + 664));
    }
  }
}

void sub_1AE626C28(_Unwind_Exception *a1)
{
  v3 = v1;
  std::mutex::unlock((v3 + 96));
  std::mutex::unlock((v2 + 664));
  _Unwind_Resume(a1);
}

uint64_t LMLanguageModelConvertToInternalTokenIDs(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  if (v2 == v3)
  {
    return 0;
  }

  while (*(*v2 + 48) != 12)
  {
    v2 += 16;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return (*(*(*v2 + 304) + 24))();
}

uint64_t LMLanguageModelConvertToExternalTokenIDs(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  if (v2 == v3)
  {
    return 0;
  }

  while (*(*v2 + 48) != 12)
  {
    v2 += 16;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return (*(*(*v2 + 304) + 16))();
}

void LMLanguageModelCreateExemplarCharacterStringForLocale(uint64_t a1)
{
  v1 = 0;
  sub_1AE6858F0(a1, &v1);
  uset_toPattern();
  v1 = 0;
  operator new[]();
}

uint64_t LMLanguageModelIsAppleColorEmojiCharacter(UTF32Char theChar)
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

BOOL LMLanguageModelWireMemory(uint64_t a1)
{
  if (a1)
  {
    sub_1AE6727C4(*(a1 + 24));
  }

  return a1 != 0;
}

BOOL LMLanguageModelUnwireMemory(uint64_t a1)
{
  if (a1)
  {
    sub_1AE672A30(*(a1 + 24));
  }

  return a1 != 0;
}

uint64_t LMLanguageModelDynamicModelIsEmpty(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 24) + 272)) != 0)
  {
    return (*(**(v1 + 8) + 24))();
  }

  else
  {
    return 1;
  }
}

CFStringRef LMLanguageModelCopyDynamicModelBundlePath(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (*(*(v1 + 232) + 192) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

const __CFURL *LMLanguageLikelihoodModelGetUserModel(const __CFDictionary *Value)
{
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, kLMLanguageModelCustomDynamicResourceDirectoryKey);
  }

  result = sub_1AE5D23C8(Value);
  if (result)
  {
    sub_1AE727D84(result);
  }

  return result;
}

double LMLanguageLikelihoodModelGetLastOfflineAdaptationTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 24);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(v2 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727978;
  block[3] = &unk_1E7A2F030;
  block[4] = &v7;
  block[5] = v2;
  block[6] = a2;
  dispatch_sync(v3, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void LMLanguageLikelihoodModelAddEvidenceForLanguage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a1)
  {
    v7 = *(a1 + 24);
    v8 = *(v7 + 280);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1AE727CA8;
    block[3] = &unk_1E7A2F008;
    block[4] = v7;
    v10 = a2;
    *&block[5] = a7;
    block[6] = a3;
    block[7] = a4;
    block[8] = a5;
    block[9] = a6;
    dispatch_sync(v8, block);
  }
}

void LMLanguageLikelihoodModelGetLanguagePriorProbabilities(uint64_t a1, uint64_t a2, int a3, CFDictionaryRef theDict)
{
  if (a1)
  {
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    if (CFDictionaryGetCount(theDict))
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

      __p[0] = 0;
      __p[1] = 0;
      v22 = 0;
      CFDictionaryGetKeysAndValues(theDict, 0, 0);
      v10 = *(a1 + 24);
      v11 = *(v10 + 280);
      block = MEMORY[0x1E69E9820];
      block_8 = 0x40000000;
      v27 = sub_1AE727B20;
      v28 = &unk_1E7A2F050;
      v29 = v10;
      v30 = a2;
      v31 = &v23;
      dispatch_sync(v11, &block);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v8 = *(a1 + 24);
      v9 = *(v8 + 280);
      block = MEMORY[0x1E69E9820];
      block_8 = 0x40000000;
      v27 = sub_1AE727B20;
      v28 = &unk_1E7A2F050;
      v29 = v8;
      v30 = a2;
      v31 = &v23;
      dispatch_sync(v9, &block);
    }

    v12 = v23;
    if (v23 != v24)
    {
      v13 = *MEMORY[0x1E695E480];
      do
      {
        block = v12[7];
        v14 = *(v12 + 55);
        if (v14 < 0)
        {
          v15 = v12[4];
          v14 = v12[5];
        }

        else
        {
          v15 = (v12 + 4);
        }

        v16 = sub_1AE61D700(v15, v14);
        v17 = CFNumberCreate(v13, kCFNumberDoubleType, &block);
        CFDictionarySetValue(theDict, v16, v17);
        CFRelease(v16);
        CFRelease(v17);
        v18 = v12[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v12[2];
            v20 = *v19 == v12;
            v12 = v19;
          }

          while (!v20);
        }

        v12 = v19;
      }

      while (v19 != v24);
    }

    sub_1AE627688(v24[0]);
  }
}

void sub_1AE627474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char *a17)
{
  operator delete(v17);
  sub_1AE627688(a17);
  _Unwind_Resume(a1);
}

void *sub_1AE6274E4(uint64_t a1, const void **a2)
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

void sub_1AE627674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6276E4(va);
  _Unwind_Resume(a1);
}

void sub_1AE627688(char *a1)
{
  if (a1)
  {
    sub_1AE627688(*a1);
    sub_1AE627688(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *sub_1AE6276E4(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t LMLanguageLikelihoodModelGetLanguageProbabilities(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v5 = *(v4 + 280);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE727BE8;
  block[3] = &unk_1E7A2F098;
  block[4] = &v9;
  block[5] = v4;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  dispatch_sync(v5, block);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1AE627984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE66A6D4(va);
  sub_1AE6562D0(v6);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  MEMORY[0x1B2706400](v4, v5);
  _Unwind_Resume(a1);
}

void LMLanguageContextSetFeatures(uint64_t a1, unsigned int *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 24);
  v106 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v107 = 0;
  v108 = 0;
  v109 = 1;
  v110 = xmmword_1AE79A550;
  v111 = 0;
  v112 = xmmword_1AE79A550;
  v114 = 0;
  v115 = 0;
  v113 = 0xFFEFFFFFFFFFFFFFLL;
  v4 = v3[12];
  v5 = *a2;
  if (qword_1ED9AC8F8 != -1)
  {
    v101 = v3[12];
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    v4 = v101;
  }

  v118 = 0u;
  v119 = 0u;
  *__p = 0u;
  v117 = 0u;
  v121 = 0;
  sub_1AE66C188(v4, v5 | (v5 << 32), __p, &v106, qword_1ED9AC900, 1, 1, &v120, 0);
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = v3[1];
  }

  if (v7 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v7 + 3 >= 0x17)
  {
    operator new();
  }

  v120.__r_.__value_.__r.__words[2] = 0;
  *&v120.__r_.__value_.__l.__data_ = 0x5F4D4CuLL;
  *(&v120.__r_.__value_.__s + 23) = v7 + 3;
  if (v7)
  {
    if ((v6 & 0x80u) == 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    memmove(v120.__r_.__value_.__r.__words + 3, v8, v7);
  }

  *(v120.__r_.__value_.__r.__words + v7 + 3) = 0;
  v9 = std::string::append(&v120, "_W0", 3uLL);
  v11 = v9->__r_.__value_.__r.__words[0];
  size = v9->__r_.__value_.__l.__size_;
  LODWORD(v105.__r_.__value_.__l.__data_) = v9->__r_.__value_.__r.__words[2];
  *(v105.__r_.__value_.__r.__words + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v13 = *v106.i64;
  if (v12 < 0)
  {
    sub_1AE5DBF1C(__p, v11, size);
  }

  else
  {
    __p[0] = v11;
    __p[1] = size;
    LODWORD(v117) = v105.__r_.__value_.__l.__data_;
    *(&v117 + 3) = *(v105.__r_.__value_.__r.__words + 3);
    BYTE7(v117) = v12;
  }

  *(&v117 + 1) = trunc(v13 * 10.0) * 0.1;
  sub_1AE6B73E8((v3 + 9), __p);
  if ((SBYTE7(v117) & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_37:
    operator delete(v11);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  operator delete(__p[0]);
  if (v12 < 0)
  {
    goto LABEL_37;
  }

LABEL_20:
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_38:
  operator delete(v120.__r_.__value_.__l.__data_);
LABEL_21:
  v15 = v3[12];
  v16 = a2[1];
  if (qword_1ED9AC8F8 != -1)
  {
    v102 = v3[12];
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    v15 = v102;
  }

  __p[0] = a2;
  __p[1] = 1;
  *&v117 = a2;
  *(&v117 + 1) = 1;
  *&v118 = a2;
  *(&v118 + 1) = 1;
  *&v119 = a2;
  *(&v119 + 1) = 1;
  v121 = 0;
  sub_1AE66C188(v15, v16 | (v16 << 32), __p, &v106, qword_1ED9AC900, 1, 1, &v120, v14);
  v17 = *(v3 + 23);
  if (v17 >= 0)
  {
    v18 = *(v3 + 23);
  }

  else
  {
    v18 = v3[1];
  }

  if (v18 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v18 + 3 >= 0x17)
  {
    operator new();
  }

  v120.__r_.__value_.__r.__words[2] = 0;
  *&v120.__r_.__value_.__l.__data_ = 0x5F4D4CuLL;
  *(&v120.__r_.__value_.__s + 23) = v18 + 3;
  if (v18)
  {
    if ((v17 & 0x80u) == 0)
    {
      v19 = v3;
    }

    else
    {
      v19 = *v3;
    }

    memmove(v120.__r_.__value_.__r.__words + 3, v19, v18);
  }

  *(v120.__r_.__value_.__r.__words + v18 + 3) = 0;
  v20 = std::string::append(&v120, "_W-1", 4uLL);
  v22 = v20->__r_.__value_.__r.__words[0];
  v21 = v20->__r_.__value_.__l.__size_;
  LODWORD(v105.__r_.__value_.__l.__data_) = v20->__r_.__value_.__r.__words[2];
  *(v105.__r_.__value_.__r.__words + 3) = *(&v20->__r_.__value_.__r.__words[2] + 3);
  v23 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v24 = *v106.i64;
  if (v23 < 0)
  {
    sub_1AE5DBF1C(__p, v22, v21);
  }

  else
  {
    __p[0] = v22;
    __p[1] = v21;
    LODWORD(v117) = v105.__r_.__value_.__l.__data_;
    *(&v117 + 3) = *(v105.__r_.__value_.__r.__words + 3);
    BYTE7(v117) = v23;
  }

  *(&v117 + 1) = trunc(v24 * 10.0) * 0.1;
  sub_1AE6B73E8((v3 + 9), __p);
  if ((SBYTE7(v117) & 0x80000000) == 0)
  {
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_59:
    operator delete(v22);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_60;
  }

  operator delete(__p[0]);
  if (v23 < 0)
  {
    goto LABEL_59;
  }

LABEL_42:
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_60:
  operator delete(v120.__r_.__value_.__l.__data_);
LABEL_43:
  v26 = v3[12];
  v27 = a2[2];
  if (qword_1ED9AC8F8 != -1)
  {
    v103 = v3[12];
    dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    v26 = v103;
  }

  __p[0] = a2;
  __p[1] = 2;
  *&v117 = a2;
  *(&v117 + 1) = 2;
  *&v118 = a2;
  *(&v118 + 1) = 2;
  *&v119 = a2;
  *(&v119 + 1) = 2;
  v121 = 0;
  sub_1AE66C188(v26, v27 | (v27 << 32), __p, &v106, qword_1ED9AC900, 1, 1, &v120, v25);
  v28 = *(v3 + 23);
  if (v28 >= 0)
  {
    v29 = *(v3 + 23);
  }

  else
  {
    v29 = v3[1];
  }

  if (v29 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v29 + 3 >= 0x17)
  {
    operator new();
  }

  v120.__r_.__value_.__r.__words[2] = 0;
  *&v120.__r_.__value_.__l.__data_ = 0x5F4D4CuLL;
  *(&v120.__r_.__value_.__s + 23) = v29 + 3;
  if (v29)
  {
    if ((v28 & 0x80u) == 0)
    {
      v30 = v3;
    }

    else
    {
      v30 = *v3;
    }

    memmove(v120.__r_.__value_.__r.__words + 3, v30, v29);
  }

  *(v120.__r_.__value_.__r.__words + v29 + 3) = 0;
  v31 = std::string::append(&v120, "_W-2", 4uLL);
  v33 = v31->__r_.__value_.__r.__words[0];
  v32 = v31->__r_.__value_.__l.__size_;
  LODWORD(v105.__r_.__value_.__l.__data_) = v31->__r_.__value_.__r.__words[2];
  *(v105.__r_.__value_.__r.__words + 3) = *(&v31->__r_.__value_.__r.__words[2] + 3);
  v34 = SHIBYTE(v31->__r_.__value_.__r.__words[2]);
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v35 = *v106.i64;
  if (v34 < 0)
  {
    sub_1AE5DBF1C(__p, v33, v32);
  }

  else
  {
    __p[0] = v33;
    __p[1] = v32;
    LODWORD(v117) = v105.__r_.__value_.__l.__data_;
    *(&v117 + 3) = *(v105.__r_.__value_.__r.__words + 3);
    BYTE7(v117) = v34;
  }

  *(&v117 + 1) = trunc(v35 * 10.0) * 0.1;
  sub_1AE6B73E8((v3 + 9), __p);
  if ((SBYTE7(v117) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_73:
    operator delete(v33);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

  operator delete(__p[0]);
  if (v34 < 0)
  {
    goto LABEL_73;
  }

LABEL_64:
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_74:
  operator delete(v120.__r_.__value_.__l.__data_);
LABEL_65:
  if (*a2)
  {
    v36 = *(v3 + 23);
    if (v36 >= 0)
    {
      v37 = *(v3 + 23);
    }

    else
    {
      v37 = v3[1];
    }

    if (v37 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v37 + 4 >= 0x17)
    {
      operator new();
    }

    *&v105.__r_.__value_.__r.__words[1] = 0uLL;
    *(&v105.__r_.__value_.__s + 23) = v37 + 4;
    v105.__r_.__value_.__r.__words[0] = 1601725772;
    if (v37)
    {
      if ((v36 & 0x80u) == 0)
      {
        v40 = v3;
      }

      else
      {
        v40 = *v3;
      }

      memmove(v105.__r_.__value_.__r.__words + 4, v40, v37);
    }

    *(v105.__r_.__value_.__r.__words + v37 + 4) = 0;
    v41 = std::string::append(&v105, "_W0", 3uLL);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v104, 1);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v104;
    }

    else
    {
      v43 = v104.__r_.__value_.__r.__words[0];
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v104.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v120, v43, v44);
    v46 = *&v45->__r_.__value_.__l.__data_;
    *&v117 = *(&v45->__r_.__value_.__l + 2);
    *__p = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = v3[7];
    if (v47 < v3[8])
    {
      if (SBYTE7(v117) < 0)
      {
LABEL_94:
        sub_1AE5DBF1C(v3[7], __p[0], __p[1]);
LABEL_110:
        v56 = (v47 + 3);
        v3[7] = v47 + 3;
        goto LABEL_112;
      }

LABEL_109:
      v55 = *__p;
      v47[2] = v117;
      *v47 = v55;
      goto LABEL_110;
    }
  }

  else
  {
    v38 = *(v3 + 23);
    if (v38 >= 0)
    {
      v39 = *(v3 + 23);
    }

    else
    {
      v39 = v3[1];
    }

    if (v39 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v39 + 4 >= 0x17)
    {
      operator new();
    }

    *&v105.__r_.__value_.__r.__words[1] = 0uLL;
    *(&v105.__r_.__value_.__s + 23) = v39 + 4;
    v105.__r_.__value_.__r.__words[0] = 1601725772;
    if (v39)
    {
      if ((v38 & 0x80u) == 0)
      {
        v48 = v3;
      }

      else
      {
        v48 = *v3;
      }

      memmove(v105.__r_.__value_.__r.__words + 4, v48, v39);
    }

    *(v105.__r_.__value_.__r.__words + v39 + 4) = 0;
    v49 = std::string::append(&v105, "_W0", 3uLL);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v104, 0);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v104;
    }

    else
    {
      v51 = v104.__r_.__value_.__r.__words[0];
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v104.__r_.__value_.__l.__size_;
    }

    v53 = std::string::append(&v120, v51, v52);
    v54 = *&v53->__r_.__value_.__l.__data_;
    *&v117 = *(&v53->__r_.__value_.__l + 2);
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    v47 = v3[7];
    if (v47 < v3[8])
    {
      if (SBYTE7(v117) < 0)
      {
        goto LABEL_94;
      }

      goto LABEL_109;
    }
  }

  v56 = sub_1AE5DBDDC((v3 + 6), __p);
LABEL_112:
  v3[7] = v56;
  if (SBYTE7(v117) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_114:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_125;
    }
  }

  else if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_114;
  }

  operator delete(v104.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_115:
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_126;
  }

LABEL_125:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_116:
    if (a2[1])
    {
      goto LABEL_117;
    }

    goto LABEL_127;
  }

LABEL_126:
  operator delete(v105.__r_.__value_.__l.__data_);
  if (a2[1])
  {
LABEL_117:
    v57 = *(v3 + 23);
    if (v57 >= 0)
    {
      v58 = *(v3 + 23);
    }

    else
    {
      v58 = v3[1];
    }

    if (v58 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v58 + 4 >= 0x17)
    {
      operator new();
    }

    *&v105.__r_.__value_.__r.__words[1] = 0uLL;
    *(&v105.__r_.__value_.__s + 23) = v58 + 4;
    v105.__r_.__value_.__r.__words[0] = 1601725772;
    if (v58)
    {
      if ((v57 & 0x80u) == 0)
      {
        v61 = v3;
      }

      else
      {
        v61 = *v3;
      }

      memmove(v105.__r_.__value_.__r.__words + 4, v61, v58);
    }

    *(v105.__r_.__value_.__r.__words + v58 + 4) = 0;
    v62 = std::string::append(&v105, "_W-1", 4uLL);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v104, 1);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v104;
    }

    else
    {
      v64 = v104.__r_.__value_.__r.__words[0];
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v104.__r_.__value_.__l.__size_;
    }

    v66 = std::string::append(&v120, v64, v65);
    v67 = *&v66->__r_.__value_.__l.__data_;
    *&v117 = *(&v66->__r_.__value_.__l + 2);
    *__p = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    v68 = v3[7];
    if (v68 < v3[8])
    {
      if (SBYTE7(v117) < 0)
      {
LABEL_146:
        sub_1AE5DBF1C(v3[7], __p[0], __p[1]);
LABEL_162:
        v77 = (v68 + 3);
        v3[7] = v68 + 3;
        goto LABEL_164;
      }

LABEL_161:
      v76 = *__p;
      v68[2] = v117;
      *v68 = v76;
      goto LABEL_162;
    }

    goto LABEL_163;
  }

LABEL_127:
  v59 = *(v3 + 23);
  if (v59 >= 0)
  {
    v60 = *(v3 + 23);
  }

  else
  {
    v60 = v3[1];
  }

  if (v60 + 4 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v60 + 4 >= 0x17)
  {
    operator new();
  }

  *&v105.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v105.__r_.__value_.__s + 23) = v60 + 4;
  v105.__r_.__value_.__r.__words[0] = 1601725772;
  if (v60)
  {
    if ((v59 & 0x80u) == 0)
    {
      v69 = v3;
    }

    else
    {
      v69 = *v3;
    }

    memmove(v105.__r_.__value_.__r.__words + 4, v69, v60);
  }

  *(v105.__r_.__value_.__r.__words + v60 + 4) = 0;
  v70 = std::string::append(&v105, "_W-1", 4uLL);
  v71 = *&v70->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v104, 0);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &v104;
  }

  else
  {
    v72 = v104.__r_.__value_.__r.__words[0];
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = v104.__r_.__value_.__l.__size_;
  }

  v74 = std::string::append(&v120, v72, v73);
  v75 = *&v74->__r_.__value_.__l.__data_;
  *&v117 = *(&v74->__r_.__value_.__l + 2);
  *__p = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v68 = v3[7];
  if (v68 < v3[8])
  {
    if (SBYTE7(v117) < 0)
    {
      goto LABEL_146;
    }

    goto LABEL_161;
  }

LABEL_163:
  v77 = sub_1AE5DBDDC((v3 + 6), __p);
LABEL_164:
  v3[7] = v77;
  if (SBYTE7(v117) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_166:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_177;
    }
  }

  else if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_166;
  }

  operator delete(v104.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_167:
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_168:
    if (a2[2])
    {
      goto LABEL_169;
    }

LABEL_179:
    v80 = *(v3 + 23);
    if (v80 >= 0)
    {
      v81 = *(v3 + 23);
    }

    else
    {
      v81 = v3[1];
    }

    if (v81 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v81 + 4 >= 0x17)
    {
      operator new();
    }

    *&v105.__r_.__value_.__r.__words[1] = 0uLL;
    *(&v105.__r_.__value_.__s + 23) = v81 + 4;
    v105.__r_.__value_.__r.__words[0] = 1601725772;
    if (v81)
    {
      if ((v80 & 0x80u) == 0)
      {
        v91 = v3;
      }

      else
      {
        v91 = *v3;
      }

      memmove(v105.__r_.__value_.__r.__words + 4, v91, v81);
    }

    *(v105.__r_.__value_.__r.__words + v81 + 4) = 0;
    v92 = std::string::append(&v105, "_W-2", 4uLL);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v104, 0);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = &v104;
    }

    else
    {
      v94 = v104.__r_.__value_.__r.__words[0];
    }

    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v95 = v104.__r_.__value_.__l.__size_;
    }

    v96 = std::string::append(&v120, v94, v95);
    v97 = *&v96->__r_.__value_.__l.__data_;
    *&v117 = *(&v96->__r_.__value_.__l + 2);
    *__p = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    v89 = v3[7];
    if (v89 < v3[8])
    {
      v90 = BYTE7(v117);
      if (SBYTE7(v117) < 0)
      {
        goto LABEL_198;
      }

      goto LABEL_213;
    }

LABEL_223:
    v99 = sub_1AE5DBDDC((v3 + 6), __p);
    v100 = BYTE7(v117);
    v3[7] = v99;
    if ((v100 & 0x80) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_215;
  }

LABEL_178:
  operator delete(v105.__r_.__value_.__l.__data_);
  if (!a2[2])
  {
    goto LABEL_179;
  }

LABEL_169:
  v78 = *(v3 + 23);
  if (v78 >= 0)
  {
    v79 = *(v3 + 23);
  }

  else
  {
    v79 = v3[1];
  }

  if (v79 + 4 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v79 + 4 >= 0x17)
  {
    operator new();
  }

  *&v105.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v105.__r_.__value_.__s + 23) = v79 + 4;
  v105.__r_.__value_.__r.__words[0] = 1601725772;
  if (v79)
  {
    if ((v78 & 0x80u) == 0)
    {
      v82 = v3;
    }

    else
    {
      v82 = *v3;
    }

    memmove(v105.__r_.__value_.__r.__words + 4, v82, v79);
  }

  *(v105.__r_.__value_.__r.__words + v79 + 4) = 0;
  v83 = std::string::append(&v105, "_W-2", 4uLL);
  v84 = *&v83->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = v84;
  v83->__r_.__value_.__l.__size_ = 0;
  v83->__r_.__value_.__r.__words[2] = 0;
  v83->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v104, 1);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = &v104;
  }

  else
  {
    v85 = v104.__r_.__value_.__r.__words[0];
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v86 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v86 = v104.__r_.__value_.__l.__size_;
  }

  v87 = std::string::append(&v120, v85, v86);
  v88 = *&v87->__r_.__value_.__l.__data_;
  *&v117 = *(&v87->__r_.__value_.__l + 2);
  *__p = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  v89 = v3[7];
  if (v89 >= v3[8])
  {
    goto LABEL_223;
  }

  v90 = BYTE7(v117);
  if (SBYTE7(v117) < 0)
  {
LABEL_198:
    sub_1AE5DBF1C(v3[7], __p[0], __p[1]);
    goto LABEL_214;
  }

LABEL_213:
  v98 = *__p;
  v89[2] = v117;
  *v89 = v98;
LABEL_214:
  v3[7] = v89 + 3;
  v3[7] = v89 + 3;
  if (v90 < 0)
  {
LABEL_215:
    operator delete(__p[0]);
  }

LABEL_216:
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_218:
      if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_222:
      operator delete(v105.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_218;
  }

  operator delete(v120.__r_.__value_.__l.__data_);
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_222;
  }
}

void sub_1AE6289EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  *(v42 + 56) = v40;
  operator delete(v41);
  if (a14 < 0)
  {
    operator delete(__p);
    if (*(v43 - 137) < 0)
    {
LABEL_5:
      operator delete(*(v43 - 160));
      if (a20 < 0)
      {
LABEL_8:
        operator delete(a15);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v43 - 137) < 0)
  {
    goto LABEL_5;
  }

  if (a20 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

uint64_t LMLanguageModelSetDPStringRecorder(uint64_t result)
{
  if (result)
  {
    if (*(*(*(result + 24) + 232) + 359) == 1)
    {
      operator new();
    }
  }

  return result;
}

uint64_t LMLanguageModelGetTestingParameters(uint64_t a1)
{
  if (a1)
  {
    v1 = (*(a1 + 24) + 456);
  }

  else if (atomic_load_explicit(&qword_1EB5E0BD0, memory_order_acquire))
  {
    v1 = &qword_1EB5E0BC8;
  }

  else
  {
    v1 = &qword_1EB5E0BC8;
    if (__cxa_guard_acquire(&qword_1EB5E0BD0))
    {
      qword_1EB5E0BC8 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      __cxa_guard_release(&qword_1EB5E0BD0);
    }
  }

  return *v1;
}

uint64_t sub_1AE628EE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
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

void *sub_1AE628F50(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

uint64_t sub_1AE629020(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[3];
      if (v3)
      {
        v4 = v1[4];
        v5 = v1[3];
        if (v4 != v3)
        {
          do
          {
            v7 = *(v4 - 8);
            v4 -= 8;
            v6 = v7;
            if (v7)
            {
              CFRelease(v6);
            }
          }

          while (v4 != v3);
          v5 = v1[3];
        }

        v1[4] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ***sub_1AE6290B0(void ***a1)
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
          v7 = *(v4 - 1);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            CFRelease(v6);
          }
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

void **sub_1AE629130(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
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

void *language_modeling::v1::LinguisticContext::LinguisticContext(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *language_modeling::v1::LinguisticContext::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    v5 = sub_1AE5CC12C(v3);
    MEMORY[0x1B2706400](v5, 0x10B2C4009D90DC4);
    return v4;
  }

  return result;
}

void language_modeling::v1::LinguisticContext::remove_first(uint64_t **this, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = *this;
  v3 = **this;
  v4 = (*this)[1];
  if ((v4 - v3) != ((*this)[4] - (*this)[3]))
  {
    v52 = "m_tokens.size() == m_sanitizedTokens.size()";
    v51 = 62;
LABEL_73:
    v39 = "remove_first";
    goto LABEL_69;
  }

  if (a2 > (v4 - v3) >> 5)
  {
    v52 = "count <= m_tokens.size()";
    v51 = 63;
    goto LABEL_73;
  }

  v6 = 32 * a2;
  if ((v3 + 32 * a2) != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      v7 = (v3 + v6);
      *v3 = *(v3 + 32 * a2);
      *(v3 + 16) = *(v3 + v6 + 16);
      v7[23] = 0;
      *v7 = 0;
      *(v3 + 24) = *(v3 + v6 + 24);
      v3 += 32;
    }

    while ((v3 + v6) != v4);
    v4 = v2[1];
  }

  while (v4 != v3)
  {
    v8 = *(v4 - 9);
    v4 -= 4;
    if (v8 < 0)
    {
      operator delete(*v4);
    }
  }

  v2[1] = v3;
  v9 = v2[3];
  v10 = v2[4];
  if ((v9 + v6) != v10)
  {
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v11 = (v9 + v6);
      *v9 = *(v9 + 32 * a2);
      *(v9 + 16) = *(v9 + v6 + 16);
      v11[23] = 0;
      *v11 = 0;
      *(v9 + 24) = *(v9 + v6 + 24);
      v9 += 32;
    }

    while ((v9 + v6) != v10);
    v10 = v2[4];
  }

  while (v10 != v9)
  {
    v12 = *(v10 - 9);
    v10 -= 4;
    if (v12 < 0)
    {
      operator delete(*v10);
    }
  }

  v2[4] = v9;
  v13 = v2[8];
  if (v13)
  {
    v14 = 4 * a2;
    do
    {
      v15 = v13[3];
      v16 = v13[4];
      if (a2 < (v16 - v15) >> 2)
      {
        v17 = v16 - (v15 + v14);
        if (v16 != (v15 + v14))
        {
          memmove(v13[3], v15 + v14, v16 - (v15 + v14));
        }

        v15 = (v15 + v17);
      }

      v13[4] = v15;
      v13 = *v13;
    }

    while (v13);
  }

  v18 = v2[13];
  for (i = a2; v18; v18 = *v18)
  {
    v21 = v18[3];
    v20 = v18[4];
    if (a2 >= (v20 - v21) >> 3)
    {
      while (v20 != v21)
      {
        v34 = *(v20 - 1);
        v20 -= 8;
        v33 = v34;
        if (v34)
        {
          CFRelease(v33);
        }
      }

      goto LABEL_31;
    }

    v22 = &v21[i * 8];
    if (&v21[i * 8] != v20)
    {
      v23 = v20 - &v21[i * 8] - 8;
      if (v23 < 0x18)
      {
        goto LABEL_48;
      }

      if (v21 < &v22[(v23 & 0xFFFFFFFFFFFFFFF8) + 8] && v22 < &v21[(v23 & 0xFFFFFFFFFFFFFFF8) + 8])
      {
        goto LABEL_48;
      }

      v25 = (v23 >> 3) + 1;
      v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
      v27 = &v21[i * 8 + 16];
      v28 = (v21 + 16);
      v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = *(v28 - 1);
        v31 = *v28;
        v32 = *v27;
        *(v28 - 1) = *(v27 - 1);
        *v28 = v32;
        *(v27 - 1) = v30;
        *v27 = v31;
        v27 += 2;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
      {
        v22 += v26;
        v21 += v26;
        do
        {
LABEL_48:
          v35 = *v21;
          *v21 = *v22;
          v21 += 8;
          *v22 = v35;
          v22 += 8;
        }

        while (v22 != v20);
        goto LABEL_49;
      }

      v21 += v26;
    }

LABEL_49:
    while (v20 != v21)
    {
      v37 = *(v20 - 1);
      v20 -= 8;
      v36 = v37;
      if (v37)
      {
        CFRelease(v36);
      }
    }

LABEL_31:
    v18[4] = v21;
  }

  if (v2[19] != v2[24])
  {
    v52 = "m_fragmentCaches.size() == m_cumulativeFragmentCounts.size()";
    v51 = 74;
    goto LABEL_73;
  }

  v38 = v2[18];
  if (v38)
  {
    v39 = "operator()";
    do
    {
      v40 = sub_1AE653E78(v2 + 21, *(v38 + 4));
      v41 = v40;
      v43 = v40[3];
      v42 = v40[4];
      if (a2 >= v42 - v43)
      {
        v40[4] = v43;
        v38[4] = v38[3];
      }

      else
      {
        v44 = v43[a2 - 1];
        if (v44)
        {
          v46 = v38[3];
          v45 = v38[4];
          v47 = (v46 + 4 * v44);
          v48 = v45 - v47;
          if (v45 != v47)
          {
            memmove(v38[3], v47, v45 - v47);
            v43 = v41[3];
            v42 = v41[4];
          }

          v38[4] = v46 + v48;
        }

        v49 = v42 - &v43[i];
        v50 = v43;
        if (v42 != &v43[i])
        {
          memmove(v43, &v43[i], v42 - &v43[i]);
          v50 = v41[3];
        }

        v41[4] = v43 + v49;
        if (v50 != (v43 + v49))
        {
          while (*v50 > v44)
          {
            *v50++ -= v44;
            if (v50 == (v43 + v49))
            {
              goto LABEL_56;
            }
          }

          v51 = 84;
          v52 = "fragmentCount > fragmentsToRemove";
LABEL_69:
          __assert_rtn(v39, "LinguisticContextImpl.cpp", v51, v52);
        }
      }

LABEL_56:
      v38 = *v38;
    }

    while (v38);
  }
}

void language_modeling::v1::LinguisticContext::clear(void ****this)
{
  v1 = *this;
  v2 = **this;
  v3 = (*this)[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  v1[1] = v2;
  v5 = v1[3];
  v6 = v1[4];
  while (v6 != v5)
  {
    v7 = *(v6 - 9);
    v6 -= 4;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  v1[4] = v5;
  if (v1[9])
  {
    v8 = v1[8];
    if (v8)
    {
      do
      {
        v16 = *v8;
        v17 = v8[3];
        if (v17)
        {
          v8[4] = v17;
          operator delete(v17);
        }

        operator delete(v8);
        v8 = v16;
      }

      while (v16);
    }

    v1[8] = 0;
    v9 = v1[7];
    if (v9)
    {
      bzero(v1[6], 8 * v9);
    }

    v1[9] = 0;
  }

  if (v1[14])
  {
    v10 = v1[13];
    if (v10)
    {
      do
      {
        v23 = *v10;
        v24 = v10[3];
        if (v24)
        {
          v25 = v10[4];
          v22 = v10[3];
          if (v25 != v24)
          {
            do
            {
              v27 = *(v25 - 1);
              v25 -= 8;
              v26 = v27;
              if (v27)
              {
                CFRelease(v26);
              }
            }

            while (v25 != v24);
            v22 = v10[3];
          }

          v10[4] = v24;
          operator delete(v22);
        }

        operator delete(v10);
        v10 = v23;
      }

      while (v23);
    }

    v1[13] = 0;
    v11 = v1[12];
    if (v11)
    {
      bzero(v1[11], 8 * v11);
    }

    v1[14] = 0;
  }

  if (v1[19])
  {
    v12 = v1[18];
    if (v12)
    {
      do
      {
        v18 = *v12;
        v19 = v12[3];
        if (v19)
        {
          v12[4] = v19;
          operator delete(v19);
        }

        operator delete(v12);
        v12 = v18;
      }

      while (v18);
    }

    v1[18] = 0;
    v13 = v1[17];
    if (v13)
    {
      bzero(v1[16], 8 * v13);
    }

    v1[19] = 0;
  }

  if (v1[24])
  {
    v14 = v1[23];
    if (v14)
    {
      do
      {
        v20 = *v14;
        v21 = v14[3];
        if (v21)
        {
          v14[4] = v21;
          operator delete(v21);
        }

        operator delete(v14);
        v14 = v20;
      }

      while (v20);
    }

    v1[23] = 0;
    v15 = v1[22];
    if (v15)
    {
      bzero(v1[21], 8 * v15);
    }

    v1[24] = 0;
  }
}

void language_modeling::v1::LinguisticContext::set_predominant_locale(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v3 = (v2 + 208);
  if ((v2 + 208) != __p)
  {
    if (*(v2 + 231) < 0)
    {
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      if (v7 >= 0)
      {
        v5 = HIBYTE(v7);
      }

      else
      {
        v5 = __p[1];
      }

      sub_1AE621B84(v3, v4, v5);
    }

    else if (v7 < 0)
    {
      sub_1AE621AB4(v3, __p[0], __p[1]);
    }

    else
    {
      *v3 = *__p;
      *(v2 + 224) = v7;
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void language_modeling::v1::Probability::Probability(language_modeling::v1::Probability *this, const language_modeling::v1::Probability *a2)
{
  operator new();
}

{
  operator new();
}

void *language_modeling::v1::Probability::Probability(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void *language_modeling::v1::Probability::operator=(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    MEMORY[0x1B2706400](v3, 0x1000C4065B674BELL);
    return v4;
  }

  return result;
}

void language_modeling::v1::Probability::~Probability(language_modeling::v1::Probability *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    MEMORY[0x1B2706400](v1, 0x1000C4065B674BELL);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    MEMORY[0x1B2706400](v1, 0x1000C4065B674BELL);
  }
}

double language_modeling::v1::Probability::probability(uint64_t *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = *a1 + 8;
  }

  else
  {
    if (a2)
    {
      __assert_rtn("probability", "Probability.cpp", 50, "false");
    }

    v2 = *a1;
  }

  return *v2;
}

uint64_t LMVocabularyGetSharedVocabulary()
{
  if (qword_1ED9AC730 != -1)
  {
    dispatch_once(&qword_1ED9AC730, &unk_1F242FD08);
  }

  return qword_1ED9AC738;
}

void LMVocabularyCreate(const void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CFRetain(a1);
    theDict = a1;
    v2 = CFGetTypeID(a1);
    if (v2 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Value = CFDictionaryGetValue(theDict, @"locale");
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 != CFStringGetTypeID())
      {
        v6 = CFGetTypeID(v4);
        if (v6 != CFLocaleGetTypeID())
        {
          if (qword_1ED9ACA10 != -1)
          {
            dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
          }

          v8 = qword_1ED9AC9E0;
          if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
          {
            __p = 138412290;
            __p_4 = v4;
            _os_log_error_impl(&dword_1AE5C8000, v8, OS_LOG_TYPE_ERROR, "Invalid CFType for kLMVocabularyLocaleKey: %@", &__p, 0xCu);
          }

          __assert_rtn("getLocaleIdentifierFromOptions", "LanguageModeling_Vocabulary.cpp", 46, "false && Invalid CFType for kLMVocabularyLocaleKey");
        }

        MEMORY[0x1B2705500](v4);
      }
    }

    CFRelease(theDict);
  }

  operator new();
}

void sub_1AE62A3C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1AE62A2D8);
}

void sub_1AE62A3EC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE62A3F4);
  }

  JUMPOUT(0x1AE62A2D8);
}

const void **sub_1AE62A408(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t LMVocabularySetLanguages(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(v2 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72AA78;
  block[3] = &unk_1E7A2F140;
  block[4] = &v7;
  block[5] = v2;
  block[6] = a2;
  dispatch_sync(v3, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t LMVocabularyContainsLemma(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(v2 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE72A834;
  block[3] = &unk_1E7A2F168;
  block[4] = &v7;
  block[5] = v2;
  block[6] = a2;
  dispatch_sync(v3, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t LMVocabularyContainsLemmaForCharacters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *(v3 + 168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = sub_1AE72A748;
  v7[3] = &unk_1E7A2F190;
  v7[4] = &v8;
  v7[5] = v3;
  v7[6] = a2;
  v7[7] = a3;
  dispatch_sync(v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t LMVocabularyGetTokenIDForLemma(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v7 = 0;
  v8 = &v7;
  v10 = 0;
  v9 = 0x2000000000;
  v3 = *(v2 + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = sub_1AE72A3A4;
  v6[3] = &unk_1E7A2F208;
  v6[4] = &v7;
  v6[5] = v2;
  v6[6] = a2;
  v6[7] = 0;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t LMVocabularyGetClassForTokenID(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v8 = 0;
  v9 = &v8;
  v11 = 0;
  v10 = 0x2000000000;
  v3 = *(v2 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729F28;
  block[3] = &unk_1E7A2F280;
  block[4] = &v8;
  block[5] = v2;
  v7 = a2;
  dispatch_sync(v3, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

double LMVocabularyGetPriorProbabilityForTokenID(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 24);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = *(v2 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1AE729D7C;
  block[3] = &unk_1E7A2F2A8;
  block[4] = &v8;
  block[5] = v2;
  v7 = a2;
  dispatch_sync(v3, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t LMVocabularyAddLemma(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v11 = 0;
  v12 = &v11;
  v14 = 0;
  v13 = 0x2000000000;
  v6 = *(v5 + 168);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = sub_1AE72A988;
  v9[3] = &unk_1E7A2F380;
  v9[4] = &v11;
  v9[5] = v5;
  v9[6] = a2;
  v10 = a3;
  *&v9[7] = a5;
  v9[8] = a4;
  dispatch_sync(v6, v9);
  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void LMVocabularyEnumerateInflectionsOfLemma(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = *(v3 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1AE72A688;
    block[3] = &unk_1E7A2F1B8;
    v6 = a2;
    block[4] = a3;
    block[5] = v3;
    dispatch_sync(v4, block);
  }
}

void LMVocabularyAddObserver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = *(v3 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1AE729B00;
    block[3] = &unk_1E7A2F318;
    block[4] = v3;
    block[5] = a2;
    block[6] = a3;
    dispatch_sync(v4, block);
  }
}

void LMVocabularyRemoveObserver(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 168);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = sub_1AE729A44;
    v4[3] = &unk_1E7A2F338;
    v4[4] = v2;
    v4[5] = a2;
    dispatch_sync(v3, v4);
  }
}

void LMVocabularyCommitChanges(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    v2 = *(v1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1AE729984;
    block[3] = &unk_1E7A2F358;
    block[4] = v1;
    dispatch_sync(v2, block);
  }
}

void LMVocabularyReset(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    v2 = *(v1 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1AE729904;
    block[3] = &unk_1E7A2F3A0;
    block[4] = v1;
    dispatch_sync(v2, block);
  }
}

void *language_modeling::v1::LanguageModelSession::LanguageModelSession(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void language_modeling::v1::LanguageModelSession::addPriorText(uint64_t *a1, const UInt8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  sub_1AE5CA7E0(__p, a2);
  (*(*v8 + 88))(v8, __p, a3, a4, a5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE62AD08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "addPriorText";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62ACD8);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void language_modeling::v1::LanguageModelSession::adaptToText(uint64_t *a1, const UInt8 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  sub_1AE5CA7E0(__p, a2);
  (*(*v6 + 96))(v6, __p, a3, a4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE62AECC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "adaptToText";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62AE9CLL);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void language_modeling::v1::LanguageModelSession::adaptToToken(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  sub_1AE5CA7E0(__p, a2);
  v8 = *(a2 + 24);
  (*(*v5 + 104))(v5, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE62B094(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 buf)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "adaptToToken";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62B064);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void language_modeling::v1::LanguageModelSession::unAdaptToToken(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  sub_1AE5CA7E0(__p, a2);
  v8 = *(a2 + 24);
  (*(*v5 + 112))(v5, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE62B25C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 buf)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "unAdaptToToken";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62B22CLL);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void language_modeling::v1::LanguageModelSession::registerNegativeEvidence(uint64_t *a1, const UInt8 *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  sub_1AE5CA7E0(__p, a2);
  (*(*v2 + 120))(v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE62B408(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "registerNegativeEvidence";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62B3DCLL);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE62B7AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 buf)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v20 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v21 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v22 = (*(*v20 + 16))(v20);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "detailedConditionalProbability";
        WORD6(buf) = 2080;
        *(&buf + 14) = v22;
        _os_log_error_impl(&dword_1AE5C8000, v21, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      *v17 = v16;
      __cxa_end_catch();
      JUMPOUT(0x1AE62B778);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void language_modeling::v1::LanguageModelSession::detailedConditionalProbability(void *a1, uint64_t *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  v10 = 0;
  v11 = 0;
  __p = 0;
  p_p = &__p;
  v13 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  (*(**a1 + 40))(*a1, &__p, a3);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_1AE62BA58(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "detailedConditionalProbability";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      __cxa_end_catch();
      JUMPOUT(0x1AE62B9D0);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void language_modeling::v1::LanguageModelSession::detailedConditionalProbability(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  while (v5 != v6)
  {
    sub_1AE5CBA4C(&__p, v5);
    v27 = 0;
    v28 = 0;
    v26 = 0;
    sub_1AE62BEA0(&v26, __p, v33, (v33 - __p) >> 5);
    v8 = v30;
    if (v30 >= v31)
    {
      v9 = sub_1AE62BFAC(&v29, &v26);
    }

    else
    {
      sub_1AE5CBB88(v30, &v26);
      v9 = v8 + 3;
    }

    v30 = v9;
    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          v13 = *(v11 - 9);
          v11 -= 4;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v33;
      v7 = __p;
      if (v33 != __p)
      {
        do
        {
          v16 = *(v15 - 9);
          v15 -= 4;
          if (v16 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v7 = __p;
      }

      v33 = v14;
      operator delete(v7);
    }

    v5 += 3;
  }

  (*(**a1 + 48))(*a1, &v29, a3);
  v17 = v29;
  if (v29)
  {
    v18 = v30;
    v19 = v29;
    if (v30 != v29)
    {
      v20 = v30;
      do
      {
        v23 = *(v20 - 3);
        v20 -= 3;
        v22 = v23;
        if (v23)
        {
          v24 = *(v18 - 2);
          v21 = v22;
          if (v24 != v22)
          {
            do
            {
              v25 = *(v24 - 9);
              v24 -= 4;
              if (v25 < 0)
              {
                operator delete(*v24);
              }
            }

            while (v24 != v22);
            v21 = *v20;
          }

          *(v18 - 2) = v22;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = v29;
    }

    v30 = v17;
    operator delete(v19);
  }
}

void sub_1AE62BEA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }
}

uint64_t sub_1AE62BFAC(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v11 = (8 * ((*(a1 + 8) - *a1) >> 3));
  sub_1AE5CBB88(v11, a2);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8) - *a1;
  v8 = v11 - v7;
  memcpy(v11 - v7, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_1AE62C0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE62C0E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE62C0E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 9);
            v8 -= 4;
            if (v9 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void language_modeling::v1::LanguageModelSession::detailedConditionalProbability(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v7 = *a2;
  v8 = *(a2 + 8);
  while (v7 != v8)
  {
    sub_1AE5CBA4C(&__p, v7);
    v29 = 0;
    v30 = 0;
    v28 = 0;
    sub_1AE62BEA0(&v28, __p, v35, (v35 - __p) >> 5);
    v10 = v32;
    if (v32 >= v33)
    {
      v11 = sub_1AE62BFAC(&v31, &v28);
    }

    else
    {
      sub_1AE5CBB88(v32, &v28);
      v11 = v10 + 3;
    }

    v32 = v11;
    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
      {
        do
        {
          v15 = *(v13 - 9);
          v13 -= 4;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v35;
      v9 = __p;
      if (v35 != __p)
      {
        do
        {
          v18 = *(v17 - 9);
          v17 -= 4;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v9 = __p;
      }

      v35 = v16;
      operator delete(v9);
    }

    v7 += 3;
  }

  (*(**a1 + 56))(*a1, &v31, a3, a4);
  v19 = v31;
  if (v31)
  {
    v20 = v32;
    v21 = v31;
    if (v32 != v31)
    {
      v22 = v32;
      do
      {
        v25 = *(v22 - 3);
        v22 -= 3;
        v24 = v25;
        if (v25)
        {
          v26 = *(v20 - 2);
          v23 = v24;
          if (v26 != v24)
          {
            do
            {
              v27 = *(v26 - 9);
              v26 -= 4;
              if (v27 < 0)
              {
                operator delete(*v26);
              }
            }

            while (v26 != v24);
            v23 = *v22;
          }

          *(v20 - 2) = v24;
          operator delete(v23);
        }

        v20 = v22;
      }

      while (v22 != v19);
      v21 = v31;
    }

    v32 = v19;
    operator delete(v21);
  }
}

void language_modeling::v1::LanguageModelSession::conditionalProbability(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  language_modeling::v1::LanguageModelSession::detailedConditionalProbability(a1, a2, a3);
  v5 = __p;
  if (__p != v23)
  {
    v6 = 0;
    do
    {
      v8 = **v5;
      v7 = (*v5)[1];
      v9 = *(*v5 + 26);
      v10 = a4[2];
      if (v6 < v10)
      {
        *v6 = v8;
        *(v6 + 8) = v7;
        *(v6 + 16) = v9;
        v6 += 24;
      }

      else
      {
        v11 = *a4;
        v12 = v6 - *a4;
        v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3) + 1;
        if (v13 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (v15 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v16 = 8 * (v12 >> 3);
        *v16 = v8;
        *(v16 + 8) = v7;
        *(v16 + 16) = v9;
        v6 = v16 + 24;
        v17 = v16 - v12;
        memcpy((v16 - v12), v11, v12);
        *a4 = v17;
        a4[1] = v6;
        a4[2] = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      a4[1] = v6;
      ++v5;
    }

    while (v5 != v23);
    v5 = __p;
  }

  if (v5)
  {
    v18 = v23;
    v19 = v5;
    if (v23 != v5)
    {
      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          MEMORY[0x1B2706400](v20, 0x1000C4065B674BELL);
        }
      }

      while (v18 != v5);
      v19 = __p;
    }

    operator delete(v19);
  }
}

void language_modeling::v1::LanguageModelSession::conditionalProbability(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  language_modeling::v1::LanguageModelSession::detailedConditionalProbability(a1, a2, a3);
  v5 = __p;
  if (__p != v42)
  {
    v39 = a4;
    while (1)
    {
      v7 = *v5;
      v6 = v5[1];
      v40 = v5;
      if (*v5 == v6)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = (*v7)[1];
          v11 = *(*v7 + 26);
          v12 = v9 - v8;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1AE5CBB70();
          }

          if (0x5555555555555556 * (-v8 >> 3) > v14)
          {
            v14 = 0x5555555555555556 * (-v8 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            if (v15 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          v16 = 24 * v13;
          *v16 = **v7;
          *(v16 + 8) = v10;
          *(v16 + 16) = v11;
          v9 = 24 * v13 + 24;
          v17 = (v16 + 24 * (v12 / -24));
          memcpy(v17, v8, v12);
          if (v8)
          {
            operator delete(v8);
          }

          v8 = v17;
          ++v7;
        }

        while (v7 != v6);
      }

      v19 = v39[1];
      v18 = v39[2];
      if (v19 >= v18)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *v39) >> 3);
        v22 = v21 + 1;
        if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v39) >> 3);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x555555555555555)
        {
          v24 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v25 = 24 * v21;
        *(v25 + 8) = 0;
        *(v25 + 16) = 0;
        *v25 = 0;
        if (v9 != v8)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }

        v26 = v25 + 24;
        v27 = *v39;
        v28 = v39[1] - *v39;
        v29 = (v25 - v28);
        memcpy(v29, *v39, v28);
        *v39 = v29;
        v39[1] = v26;
        v39[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }

        v20 = v40;
        v39[1] = v26;
        if (!v8)
        {
          goto LABEL_3;
        }
      }

      else
      {
        *v19 = 0;
        *(v19 + 1) = 0;
        *(v19 + 2) = 0;
        v20 = v40;
        if (v9 != v8)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }

        v39[1] = v19 + 24;
        if (!v8)
        {
          goto LABEL_3;
        }
      }

      operator delete(v8);
LABEL_3:
      v5 = v20 + 3;
      if (v5 == v42)
      {
        v5 = __p;
        break;
      }
    }
  }

  if (v5)
  {
    v30 = v42;
    v31 = v5;
    if (v42 != v5)
    {
      v32 = v42;
      do
      {
        v35 = *(v32 - 3);
        v32 -= 3;
        v34 = v35;
        if (v35)
        {
          v36 = *(v30 - 2);
          v33 = v34;
          if (v36 != v34)
          {
            do
            {
              v38 = *--v36;
              v37 = v38;
              *v36 = 0;
              if (v38)
              {
                MEMORY[0x1B2706400](v37, 0x1000C4065B674BELL);
              }
            }

            while (v36 != v34);
            v33 = *v32;
          }

          *(v30 - 2) = v34;
          operator delete(v33);
        }

        v30 = v32;
      }

      while (v32 != v5);
      v31 = __p;
    }

    operator delete(v31);
  }
}

void sub_1AE62CB64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *v8;
  if (*v8)
  {
    *(v8 + 8) = v10;
    operator delete(v10);
  }

  sub_1AE62CBC4(va);
  sub_1AE6090F0(a1);
}

uint64_t sub_1AE62CBC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void language_modeling::v1::LanguageModelSession::enumeratePredictions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*(a3 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v24 = *(a3 + 16);
  }

  v25 = 0;
  sub_1AE62D084(&v19, __dst, 1uLL);
  sub_1AE69699C(&__p, v19, v20);
  (*(*v8 + 72))(v8, a2, &__p, a4, a5);
  v9 = __p;
  if (__p)
  {
    v10 = v22;
    v11 = __p;
    if (v22 != __p)
    {
      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          v14 = sub_1AE61E5C8(v12);
          MEMORY[0x1B2706400](v14, 0x1030C403C62F202);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    v22 = v9;
    operator delete(v11);
  }

  v15 = v19;
  if (v19)
  {
    v16 = v20;
    v17 = v19;
    if (v20 != v19)
    {
      do
      {
        v18 = *(v16 - 9);
        v16 -= 4;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v19;
    }

    v20 = v15;
    operator delete(v17);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1AE62CF40(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v15 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v16 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v17 = (*(*v15 + 16))(v15);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "enumeratePredictions";
        WORD6(buf) = 2080;
        *(&buf + 14) = v17;
        _os_log_error_impl(&dword_1AE5C8000, v16, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62CF10);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE62D084(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void *sub_1AE62D1AC(void *a1)
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
          v7 = sub_1AE61E5C8(v5);
          MEMORY[0x1B2706400](v7, 0x1030C403C62F202);
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

void language_modeling::v1::LanguageModelSession::enumeratePredictions(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  sub_1AE69699C(&__p, *a3, a3[1]);
  (*(*v8 + 72))(v8, a2, &__p, a4, a5);
  v9 = __p;
  if (__p)
  {
    v10 = v16;
    v11 = __p;
    if (v16 != __p)
    {
      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          v14 = sub_1AE61E5C8(v12);
          MEMORY[0x1B2706400](v14, 0x1030C403C62F202);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    v16 = v9;
    operator delete(v11);
  }
}

void sub_1AE62D33C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    sub_1AE62D1AC(&a10);
    if (a2 == 2)
    {
      v15 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v16 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v17 = (*(*v15 + 16))(v15);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "enumeratePredictions";
        WORD6(buf) = 2080;
        *(&buf + 14) = v17;
        _os_log_error_impl(&dword_1AE5C8000, v16, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62D30CLL);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t language_modeling::v1::LanguageModelSession::enumerateInlineCompletions(void *a1)
{
  return (*(**a1 + 80))(*a1);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  language_modeling::v1::LanguageModelSession::enumerateInlineCompletions(a1);
  result = 0;
  if (!&v2)
  {
    return (*(*v3 + 32))(0);
  }

  return result;
}

void language_modeling::v1::LanguageModelSession::enumerateInlineCompletions(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  __p = 0;
  v17 = 0;
  v18 = 0;
  v21[0] = &unk_1F242A218;
  v21[1] = &__p;
  v21[2] = a1;
  v22 = v21;
  v20 = 0;
  language_modeling::v1::LanguageModelSession::enumerateInlineCompletions(a1);
  if (v20 == &v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))();
  }

  v5 = __p;
  v6 = v17;
  if (__p != v17)
  {
    do
    {
      v7 = *(a4 + 24);
      if (!v7)
      {
        sub_1AE60819C();
      }

      v8 = (*(*v7 + 48))(v7, v5);
      v5 += 8;
      if (v5 == v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }
    }

    while ((v9 & 1) != 0);
  }

  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
    v10 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v22)
  {
    (*(*v22 + 40))();
  }

  v10 = __p;
  if (__p)
  {
LABEL_17:
    v11 = v17;
    v12 = v10;
    if (v17 != v10)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          v15 = sub_1AE61F018(v13);
          MEMORY[0x1B2706400](v15, 0x1032C4057ACE4D0);
        }
      }

      while (v11 != v10);
      v12 = __p;
    }

    v17 = v10;
    operator delete(v12);
  }
}

void sub_1AE62D9C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    sub_1AE62DAD4(&buf);
    sub_1AE62DB54(&a10);
    if (a2 == 2)
    {
      v19 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v20 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v21 = (*(*v19 + 16))(v19);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "enumerateInlineCompletions";
        WORD6(buf) = 2080;
        *(&buf + 14) = v21;
        _os_log_error_impl(&dword_1AE5C8000, v20, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62D988);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE62DAD4(uint64_t a1)
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

void *sub_1AE62DB54(void *a1)
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
          v7 = sub_1AE61F018(v5);
          MEMORY[0x1B2706400](v7, 0x1032C4057ACE4D0);
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

uint64_t sub_1AE62DBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK17language_modeling2v120LanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_10PredictionEEEEPK14__CFDictionaryENK3$_0clEvEUlRKNS0_16InlineCompletionEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK17language_modeling2v120LanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_10PredictionEEEEPK14__CFDictionaryENK3$_0clEvEUlRKNS0_16InlineCompletionEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK17language_modeling2v120LanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_10PredictionEEEEPK14__CFDictionaryENK3$_0clEvEUlRKNS0_16InlineCompletionEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK17language_modeling2v120LanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_10PredictionEEEEPK14__CFDictionaryENK3$_0clEvEUlRKNS0_16InlineCompletionEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE62DD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  language_modeling::v1::Prediction::~Prediction(va1);
  language_modeling::v1::InlineCompletion::~InlineCompletion(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE62DDAC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v10 = v4 >> 3;
  v11 = *a2;
  *a2 = 0;
  *(8 * v5) = v11;
  if (v2 != v3)
  {
    v12 = v3 - v2 - 8;
    v13 = v2;
    v14 = 0;
    if (v12 < 0x98)
    {
      goto LABEL_33;
    }

    v15 = v2 >= v4 + (v12 & 0xFFFFFFFFFFFFFFF8) - 8 * v10 + 8 || (v2 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8) == 0;
    v13 = v2;
    v14 = 0;
    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = (v12 >> 3) + 1;
    v14 = (8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
    v13 = (v14 + v2);
    v17 = (-8 * v10 + 8 * v5 + 16);
    v18 = (v2 + 2);
    v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      *(v18 - 1) = 0uLL;
      *v18 = 0uLL;
      *(v17 - 1) = v20;
      *v17 = v21;
      v17 += 2;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_33:
      do
      {
        v22 = *v13;
        *v13++ = 0;
        *v14++ = v22;
      }

      while (v13 != v3);
    }

    do
    {
      v23 = *v2;
      *v2 = 0;
      if (v23)
      {
        v24 = sub_1AE61F018(v23);
        MEMORY[0x1B2706400](v24, 0x1032C4057ACE4D0);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 8 * v5 + 8;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 8 * v5 + 8;
}

__n128 sub_1AE62DFA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242A218;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void language_modeling::v1::LanguageModelSession::recordWordRevision(uint64_t *a1, const UInt8 *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  sub_1AE5CA7E0(__p, a2);
  (*(*v2 + 128))(v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE62E0D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    if (a2 == 2)
    {
      v18 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v19 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v20 = (*(*v18 + 16))(v18);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "recordWordRevision";
        WORD6(buf) = 2080;
        *(&buf + 14) = v20;
        _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE62E0A8);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t LMLexiconCreate(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t LMLexiconRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *LMLexiconRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_relaxed) <= 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void *LMLexiconResetCursors(void *a1)
{
  if (a1)
  {
    return sub_1AE762C2C(a1);
  }

  return a1;
}

uint64_t LMLexiconGetFirstTokenIDForString(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1AE62F2EC;
  v5[3] = &unk_1E7A2D808;
  v5[4] = &v6;
  v5[5] = a2;
  v5[6] = a3;
  LMLexiconEnumerateEntriesForStringWithBlock(a1, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1AE62F2EC(uint64_t a1, int a2, char *cStr, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (cStr)
  {
    v9 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x1E695E498]);
    if (v9)
    {
      v10 = v9;
      if (CFStringCompare(*(a1 + 40), v9, 0) == kCFCompareEqualTo)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v11 = *(a1 + 48);
        if (v11)
        {
          *v11 = a2;
        }

        *a6 = 1;
      }

      CFRelease(v10);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      *v12 = a2;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a6 = 1;
  }
}

void LMLexiconEnumerateEntriesForStringWithBlock(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  Length = CFStringGetLength(theString);
  if (a1)
  {
    v7 = Length;
    if (Length >= 1)
    {
      v8 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
      v16.location = 0;
      v16.length = v7;
      CFStringGetCharacters(theString, v16, v8);
      v9 = sub_1AE764374(a1, ***(a1 + 48), v8, v7, 0);
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0x5000000000;
        while (1)
        {
          v13 = *(a1 + 24);
          if (v11 >= (*(a1 + 32) - v13) >> 3)
          {
            break;
          }

          v14 = (*(**(v13 + 8 * v11) + 48))(*(v13 + 8 * v11), v10 + (v12 >> 32));
          ++v11;
          v12 += 0x5000000000;
          if (v14)
          {
            sub_1AE764584(a1, v10, v8, v7, a3);
            break;
          }
        }
      }

      free(v8);
    }
  }
}

uint64_t LMLexiconCopyStringForTokenID(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        result = (*(**v2 + 128))(*v2, a2);
        if (result)
        {
          break;
        }

        if (++v2 == v3)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t LMLexiconGetRootCursor(uint64_t result)
{
  if (result)
  {
    return ***(result + 48);
  }

  return result;
}

uint64_t LMLexiconGetCursorByAdvancingWithCharacters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (a1 && a2)
  {
    return sub_1AE764374(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

BOOL LMLexiconCursorIsRoot(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = 0;
    for (i = 0x5000000000; ; i += 0x5000000000)
    {
      v7 = *(a1 + 24);
      v8 = (*(a1 + 32) - v7) >> 3;
      result = v8 <= v5;
      if (v8 <= v5)
      {
        break;
      }

      v9 = (*(**(v7 + 8 * v5) + 40))(*(v7 + 8 * v5), a2 + (i >> 32), ***(a1 + 48) + (i >> 32));
      ++v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL LMLexiconCursorHasEntries(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = 0;
    for (i = 0x5000000000; ; i += 0x5000000000)
    {
      v7 = *(a1 + 24);
      v8 = (*(a1 + 32) - v7) >> 3;
      result = v8 > v5;
      if (v8 <= v5)
      {
        break;
      }

      v9 = (*(**(v7 + 8 * v5) + 48))(*(v7 + 8 * v5), a2 + (i >> 32));
      ++v5;
      if (v9)
      {
        return 1;
      }
    }
  }

  return result;
}

void LMLexiconCursorEnumerateEntriesWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      sub_1AE764584(a1, a2, 0, 0, a3);
    }
  }
}

void LMLexiconCursorEnumerateEntriesWithCharactersAndBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      sub_1AE764584(a1, a2, a3, a4, a5);
    }
  }
}

uint64_t LMLexiconCursorFirstTokenID(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = 0;
    for (i = 0x5000000000; ; i += 0x5000000000)
    {
      v7 = *(a1 + 24);
      if (v5 >= (*(a1 + 32) - v7) >> 3)
      {
        break;
      }

      result = (*(**(v7 + 8 * v5) + 96))(*(v7 + 8 * v5), a2 + (i >> 32));
      ++v5;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

BOOL LMLexiconCursorHasChildren(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = 0;
    for (i = 0x5000000000; ; i += 0x5000000000)
    {
      v7 = *(a1 + 24);
      v8 = (*(a1 + 32) - v7) >> 3;
      result = v8 > v5;
      if (v8 <= v5)
      {
        break;
      }

      v9 = (*(**(v7 + 8 * v5) + 64))(*(v7 + 8 * v5), a2 + (i >> 32));
      ++v5;
      if (v9)
      {
        return 1;
      }
    }
  }

  return result;
}

void LMLexiconCursorConditionalProbability(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 24);
      if (*(a1 + 32) != v5)
      {
        v6 = 0;
        v7 = 0x5000000000;
        do
        {
          a3.n128_f64[0] = (*(**(v5 + 8 * v6) + 72))(*(v5 + 8 * v6), a2 + (v7 >> 32), a3);
          if (a3.n128_f64[0] != 0.0)
          {
            break;
          }

          ++v6;
          v5 = *(a1 + 24);
          v7 += 0x5000000000;
        }

        while (v6 < (*(a1 + 32) - v5) >> 3);
      }
    }
  }
}

void LMLexiconCursorTerminationProbability(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 24);
      if (*(a1 + 32) != v5)
      {
        v6 = 0;
        v7 = 0x5000000000;
        do
        {
          a3.n128_f64[0] = (*(**(v5 + 8 * v6) + 80))(*(v5 + 8 * v6), a2 + (v7 >> 32), a3);
          if (a3.n128_f64[0] != 0.0)
          {
            break;
          }

          ++v6;
          v5 = *(a1 + 24);
          v7 += 0x5000000000;
        }

        while (v6 < (*(a1 + 32) - v5) >> 3);
      }
    }
  }
}

uint64_t LMLexiconCursorTraversedLength(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = 0;
    for (i = 0x5000000000; ; i += 0x5000000000)
    {
      v7 = *(a1 + 24);
      if (v5 >= (*(a1 + 32) - v7) >> 3)
      {
        break;
      }

      result = (*(**(v7 + 8 * v5) + 104))(*(v7 + 8 * v5), a2 + (i >> 32));
      ++v5;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t LMLexiconCursorGetTraversedCharacters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    v9 = 0;
    for (i = 0x5000000000; ; i += 0x5000000000)
    {
      v11 = *(a1 + 24);
      if (v9 >= (*(a1 + 32) - v11) >> 3)
      {
        break;
      }

      result = (*(**(v11 + 8 * v9) + 112))(*(v11 + 8 * v9), a2 + (i >> 32), a3, a4);
      ++v9;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t LMLexiconCursorHash(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 24);
    if (*(a1 + 32) == v5)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v2 = 0;
      v7 = 0x5000000000;
      do
      {
        v2 ^= (*(**(v5 + 8 * v6) + 88))(*(v5 + 8 * v6), a2 + (v7 >> 32));
        ++v6;
        v5 = *(a1 + 24);
        v7 += 0x5000000000;
      }

      while (v6 < (*(a1 + 32) - v5) >> 3);
    }
  }

  return v2;
}

uint64_t LMLexiconIDConverterCreate(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t LMLexiconIDConverterCreateWithUnigramsPath(CFStringRef filePath)
{
  v11 = *MEMORY[0x1E69E9840];
  if (filePath)
  {
    v1 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
    if (v1)
    {
      v2 = v1;
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v1);
      v4 = CFURLCopyLastPathComponent(v2);
      if (CFStringHasPrefix(v4, @"Unigrams"))
      {
        v12.length = CFStringGetLength(v4) - 8;
        v12.location = 8;
        v5 = CFStringCreateWithSubstring(0, v4, v12);
        v6 = CFStringCreateWithFormat(0, 0, @"lstsfmap%@", v5);
        v7 = CFURLCreateCopyAppendingPathComponent(0, PathComponent, v6, 0);
        CFRelease(v6);
        CFRelease(v5);
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v4);
      CFRelease(PathComponent);
      CFRelease(v2);
      if (v7)
      {
        if (CFURLGetFileSystemRepresentation(v7, 1u, buffer, 1024) && !stat(buffer, &v9))
        {
          operator new();
        }

        CFRelease(v7);
      }
    }
  }

  return 0;
}

uint64_t LMLexiconIDConverterGetStemSuffixTokenID(uint64_t result, unsigned int a2, unsigned int a3, int *a4)
{
  if (result)
  {
    v4 = *(result + 16);
    if (*v4 > a2)
    {
      return 0;
    }

    v5 = *(result + 8);
    if (*&v4[4 * v5] <= a2)
    {
      return 0;
    }

    v6 = *(result + 24);
    if (v6 != v4)
    {
      v7 = (v6 - v4) >> 2;
      v6 = *(result + 16);
      do
      {
        v8 = v7 >> 1;
        v9 = &v6[4 * (v7 >> 1)];
        v11 = *v9;
        v10 = (v9 + 1);
        v7 += ~(v7 >> 1);
        if (v11 > a2)
        {
          v7 = v8;
        }

        else
        {
          v6 = v10;
        }
      }

      while (v7);
    }

    v12 = *(result + 40);
    if (*v12 > a3 || *&v12[4 * v5] <= a3)
    {
      return 0;
    }

    v13 = *(v6 - 1);
    v14 = v6 - 4 - v4;
    v15 = v14 >> 2;
    v16 = *(result + 48);
    if (v16 != v12)
    {
      v17 = (v16 - v12) >> 2;
      v16 = *(result + 40);
      do
      {
        v18 = v17 >> 1;
        v19 = &v16[4 * (v17 >> 1)];
        v21 = *v19;
        v20 = v19 + 4;
        v17 += ~(v17 >> 1);
        if (v21 > a3)
        {
          v17 = v18;
        }

        else
        {
          v16 = v20;
        }
      }

      while (v17);
    }

    v22 = v16 - 4;
    if (v15 == ((v22 - v12) >> 2) && (v23 = a3 - *v22 + (*&v12[4 * (v15 + 1)] - *&v12[v14 & 0x3FFFFFFFCLL]) * (a2 - v13) + *(*(result + 64) + (v14 & 0x3FFFFFFFCLL))) != 0)
    {
      if (a4)
      {
        *a4 = v23;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LMLexiconIDConverterGetStemAndSuffixTokenIDs(uint64_t result, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  if (result)
  {
    v4 = *(result + 64);
    if (*v4 > a2 || v4[*(result + 8)] <= a2)
    {
      return 0;
    }

    else
    {
      v5 = *(result + 72);
      if (v5 != v4)
      {
        v6 = v5 - v4;
        v5 = *(result + 64);
        do
        {
          v7 = v6 >> 1;
          v8 = &v5[v6 >> 1];
          v10 = *v8;
          v9 = v8 + 1;
          v6 += ~(v6 >> 1);
          if (v10 > a2)
          {
            v6 = v7;
          }

          else
          {
            v5 = v9;
          }
        }

        while (v6);
      }

      v11 = *(v5 - 1);
      v12 = v5 - 1 - v4;
      v13 = *(result + 40);
      v14 = v12;
      v15 = *(v13 + 4 * (v12 + 1)) - *(v13 + 4 * v12);
      v16 = a2 - v11;
      v17 = (a2 - v11) / v15;
      if (a3)
      {
        *a3 = v17 + *(*(result + 16) + 4 * v14);
      }

      if (a4)
      {
        *a4 = v16 - v17 * v15 + *(v13 + 4 * v14);
      }

      return 1;
    }
  }

  return result;
}

uint64_t LMLexiconIDConverterGetStemData(uint64_t result, unsigned int a2, uint64_t *a3, void *a4, unsigned __int16 **a5, void *a6)
{
  if (result)
  {
    v6 = *(result + 16);
    if (*v6 > a2 || *&v6[4 * *(result + 8)] <= a2)
    {
      return 0;
    }

    v7 = *(result + 24);
    if (v7 != v6)
    {
      v8 = (v7 - v6) >> 2;
      v7 = *(result + 16);
      do
      {
        v9 = v8 >> 1;
        v10 = &v7[4 * (v8 >> 1)];
        v12 = *v10;
        v11 = v10 + 4;
        v8 += ~(v8 >> 1);
        if (v12 > a2)
        {
          v8 = v9;
        }

        else
        {
          v7 = v11;
        }
      }

      while (v8);
    }

    v13 = *(result + 12);
    v14 = v7 - v6 + 0x3FFFFFFFCLL;
    v15 = v14 >> 2;
    v16 = __CFADD__(v13, (v14 >> 2));
    v17 = v13 + (v14 >> 2);
    if (v16 || **(result + 40) <= v17)
    {
      return 0;
    }

    else
    {
      v18 = (v14 >> 2);
      if (a3)
      {
        v19 = *(result + 88) + 32 * v18;
        v20 = *(v19 + 8);
        v21 = v19 + 16;
        if (v20)
        {
          v21 = v20;
        }

        *a3 = v21;
      }

      if (a4)
      {
        *a4 = *(*(result + 88) + 32 * v18);
      }

      if (a5)
      {
        v22 = (*(result + 112) + 16 * v15);
        if (*v22 < 0xFu)
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = *(v22 + 1);
        }

        *a5 = v23;
      }

      if (a6)
      {
        *a6 = *(*(result + 112) + 16 * v18);
      }

      return 1;
    }
  }

  return result;
}

uint64_t LMLexiconIDConverterGetSuffixData(uint64_t result, unsigned int a2, uint64_t *a3, void *a4, unsigned __int16 **a5, void *a6)
{
  if (result)
  {
    v6 = *(result + 40);
    v7 = *v6;
    if (*v6 > a2 || *&v6[4 * *(result + 8)] <= a2)
    {
      return 0;
    }

    v8 = *(result + 48);
    if (v8 != v6)
    {
      v9 = (v8 - v6) >> 2;
      v8 = *(result + 40);
      do
      {
        v10 = v9 >> 1;
        v11 = &v8[4 * (v9 >> 1)];
        v13 = *v11;
        v12 = v11 + 4;
        v9 += ~(v9 >> 1);
        if (v13 > a2)
        {
          v9 = v10;
        }

        else
        {
          v8 = v12;
        }
      }

      while (v9);
    }

    v14 = *(result + 12);
    v15 = v8 - v6 + 0x3FFFFFFFCLL;
    v16 = v15 >> 2;
    v17 = v14 + (v15 >> 2);
    if (v14 <= v17 && v7 > v17)
    {
      v19 = (v15 >> 2);
      if (a3)
      {
        v20 = *(result + 88) + 32 * v19;
        v21 = *(v20 + 8);
        v22 = v20 + 16;
        if (v21)
        {
          v22 = v21;
        }

        *a3 = v22;
      }

      if (a4)
      {
        *a4 = *(*(result + 88) + 32 * v19);
      }

      if (a5)
      {
        v23 = (*(result + 112) + 16 * v16);
        if (*v23 < 0xFu)
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = *(v23 + 1);
        }

        *a5 = v24;
      }

      if (a6)
      {
        *a6 = *(*(result + 112) + 16 * v19);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LMLexiconIDConverterDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *language_modeling::v1::LanguageModel::LanguageModel(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void language_modeling::v1::LanguageModel::~LanguageModel(language_modeling::v1::LanguageModel *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void language_modeling::v1::LanguageModel::init(uint64_t a1, uint64_t a2)
{
  language_modeling::v1::LanguageModel::init(a1, a2);
}

{
  v2 = sub_1AE76D0BC(a2);
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  operator new();
}

void sub_1AE630F0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE630F58);
}

void sub_1AE630F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1AE630F24);
  }

  sub_1AE6090F0(a1);
}

void sub_1AE630F2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE630F90);
}

void sub_1AE630F3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a2)
  {
    sub_1AE622290(va);
    JUMPOUT(0x1AE630F50);
  }

  _Unwind_Resume(a1);
}

void sub_1AE630F6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE630F74);
  }

  _Unwind_Resume(a1);
}

void sub_1AE631008(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE631010);
  }

  _Unwind_Resume(a1);
}

void sub_1AE631018(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    MEMORY[0x1B2706400](v2, 0x1072C40FEAF31FBLL);
    JUMPOUT(0x1AE630F98);
  }

  _Unwind_Resume(a1);
}

void sub_1AE631040(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE630F98);
}

void sub_1AE631050(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      sub_1AE6090F0(a1);
    }

    JUMPOUT(0x1AE630FA8);
  }

  _Unwind_Resume(a1);
}

const void **sub_1AE631068(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE63109C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *sub_1AE6310D0(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_1AE631190(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE631068(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1AE63117CLL);
}

uint64_t sub_1AE6311E0(const __CFNumber *a1)
{
  if (!a1)
  {
LABEL_8:
    v3 = 0;
    v4 = 0;
    return v3 | (v4 << 8);
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    v5 = CFNumberGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_31;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v14 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v13 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_35;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v12 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_23;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_31:
          v4 = Value;
          v3 = Value != 0;
          v15 = LOBYTE(valuePtr) == 0;
          goto LABEL_36;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v14 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          v4 = v14;
          v3 = v14 != 0;
          v15 = LOWORD(valuePtr) == 0;
          goto LABEL_36;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v13 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_35:
          v4 = v13;
          v3 = v13 != 0;
          v15 = LODWORD(valuePtr) == 0;
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v9 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v4 = v9;
          v10 = v9 != 0;
          v11 = *&valuePtr == 0.0;
          goto LABEL_24;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v12 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_23;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_33;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
          v4 = v8;
          v3 = v8 != 0;
          v15 = *&valuePtr == 0;
LABEL_36:
          if (v15)
          {
            v3 = 0;
          }

          if (!v4)
          {
            return v3 | (v4 << 8);
          }

          goto LABEL_4;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v12 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
          v4 = v12;
          v10 = v12 != 0;
          v11 = valuePtr == 0.0;
LABEL_24:
          v16 = !v11;
          v3 = v10 & v16;
          if (!v4)
          {
            return v3 | (v4 << 8);
          }

          goto LABEL_4;
        default:
          goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  v3 = CFBooleanGetValue(a1) != 0;
LABEL_4:
  v4 = 1;
  return v3 | (v4 << 8);
}

uint64_t *sub_1AE63148C(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (!v17)
  {
    if (v6 >= v15)
    {
      return v7;
    }

    return v2;
  }

  if (v17 < 0)
  {
    return v2;
  }

  return v7;
}

void sub_1AE631594()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::exception::~exception);
}

void **sub_1AE6315E0(void **a1)
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
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE631694(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    if (*v3 != -1)
    {
      flock(*v3, 8);
      close(*v3);
    }

    MEMORY[0x1B2706400](v3, 0x1000C4052888210);
  }

  if (*(a1 + 128) == 1)
  {
    sub_1AE6206F4(*(a1 + 112));
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v4)
  {
    sub_1AE6318C4(v4);
    MEMORY[0x1B2706400]();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 56) = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 40) = 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 32) = 0;
  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 24) = 0;
  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 8) = 0;
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  return a1;
}

uint64_t *sub_1AE631818(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE631694(v2);
    MEMORY[0x1B2706400](v4, 0x1072C40FEAF31FBLL);
    return v3;
  }

  return v1;
}

uint64_t sub_1AE63186C(uint64_t result, int a2, __int128 *a3)
{
  *result = a2;
  if (*(a3 + 23) < 0)
  {
    v4 = result;
    sub_1AE5DBF1C((result + 8), *a3, *(a3 + 1));
    return v4;
  }

  else
  {
    v3 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v3;
  }

  return result;
}

void sub_1AE6318C4(std::mutex *this)
{
  if (SHIBYTE(this[7].__m_.__sig) < 0)
  {
    operator delete(*&this[6].__m_.__opaque[40]);
    v2 = *&this[6].__m_.__opaque[16];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *&this[6].__m_.__opaque[16];
  if (v2)
  {
LABEL_5:
    CFRelease(v2);
  }

LABEL_6:
  *&this[6].__m_.__opaque[16] = 0;
  v3 = *this[4].__m_.__opaque;
  if (v3)
  {
    *&this[4].__m_.__opaque[8] = v3;
    operator delete(v3);
  }

  v4 = *&this[2].__m_.__opaque[48];
  *&this[2].__m_.__opaque[48] = 0;
  if (v4)
  {
    sub_1AE631A28(v4);
  }

  v5 = *&this[2].__m_.__opaque[40];
  if (v5)
  {
    CFRelease(v5);
  }

  *&this[2].__m_.__opaque[40] = 0;
  if (this[2].__m_.__opaque[39] < 0)
  {
    operator delete(*&this[2].__m_.__opaque[16]);
    if ((this[2].__m_.__opaque[15] & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((this[2].__m_.__opaque[15] & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(this[2].__m_.__sig);
LABEL_14:
  v6 = *&this[1].__m_.__opaque[48];
  *&this[1].__m_.__opaque[48] = 0;
  if (!v6)
  {
    goto LABEL_20;
  }

  if (*(v6 + 95) < 0)
  {
    operator delete(*(v6 + 72));
    if ((*(v6 + 71) & 0x80000000) == 0)
    {
LABEL_17:
      if ((*(v6 + 47) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_31:
      operator delete(*(v6 + 24));
      if ((*(v6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_32:
      operator delete(*v6);
      goto LABEL_19;
    }
  }

  else if ((*(v6 + 71) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(*(v6 + 48));
  if (*(v6 + 47) < 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (*(v6 + 23) < 0)
  {
    goto LABEL_32;
  }

LABEL_19:
  MEMORY[0x1B2706400](v6, 0x1012C4003C2D8E3);
LABEL_20:
  if (this[1].__m_.__opaque[39] < 0)
  {
    operator delete(*&this[1].__m_.__opaque[16]);
  }

  sig = this[1].__m_.__sig;
  if (sig)
  {
    *this[1].__m_.__opaque = sig;
    operator delete(sig);
  }

  std::mutex::~mutex(this);
}

void sub_1AE631A28(void ***a1)
{
  v2 = a1[5];
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 3);
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = *(v5 - 1);
        if (v9)
        {
          CFRelease(v9);
        }

        v10 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
          operator delete(*v10);
        }

        v5 -= 6;
      }

      while (v10 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE631B20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM14ResourceLoaderEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM14ResourceLoaderEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM14ResourceLoaderEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM14ResourceLoaderEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE631B7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AE631694(result);

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE631BC0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void language_modeling::v1::LanguageModel::makeDefaultSession(language_modeling::v1::LanguageModel *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = strlen(language_modeling::v1::kEnvironmentSessionTypeKey);
  if (v1 <= 0x7FFFFFFFFFFFFFF7)
  {
    v2 = v1;
    if (v1 >= 0x17)
    {
      operator new();
    }

    v9 = v1;
    if (v1)
    {
      memmove(&__dst, language_modeling::v1::kEnvironmentSessionTypeKey, v1);
    }

    *(&__dst + v2) = 0;
    v10 = 0;
    v11 = 0;
    v3 = strlen(language_modeling::v1::kEnvironmentAppIdentifierKey);
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      v4 = v3;
      if (v3 < 0x17)
      {
        v13 = v3;
        if (v3)
        {
          memmove(&__p, language_modeling::v1::kEnvironmentAppIdentifierKey, v3);
        }

        *(&__p + v4) = 0;
        v14 = 0x746C7561666564;
        *v15 = v7[0];
        *&v15[7] = *(v7 + 7);
        v16 = 7;
        v7[0] = 0;
        *(v7 + 7) = 0;
        v17 = 1;
        v6[0] = 0;
        v6[1] = 0;
        v5 = v6;
        sub_1AE632038(&v5, v6, &__dst);
        sub_1AE632038(&v5, v6, &__p);
        language_modeling::v1::LanguageModel::makeSession();
      }

      operator new();
    }
  }

  sub_1AE5DB4F0();
}

void sub_1AE632008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

void *sub_1AE632038(void *result, uint64_t *a2, const void **a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_23;
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(a2 + 55);
  if (v10 >= 0)
  {
    v11 = a2 + 4;
  }

  else
  {
    v11 = a2[4];
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = a2[5];
  }

  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  result = memcmp(v8, v11, v13);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v14 = *a2;
    if (*v5 == a2)
    {
      v16 = a2;
    }

    else
    {
      if (v14)
      {
        v15 = *a2;
        do
        {
          v16 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        v17 = a2;
        do
        {
          v16 = v17[2];
          v18 = *v16 == v17;
          v17 = v16;
        }

        while (v18);
      }

      v19 = *(v16 + 55);
      if (v19 >= 0)
      {
        v20 = v16 + 4;
      }

      else
      {
        v20 = v16[4];
      }

      if (v19 >= 0)
      {
        v21 = *(v16 + 55);
      }

      else
      {
        v21 = v16[5];
      }

      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      if (v22 >= 0)
      {
        v24 = *(a3 + 23);
      }

      else
      {
        v24 = a3[1];
      }

      if (v24 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v24;
      }

      result = memcmp(v20, v23, v25);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v21 >= v24)
      {
LABEL_48:
        v26 = *v6;
        if (!*v6)
        {
          goto LABEL_75;
        }

        while (1)
        {
          v27 = v26;
          v30 = v26[4];
          v28 = v26 + 4;
          v29 = v30;
          v31 = *(v28 + 23);
          if (v31 >= 0)
          {
            v32 = v28;
          }

          else
          {
            v32 = v29;
          }

          if (v31 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = v28[1];
          }

          if (v33 >= v24)
          {
            v34 = v24;
          }

          else
          {
            v34 = v33;
          }

          v35 = memcmp(v23, v32, v34);
          if (v35)
          {
            if (v35 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            result = memcmp(v32, v23, v34);
            if (result)
            {
              if ((result & 0x80000000) == 0)
              {
                goto LABEL_120;
              }
            }

            else if (v33 >= v24)
            {
LABEL_120:
              v36 = v6;
              goto LABEL_74;
            }

            v6 = v27 + 1;
            v26 = v27[1];
            if (!v26)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v24 >= v33)
            {
              goto LABEL_64;
            }

LABEL_50:
            v26 = *v27;
            v6 = v27;
            if (!*v27)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

    if (v14)
    {
      v36 = v16 + 1;
    }

    else
    {
      v36 = a2;
    }

    goto LABEL_74;
  }

  if (v9 < v12)
  {
    goto LABEL_23;
  }

LABEL_19:
  result = memcmp(v11, v8, v13);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v9)
  {
    return result;
  }

  v36 = a2 + 1;
  v37 = a2[1];
  if (!v37)
  {
    v38 = a2;
    do
    {
      v39 = v38;
      v38 = v38[2];
    }

    while (*v38 != v39);
    if (v38 == v6)
    {
      goto LABEL_74;
    }

LABEL_85:
    v42 = v38[4];
    v40 = v38 + 4;
    v41 = v42;
    v43 = *(v40 + 23);
    if (v43 >= 0)
    {
      v44 = v40;
    }

    else
    {
      v44 = v41;
    }

    if (v43 >= 0)
    {
      v45 = *(v40 + 23);
    }

    else
    {
      v45 = v40[1];
    }

    if (v45 >= v9)
    {
      v46 = v9;
    }

    else
    {
      v46 = v45;
    }

    result = memcmp(v8, v44, v46);
    if (result)
    {
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_74;
      }
    }

    else if (v9 < v45)
    {
      goto LABEL_74;
    }

    v47 = *v6;
    if (!*v6)
    {
LABEL_75:
      operator new();
    }

    while (1)
    {
      v48 = v47;
      v51 = v47[4];
      v49 = v47 + 4;
      v50 = v51;
      v52 = *(v49 + 23);
      if (v52 >= 0)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }

      if (v52 >= 0)
      {
        v54 = *(v49 + 23);
      }

      else
      {
        v54 = v49[1];
      }

      if (v54 >= v9)
      {
        v55 = v9;
      }

      else
      {
        v55 = v54;
      }

      v56 = memcmp(v8, v53, v55);
      if (v56)
      {
        if (v56 < 0)
        {
          goto LABEL_100;
        }

LABEL_114:
        result = memcmp(v53, v8, v55);
        if (result)
        {
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_120;
          }
        }

        else if (v54 >= v9)
        {
          goto LABEL_120;
        }

        v6 = v48 + 1;
        v47 = v48[1];
        if (!v47)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v9 >= v54)
        {
          goto LABEL_114;
        }

LABEL_100:
        v47 = *v48;
        v6 = v48;
        if (!*v48)
        {
          goto LABEL_75;
        }
      }
    }
  }

  do
  {
    v36 = v37;
    v37 = *v37;
    v38 = v36;
  }

  while (v37);
  if (v36 != v6)
  {
    goto LABEL_85;
  }

LABEL_74:
  if (!*v36)
  {
    goto LABEL_75;
  }

  return result;
}

void sub_1AE632494(unsigned int *a1)
{
  if (a1)
  {
    sub_1AE632494(*a1);
    sub_1AE632494(*(a1 + 1));
    v2 = a1[20];
    if (v2 != -1)
    {
      (off_1F242A288[v2])(&v3, a1 + 14);
    }

    a1[20] = -1;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_1AE632518(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1AE632530(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_1F242A288[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t *sub_1AE63258C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 80);
      if (v3 != -1)
      {
        (off_1F242A288[v3])(&v5, v2 + 56);
      }

      *(v2 + 80) = -1;
      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1AE632618(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_1AE5DBF1C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t language_modeling::v1::LanguageModel::reloadWithLocales@<X0>(language_modeling::v1::LanguageModel *this@<X0>, const __CFArray *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(**this + 48))(*this, a2);
  *a3 = 0;
  *(a3 + 8) = 0x73736563637553;
  *(a3 + 31) = 7;
  return result;
}

uint64_t language_modeling::v1::LanguageModel::blocklistStatus(void *a1, uint64_t a2, uint64_t a3)
{
  return (*(**a1 + 32))(*a1, a2, a3, 1);
}

{
  return (*(**a1 + 40))(*a1, a2, a3, 1);
}

uint64_t language_modeling::v1::LanguageModel::blocklistStatus(void *a1)
{
  return (*(**a1 + 32))(*a1);
}

{
  return (*(**a1 + 40))(*a1);
}

uint64_t sub_1AE63381C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
  v10 = *(v8 + 23);
  if (v10 < 0)
  {
    if (v9 != v8[1])
    {
      goto LABEL_8;
    }

    if (v9 == -1)
    {
      sub_1AE61F754();
    }

    v8 = *v8;
  }

  else if (v9 != v10)
  {
LABEL_8:
    __p[3] = 0;
    if (a2[1] - *a2 != a3[1] - *a3)
    {
      __assert_rtn("normalizedNameTokenConditionalProbability", "ToucanLanguageModelSession.cpp", 1166, "tokens.size() == tokensMetadata.size()");
    }

    v11 = *(a1 + 176);
    v12 = *(v11 + 72);
    v13 = *(v11 + 80);
    v25 = v12;
    v26 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = (*(*v12 + 64))(v12);
    v15 = MEMORY[0x1B2705500](v14);
    v16 = v15;
    if (v15)
    {
      CFRetain(v15);
      cf = v16;
      v17 = CFGetTypeID(v16);
      if (v17 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (cf)
      {
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(cf))
        {
          sub_1AE5CAD24(__p, cf);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v13)
          {
            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }
          }

          v27 = 0;
          operator new();
        }

        v21 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v21, "Could not convert");
LABEL_29:
        __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v21, "Could not construct");
    goto LABEL_29;
  }

  if (memcmp(v8, language_modeling::v1::kLanguageModelTypeTokenID, v9))
  {
    goto LABEL_8;
  }

  v19 = *(a1 + 176);

  return sub_1AE78476C(v19, a2, a3, a4);
}

void sub_1AE633E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

uint64_t sub_1AE633ED4(uint64_t a1)
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

uint64_t sub_1AE633F54(uint64_t a1)
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

uint64_t sub_1AE633FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE63404C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  v6 = *(a1 + 8);
  sub_1AE5CA7E0(__p, v7);
  v11 = v9;
  sub_1AE634144(v6, __p, a3, a4);
}

void sub_1AE6340F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_1AE634144(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v9 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
  v10 = *(v8 + 23);
  if (v10 < 0)
  {
    if (v9 != v8[1])
    {
      goto LABEL_8;
    }

    if (v9 == -1)
    {
      sub_1AE61F754();
    }

    v8 = *v8;
  }

  else if (v9 != v10)
  {
    goto LABEL_8;
  }

  if (!memcmp(v8, language_modeling::v1::kLanguageModelTypeTokenID, v9))
  {
    v11 = *(a1 + 176);
    v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = xmmword_1AE79A550;
    v17 = 0;
    v18 = xmmword_1AE79A550;
    v20 = 0;
    v19 = 0xFFEFFFFFFFFFFFFFLL;
    v21[3] = 0;
    sub_1AE786620(a4, v11, a2, a3, &v12, 1, v21);
  }

LABEL_8:
  v21[0] = 0;
  sub_1AE634378(&v12, a1, a2, a3, 1, v21, 0);
  operator new();
}

void sub_1AE63435C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE634378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, int a5, uint64_t a6, int a7)
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  if (!a7)
  {
    goto LABEL_47;
  }

  v10 = *(a2 + 176);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  __p[0] = v11;
  __p[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11[15])
  {
    v13 = (*(**(a2 + 112) + 184))(*(a2 + 112));
    if (!v12)
    {
LABEL_9:
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_47:
      sub_1AE6361E4(__p, a2, v9);
    }
  }

  else
  {
    v13 = 0;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

  v28 = v13;
  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!v28)
  {
    goto LABEL_47;
  }

LABEL_10:
  v56 = a3;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  LOBYTE(__p[0]) = 0;
  v69 = 0;
  v15 = *v9;
  v14 = v9[1];
  if (v14 != *v9)
  {
    v16 = 0;
    while (1)
    {
      sub_1AE5CA7E0(&v62, v15);
      v65 = *(v15 + 24);
      if ((*(**(a2 + 112) + 176))(*(a2 + 112)) == 2)
      {
        sub_1AE634F3C(&v75, a2, &v70, __p, &v62);
        v16 = v71;
      }

      else
      {
        sub_1AE6354F8(&v75, a2, &v62);
      }

      if (v16 >= v72)
      {
        v18 = v70;
        v19 = (v16 - v70) >> 5;
        v20 = v19 + 1;
        if ((v19 + 1) >> 59)
        {
          sub_1AE5CBB70();
        }

        v21 = v72 - v70;
        if ((v72 - v70) >> 4 > v20)
        {
          v20 = v21 >> 4;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFE0)
        {
          v22 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 59))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v23 = 32 * v19;
        *v23 = v75;
        *(v23 + 16) = v76;
        v76 = 0;
        v75 = 0uLL;
        *(v23 + 24) = v77;
        if (v18 != v16)
        {
          v24 = v18;
          v25 = 0;
          do
          {
            v26 = *v24;
            *(v25 + 16) = v24[2];
            *v25 = v26;
            v24[1] = 0;
            v24[2] = 0;
            *v24 = 0;
            *(v25 + 24) = *(v24 + 6);
            v24 += 4;
            v25 += 32;
          }

          while (v24 != v16);
          do
          {
            if (*(v18 + 23) < 0)
            {
              operator delete(*v18);
            }

            v18 += 4;
          }

          while (v18 != v16);
          v18 = v70;
        }

        v16 = (v23 + 32);
        v70 = 0;
        v72 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        v17 = v75;
        v16[2] = v76;
        *v16 = v17;
        v76 = 0;
        v75 = 0uLL;
        *(v16 + 6) = v77;
        v16 += 4;
      }

      v71 = v16;
      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75);
        if (v64 < 0)
        {
LABEL_45:
          operator delete(v62);
        }
      }

      else if (v64 < 0)
      {
        goto LABEL_45;
      }

      if (v69 == 1)
      {
        sub_1AE5CA7E0(&v75, v15);
        v27 = *(v15 + 24);
        LODWORD(v77) = v27;
        if (SHIBYTE(v67) < 0)
        {
          operator delete(__p[0]);
          v27 = v77;
        }

        *__p = v75;
        v67 = v76;
        v68 = v27;
      }

      else
      {
        sub_1AE5CA7E0(__p, v15);
        v68 = *(v15 + 24);
        v69 = 1;
      }

      v15 += 32;
      if (v15 == v14)
      {
        goto LABEL_49;
      }
    }
  }

  v16 = 0;
LABEL_49:
  v29 = v73[0];
  if (v74 == v73[0])
  {
    if (v74)
    {
      v73[1] = v73[0];
      operator delete(v73[0]);
      v73[0] = 0;
      v73[1] = 0;
      v74 = 0;
    }

    operator new();
  }

  v30 = v73[1];
  v31 = v73[1] - v73[0];
  if (v73[1] == v73[0])
  {
    *v73[1] = 1;
    v73[1] = &v30[v31 + 4];
  }

  else
  {
    *v73[0] = 1;
    v73[1] = v29 + 4;
  }

  v32 = v70;
  if (v16 != v70)
  {
    v33 = 0;
    do
    {
      sub_1AE635CE8(&v75, a2, &v32[4 * v33], v73[0], v73[1]);
      (*(**(a2 + 112) + 16))(&v62);
      v34 = v62;
      v35 = v63;
      if (v62 == v63)
      {
LABEL_63:
        if (v34 != v35)
        {
          v36 = v73[1];
          do
          {
            v37 = *v34;
            if (v36 < v74)
            {
              *v36 = v37;
              v36 += 4;
            }

            else
            {
              v38 = v73[0];
              v39 = v36 - v73[0];
              v40 = (v36 - v73[0]) >> 2;
              v41 = v40 + 1;
              if ((v40 + 1) >> 62)
              {
                sub_1AE5CBB70();
              }

              v42 = v74 - v73[0];
              if ((v74 - v73[0]) >> 1 > v41)
              {
                v41 = v42 >> 1;
              }

              if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v43 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v43 = v41;
              }

              if (v43)
              {
                if (!(v43 >> 62))
                {
                  operator new();
                }

                sub_1AE5CB09C();
              }

              v44 = (v36 - v73[0]) >> 2;
              v45 = (4 * v40);
              v46 = (4 * v40 - 4 * v44);
              *v45 = v37;
              v36 = (v45 + 1);
              memcpy(v46, v38, v39);
              v73[0] = v46;
              v73[1] = v36;
              v74 = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            v73[1] = v36;
            ++v34;
          }

          while (v34 != v35);
        }
      }

      else
      {
        while (((*(**(a2 + 112) + 96))(*(a2 + 112), *v34) & 1) == 0)
        {
          if (++v34 == v35)
          {
            v34 = v62;
            v35 = v63;
            goto LABEL_63;
          }
        }
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75);
      }

      ++v33;
      v32 = v70;
      v16 = v71;
    }

    while (v33 < (v71 - v70) >> 5);
  }

  if (v69 == 1 && SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  if (v32)
  {
    while (v16 != v32)
    {
      v47 = *(v16 - 9);
      v16 -= 4;
      if (v47 < 0)
      {
        operator delete(*v16);
      }
    }

    operator delete(v32);
  }

  sub_1AE635CE8(__p, a2, v56, v73[0], v73[1]);
  (*(**(a2 + 112) + 16))(&v62);
  LODWORD(v70) = 1065353216;
  if ((*(a2 + 81) & 1) != 0 || (v48 = v62, v49 = v63, v62 == v63))
  {
LABEL_96:
    v50 = a1;
    v51 = v56;
    if ((*(**(a2 + 96) + 24))(*(a2 + 96), &v62, v73, &v70, a6))
    {
      v52 = *&v70;
    }

    else
    {
      LODWORD(v70) = 0;
      v52 = 0.0;
    }
  }

  else
  {
    while (!(*(**(a2 + 112) + 96))(*(a2 + 112), *v48))
    {
      if (++v48 == v49)
      {
        goto LABEL_96;
      }
    }

    LODWORD(v70) = 0;
    v52 = 0.0;
    v50 = a1;
    v51 = v56;
  }

  v53 = log10f(v52);
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  if (v52 <= 0.0)
  {
    v53 = -10.0;
  }

  v54 = v53;
  *(v50 + 32) = 1;
  *(v50 + 64) = 0xFFEFFFFFFFFFFFFFLL;
  *(v50 + 72) = xmmword_1AE79A560;
  *(v50 + 88) = 0;
  *(v50 + 96) = 0;
  *(v50 + 48) = 0x3FF0000000000000;
  *(v50 + 40) = v54;
  *(v50 + 56) = 2;
  *v50 = v54;
  *(v50 + 8) = v54;
  if (*(a2 + 48) != 3)
  {
    v55 = *(a2 + 176);
    *&v75 = &unk_1F242A470;
    v77 = &v75;
    sub_1AE786620(&v61, v55, v51, a4, v50, a5, &v75);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }
}