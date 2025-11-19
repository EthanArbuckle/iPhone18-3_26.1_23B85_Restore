unint64_t sub_19D2C6CD8@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  v5 = CStringPtr;
  if (CStringPtr)
  {
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a2[23] = result;
      if (result)
      {
        result = memmove(a2, v5, result);
      }

      a2[v7] = 0;
      return result;
    }

LABEL_19:
    sub_19D2AD774();
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v9)
  {
    bzero(a2, v9);
  }

  a2[v9] = 0;
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

unint64_t sub_19D2C6EB4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return sub_19D2C6F68(v1);
    }

    else
    {
      v3 = CFBooleanGetTypeID();
      if (v3 == CFGetTypeID(v1))
      {
        return CFBooleanGetValue(v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_19D2C6F68(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        v21 = LOBYTE(valuePtr);
      }

      else
      {
        v21 = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      return v21 | (v22 << 63 >> 63 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v25 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v24 = 0;
      }

      else
      {
        v24 = v25;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v24 = 0;
      }

      else
      {
        v24 = v9;
      }

LABEL_36:
      result = v24 | (v24 >> 8 << 8);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_19D2C71D0()
{
  qword_1EB013158 = 0;
  unk_1EB013160 = "MRLEmbeddingMemoryModel";
  qword_1EB013168 = 0;
  unk_1EB013170 = 0;
  qword_1EB013178 = sub_19D2C7228;
  unk_1EB013180 = 0u;
  unk_1EB013190 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB013150 = result;
  return result;
}

double sub_19D2C723C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19D435408(a1, a2, a3, a4);
  *v5 = &unk_1F10B6128;
  v5[127] = *(a4 + 464);
  v5[128] = *(a4 + 456);
  v5[129] = *(a4 + 448);
  v5[130] = *(a4 + 592);
  v5[131] = *(a4 + 584);
  v5[132] = *(a4 + 576);
  *(v5 + 270) = *(a4 + 320);
  *(v5 + 271) = *(a4 + 324);
  *(v5 + 1088) = *(a4 + 328) != 0;
  result = 0.0;
  *(v5 + 133) = 0u;
  return result;
}

uint64_t sub_19D2C72D8(void *a1, uint64_t a2)
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
  v10 = *(*a2 + 104);

  return v10(a2, a1);
}

void sub_19D2C73DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1088) == 1)
  {
    operator new[]();
  }

  sub_19D387870(a1);
  (*(*a1 + 312))(a1, a3, a2);
  v6 = *(a1 + 168) - *(a1 + 160);
  if ((v6 >> 3) >= 1)
  {
    v7 = 0;
    v8 = (a3 * a2);
    v9 = (v6 >> 3) & 0x7FFFFFFF;
    do
    {
      v10 = *(*(a1 + 160) + 8 * v7);
      (*(*v10 + 16))(v10, v8);
      ++v7;
    }

    while (v9 != v7);
  }

  sub_19D3878CC(a1, a3);
  (*(*a1 + 32))(a1);
  if (*(a1 + 1088))
  {
    v11 = *(a1 + 1064);
    if (v11)
    {
      operator delete[](v11);
    }

    v12 = *(a1 + 1072);
    if (v12)
    {

      operator delete[](v12);
    }
  }
}

uint64_t sub_19D2C7620(uint64_t result, int a2)
{
  v2 = *(result + 24);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *(result + 24);
  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 < 3)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 == 2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = v4[7];
  v7 = v4[9];
  while (1)
  {
    while (1)
    {
      v8 = v2;
      v9 = *(v2 + 32);
      if (v9 < 2)
      {
        break;
      }

      v2 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }
    }

    if (v9 == 1)
    {
      break;
    }

    v2 = v8[1];
    if (!v2)
    {
LABEL_13:
      operator new();
    }
  }

  v10 = v8[9];
  if (a2 == 10)
  {
    v6 = v8[9];
    v10 = *(result + 1084);
    v11 = v8[8];
    v12 = *(result + 48);
    if (v12)
    {
      goto LABEL_20;
    }

LABEL_24:
    operator new();
  }

  v7 = 1;
  v11 = v8[8];
  v12 = *(result + 48);
  if (!v12)
  {
    goto LABEL_24;
  }

  while (1)
  {
LABEL_20:
    while (1)
    {
      v13 = v12;
      v14 = *(v12 + 32);
      if (v14 <= a2)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_24;
      }
    }

    if (v14 >= a2)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  v13[5] = 1;
  v13[6] = v7;
  v13[7] = v6;
  v13[8] = v11;
  v13[9] = v10;
  return result;
}

void sub_19D2C78A4(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

void sub_19D2C78CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, v9, &a9);
  v13 = sub_19D398AE4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = v12;
    *buf = 136315138;
    v21 = objc_msgSend_UTF8String(v12, v15, v16, v17);
    _os_log_error_impl(&dword_19D2A1000, v13, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v18, *MEMORY[0x1E695D930], v12, 0);
  objc_exception_throw(v19);
}

uint64_t sub_19D2C79E0(uint64_t a1, uint64_t a2, uint64_t a3, int *__src)
{
  v21 = *MEMORY[0x1E69E9840];
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

  *a1 = &unk_1F10B62B0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  LODWORD(v7) = __src[32];
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  LODWORD(v17) = 1;
  v18 = vdupq_n_s64(1uLL);
  v19 = v7;
  v20 = v18;
  sub_19D2AD9C0(a1 + 16, &v17, &v21);
  v8 = __src[64];
  LODWORD(v17) = 9;
  v18 = vdupq_n_s64(1uLL);
  v20 = 0uLL;
  v19 = v8;
  sub_19D2AD9C0(a1 + 40, &v17, &v21);
  v9 = __src[80];
  *(a1 + 1064) = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(__src + 71) + 4 * v10);
      LODWORD(v17) = (*(*(__src + 70) + 4 * v10) + 0.5);
      sub_19D2C7CE4(a1 + 1072, &v17);
      LODWORD(v17) = (v11 + 0.5);
      sub_19D2C7CE4(a1 + 1096, &v17);
      ++v10;
    }

    while (v10 < *(a1 + 1064));
  }

  v17 = *(__src + 56);
  sub_19D2C7DFC(a1 + 1016, &v17);
  if (*(a1 + 1064) >= 2)
  {
    v12 = (__src + 114);
    v13 = 1;
    do
    {
      v17 = *v12;
      sub_19D2C7DFC(a1 + 1016, &v17);
      v17 = v12[15];
      sub_19D2C7DFC(a1 + 1040, &v17);
      ++v13;
      ++v12;
    }

    while (v13 < *(a1 + 1064));
  }

  return a1;
}

void sub_19D2C7C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v20 = *v18;
  if (*v18)
  {
    v14[138] = v20;
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

  v14[135] = v21;
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
  v14[131] = v22;
  operator delete(v22);
  v23 = *v15;
  if (!*v15)
  {
LABEL_5:
    sub_19D38640C(v14);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v14[128] = v23;
  operator delete(v23);
  sub_19D38640C(v14);
  _Unwind_Resume(a1);
}

void sub_19D2C7CE4(uint64_t a1, _DWORD *a2)
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
    sub_19D2AE2B4();
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

    sub_19D2AD81C();
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

void sub_19D2C7DFC(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_19D2AE2B4();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

uint64_t sub_19D2C7F14(void *a1, uint64_t a2)
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
  v10 = *(*a2 + 56);

  return v10(a2, a1);
}

int64x2_t sub_19D2C8018(uint64_t a1, int a2)
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

uint64_t sub_19D2C8174(uint64_t a1, uint64_t a2, uint64_t a3, int *__src)
{
  v21 = *MEMORY[0x1E69E9840];
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

  *a1 = &unk_1F10B6420;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  LODWORD(v7) = __src[32];
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  LODWORD(v17) = 1;
  v18 = vdupq_n_s64(1uLL);
  v19 = v7;
  v20 = v18;
  sub_19D2AD9C0(a1 + 16, &v17, &v21);
  v8 = __src[64];
  LODWORD(v17) = 9;
  v18 = vdupq_n_s64(1uLL);
  v20 = 0uLL;
  v19 = v8;
  sub_19D2AD9C0(a1 + 40, &v17, &v21);
  v9 = __src[80];
  *(a1 + 1064) = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(__src + 71) + 4 * v10);
      LODWORD(v17) = (*(*(__src + 70) + 4 * v10) + 0.5);
      sub_19D2C7CE4(a1 + 1072, &v17);
      LODWORD(v17) = (v11 + 0.5);
      sub_19D2C7CE4(a1 + 1096, &v17);
      ++v10;
    }

    while (v10 < *(a1 + 1064));
  }

  v17 = *(__src + 56);
  sub_19D2C8478(a1 + 1016, &v17);
  if (*(a1 + 1064) >= 2)
  {
    v12 = (__src + 114);
    v13 = 1;
    do
    {
      v17 = *v12;
      sub_19D2C8478(a1 + 1016, &v17);
      v17 = v12[15];
      sub_19D2C8478(a1 + 1040, &v17);
      ++v13;
      ++v12;
    }

    while (v13 < *(a1 + 1064));
  }

  return a1;
}

void sub_19D2C83C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v20 = *v18;
  if (*v18)
  {
    v14[138] = v20;
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

  v14[135] = v21;
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
  v14[131] = v22;
  operator delete(v22);
  v23 = *v15;
  if (!*v15)
  {
LABEL_5:
    sub_19D388648(v14);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v14[128] = v23;
  operator delete(v23);
  sub_19D388648(v14);
  _Unwind_Resume(a1);
}

void sub_19D2C8478(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_19D2AE2B4();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

uint64_t sub_19D2C8590(void *a1, uint64_t a2)
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
  v10 = *(*a2 + 160);

  return v10(a2, a1);
}

int64x2_t sub_19D2C8694(uint64_t a1, int a2)
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

uint64_t sub_19D2C87F0(void *a1, int a2, int a3)
{
  v4 = (a3 * a2);
  sub_19D387870(a1);
  (*(*a1 + 312))(a1, 1, v4);
  if (v4 >= 1)
  {
    do
    {
      v7 = sub_19D387A2C(a1, 1);
      v8 = a1[138];
      v9 = a1[137];
      v10 = v8 - v9;
      if (v8 != v9)
      {
        v11 = (**v7 + 0.5);
        v12 = v11 - *v9;
        if (v11 < *v9)
        {
          **sub_19D387A2C(a1, 1) = v11;
          v5 = a1[20];
        }

        else
        {
          if (v10 < 5)
          {
            goto LABEL_5;
          }

          v13 = v10 >> 2;
          v14 = 1;
          while (1)
          {
            v15 = *&v9[4 * v14];
            v16 = __OFSUB__(v12, v15);
            v17 = v12 - v15;
            if (v17 < 0 != v16)
            {
              break;
            }

            ++v14;
            v12 = v17;
            if (v13 <= v14)
            {
              goto LABEL_5;
            }
          }

          **sub_19D387A2C(a1, 1) = v12;
          v18 = 2 * v14;
          v19 = *(a1[20] + 8 * (v18 - 1));
          (*(*v19 + 16))(v19, 1);
          v5 = (a1[20] + 8 * v18);
        }

        (*(**v5 + 16))(*v5, 1);
      }

LABEL_5:
      (*(*a1 + 320))(a1, 1);
      (*(*a1 + 328))(a1, 1);
      v6 = v4 <= 1;
      LODWORD(v4) = v4 - 1;
    }

    while (!v6);
  }

  sub_19D3878CC(a1, 1);
  v20 = *(*a1 + 32);

  return v20(a1);
}

uint64_t sub_19D2C8A3C(uint64_t a1, int a2, int a3)
{
  v4 = (a3 * a2);
  sub_19D387870(a1);
  (*(*a1 + 312))(a1, 1, v4);
  if (v4 >= 1)
  {
    do
    {
      v7 = sub_19D387A2C(a1, 1);
      v8 = *(a1 + 1104);
      v9 = *(a1 + 1096);
      v10 = v8 - v9;
      if (v8 != v9)
      {
        v11 = (**v7 + 0.5);
        v12 = v11 - *v9;
        if (v11 < *v9)
        {
          **sub_19D387A2C(a1, 1) = v11;
          (*(***(a1 + 160) + 16))(**(a1 + 160), 1);
          v5 = *(a1 + 160);
        }

        else
        {
          if (v10 < 5)
          {
            goto LABEL_5;
          }

          v13 = v10 >> 2;
          v14 = 1;
          while (1)
          {
            v15 = *&v9[4 * v14];
            v16 = __OFSUB__(v12, v15);
            v17 = v12 - v15;
            if (v17 < 0 != v16)
            {
              break;
            }

            ++v14;
            v12 = v17;
            if (v13 <= v14)
            {
              goto LABEL_5;
            }
          }

          **sub_19D387A2C(a1, 1) = v12;
          v18 = *(*(a1 + 160) + ((v14 << 33) >> 29));
          (*(*v18 + 16))(v18, 1);
          v5 = *(a1 + 160) + 16 * v14;
        }

        (*(**(v5 + 8) + 16))(*(v5 + 8), 1);
      }

LABEL_5:
      (*(*a1 + 320))(a1, 1);
      (*(*a1 + 328))(a1, 1);
      v6 = v4 <= 1;
      LODWORD(v4) = v4 - 1;
    }

    while (!v6);
  }

  sub_19D3878CC(a1, 1);
  v19 = *(*a1 + 32);

  return v19(a1);
}

uint64_t sub_19D2C8CB8(void *a1)
{
  *a1 = &unk_1F10B62B0;
  v2 = a1[137];
  if (v2)
  {
    a1[138] = v2;
    operator delete(v2);
  }

  v3 = a1[134];
  if (v3)
  {
    a1[135] = v3;
    operator delete(v3);
  }

  v4 = a1[130];
  if (v4)
  {
    a1[131] = v4;
    operator delete(v4);
  }

  v5 = a1[127];
  if (v5)
  {
    a1[128] = v5;
    operator delete(v5);
  }

  return sub_19D38640C(a1);
}

void sub_19D2C8D48(void *a1)
{
  *a1 = &unk_1F10B62B0;
  v2 = a1[137];
  if (v2)
  {
    a1[138] = v2;
    operator delete(v2);
  }

  v3 = a1[134];
  if (v3)
  {
    a1[135] = v3;
    operator delete(v3);
  }

  v4 = a1[130];
  if (v4)
  {
    a1[131] = v4;
    operator delete(v4);
  }

  v5 = a1[127];
  if (v5)
  {
    a1[128] = v5;
    operator delete(v5);
  }

  v6 = sub_19D38640C(a1);

  operator delete(v6);
}

uint64_t sub_19D2C8DDC(void *a1)
{
  *a1 = &unk_1F10B6420;
  v2 = a1[137];
  if (v2)
  {
    a1[138] = v2;
    operator delete(v2);
  }

  v3 = a1[134];
  if (v3)
  {
    a1[135] = v3;
    operator delete(v3);
  }

  v4 = a1[130];
  if (v4)
  {
    a1[131] = v4;
    operator delete(v4);
  }

  v5 = a1[127];
  if (v5)
  {
    a1[128] = v5;
    operator delete(v5);
  }

  return sub_19D388648(a1);
}

void sub_19D2C8E6C(void *a1)
{
  *a1 = &unk_1F10B6420;
  v2 = a1[137];
  if (v2)
  {
    a1[138] = v2;
    operator delete(v2);
  }

  v3 = a1[134];
  if (v3)
  {
    a1[135] = v3;
    operator delete(v3);
  }

  v4 = a1[130];
  if (v4)
  {
    a1[131] = v4;
    operator delete(v4);
  }

  v5 = a1[127];
  if (v5)
  {
    a1[128] = v5;
    operator delete(v5);
  }

  v6 = sub_19D388648(a1);

  operator delete(v6);
}

uint64_t *sub_19D2C8F00(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void **sub_19D2C8F60(void **a1)
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

void sub_19D2C9014(void *a1)
{
  v1 = sub_19D2A38E4(a1);

  operator delete(v1);
}

__CFArray *sub_19D2C903C(uint64_t a1)
{
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v2 = sub_19D2A5088(a1);
  v3 = *(a1 + 56);
  v77 = a1;
  if (v2)
  {
    if (v3 >= 1)
    {
      v69 = 0;
      v4 = 0;
      while (1)
      {
        v66 = v4;
        if (qword_1EB013258 != -1)
        {
          sub_19D454000();
        }

        Instance = _CFRuntimeCreateInstance();
        Instance[3] = 0;
        Instance[2] = Instance + 3;
        v75 = (Instance + 2);
        Instance[6] = 0;
        Instance[4] = 0;
        Instance[5] = Instance + 6;
        Instance[8] = 0;
        Instance[9] = 0;
        Instance[7] = 0;
        v67 = Instance;
        __p = 0;
        v82 = 0;
        v83 = 0;
        v6 = *(a1 + 664);
        v70 = *(a1 + 672);
        if (v6 != v70)
        {
          break;
        }

LABEL_7:
        CFArrayAppendValue(theArray, v67);
        CFRelease(v67);
        if (__p)
        {
          v82 = __p;
          operator delete(__p);
        }

        v69 += 4;
        v4 = v66 + 1;
        if (v66 + 1 >= *(a1 + 56))
        {
          return theArray;
        }
      }

      while (1)
      {
        v84 = v6;
        v7 = sub_19D2B0E34((a1 + 504), v6)[5];
        v84 = v6;
        v8 = sub_19D2A6254((a1 + 544), v6);
        v9 = v8[5];
        v10 = v8[6];
        v11 = v8[7];
        v12 = v8[9];
        v84 = v6;
        v73 = sub_19D2B0E34((a1 + 584), v6)[5];
        v84 = v6;
        v13 = sub_19D2A6254((a1 + 624), v6);
        v14 = v13[5];
        v15 = v13[7];
        if (v15 != v11 || v14 != v9)
        {
          break;
        }

        value = v7;
        v17 = v13[6];
        v84 = v9;
        v85 = v10 + v17;
        v86 = v11;
        v87 = 1;
        v88 = v12;
        sub_19D37DA88(v75, v6, &v84);
        v18 = (v9 * (v17 + v10) * v11 * v12);
        v84 = 0;
        v85 = 0;
        v86 = 0;
        if (v18 << 32)
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v19 = v9 * (v17 + v10);
        v20 = (v82 - __p) >> 2;
        if (v19 <= v20)
        {
          if (v19 < v20)
          {
            v82 = __p + 4 * v19;
          }
        }

        else
        {
          sub_19D2CA0E8(&__p, v19 - v20);
        }

        if (v11)
        {
          v21 = v9 * v10;
          v22 = v14 * v17 * v15;
          v23 = v9 * v10;
          v24 = v9 * v17;
          if (v9 * v10)
          {
            v25 = 0;
            v26 = v73 + v69 * v22;
            v27 = value + v69 * v21 * v11;
            do
            {
              v80 = 128.0 / *(v77 + 808);
              __C = 127.1;
              __B = -127.1;
              MEMORY[0x19EAFB210](v27, 1, &v80, __p, 1, v23);
              vDSP_vclip(__p, 1, &__B, &__C, __p, 1, v23);
              vDSP_vfixr8(__p, 1, v84 + v25, 1, v23);
              if (v24)
              {
                MEMORY[0x19EAFB210](v26, 1, &v80, __p, 1, v24);
                vDSP_vclip(__p, 1, &__B, &__C, __p, 1, v24);
                vDSP_vfixr8(__p, 1, v84 + v23 + v25, 1, v24);
              }

              sub_19D37D9D8(v75, v6, &v84);
              v26 += 4 * v24;
              v25 += v19;
              v27 += 4 * v23;
              v11 = (v11 - 1);
            }

            while (v11);
          }

          else if (v24)
          {
            v28 = v73 + v69 * v22;
            do
            {
              v80 = 128.0 / *(v77 + 808);
              __C = 127.1;
              __B = -127.1;
              MEMORY[0x19EAFB210](v28, 1, &v80, __p, 1, v24);
              vDSP_vclip(__p, 1, &__B, &__C, __p, 1, v24);
              vDSP_vfixr8(__p, 1, v84 + v23, 1, v24);
              sub_19D37D9D8(v75, v6, &v84);
              v23 += v19;
              v28 += 4 * v24;
              v11 = (v11 - 1);
            }

            while (v11);
          }

          else
          {
            do
            {
              v80 = 128.0 / *(v77 + 808);
              __C = 127.1;
              __B = -127.1;
              sub_19D37D9D8(v75, v6, &v84);
              v11 = (v11 - 1);
            }

            while (v11);
          }
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        v6 += 24;
        a1 = v77;
        if (v6 == v70)
        {
          goto LABEL_7;
        }
      }

      if (__p)
      {
        v82 = __p;
        operator delete(__p);
      }
    }
  }

  else if (v3 >= 1)
  {
    v29 = 0;
    while (1)
    {
      if (qword_1EB013258 != -1)
      {
        sub_19D454000();
      }

      v30 = _CFRuntimeCreateInstance();
      v30[3] = 0;
      v30[2] = v30 + 3;
      v31 = (v30 + 2);
      v30[6] = 0;
      v30[4] = 0;
      v30[5] = v30 + 6;
      v30[8] = 0;
      v30[9] = 0;
      v30[7] = 0;
      valuea = v30;
      v32 = *(a1 + 440);
      if (v32)
      {
        break;
      }

LABEL_40:
      CFArrayAppendValue(theArray, valuea);
      CFRelease(valuea);
      if (++v29 >= *(a1 + 56))
      {
        return theArray;
      }
    }

    v76 = v29;
    v74 = (v30 + 2);
    while (v32[18] == *(a1 + 56))
    {
      if (v32[5])
      {
        v34 = v32[16];
        v35 = v32[17];
        v36 = v32[19];
        v84 = v32[15];
        v33 = v84;
        v85 = v34;
        v86 = v35;
        v87 = 1;
        v88 = v36;
        sub_19D37DA88(v31, v32 + 2, &v84);
        v37 = (v33 * v34 * v35);
        v38 = v32[5];
        v39 = (v37 * v36);
        if (v39 << 32)
        {
          if (!(v39 >> 62))
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v29 = v76;
        if (v32[19] >= 1 && v37 >= 1)
        {
          v40 = v32[19] & 0x7FFFFFFF;
          v41 = *(a1 + 56) * v33 * v34 * v35;
          v42 = 4 * (v33 * v34 * v35);
          v43 = v76 * v33;
          if (v37 >= 8)
          {
            v50 = 0;
            v51 = 0;
            v52 = 16;
            v53 = v43 * v34 * v35;
            do
            {
              v54 = 0;
              v55 = v37 * v76 + v41 * v51;
              if (v55 + v37 - 1 < v55 || (v37 - 1) >> 32 != 0)
              {
                goto LABEL_70;
              }

              if ((v42 * v51 - &v38[v55]) < 0x20)
              {
                goto LABEL_70;
              }

              v57 = v53;
              v58 = v37 & 0x7FFFFFF8;
              v59 = v52;
              do
              {
                v60 = &v38[v57];
                v61 = v60[1];
                *(v59 - 1) = *v60;
                *v59 = v61;
                v59 += 2;
                v57 += 8;
                v58 -= 8;
              }

              while (v58);
              v54 = v37 & 0x7FFFFFF8;
              if (v54 != v37)
              {
LABEL_70:
                v62 = v53 + v54;
                v63 = (4 * (v54 + v50));
                v64 = v37 - v54;
                do
                {
                  *v63++ = v38[v62++];
                  --v64;
                }

                while (v64);
              }

              ++v51;
              v52 += v42;
              v53 += v41;
              v50 += v37;
            }

            while (v51 != v40);
          }

          else
          {
            v44 = 0;
            v45 = v43 * v34 * v35;
            v46 = 0;
            do
            {
              v47 = v45;
              v48 = v46;
              v49 = (v33 * v34 * v35);
              do
              {
                *v48++ = v38[v47++];
                --v49;
              }

              while (v49);
              ++v44;
              v46 = (v46 + v42);
              v45 += v41;
            }

            while (v44 != v40);
          }
        }

        v31 = v74;
        sub_19D37DA30(v74, v32 + 2, 0, 0);
      }

      v32 = *v32;
      if (!v32)
      {
        goto LABEL_40;
      }
    }
  }

  return theArray;
}

void sub_19D2C9878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *sub_19D2C98E4(uint64_t a1)
{
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!sub_19D2A5088(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "no supported");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(a1 + 56) >= 1)
  {
    v24 = 0;
    v2 = 0;
    while (1)
    {
      v22 = v2;
      if (qword_1EB013258 != -1)
      {
        sub_19D454000();
      }

      Instance = _CFRuntimeCreateInstance();
      Instance[3] = 0;
      Instance[2] = Instance + 3;
      v28 = (Instance + 2);
      Instance[6] = 0;
      Instance[4] = 0;
      Instance[5] = Instance + 6;
      Instance[8] = 0;
      Instance[9] = 0;
      Instance[7] = 0;
      value = Instance;
      v4 = *(a1 + 664);
      v25 = *(a1 + 672);
      if (v4 != v25)
      {
        break;
      }

LABEL_29:
      CFArrayAppendValue(theArray, value);
      CFRelease(value);
      v2 = v22 + 1;
      v24 += 4;
      if (v22 + 1 >= *(a1 + 56))
      {
        return theArray;
      }
    }

    v5 = 0;
    while (1)
    {
      __p = v4;
      v6 = sub_19D2B0E34((a1 + 584), v4)[5];
      __p = v4;
      v7 = sub_19D2A6254((a1 + 624), v4);
      v9 = v7[6];
      v11 = v7[7];
      v10 = v7[8];
      v12 = v7[9];
      __p = v7[5];
      v8 = __p;
      v33 = v9;
      v34 = v11;
      v35 = v10;
      v36 = v12;
      sub_19D37DA88(v28, v4, &__p);
      v13 = (v8 * v9 * v11 * v10 * v12);
      __p = 0;
      v33 = 0;
      v34 = 0;
      if (v13 << 32)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v26 = v6;
      v14 = v8 * v9;
      v15 = v8 * v9 - (v5 >> 2);
      if (v14 <= (v5 >> 2))
      {
        if (v14 < (v5 >> 2))
        {
          v5 = 4 * v14;
        }

        v27 = v5;
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v15 > -v5 >> 2)
        {
          if ((v14 & 0x80000000) == 0)
          {
            if (!(v14 >> 62))
            {
              operator new();
            }

            sub_19D2AD81C();
          }

          sub_19D2AE2B4();
        }

        bzero(v5, 4 * v15);
        v27 = v5 + 4 * v15;
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      v16 = 0;
      v17 = 0;
      v18 = v26 + v24 * v14 * v11;
      do
      {
        v31 = 128.0 / *(a1 + 808);
        __C = 127.1;
        __B = -127.1;
        if (v14)
        {
          MEMORY[0x19EAFB210](v18, 1, &v31, 0, 1, v14);
          vDSP_vclip(0, 1, &__B, &__C, 0, 1, v14);
          vDSP_vfixr8(0, 1, __p + v16, 1, v14);
        }

        ++v17;
        v16 += v14;
        v18 += 4 * v14;
      }

      while (v11 > v17);
LABEL_27:
      sub_19D37D9D8(v28, v4, &__p);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      v4 += 24;
      v5 = v27;
      if (v4 == v25)
      {
        goto LABEL_29;
      }
    }
  }

  return theArray;
}

void sub_19D2C9D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (!v22)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_19D2C9DE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D42AC20(a1, a2, __p);
  v5 = v9;
  if (v9 < 0)
  {
    if (__p[1])
    {
LABEL_3:
      v10 = __p;
      v6 = sub_19D2A6254((a1 + 728), __p);
      v7 = *(v6 + 7);
      *a3 = *(v6 + 5);
      *(a3 + 16) = v7;
      *(a3 + 32) = v6[9];
      if ((v9 & 0x80) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(__p[0]);
      return;
    }
  }

  else if (v9)
  {
    goto LABEL_3;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (v5 < 0)
  {
    goto LABEL_7;
  }
}

void sub_19D2C9E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D2C9EAC(uint64_t a1, uint64_t a2)
{
  sub_19D42AC20(a1, a2, __p);
  v10 = __p;
  v3 = sub_19D2A6254((a1 + 728), __p);
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return (v4 * v5 * v6);
}

void sub_19D2C9F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2C9F44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D2AAC0C(a1, a2, __p);
  if (sub_19D2B0B4C((a1 + 768), __p))
  {
    v9 = __p;
    v5 = sub_19D2A6254((a1 + 768), __p);
    v6 = *(v5 + 7);
    *a3 = *(v5 + 5);
    *(a3 + 16) = v6;
    *(a3 + 32) = v5[9];
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(__p[0]);
    return;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (v8 < 0)
  {
    goto LABEL_5;
  }
}

void sub_19D2C9FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D2CA010(uint64_t a1, const void **a2)
{
  if (espresso_network_declare_output())
  {
    return 0;
  }

  sub_19D2A4A4C(a1 + 32, a2);
  return 1;
}

uint64_t sub_19D2CA090()
{
  qword_1EB0131F8 = 0;
  unk_1EB013200 = "MontrealNeuralNetworkState";
  qword_1EB013208 = 0;
  unk_1EB013210 = 0;
  qword_1EB013218 = sub_19D2B0D5C;
  unk_1EB013220 = 0u;
  unk_1EB013230 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB0131F0 = result;
  return result;
}

void sub_19D2CA0E8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_19D2AE2B4();
    }

    v8 = v3 - v5;
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

      sub_19D2AD81C();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_19D2CA23C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 9;
      *(a1 + 16) = v2 - 9;
      if (*(v2 - 49) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ****sub_19D2CA2A4(void ****a1)
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
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
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

std::string::size_type sub_19D2CA328(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 72);
  v3 = (*a1 + v2);
  if (v3 > *a1 + *(a1 + 8) - 4 || (v5 = *v3, *(a1 + 72) = v2 + 4, v5 >= 0x2711) || !v5)
  {
    sub_19D41C548(24);
  }

  std::string::resize(this, v5, 0);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  v8 = v5;
  do
  {
    v9 = *(a1 + 72);
    v10 = (*a1 + v9);
    if (v10 > *a1 + *(a1 + 8) - 1)
    {
      sub_19D41C548(23);
    }

    v11 = *v10;
    *(a1 + 72) = v9 + 1;
    v7->__r_.__value_.__s.__data_[0] = v11;
    v7 = (v7 + 1);
    --v8;
  }

  while (v8);
  return v5;
}

void sub_19D2CA3F8(uint64_t *a1, uint64_t *a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= 1)
  {
    v6 = a4 - 1;
    if (a4 < 1)
    {
      v6 = a4 + 2;
    }

    if (a5 > 5)
    {
      sub_19D41C548(41);
    }

    v7 = a2;
    v8 = a1;
    v9 = a4;
    v10 = 4 * a4;
    v100 = a4;
    if (a5 <= 1)
    {
      if (a5)
      {
        v15 = 0;
        v16 = 0;
        v96 = a4 & 0x7FFFFFFC;
        v97 = a3;
        v95 = (v6 >> 2) + 1;
        __asm { FMOV            V0.4S, #1.0 }

        v101 = _Q0;
        do
        {
          v21 = *v8;
          v22 = *v7;
          if (((v21 + 4 * v16 * v9) & 0xFLL) != 0)
          {
            if (a4 >= 1)
            {
              v23 = 0;
              if (a4 < 4)
              {
                goto LABEL_22;
              }

              if ((v21 - v22) < 0x10)
              {
                goto LABEL_22;
              }

              v24 = (v22 + v15);
              v25 = (v21 + v15);
              v26 = v96;
              do
              {
                v27 = *v24++;
                v105 = vnegq_f32(v27);
                v102 = expf(v105.f32[1]);
                v28.f32[0] = expf(v105.f32[0]);
                v28.f32[1] = v102;
                v103 = v28;
                v29 = expf(v105.f32[2]);
                v30 = v103;
                v30.f32[2] = v29;
                v104 = v30;
                v31 = expf(v105.f32[3]);
                v32 = v104;
                v32.f32[3] = v31;
                *v25++ = vdivq_f32(v101, vaddq_f32(v32, v101));
                v26 -= 4;
              }

              while (v26);
              v23 = v96;
              if (v96 != a4)
              {
LABEL_22:
                v33 = a4 - v23;
                v34 = 4 * v23;
                v35 = v21 + v34;
                v36 = v22 + v34;
                do
                {
                  *(v35 + v15) = 1.0 / (expf(-*(v36 + v15)) + 1.0);
                  v35 += 4;
                  v36 += 4;
                  --v33;
                }

                while (v33);
              }
            }
          }

          else if (a4 >= -2)
          {
            v37 = v95;
            do
            {
              *v38.i64 = MEMORY[0x19EAFB280](vnegq_f32(*(v22 + v15)));
              *(v21 + v15) = vdivq_f32(v101, vaddq_f32(v38, v101));
              v21 += 16;
              v22 += 16;
              --v37;
            }

            while (v37);
          }

          ++v16;
          v15 += v10;
          v8 = a1;
          v7 = a2;
          v9 = v100;
        }

        while (v16 != v97);
      }

      else
      {
        v49 = 0;
        v50 = a3;
        do
        {
          memmove((*v8 + v49), (*v7 + v49), v10);
          v49 += v10;
          --v50;
        }

        while (v50);
      }
    }

    else
    {
      switch(a5)
      {
        case 2:
          v39 = 0;
          v40 = a3;
          do
          {
            v41 = *v8;
            v42 = *v7;
            v108 = a4;
            vvtanhf((v41 + v39), (v42 + v39), &v108);
            v39 += v10;
            --v40;
          }

          while (v40);
          break;
        case 4:
          if (a4 >= 1)
          {
            v43 = *a1;
            v44 = *a2;
            v45 = a3;
            if (a4 > 7)
            {
              if ((v43 - v44) >= 0x20)
              {
                v80 = 0;
                v81 = v44 + 1;
                v82 = 4 * a4;
                v83 = (v43 + 4);
                v84 = 32 * ((a4 >> 3) & 0xFFFFFFF);
                v85 = &v43[v84 / 4];
                f32 = v44[v84 / 0x10].f32;
                do
                {
                  v87 = a4 & 0x7FFFFFF8;
                  v88 = v83;
                  v89 = v81;
                  do
                  {
                    v90 = vmaxnmq_f32(*v89, 0);
                    v88[-1] = vmaxnmq_f32(v89[-1], 0);
                    *v88 = v90;
                    v89 += 2;
                    v88 += 2;
                    v87 -= 8;
                  }

                  while (v87);
                  if (a4 != (a4 & 0x7FFFFFF8))
                  {
                    v91 = f32;
                    v92 = v85;
                    v93 = a4 - (a4 & 0x7FFFFFF8);
                    do
                    {
                      v94 = *v91++;
                      *v92++ = fmaxf(v94, 0.0);
                      --v93;
                    }

                    while (v93);
                  }

                  ++v80;
                  v81 = (v81 + v82);
                  v83 = (v83 + v82);
                  v85 = (v85 + v82);
                  f32 = (f32 + v82);
                }

                while (v80 != a3);
              }

              else
              {
                v74 = 0;
                v75 = 4 * a4;
                do
                {
                  v76 = v44;
                  v77 = v43;
                  v78 = a4;
                  do
                  {
                    v79 = *v76++;
                    *v77++ = fmaxf(v79, 0.0);
                    --v78;
                  }

                  while (v78);
                  ++v74;
                  v43 = (v43 + v75);
                  v44 = (v44 + v75);
                }

                while (v74 != a3);
              }
            }

            else
            {
              v46 = v43 + 3;
              v47 = 4 * a4;
              v48 = &v44->f32[3];
              do
              {
                *(v46 - 3) = fmaxf(*(v48 - 3), 0.0);
                if (a4 != 1)
                {
                  *(v46 - 2) = fmaxf(*(v48 - 2), 0.0);
                  if (a4 != 2)
                  {
                    *(v46 - 1) = fmaxf(*(v48 - 1), 0.0);
                    if (a4 != 3)
                    {
                      *v46 = fmaxf(*v48, 0.0);
                      if (a4 != 4)
                      {
                        v46[1] = fmaxf(v48[1], 0.0);
                        if (a4 != 5)
                        {
                          v46[2] = fmaxf(v48[2], 0.0);
                          if (a4 != 6)
                          {
                            v46[3] = fmaxf(v48[3], 0.0);
                          }
                        }
                      }
                    }
                  }
                }

                v46 = (v46 + v47);
                v48 = (v48 + v47);
                --v45;
              }

              while (v45);
            }
          }

          break;
        case 3:
          v11 = 0;
          v12 = a3;
          do
          {
            v13 = *v8;
            v14 = *v7;
            v108 = a4;
            v106 = 1071358620;
            v107 = 1059760816;
            MEMORY[0x19EAFB210](v14 + v11, 1, &v107, v13 + v11, 1, v100);
            vvtanhf((v13 + v11), (v13 + v11), &v108);
            MEMORY[0x19EAFB210](v13 + v11, 1, &v106, v13 + v11, 1, v108);
            v11 += v10;
            --v12;
          }

          while (v12);
          return;
        default:
          if (a4 < 1)
          {
            return;
          }

          v51 = 0;
          v52 = *a1;
          v53 = *a2;
          v54 = 4 * a4 * a3;
          v56 = *a1 < *a2 + v54 && v53 < *a1 + v54;
          v57 = a4 < 4 || v56;
          v58 = vdupq_n_s64(0x3FC999999999999AuLL);
          v59 = 4 * a4;
          __asm
          {
            FMOV            V3.2D, #0.5
            FMOV            V4.4S, #1.0
          }

          while (v57)
          {
            for (i = 0; i != a4; ++i)
            {
LABEL_72:
              v72 = v53->f32[i] * 0.2 + 0.5;
              v52->f32[i] = v72;
              v73 = 0.0;
              if (v72 >= 0.0)
              {
                v73 = 1.0;
                if (v72 <= 1.0)
                {
                  continue;
                }
              }

              v52->f32[i] = v73;
            }

LABEL_54:
            ++v51;
            v52 = (v52 + v59);
            v53 = (v53 + v59);
            if (v51 == a3)
            {
              return;
            }
          }

          v63 = v53;
          v64 = v52;
          v65 = a4 & 0x7FFFFFFC;
          while (1)
          {
            v66 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(_Q3, vcvtq_f64_f32(*v63), v58)), vmlaq_f64(_Q3, vcvt_hight_f64_f32(*v63->f32), v58));
            *v64 = v66;
            v67 = vcltzq_f32(v66);
            v68 = vcgezq_f32(v66);
            v69 = vcgtq_f32(v66, _Q4);
            v70 = vmovn_s32(vorrq_s8(v67, v69));
            v71 = vandq_s8(_Q4, vcltzq_s32(vshlq_n_s32(vandq_s8(v68, v69), 0x1FuLL)));
            if (v70.i8[0])
            {
              v64->i32[0] = v71.i32[0];
              if ((v70.i8[2] & 1) == 0)
              {
LABEL_61:
                if ((v70.i8[4] & 1) == 0)
                {
                  goto LABEL_62;
                }

                goto LABEL_66;
              }
            }

            else if ((v70.i8[2] & 1) == 0)
            {
              goto LABEL_61;
            }

            v64->i32[1] = v71.i32[1];
            if ((v70.i8[4] & 1) == 0)
            {
LABEL_62:
              if (v70.i8[6])
              {
                goto LABEL_67;
              }

              goto LABEL_58;
            }

LABEL_66:
            v64->i32[2] = v71.i32[2];
            if (v70.i8[6])
            {
LABEL_67:
              v64->i32[3] = v71.i32[3];
            }

LABEL_58:
            ++v64;
            v63 += 2;
            v65 -= 4;
            if (!v65)
            {
              i = a4 & 0x7FFFFFFC;
              if (i == a4)
              {
                goto LABEL_54;
              }

              goto LABEL_72;
            }
          }
      }
    }
  }
}

uint64_t sub_19D2CAA7C(FILE *__stream, int a2, int *a3, _DWORD *a4, void *a5, void *a6, void *a7, _DWORD *a8, _DWORD *a9, int *a10, unsigned int *a11, _DWORD *a12)
{
  *a10 = 32;
  __ptr = -1;
  fread(&__ptr, 4uLL, 1uLL, __stream);
  v16 = __ptr;
  if (__ptr > 1)
  {
    if ((__ptr & 0xFFFFFFFE) == 4)
    {
      *a11 = 3;
      v24 = xmmword_19D475290;
      v25 = 0x100000001;
      v26 = 32;
      sub_19D2CAC70(&v24, __stream, 1);
      v19 = HIDWORD(v25);
      *a10 = v26;
      v20 = DWORD1(v24);
      *a8 = v25;
      *a9 = v20;
      *a12 = v19;
      *a3 = 0;
      if (v16 != 5)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if ((__ptr & 0xFFFFFFFE) != 2)
    {
      sub_19D41C548(38);
    }

    *a11 = 2;
    v24 = xmmword_19D475290;
    v25 = 0x100000001;
    v26 = 32;
    sub_19D2CAC70(&v24, __stream, 1);
    v18 = DWORD1(v24);
    *a8 = v25;
    *a9 = v18;
    if (v16 == 3)
    {
LABEL_3:
      (*(*a4 + 8))(a4, __stream, 1);
      *a3 = a4[2];
    }
  }

  else
  {
    *a11 = 1;
    *a8 = -1;
    *a9 = 2;
    if (*a3 >= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  sub_19D41C8F8(__stream, "LMTRAINER", a5);
  sub_19D41C8F8(__stream, "LMTRAINER", a6);
  sub_19D41C8F8(__stream, "LMTRAINER", a7);
  return *a11;
}

size_t sub_19D2CAC70(char *__ptr, FILE *__stream, int a3)
{
  if (a3)
  {
    __ptra = 0;
    fread(&__ptra, 4uLL, 1uLL, __stream);
  }

  v5 = fread(__ptr, 4uLL, 1uLL, __stream);
  v6 = fread(__ptr + 4, 4uLL, 1uLL, __stream) + v5;
  v7 = fread(__ptr + 8, 4uLL, 1uLL, __stream);
  v8 = v6 + v7 + fread(__ptr + 12, 4uLL, 1uLL, __stream);
  v9 = fread(__ptr + 16, 4uLL, 1uLL, __stream);
  result = fread(__ptr + 20, 4uLL, 1uLL, __stream);
  if (v8 + v9 + result != 6)
  {
    sub_19D41C548(67);
  }

  v11 = *(__ptr + 3);
  v12 = v11 & 3;
  if ((v11 & 3) == 0)
  {
    goto LABEL_10;
  }

  v13 = v11 & 0xFFFFFFFC;
  if (!v13)
  {
    v13 = 32;
  }

  *(__ptr + 6) = v13;
  if (v13 > 0x20 || ((1 << v13) & 0x100010100) == 0)
  {
LABEL_10:
    sub_19D41C548(25);
  }

  *(__ptr + 3) = v12;
  return result;
}

uint64_t sub_19D2CADB4(void *a1)
{
  *a1 = &unk_1F10B6678;
  v2 = a1[6];
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    v4 = v3[5];
    if (v4)
    {
      (*(*v4 + 368))(v4);
    }

    v5 = v3[12];
    if (v5)
    {
      v6 = sub_19D2D4D50(v5);
      operator delete(v6);
    }

    v7 = v3[13];
    if (v7)
    {
      v3[14] = v7;
      operator delete(v7);
    }

    operator delete(v3);
  }

  if (dword_1EB0131E8 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(a1[8] + 8 * v8);
      if (v9)
      {
        operator delete(v9);
      }

      v10 = *(a1[14] + 8 * v8);
      if (v10)
      {
        operator delete(v10);
      }

      ++v8;
    }

    while (v8 < dword_1EB0131E8);
  }

  v11 = a1[14];
  if (v11)
  {
    a1[15] = v11;
    operator delete(v11);
  }

  v12 = a1[11];
  if (v12)
  {
    v13 = a1[12];
    v14 = a1[11];
    if (v13 != v12)
    {
      v15 = a1[12];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 16) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = a1[11];
    }

    a1[12] = v12;
    operator delete(v14);
  }

  v18 = a1[8];
  if (v18)
  {
    a1[9] = v18;
    operator delete(v18);
  }

  return nullsub_171(a1);
}

uint64_t sub_19D2CAF54(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D2CAF94(void *a1)
{
  v1 = sub_19D2CADB4(a1);

  operator delete(v1);
}

void sub_19D2CAFBC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t (***a6)(void), float a7, uint64_t a8, int a9, int a10, char a11)
{
  *(a1 + 152) = a2;
  *(a1 + 136) = a3;
  *(a1 + 144) = a7;
  *(a1 + 148) = a9;
  *(a1 + 140) = a11;
  *(a1 + 160) = a4;
  *(a1 + 164) = a5;
  *(a1 + 40) = a6;
  *(a1 + 36) = (**a6)(a6);
  operator new();
}

void sub_19D2CB398(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 208) == 1)
  {
    (*(**(*(a1 + 152) + 40) + 336))(*(*(a1 + 152) + 40), *(*(a1 + 56) + 40), *(*(a1 + 56) + 12), *(*(*(a1 + 152) + 40) + 32), *(*(*(a1 + 152) + 40) + 36));
    *(a1 + 240) = CFAbsoluteTimeGetCurrent() - Current;
  }

  else
  {
    v3 = (*(*(a1 + 192) + 8) - **(a1 + 192)) >> 2;
    if (dword_1EB0131E8 >= v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = dword_1EB0131E8;
    }

    v37 = 0;
    v6 = *(a1 + 88);
    v5 = *(a1 + 96);
    if (v5 == v6)
    {
      v10 = *(a1 + 88);
      v6 = *(a1 + 96);
    }

    else
    {
      v7 = *(a1 + 96);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v6);
      *(a1 + 96) = v6;
      v10 = *(a1 + 88);
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    if (v4 <= v11)
    {
      if (v4 < v11)
      {
        v12 = v10 + 24 * v4;
        if (v6 != v12)
        {
          v13 = v6;
          do
          {
            v15 = *(v13 - 24);
            v13 -= 24;
            v14 = v15;
            if (v15)
            {
              *(v6 - 16) = v14;
              operator delete(v14);
            }

            v6 = v13;
          }

          while (v13 != v12);
        }

        *(a1 + 96) = v12;
      }
    }

    else
    {
      sub_19D35D8AC(a1 + 88, v4 - v11);
    }

    *(a1 + 220) = 0;
    *(a1 + 212) = 0;
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v17 = *(**(a1 + 200) + 4 * i);
        v18 = *(a1 + 64);
        v19 = **(*(a1 + 152) + 104);
        v20 = (*(*v19 + 264))(v19);
        bzero(*(v18 + 8 * i), 4 * v20);
        v21 = *(a1 + 112);
        v22 = (*(**(*(*(a1 + 152) + 112) - 8) + 272))();
        bzero(*(v21 + 8 * i), 4 * v22);
        if (*(a1 + 136) >= 6u)
        {
          v34 = sub_19D2CB8CC(MEMORY[0x1E69E5310], "inputEncoding has wrong value!");
          v35 = sub_19D2CB8CC(v34, "not allowed ");
          v36 = MEMORY[0x19EAFA2E0](v35, *(a1 + 136));
          sub_19D2CB914(v36);
          exit(5);
        }

        (*(**(a1 + 40) + 8))(*(a1 + 40), *(**(a1 + 192) + 4 * i), *(a1 + 64) + 8 * i);
        (*(**(a1 + 48) + 8))(*(a1 + 48), v17, *(a1 + 112) + 8 * i);
        if (*(a1 + 136) == 1)
        {
          sub_19D2C7CE4(*(a1 + 88) + 24 * i, (**(a1 + 192) + 4 * i));
        }
      }
    }

    if (*(a1 + 136) != 1)
    {
      v24 = *(a1 + 88);
      v23 = *(a1 + 96);
      if (v23 != v24)
      {
        v25 = *(a1 + 96);
        do
        {
          v27 = *(v25 - 24);
          v25 -= 24;
          v26 = v27;
          if (v27)
          {
            *(v23 - 16) = v26;
            operator delete(v26);
          }

          v23 = v25;
        }

        while (v25 != v24);
      }

      *(a1 + 96) = v24;
    }

    if (*(a1 + 168))
    {
      v28 = sub_19D2AE554(MEMORY[0x1E69E5310], "Threaded recognize not supported", 32);
      std::ios_base::getloc((v28 + *(*v28 - 24)));
      v29 = std::locale::use_facet(&v38, MEMORY[0x1E69E5318]);
      (v29->__vftable[2].~facet_0)(v29, 10);
      std::locale::~locale(&v38);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      v30 = *(a1 + 56);
      if (*(v30 + 28) == 1)
      {
        sub_19D41C548(43);
      }

      v31 = *(a1 + 184);
      *(v30 + 12) = v4;
      if (v4 < 1 || dword_1EB0131E8 <= v4)
      {
        sub_19D41C548(39);
      }

      if (*(v30 + 16) == 1)
      {
        (*(**(*(v30 + 112) - 8) + 216))(*(*(v30 + 112) - 8), a1 + 112, a1 + 88, v4, 0);
        v32 = *(v30 + 12);
      }

      else
      {
        v32 = v4;
      }

      sub_19D35A448(*(v30 + 40), a1 + 64, a1 + 88, a1 + 112, v32, &v37 + 4, &v37, v31, 1);
      *(a1 + 212) += SHIDWORD(v37) / v4;
      *(a1 + 216) = *(a1 + 216) + *&v37;
      v33.i32[0] = 1;
      v33.i32[1] = v4;
      *(a1 + 220) = vadd_s32(*(a1 + 220), v33);
      *(a1 + 232) = CFAbsoluteTimeGetCurrent() - Current;
    }
  }
}

void *sub_19D2CB8CC(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_19D2AE554(a1, __s, v4);
}

void *sub_19D2CB914(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_19D2CB9CC(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  operator new();
}

void sub_19D2CBAF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
    if ((*v2 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*v2 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 72));
  _Unwind_Resume(exception_object);
}

void sub_19D2CBB34(uint64_t a1)
{
  dword_1EB0131E8 = 2;
  nullsub_171("MRLModelWrapper, layer #0 ");
  v2 = *(a1 + 200);
  if (!*v2)
  {
    v3 = *(v2 + 8) == 7;
    v4 = *(v2 + 496 * (*(a1 + 192) - 1) + 16) << v3;
    *(a1 + 36) = v4;
    *(a1 + 188) = 0;
    *(a1 + 184) = 1;
    *(a1 + 20) = -1;
    *(a1 + 152) = 0;
    *(a1 + 216) = v3;
    v5 = *(v2 + 12);
    *(a1 + 32) = v5;
    *(a1 + 40) = v4;
    if (*(v2 + 20))
    {
      *a1 = 1;
      *(a1 + 16) = 16;
      *(a1 + 152) = 0;
      *(a1 + 144) = 0;
      sub_19D2CD6D4(a1, *a1, (a1 + 32), (a1 + 36), v5, *(a1 + 36));
    }

    *a1 = 6;
    operator new();
  }

  sub_19D41C548(90);
}

void sub_19D2CBDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D360EF4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D2CBE14(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  operator new();
}

void sub_19D2CBF80(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v1 + 72));
  _Unwind_Resume(exception_object);
}

void sub_19D2CBFCC(uint64_t a1)
{
  *(a1 + 188) = 0;
  *(a1 + 184) = -1;
  *(a1 + 20) = -1;
  *(a1 + 152) = 0;
  v6 = -1;
  v7 = -1;
  v2 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v2 = *v2;
  }

  v3 = fopen(v2, "rb");
  if (v3)
  {
    v4 = v3;
    sub_19D2D0640(a1, v3, &v7, &v6);
    *(a1 + 136) = v7;
    fclose(v4);
    dword_1EB0131E8 = 2;
    if (*(a1 + 216))
    {
      v5 = 70;
    }

    else
    {
      v5 = 2;
    }

    *(a1 + 224) = v5;
    sub_19D2CD6D4(a1, *a1, (a1 + 32), (a1 + 36), *(a1 + 32), *(a1 + 36));
  }

  sub_19D41C548(12);
}

void sub_19D2CC1AC(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 20);
  *(a1 + 20) = -1;
  operator new();
}

void sub_19D2CC3AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
    if ((*v2 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*v2 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 72));
  _Unwind_Resume(exception_object);
}

void sub_19D2CC3EC(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFF00000002;
  operator new();
}

void sub_19D2CC550(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
    if ((*v2 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*v2 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 72));
  _Unwind_Resume(exception_object);
}

void sub_19D2CC58C(int *a1, void *__buf, int a3)
{
  v6 = -1;
  v7 = -1;
  v4 = fmemopen(__buf, a3, "rb");
  if (v4)
  {
    v5 = v4;
    sub_19D2D0640(a1, v4, &v7, &v6);
    fclose(v5);
    sub_19D2CD6D4(a1, *a1, a1 + 8, a1 + 9, a1[8], a1[9]);
  }

  sub_19D41C548(12);
}

uint64_t sub_19D2CC6F4(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return **(v1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D2CC710(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return *(*(v1 + 96) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D2CC734(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 68);
  if (*(a1 + 16))
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v12 = v5;
  v13 = 0;
  sub_19D41CAA8(__stream, &v13, &v12);
  v11 = 6;
  sub_19D41CAA8(__stream, &v13, &v11);
  v6 = *(a1 + 24);
  v7 = sub_19D41C518();
  *(a1 + 64) = 3;
  *(a1 + 68) = v4;
  *(a1 + 72) = 0x100000001;
  *(a1 + 80) = v6;
  *(a1 + 84) = 1;
  *(a1 + 88) = v7;
  sub_19D35DA58((a1 + 64), __stream, &v13);
  if (*(a1 + 16) == 1)
  {
    (***(a1 + 56))(*(a1 + 56), __stream, &v13);
  }

  sub_19D41C9E8(__stream, &v13, *a1);
  sub_19D41C9E8(__stream, &v13, *(a1 + 4));
  sub_19D41C9E8(__stream, &v13, *(a1 + 8));
  v8 = *(a1 + 40);
  v9 = sub_19D41C518();
  (*(*v8 + 72))(v8, __stream, &v13, 1, v9);
  return v13;
}

uint64_t sub_19D2CC8A4(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 68);
  if (*(a1 + 16))
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v12 = v5;
  v13 = 0;
  sub_19D41CAA8(__stream, &v13, &v12);
  v11 = 6;
  sub_19D41CAA8(__stream, &v13, &v11);
  v6 = *(a1 + 24);
  v7 = sub_19D41C528();
  *(a1 + 64) = 3;
  *(a1 + 68) = v4;
  *(a1 + 72) = 0x100000001;
  *(a1 + 80) = v6;
  *(a1 + 84) = 1;
  *(a1 + 88) = v7;
  sub_19D35DA58((a1 + 64), __stream, &v13);
  if (*(a1 + 16) == 1)
  {
    (***(a1 + 56))(*(a1 + 56), __stream, &v13);
  }

  sub_19D41C9E8(__stream, &v13, *a1);
  sub_19D41C9E8(__stream, &v13, *(a1 + 4));
  sub_19D41C9E8(__stream, &v13, *(a1 + 8));
  v8 = *(a1 + 40);
  v9 = sub_19D41C528();
  (*(*v8 + 72))(v8, __stream, &v13, 1, v9);
  return v13;
}

uint64_t sub_19D2CCA14(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (dword_1EB0131E8 < a3 || (*(result + 188) & 1) == 0)
  {
    sub_19D2CCAF0(result);
    *(v4 + 188) = 0;
    dword_1EB0131E8 = *(v4 + 220);
    *(v4 + 224) = a3;
    v5 = *(v4 + 120);
    if (v5)
    {
      if (*(v4 + 216) == 1)
      {
        (*(**(v5 + 40) + 184))(*(v5 + 40));
      }

      sub_19D2CCFFC(v4);
    }

    sub_19D41C548(37);
  }

  return result;
}

void sub_19D2CCAF0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    if (*(a1 + 188) == 1)
    {
      (*(**(v1 + 40) + 208))(*(v1 + 40));
      sub_19D2CD210(a1);
      qword_1ED44E3C8 = qword_1ED44E3C0;
      qword_1ED44E3F8 = qword_1ED44E3F0;
      qword_1ED44E470 = qword_1ED44E468;
      sub_19D361090(&qword_1ED44E3C0);
      sub_19D361178(&qword_1ED44E3F0);
      sub_19D361178(&qword_1ED44E468);
      qword_1ED44E308 = qword_1ED44E300;
      qword_1ED44E488 = qword_1ED44E480;
      qword_1ED44E320 = qword_1ED44E318;
      sub_19D361090(&qword_1ED44E300);
      sub_19D361178(&qword_1ED44E480);
      sub_19D361178(&qword_1ED44E318);
      qword_1ED44E4A0 = qword_1ED44E498;
      qword_1ED44E338 = qword_1ED44E330;
      qword_1ED44E350 = qword_1ED44E348;
      sub_19D361090(&qword_1ED44E498);
      sub_19D361178(&qword_1ED44E330);
      sub_19D361178(&qword_1ED44E348);
      qword_1ED44E398 = qword_1ED44E390;
      qword_1ED44E3B0 = qword_1ED44E3A8;
      qword_1ED44E3E0 = qword_1ED44E3D8;
      sub_19D361090(&qword_1ED44E390);
      sub_19D361178(&qword_1ED44E3A8);
      sub_19D361178(&qword_1ED44E3D8);
      qword_1ED44E428 = qword_1ED44E420;
      qword_1ED44E440 = qword_1ED44E438;
      qword_1ED44E410 = qword_1ED44E408;
      sub_19D361090(&qword_1ED44E420);
      sub_19D361178(&qword_1ED44E438);
      sub_19D361178(&qword_1ED44E408);
      qword_1ED44E380 = qword_1ED44E378;
      qword_1ED44E458 = qword_1ED44E450;
      qword_1ED44E368 = qword_1ED44E360;
      sub_19D361090(&qword_1ED44E378);
      sub_19D361178(&qword_1ED44E450);
      sub_19D361178(&qword_1ED44E360);
      *(a1 + 188) = 0;
    }
  }
}

uint64_t sub_19D2CCD00(uint64_t result)
{
  v1 = *(result + 120);
  if (!v1)
  {
    sub_19D41C548(37);
  }

  v2 = result;
  if ((*(result + 188) & 1) == 0)
  {
    if (*(result + 216) == 1)
    {
      (*(**(v1 + 40) + 184))(*(v1 + 40));
    }

    sub_19D2CCFFC(v2);
  }

  return result;
}

void sub_19D2CCE00(uint64_t a1, int a2)
{
  v4 = *(a1 + 128);
  v5 = *v4;
  v6 = v4[1];
  if (v6 != *v4)
  {
    v7 = *v5;
    if (v5[1] != *v5)
    {
      v8 = 0;
      do
      {
        v9 = *&v7[8 * v8];
        if (v9)
        {
          operator delete[](v9);
          v5 = *v4;
          v7 = **v4;
        }

        ++v8;
      }

      while (v8 < (v5[1] - v7) >> 3);
      v6 = v4[1];
    }
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * (v6 - v5);
  if (v6 == v5)
  {
    sub_19D35D700(v4, 1 - v10);
  }

  else if (v10 >= 2)
  {
    v11 = v5 + 3;
    if (v6 != v5 + 3)
    {
      v12 = v6;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          *(v6 - 2) = v13;
          operator delete(v13);
        }

        v6 = v12;
      }

      while (v12 != v11);
    }

    v4[1] = v11;
  }

  v15 = *v4;
  v16 = **v4;
  v17 = ((*v4)[1] - v16) >> 3;
  if (a2 <= v17)
  {
    if (a2 < v17)
    {
      v15[1] = &v16[8 * a2];
    }
  }

  else
  {
    sub_19D308DD0(v15, a2 - v17);
  }

  if (a2 >= 1)
  {
    v18 = **(*(a1 + 120) + 104);
    (*(*v18 + 264))(v18);
    operator new[]();
  }
}

void sub_19D2CCFFC(uint64_t a1)
{
  if (*(a1 + 120))
  {
    operator new();
  }

  sub_19D41C548(639);
}

void sub_19D2CD164(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    v1[1] = v3;
    operator delete(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_19D2CD190(uint64_t a1)
{
  if (*(a1 + 120))
  {
    operator new();
  }

  sub_19D41C548(34);
}

void sub_19D2CD210(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    v3 = *v2;
    v4 = **v2;
    if ((*v2)[1] == v4)
    {
      goto LABEL_9;
    }

    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        operator delete[](v6);
        v3 = *v2;
        v4 = **v2;
      }

      ++v5;
    }

    while (v5 < (v3[1] - v4) >> 3);
    v2 = a1[16];
    if (!v2)
    {
      goto LABEL_17;
    }

    v3 = *v2;
    if (*v2)
    {
LABEL_9:
      v7 = v2[1];
      v8 = v3;
      if (v7 != v3)
      {
        v9 = v2[1];
        do
        {
          v11 = *(v9 - 3);
          v9 -= 3;
          v10 = v11;
          if (v11)
          {
            *(v7 - 2) = v10;
            operator delete(v10);
          }

          v7 = v9;
        }

        while (v9 != v3);
        v8 = *v2;
      }

      v2[1] = v3;
      operator delete(v8);
    }

    operator delete(v2);
LABEL_17:
    a1[16] = 0;
  }

  v12 = a1[21];
  if (v12)
  {
    operator delete[](v12);
    a1[21] = 0;
  }

  v13 = a1[22];
  if (v13)
  {
    sub_19D2CD32C(a1, v13);
    a1[22] = 0;
  }

  v14 = a1[20];
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      v14[1] = v15;
      operator delete(v15);
    }

    operator delete(v14);
    a1[20] = 0;
  }
}

void sub_19D2CD32C(uint64_t a1, char **__p)
{
  if (!*(a1 + 120))
  {
    sub_19D41C548(40);
  }

  if (!__p)
  {
    sub_19D41C548(41);
  }

  v3 = *__p;
  if (__p[1] != *__p)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *&v3[v5];
      if (!*v6 || (operator delete[](*v6), v3 = *__p, (v6 = *&(*__p)[v5]) != 0))
      {
        operator delete(v6);
        v3 = *__p;
      }

      ++v4;
      v5 += 16;
    }

    while (v4 < (__p[1] - v3) >> 4);
  }

  if (v3)
  {
    __p[1] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t sub_19D2CD3EC(uint64_t a1)
{
  sub_19D2CCAF0(a1);
  *(a1 + 188) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = sub_19D35BED8(v3);
    operator delete(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = v5[5];
    if (v6)
    {
      (*(*v6 + 368))(v6);
    }

    v7 = v5[12];
    if (v7)
    {
      v8 = sub_19D2D4D50(v7);
      operator delete(v8);
    }

    v9 = v5[13];
    if (v9)
    {
      v5[14] = v9;
      operator delete(v9);
    }

    operator delete(v5);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 144);
  if (v10)
  {
    v11 = *(a1 + 184);
    if (v11 == 3)
    {
      sub_19D2AD8CC(v10 + 72, *(v10 + 80));
      sub_19D2AD8CC(v10 + 48, *(v10 + 56));
      sub_19D35C0B8(v10 + 24, *(v10 + 32));
      sub_19D2A3E48(v10, *(v10 + 8));
    }

    else
    {
      if (v11 != 2)
      {
LABEL_19:
        *(a1 + 144) = 0;
        goto LABEL_20;
      }

      sub_19D2AD8CC(v10 + 72, *(v10 + 80));
      sub_19D2AD8CC(v10 + 48, *(v10 + 56));
      sub_19D2AD8CC(v10 + 24, *(v10 + 32));
      sub_19D2AD8CC(v10, *(v10 + 8));
    }

    operator delete(v10);
    goto LABEL_19;
  }

LABEL_20:
  v12 = *(a1 + 208);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      v14 = v12[1];
      v15 = *v12;
      if (v14 != v13)
      {
        v16 = v12[1];
        do
        {
          v18 = *(v16 - 3);
          v16 -= 24;
          v17 = v18;
          if (v18)
          {
            *(v14 - 2) = v17;
            operator delete(v17);
          }

          v14 = v16;
        }

        while (v16 != v13);
        v15 = *v12;
      }

      v12[1] = v13;
      operator delete(v15);
    }

    operator delete(v12);
  }

  dword_1EB0131E8 = 2;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 72));
  return a1;
}

void sub_19D2CD604(int *a1, float *a2, char a3, char a4, int a5, int a6)
{
  v6 = a1[8];
  v7 = a2[2];
  v8 = *(a2 + 3);
  v9 = *a1;
  v11 = a1[4];
  v12 = v6;
  v10 = *a2;
  v13 = vrev64_s32(*(a1 + 9));
  v14 = v10;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = a6;
  v19 = 0;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = 1;
  v24 = 0;
  v25 = 0;
  if ((a5 & 7) == 0)
  {
    operator new();
  }

  sub_19D41C548(234);
}

void sub_19D2CD6D4(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, int a5, int a6)
{
  v7 = 46;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        *a3 = 20;
        *a4 = a6;
        operator new();
      case 1:
        *a3 = a5;
        *a4 = a6;
        operator new();
      case 2:
        operator new();
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        *a3 = a5;
        *a4 = a6;
        operator new();
      }

      *a3 = 20;
      *a4 = a6;
      operator new();
    }

    if (a2 == 5)
    {
      *a4 = a6;
      operator new();
    }

    if (a2 == 6)
    {
      *a3 = a5;
      *a4 = a6;
      if (*(a1 + 208))
      {
        operator new();
      }

      v7 = 100;
    }
  }

  sub_19D41C548(v7);
}

void sub_19D2CDD84(uint64_t a1, int a2)
{
  if (*(a1 + 216) == 1)
  {
    (*(**(*(a1 + 120) + 40) + 184))(*(*(a1 + 120) + 40));
  }

  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 184);
    if ((v4 & 0xFFFFFFFE) == 2)
    {
      v5 = *(a1 + 95);
      if (v4 == 2)
      {
        if (a2 != 16)
        {
          if (a2 == 8)
          {
            if (v5 < 0)
            {
              sub_19D2AD6B8(&v23, *(a1 + 72), *(a1 + 80));
            }

            else
            {
              v23 = *(a1 + 72);
              v24 = *(a1 + 88);
            }

            sub_19D2CE248();
          }

          if (v5 < 0)
          {
            sub_19D2AD6B8(&v19, *(a1 + 72), *(a1 + 80));
          }

          else
          {
            v19 = *(a1 + 72);
            v20 = *(a1 + 88);
          }

          sub_19D2CE5F0();
        }

        if (v5 < 0)
        {
          sub_19D2AD6B8(&v21, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v21 = *(a1 + 72);
          v22 = *(a1 + 88);
        }

        sub_19D2CE41C();
      }

      if (a2 != 16)
      {
        if (a2 == 8)
        {
          if (v5 < 0)
          {
            sub_19D2AD6B8(&v17, *(a1 + 72), *(a1 + 80));
          }

          else
          {
            v17 = *(a1 + 72);
            v18 = *(a1 + 88);
          }

          sub_19D2CE7C4();
        }

        if (v5 < 0)
        {
          sub_19D2AD6B8(&v13, *(a1 + 72), *(a1 + 80));
        }

        else
        {
          v13 = *(a1 + 72);
          v14 = *(a1 + 88);
        }

        sub_19D2CEB6C();
      }

      if (v5 < 0)
      {
        sub_19D2AD6B8(&v15, *(a1 + 72), *(a1 + 80));
      }

      else
      {
        v15 = *(a1 + 72);
        v16 = *(a1 + 88);
      }

      sub_19D2CE998();
    }

    sub_19D41C548(19);
  }

  v6 = *(a1 + 95);
  if (a2 != 16)
  {
    if (a2 == 8)
    {
      if (v6 < 0)
      {
        sub_19D2AD6B8(&v11, *(a1 + 72), *(a1 + 80));
      }

      else
      {
        v11 = *(a1 + 72);
        v12 = *(a1 + 88);
      }

      sub_19D2CED40();
    }

    if (v6 < 0)
    {
      sub_19D2AD6B8(&v7, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      v7 = *(a1 + 72);
      v8 = *(a1 + 88);
    }

    sub_19D2CF448();
  }

  if (v6 < 0)
  {
    sub_19D2AD6B8(&v9, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
  }

  sub_19D2CF0C4();
}

void sub_19D2CE188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2CE3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CE590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CE764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CE938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CEB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CF064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CF3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CF76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_19D2CF7CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 216) == 1)
  {
    (*(**(*(a1 + 120) + 40) + 184))(*(*(a1 + 120) + 40));
  }

  if (*(a1 + 152) == 1)
  {
    if ((*(a1 + 184) & 0xFFFFFFFE) == 2)
    {
      operator new();
    }

    sub_19D41C548(19);
  }

  if (a4 != 16)
  {
    if (a4 == 8)
    {

      sub_19D2CFDE8();
    }

    sub_19D2D0378();
  }

  sub_19D2D00B0();
}

void sub_19D2D0640(uint64_t a1, FILE *__stream, int *a3, unsigned int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 16);
  sub_19D2CAA7C(__stream, __stream, (a1 + 20), *(a1 + 24), (a1 + 32), (a1 + 40), (a1 + 36), a1, (a1 + 16), a3, a4, (a1 + 184));
  if ((atomic_load_explicit(&qword_1EB013D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB013D30))
  {
    v16 = 52;
    v15[0] = xmmword_19D475380;
    v15[1] = unk_19D475390;
    sub_19D360AFC(&qword_1EB013DE0, v15, 9);
    __cxa_atexit(sub_19D2D0970, &qword_1EB013DE0, &dword_19D2A1000);
    __cxa_guard_release(&qword_1EB013D30);
  }

  if (qword_1EB013DE8)
  {
    v6 = *v5;
    v7 = vcnt_s8(qword_1EB013DE8);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *v5;
      if (qword_1EB013DE8 <= v6)
      {
        v8 = v6 % qword_1EB013DE8;
      }
    }

    else
    {
      v8 = (qword_1EB013DE8 - 1) & v6;
    }

    v9 = *(qword_1EB013DE0 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v6)
            {
              if (*(v10 + 4) == v6)
              {
                goto LABEL_22;
              }
            }

            else if ((v12 & (qword_1EB013DE8 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v6)
          {
            if (*(v10 + 4) == v6)
            {
LABEL_22:
              v13 = 1;
              goto LABEL_24;
            }
          }

          else
          {
            if (v11 >= qword_1EB013DE8)
            {
              v11 %= qword_1EB013DE8;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

LABEL_23:
  v13 = 0;
LABEL_24:
  *(a1 + 216) = v13;
  v14 = *(a1 + 184);
  *(a1 + 152) = v14 != 1;
  *(a1 + 144) = 0;
  if (v14 == 3)
  {
    operator new();
  }

  if (v14 == 2)
  {
    operator new();
  }
}

uint64_t sub_19D2D0970(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

size_t sub_19D2D09BC(FILE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (a2 + 8);
  sub_19D2AD8CC(a2, *(a2 + 8));
  *a2 = v8;
  *(a2 + 16) = 0;
  *v8 = 0;
  v9 = (a3 + 8);
  sub_19D2AD8CC(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  __ptr = -1;
  sub_19D41C8F8(a1, "SentenceRecognizer", &__ptr);
  if (__ptr >= 1)
  {
    v10 = 0;
    v31 = a1;
    do
    {
      HIDWORD(v32) = 0;
      v33 = 0;
      sub_19D41C8F8(a1, "SentenceRecognizer", &v33);
      sub_19D41C8F8(a1, "SentenceRecognizer", &v32 + 4);
      v11 = *v8;
      if (!*v8)
      {
LABEL_10:
        operator new();
      }

      v12 = v33;
      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = *(v11 + 7);
          if (v33 >= v14)
          {
            break;
          }

          v11 = *v13;
          if (!*v13)
          {
            goto LABEL_10;
          }
        }

        if (v14 >= v33)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      *(v13 + 8) = HIDWORD(v32);
      v15 = *v9;
      if (!*v9)
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v16 = v15;
          v17 = *(v15 + 7);
          if (SHIDWORD(v32) >= v17)
          {
            break;
          }

          v15 = *v16;
          if (!*v16)
          {
            goto LABEL_17;
          }
        }

        if (v17 >= SHIDWORD(v32))
        {
          break;
        }

        v15 = v16[1];
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      a1 = v31;
      *(v16 + 8) = v12;
      ++v10;
    }

    while (v10 < __ptr);
  }

  v18 = (a4 + 8);
  sub_19D2AD8CC(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v19 = (a5 + 8);
  sub_19D2AD8CC(a5, *(a5 + 8));
  *a5 = a5 + 8;
  *(a5 + 16) = 0;
  *(a5 + 8) = 0;
  v33 = -1;
  result = sub_19D41C8F8(a1, "SentenceRecognizer", &v33);
  if (v33 >= 1)
  {
    for (i = 0; i < v33; ++i)
    {
      v32 = 0;
      sub_19D41C8F8(a1, "SentenceRecognizer", &v32 + 4);
      result = sub_19D41C8F8(a1, "SentenceRecognizer", &v32);
      v22 = *v18;
      if (!*v18)
      {
LABEL_27:
        operator new();
      }

      v23 = HIDWORD(v32);
      while (1)
      {
        while (1)
        {
          v24 = v22;
          v25 = *(v22 + 7);
          if (SHIDWORD(v32) >= v25)
          {
            break;
          }

          v22 = *v24;
          if (!*v24)
          {
            goto LABEL_27;
          }
        }

        if (v25 >= SHIDWORD(v32))
        {
          break;
        }

        v22 = v24[1];
        if (!v22)
        {
          goto LABEL_27;
        }
      }

      *(v24 + 8) = v32;
      v26 = *v19;
      if (!*v19)
      {
LABEL_34:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v27 = v26;
          v28 = *(v26 + 7);
          if (v32 >= v28)
          {
            break;
          }

          v26 = *v27;
          if (!*v27)
          {
            goto LABEL_34;
          }
        }

        if (v28 >= v32)
        {
          break;
        }

        v26 = v27[1];
        if (!v26)
        {
          goto LABEL_34;
        }
      }

      *(v27 + 8) = v23;
    }
  }

  return result;
}

size_t sub_19D2D0E28(FILE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a2 + 8);
  sub_19D2A3E48(a2, *(a2 + 8));
  *a2 = v9;
  v28 = a2;
  *(a2 + 16) = 0;
  *v9 = 0;
  v10 = (a3 + 8);
  sub_19D35C0B8(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  __ptr = -1;
  sub_19D41C8F8(a1, "SentenceRecognizer", &__ptr);
  if (__ptr >= 1)
  {
    for (i = 0; i < __ptr; ++i)
    {
      memset(&__str, 0, sizeof(__str));
      v29 = 0;
      sub_19D41C90C(a1, "SentenceRecognizer", &__str);
      sub_19D41C8F8(a1, "SentenceRecognizer", &v29);
      v12 = v29;
      p_str = &__str;
      *(sub_19D35FC30(v28, &__str.__r_.__value_.__l.__data_) + 14) = v12;
      v13 = *v10;
      if (!*v10)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 8);
          if (v29 >= v15)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_10;
          }
        }

        if (v15 >= v29)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      std::string::operator=((v14 + 5), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  v16 = (a4 + 8);
  sub_19D2AD8CC(a4, *(a4 + 8));
  *a4 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v17 = (a5 + 8);
  sub_19D2AD8CC(a5, *(a5 + 8));
  *a5 = a5 + 8;
  *(a5 + 16) = 0;
  *(a5 + 8) = 0;
  LODWORD(__str.__r_.__value_.__l.__data_) = -1;
  result = sub_19D41C8F8(a1, "SentenceRecognizer", &__str);
  if (SLODWORD(__str.__r_.__value_.__l.__data_) >= 1)
  {
    v19 = 0;
    do
    {
      LODWORD(p_str) = 0;
      v29 = 0;
      sub_19D41C8F8(a1, "SentenceRecognizer", &p_str);
      result = sub_19D41C8F8(a1, "SentenceRecognizer", &v29);
      v20 = *v16;
      if (!*v16)
      {
LABEL_22:
        operator new();
      }

      v21 = p_str;
      while (1)
      {
        while (1)
        {
          v22 = v20;
          v23 = *(v20 + 7);
          if (p_str >= v23)
          {
            break;
          }

          v20 = *v22;
          if (!*v22)
          {
            goto LABEL_22;
          }
        }

        if (v23 >= p_str)
        {
          break;
        }

        v20 = v22[1];
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      *(v22 + 8) = v29;
      v24 = *v17;
      if (!*v17)
      {
LABEL_29:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v25 = v24;
          v26 = *(v24 + 7);
          if (v29 >= v26)
          {
            break;
          }

          v24 = *v25;
          if (!*v25)
          {
            goto LABEL_29;
          }
        }

        if (v26 >= v29)
        {
          break;
        }

        v24 = v25[1];
        if (!v24)
        {
          goto LABEL_29;
        }
      }

      *(v25 + 8) = v21;
      ++v19;
    }

    while (v19 < SLODWORD(__str.__r_.__value_.__l.__data_));
  }

  return result;
}

void sub_19D2D1238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2D1254(uint64_t a1, int *a2)
{
  v4 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v5 = *a2;
  if (v4 != 1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    v7 = *(a1 + 184);
    if (v7 != 3)
    {
      if (v7 == 1)
      {
        v8 = 3;
LABEL_20:
        *a2 = v8;
        return;
      }

LABEL_19:
      v8 = 1;
      goto LABEL_20;
    }

    v9 = *(a1 + 144);
    if (!v9)
    {
      goto LABEL_19;
    }

    v41[0] = 0;
    v41[1] = 0;
    v40 = v41;
    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    if (v12 == v10)
    {
      v13 = 0;
    }

    else
    {
      do
      {
        sub_19D360F7C(&v40, v41, v11 + 4);
        v14 = v11[1];
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
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v10);
      v13 = v41[0];
      v39 = 3;
      v38[0] = 4935253;
      if (v41[0])
      {
        v17 = v41;
        v18 = v41[0];
        do
        {
          v19 = v17;
          v20 = (v18 + 32);
          v21 = *(v18 + 55);
          v22 = v21;
          if ((v21 & 0x80u) != 0)
          {
            v21 = *(v18 + 40);
          }

          if (v22 >= 0)
          {
            v23 = (v18 + 32);
          }

          else
          {
            v23 = *(v18 + 32);
          }

          if (v21 >= 3)
          {
            v24 = 3;
          }

          else
          {
            v24 = v21;
          }

          v25 = v21 < 3;
          v26 = memcmp(v23, v38, v24);
          v27 = v26 < 0;
          if (!v26)
          {
            v27 = v25;
          }

          if (v27)
          {
            v28 = 8;
          }

          else
          {
            v28 = 0;
          }

          if (v27)
          {
            v17 = v19;
          }

          else
          {
            v17 = v18;
          }

          v18 = *(v18 + v28);
        }

        while (v18);
        if (v17 != v41)
        {
          if (v27)
          {
            v29 = v19 + 4;
          }

          else
          {
            v29 = v20;
          }

          v30 = *(v17 + 55);
          v31 = v30;
          if ((v30 & 0x80u) != 0)
          {
            v30 = v17[5];
          }

          v32 = v31 >= 0 ? v29 : *v29;
          v33 = v30 >= 3 ? 3 : v30;
          v34 = v30 > 3;
          v35 = memcmp(v38, v32, v33);
          v36 = v35 < 0;
          if (!v35)
          {
            v36 = v34;
          }

          if (!v36)
          {
            v37 = *(v17 + 14);
            goto LABEL_57;
          }
        }
      }
    }

    v37 = 1;
LABEL_57:
    *a2 = v37;
    sub_19D2A3E48(&v40, v13);
    return;
  }

  v6 = **(*(a1 + 120) + 104);
  if (v5 >= (*(*v6 + 264))(v6) || *a2 < 0)
  {
    goto LABEL_6;
  }
}

void sub_19D2D14E4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  (***(a1 + 8))(*(a1 + 8));
  v43 = *(a1 + 128);
  if (dword_1EB0131E8 >= ((a2[1] - *a2) >> 2))
  {
    v12 = (a2[1] - *a2) >> 2;
  }

  else
  {
    v12 = dword_1EB0131E8;
  }

  v13 = v12;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p = &v48;
  LOBYTE(v47) = 0;
  __dst = a3;
  v42 = a4;
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if ((*(**(a1 + 8) + 24))(*(a1 + 8)) != 1)
  {
    v15 = v48;
    v14 = v49;
    if (v49 != v48)
    {
      v16 = v49;
      do
      {
        v18 = *(v16 - 3);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 2) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v15);
    }

    v49 = v15;
  }

  v19 = *(a1 + 152);
  v45 = 0;
  v44 = 0;
  if (atomic_load_explicit(&qword_1EB013D38, memory_order_acquire))
  {
    if (v13 <= 0x1000000)
    {
      goto LABEL_16;
    }

LABEL_40:
    v39 = 34;
    goto LABEL_42;
  }

  sub_19D454030();
  if (v13 > 0x1000000)
  {
    goto LABEL_40;
  }

LABEL_16:
  if (a5 >= 257)
  {
    v39 = 35;
LABEL_42:
    sub_19D41C548(v39);
  }

  v20 = v13 | (a5 << 24);
  v21 = *(a1 + 120);
  v22 = *v43;
  *(v21 + 12) = v20;
  v23 = qword_1EB013D68;
  v24 = qword_1EB013D70;
  if (*(v21 + 16) == 1 && qword_1EB013D70 != qword_1EB013D68)
  {
    (*(**(*(v21 + 112) - 8) + 216))(*(*(v21 + 112) - 8), &qword_1EB013D68, &v48, v13 | (a5 << 24), (v19 ^ 1) & 1);
    v23 = qword_1EB013D68;
    v24 = qword_1EB013D70;
  }

  if (v24 == v23)
  {
    v26 = v20 >> 24;
    if (v20 >> 24 <= 1)
    {
      v26 = 1;
    }

    (*(**(v21 + 40) + 304))(*(v21 + 40), v22, &v48, v13 & 0xFFFFFF | (v26 << 24), v42, &v44, a7);
  }

  else
  {
    LODWORD(__p) = 0;
    sub_19D35D584(*(v21 + 40), v22, &v48, &qword_1EB013D68, v13 | (a5 << 24), &v45, &v45 + 1, 0, &__p, v42, &v44);
  }

  v27 = *(*(*(a1 + 120) + 112) - 8);
  v28 = (*(*v27 + 32))(v27);
  v29 = v28[1];
  if (v29 != *v28)
  {
    if (((v29 - *v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v30 = *(8 * v13 - 8);
  v31 = *(*(*(a1 + 120) + 112) - 8);
  v32 = (*(*v31 + 272))(v31);
  memcpy(__dst, v30, 4 * a5 * v32);
  operator delete(0);
  v33 = v48;
  if (v48)
  {
    v34 = v49;
    v35 = v48;
    if (v49 != v48)
    {
      v36 = v49;
      do
      {
        v38 = *(v36 - 3);
        v36 -= 24;
        v37 = v38;
        if (v38)
        {
          *(v34 - 2) = v37;
          operator delete(v37);
        }

        v34 = v36;
      }

      while (v36 != v33);
      v35 = v48;
    }

    v49 = v33;
    operator delete(v35);
  }
}

void sub_19D2D1D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  operator delete(v27);
  sub_19D2B2DD8((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_19D2D1E4C(uint64_t a1, void *a2)
{
  (***(a1 + 8))(*(a1 + 8));
  v4 = *(a1 + 220);
  if (dword_1EB0131E8 < v4 || (*(a1 + 188) & 1) == 0)
  {
    sub_19D2CCAF0(a1);
    *(a1 + 188) = 0;
    dword_1EB0131E8 = *(a1 + 220);
    *(a1 + 224) = v4;
    v5 = *(a1 + 120);
    if (v5)
    {
      if (*(a1 + 216) == 1)
      {
        (*(**(v5 + 40) + 184))(*(v5 + 40));
      }

      sub_19D2CCFFC(a1);
    }

    sub_19D41C548(37);
  }

  v6 = a2[1] - *a2;
  v7 = v6 >> 2;
  v8 = (v6 >> 2) & 0x7FFFFFFF;
  if ((v6 >> 2) >= 1)
  {
    v9 = 0;
    v10 = (v6 >> 2) & 0x7FFFFFFF;
    do
    {
      sub_19D2D1254(a1, (*a2 + v9));
      (*(**(a1 + 8) + 24))(*(a1 + 8));
      v9 += 4;
      --v10;
    }

    while (v10);
  }

  v11 = *(a1 + 128);
  __p = 0;
  v46 = 0;
  v47 = 0;
  p_p = &__p;
  v49 = 0;
  if (v6 << 30)
  {
    if ((v6 >> 2) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  (*(**(*(a1 + 120) + 40) + 184))(*(*(a1 + 120) + 40));
  if ((*(**(a1 + 8) + 24))(*(a1 + 8)) == 4)
  {
    sub_19D2CCE00(a1, v7);
  }

  v12 = **v11;
  if ((*v11)[1] != v12)
  {
    v13 = 0;
    do
    {
      v14 = **(*(a1 + 120) + 104);
      v15 = (*(*v14 + 264))(v14);
      bzero(*(v12 + 8 * v13++), 4 * v15);
      v12 = **v11;
    }

    while (v13 < ((*v11)[1] - v12) >> 3);
  }

  if (v7 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      if ((*(**(a1 + 8) + 24))(*(a1 + 8)) != 1)
      {
        if ((*(**(a1 + 8) + 24))(*(a1 + 8)) != 4)
        {
          goto LABEL_21;
        }

        (*(**(a1 + 8) + 8))(*(a1 + 8), *(*a2 + v17), **v11 + v16);
      }

      sub_19D2C7CE4(__p + v18, (*a2 + v17));
LABEL_21:
      v18 += 24;
      v17 += 4;
      v16 += 8;
      --v8;
    }

    while (v8);
  }

  if ((*(**(a1 + 8) + 24))(*(a1 + 8)) != 1)
  {
    v20 = __p;
    v19 = v46;
    if (v46 != __p)
    {
      v21 = v46;
      do
      {
        v23 = *(v21 - 3);
        v21 -= 24;
        v22 = v23;
        if (v23)
        {
          *(v19 - 2) = v22;
          operator delete(v22);
        }

        v19 = v21;
      }

      while (v21 != v20);
    }

    v46 = v20;
  }

  v24 = *(a1 + 152);
  v44 = 0;
  v43 = 0;
  if (atomic_load_explicit(&qword_1EB013D40, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_1EB013D48, memory_order_acquire))
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_19D454080();
    if (atomic_load_explicit(&qword_1EB013D48, memory_order_acquire))
    {
      goto LABEL_34;
    }
  }

  sub_19D4540D0();
LABEL_34:
  v25 = *(a1 + 120);
  v26 = *v11;
  *(v25 + 12) = v7;
  v27 = qword_1EB013D80;
  v28 = qword_1EB013D88;
  if (*(v25 + 16) == 1 && qword_1EB013D88 != qword_1EB013D80)
  {
    (*(**(*(v25 + 112) - 8) + 216))(*(*(v25 + 112) - 8), &qword_1EB013D80, &__p, v7, (v24 ^ 1) & 1);
    v27 = qword_1EB013D80;
    v28 = qword_1EB013D88;
  }

  if (v28 == v27)
  {
    v30 = v7 >> 24;
    if (v7 >> 24 <= 1)
    {
      v30 = 1;
    }

    (*(**(v25 + 40) + 304))(*(v25 + 40), v26, &__p, v7 & 0xFFFFFF | (v30 << 24), 0, &v43, &qword_1EB013D98);
  }

  else
  {
    LODWORD(p_p) = 0;
    sub_19D35D584(*(v25 + 40), v26, &__p, &qword_1EB013D80, v7, &v44, &v44 + 1, 0, &p_p, 0, &v43);
  }

  v31 = *(*(*(a1 + 120) + 112) - 8);
  v32 = (*(*v31 + 32))(v31);
  v33 = *(a1 + 168);
  v34 = *(*v32 - 8);
  v35 = *(*(*(a1 + 120) + 112) - 8);
  v36 = (*(*v35 + 272))(v35);
  memcpy(v33, v34, 4 * v36);
  (*(**(*(a1 + 120) + 40) + 192))(*(*(a1 + 120) + 40));
  v37 = __p;
  if (__p)
  {
    v38 = v46;
    v39 = __p;
    if (v46 != __p)
    {
      v40 = v46;
      do
      {
        v42 = *(v40 - 3);
        v40 -= 24;
        v41 = v42;
        if (v42)
        {
          *(v38 - 2) = v41;
          operator delete(v41);
        }

        v38 = v40;
      }

      while (v40 != v37);
      v39 = __p;
    }

    v46 = v37;
    operator delete(v39);
  }
}

void sub_19D2D2504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19D360EF4(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(*(a1 + 120) + 40) + 184))(*(*(a1 + 120) + 40));
  v6 = *(a1 + 220);
  if (dword_1EB0131E8 < v6 || (*(a1 + 188) & 1) == 0)
  {
    sub_19D2CCAF0(a1);
    *(a1 + 188) = 0;
    dword_1EB0131E8 = *(a1 + 220);
    *(a1 + 224) = v6;
    v7 = *(a1 + 120);
    if (v7)
    {
      if (*(a1 + 216) == 1)
      {
        (*(**(v7 + 40) + 184))(*(v7 + 40));
      }

      sub_19D2CCFFC(a1);
    }

    sub_19D41C548(37);
  }

  v8 = *(a1 + 128);
  if (a3 > ((*(*v8 + 8) - **v8) >> 3))
  {
    sub_19D2CCE00(a1, a3);
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  v9 = (*(***(*(a1 + 120) + 104) + 264))();
  if (a3 >= 1)
  {
    v10 = 0;
    v11 = 4 * v9;
    do
    {
      bzero(*(**v8 + v10), v11);
      memcpy(*(**v8 + v10), *(a2 + v10), v11);
      v10 += 8;
    }

    while (8 * a3 != v10);
  }

  v12 = *(a1 + 152);
  v33 = 0;
  v32 = 0;
  if (atomic_load_explicit(&qword_1EB013D50, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_1EB013D58, memory_order_acquire))
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_19D454120();
    if (atomic_load_explicit(&qword_1EB013D58, memory_order_acquire))
    {
      goto LABEL_14;
    }
  }

  sub_19D454188();
LABEL_14:
  v13 = *(a1 + 120);
  v14 = *v8;
  *(v13 + 12) = a3;
  v15 = qword_1EB013DB0;
  v16 = qword_1EB013DB8;
  if (*(v13 + 16) == 1 && qword_1EB013DB8 != qword_1EB013DB0)
  {
    (*(**(*(v13 + 112) - 8) + 216))(*(*(v13 + 112) - 8), &qword_1EB013DB0, &__p, a3, (v12 ^ 1) & 1);
    v15 = qword_1EB013DB0;
    v16 = qword_1EB013DB8;
  }

  if (v16 == v15)
  {
    v18 = a3 >> 24;
    if (a3 >> 24 <= 1)
    {
      v18 = 1;
    }

    (*(**(v13 + 40) + 304))(*(v13 + 40), v14, &__p, a3 & 0xFFFFFF | (v18 << 24), 0, &v32, &qword_1EB013DC8);
  }

  else
  {
    v37 = 0;
    sub_19D35D584(*(v13 + 40), v14, &__p, &qword_1EB013DB0, a3, &v33, &v33 + 1, 0, &v37, 0, &v32);
  }

  v19 = *(*(*(a1 + 120) + 112) - 8);
  v20 = (*(*v19 + 32))(v19);
  v21 = v20[1];
  if (v21 != *v20)
  {
    if (((v21 - *v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v22 = *(a1 + 168);
  v23 = *(8 * a3 - 8);
  v24 = *(*(*(a1 + 120) + 112) - 8);
  v25 = (*(*v24 + 272))(v24);
  memcpy(v22, v23, 4 * v25);
  dword_1EB0131E8 = 2;
  (*(**(*(a1 + 120) + 40) + 192))(*(*(a1 + 120) + 40));
  operator delete(0);
  v26 = __p;
  if (__p)
  {
    v27 = v35;
    v28 = __p;
    if (v35 != __p)
    {
      v29 = v35;
      do
      {
        v31 = *(v29 - 3);
        v29 -= 24;
        v30 = v31;
        if (v31)
        {
          *(v27 - 2) = v30;
          operator delete(v30);
        }

        v27 = v29;
      }

      while (v29 != v26);
      v28 = __p;
    }

    v35 = v26;
    operator delete(v28);
  }
}

void sub_19D2D2A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19D2B2DD8(va);
  _Unwind_Resume(a1);
}

void sub_19D2D2A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  operator delete(v15);
  sub_19D2B2DD8(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2D2A98(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  if (!v2)
  {
    sub_19D41C548(36);
  }

  if (a2)
  {
    v3 = 0;
    return (*(**(v2 + 40) + 152))(*(v2 + 40), a2, &v3);
  }

  return result;
}

uint64_t sub_19D2D2AF8(uint64_t a1, void *a2)
{
  if (!*(a1 + 120))
  {
    sub_19D41C548(36);
  }

  if (a2)
  {
    v2 = a2[1];
    v3 = v2 - *a2;
    if (v2 != *a2)
    {
      v4 = 0;
      v5 = v3 >> 4;
      if (v5 <= 1)
      {
        v5 = 1;
      }

      LOBYTE(v6) = 1;
      while (1)
      {
        if (v6)
        {
          v7 = (*a2 + 16 * v4);
          v8 = *v7;
          if (v8 >= 1)
          {
            v9 = **(v7 + 1);
            if (v8 < 4)
            {
              v10 = 0;
              LOBYTE(v6) = 1;
LABEL_23:
              v21 = v8 - v10;
              v22 = &v9->f32[v10];
              do
              {
                v23 = *v22++;
                LOBYTE(v6) = (v23 == 0.0) & v6;
                --v21;
              }

              while (v21);
              goto LABEL_8;
            }

            if (v8 >= 0x20)
            {
              v10 = v8 & 0x7FFFFFE0;
              v11 = v9 + 4;
              v12 = 0uLL;
              v13 = v10;
              v14 = 0uLL;
              do
              {
                v12 = vornq_s8(v12, vuzp1q_s8(vuzp1q_s16(vceqzq_f32(v11[-4]), vceqzq_f32(v11[-3])), vuzp1q_s16(vceqzq_f32(v11[-2]), vceqzq_f32(v11[-1]))));
                v14 = vornq_s8(v14, vuzp1q_s8(vuzp1q_s16(vceqzq_f32(*v11), vceqzq_f32(v11[1])), vuzp1q_s16(vceqzq_f32(v11[2]), vceqzq_f32(v11[3]))));
                v11 += 8;
                v13 -= 32;
              }

              while (v13);
              v15 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v14, v12), 7uLL));
              v15.i8[0] = vmaxvq_u8(v15);
              v6 = v15.i32[0] ^ 1;
              if (v10 == v8)
              {
                goto LABEL_8;
              }

              if ((v8 & 0x1C) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v10 = 0;
              v6 = 1;
            }

            v16 = v10;
            v10 = v8 & 0x7FFFFFFC;
            v17 = vdup_n_s16(v6 ^ 1u);
            v18 = (v9 + 4 * v16);
            v19 = v16 - v10;
            do
            {
              v20 = *v18++;
              v17 = vorr_s8(v17, vmovn_s32(vmvnq_s8(vceqzq_f32(v20))));
              v19 += 4;
            }

            while (v19);
            LOBYTE(v6) = vmaxv_u16(vcltz_s16(vshl_n_s16(v17, 0xFuLL))) ^ 1;
            if (v10 == v8)
            {
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          LOBYTE(v6) = 1;
        }

        else
        {
          LOBYTE(v6) = 0;
        }

LABEL_8:
        if (++v4 == v5)
        {
          return v6 & 1;
        }
      }
    }

    return 1;
  }

  else
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }
}

uint64_t sub_19D2D2CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  if (!v3)
  {
    sub_19D41C548(36);
  }

  if (!a2)
  {
    sub_19D41C548(37);
  }

  v5 = 0;
  return (*(**(v3 + 40) + 136))(*(v3 + 40), a2, a3, &v5);
}

uint64_t sub_19D2D2D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    sub_19D41C548(38);
  }

  if (!a2)
  {
    sub_19D41C548(39);
  }

  v4 = 0;
  return (*(**(v2 + 40) + 144))(*(v2 + 40), a2, 0, &v4);
}

uint64_t sub_19D2D2DA0(uint64_t a1, char *a2, int a3)
{
  if (!a2)
  {
    sub_19D41C548(103);
  }

  v4 = a2;
  v6 = *(*(*(a1 + 120) + 112) - 8);
  v7 = (*(*v6 + 272))(v6);
  v8 = *(*(*(a1 + 120) + 112) - 8);
  v9 = (*(*v8 + 32))(v8);
  if (a3 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = 4 * v7;
    v13 = 8 * a3;
    do
    {
      memcpy(v4, *(*v10 + v11), v12);
      v4 += v12;
      v11 += 8;
    }

    while (v13 != v11);
  }

  return 1;
}

uint64_t sub_19D2D2E90(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unsigned int a5)
{
  if (!a2 || !a3)
  {
    sub_19D41C548(103);
  }

  LODWORD(v7) = a4;
  v9 = *(*(*(a1 + 120) + 112) - 8);
  v10 = (*(*v9 + 272))(v9);
  v11 = *(*(*(a1 + 120) + 112) - 8);
  v98 = (*(*v11 + 32))(v11);
  if (a5 >= 1)
  {
    v12 = v10;
    v13 = v7;
    v100 = 2 * v7;
    v14 = 126 - 2 * __clz(v7);
    if (!v7)
    {
      v14 = 0;
    }

    v99 = v14;
    if (v10 >= v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v10;
    }

    v97 = v10;
    if (v7 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = v12;
      v95 = a5;
      v18 = 4 * (v7 + (a5 - 1) * v13);
      v94 = a3 + v18;
      v92 = a2 + v18;
      v93 = 2 * v7;
      v90 = v12;
      v91 = 2 * v12;
      v89 = v12 & 0xFFFFFFF8;
      v19 = (a2 + 16);
      v20 = 4 * v13;
      v21 = (a3 + 16);
      v22.i64[0] = 0x400000004;
      v22.i64[1] = 0x400000004;
      v23.i64[0] = 0x800000008;
      v23.i64[1] = 0x800000008;
      v96 = v13;
      while (1)
      {
        v24 = *(*v98 + 8 * v16);
        v25 = *(a1 + 160);
        v26 = *v25;
        if (v12 <= 7)
        {
          break;
        }

        if (v26 + 1 < &v24->f32[v90] && v24 < &v26[v91])
        {
          break;
        }

        v28 = v26 + 8;
        v29 = v24 + 1;
        v30 = v89;
        v31 = xmmword_19D475040;
        do
        {
          v104.val[0] = vaddq_s32(v31, v22);
          v32 = v29[-1];
          v104.val[1] = *v29;
          v33 = v28 - 8;
          vst2q_f32(v33, *v31.i8);
          vst2q_f32(v28, v104);
          v31 = vaddq_s32(v31, v23);
          v28 += 16;
          v29 += 2;
          v30 -= 8;
        }

        while (v30);
        v34 = v89;
        if (v89 != v17)
        {
          goto LABEL_23;
        }

LABEL_25:
        v36 = &v26[v100];
        v37 = v25[1];
        if (&v26[v100] != v37)
        {
          sub_19D361270(v26, v36, v37);
          v26 = *v25;
          v36 = &(*v25)[v100];
        }

        sub_19D361714(v26, v36, v102, v99, 1);
        v38 = *v25;
        if (v7 >= 8)
        {
          v39 = 0;
          v48 = &v38[v93] > a2 && (v38 + 1) < v92;
          v49 = v38 < v94 && &v38[v93 - 1] > a3;
          v12 = v97;
          v40 = v96;
          v22.i64[0] = 0x400000004;
          v22.i64[1] = 0x400000004;
          v23.i64[0] = 0x800000008;
          v23.i64[1] = 0x800000008;
          if (!v49 && !v48)
          {
            v50 = v38 + 8;
            v51 = v21;
            v52 = v19;
            v53 = v7 & 0x7FFFFFF8;
            do
            {
              v54 = v50 - 8;
              v103 = vld2q_f32(v54);
              v105 = vld2q_f32(v50);
              v51[-1] = v103.val[0];
              *v51 = v105.val[0];
              v52[-1] = v103.val[1];
              *v52 = v105.val[1];
              v50 += 16;
              v52 += 2;
              v51 += 2;
              v53 -= 8;
            }

            while (v53);
            v39 = v7 & 0x7FFFFFF8;
            if (v39 == v7)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          v39 = 0;
          v12 = v97;
          v40 = v96;
          v22.i64[0] = 0x400000004;
          v22.i64[1] = 0x400000004;
          v23.i64[0] = 0x800000008;
          v23.i64[1] = 0x800000008;
        }

        v41 = &v38[2 * v39 + 1];
        v42 = 4 * (v39 + v15);
        v43 = (a3 + v42);
        v44 = (a2 + v42);
        v45 = v7 - v39;
        do
        {
          *v43++ = *(v41 - 1);
          v46 = *v41;
          v41 += 2;
          *v44++ = v46;
          --v45;
        }

        while (v45);
LABEL_11:
        ++v16;
        v19 = (v19 + v20);
        v21 = (v21 + v20);
        v15 += v40;
        if (v16 == v95)
        {
          return 1;
        }
      }

      v34 = 0;
LABEL_23:
      v35 = &v26[2 * v34 + 1];
      do
      {
        *(v35 - 1) = v34;
        *v35 = v24->f32[v34];
        v35 += 2;
        ++v34;
      }

      while (v17 != v34);
      goto LABEL_25;
    }

    if (v10 > 0)
    {
      v55 = a5;
      if (v10 < 8)
      {
        v56 = 0;
        do
        {
          v61 = *(*v98 + v56);
          v62 = *(a1 + 160);
          v63 = *v62;
          *v63 = 0;
          *(v63 + 4) = *v61;
          if (v12 != 1)
          {
            *(v63 + 8) = 1;
            *(v63 + 12) = v61[1];
            if (v12 != 2)
            {
              *(v63 + 16) = 2;
              *(v63 + 20) = v61[2];
              if (v12 != 3)
              {
                *(v63 + 24) = 3;
                *(v63 + 28) = v61[3];
                if (v12 != 4)
                {
                  *(v63 + 32) = 4;
                  *(v63 + 36) = v61[4];
                  if (v12 != 5)
                  {
                    *(v63 + 40) = 5;
                    *(v63 + 44) = v61[5];
                    if (v12 != 6)
                    {
                      *(v63 + 48) = 6;
                      *(v63 + 52) = v61[6];
                    }
                  }
                }
              }
            }
          }

          v64 = (v100 * 4 + v63);
          v65 = v62[1];
          if ((v100 * 4 + v63) != v65)
          {
            sub_19D361270(v63, v64, v65);
            v63 = *v62;
            v64 = (v100 * 4 + *v62);
          }

          sub_19D361714(v63, v64, v102, v99, 1);
          v56 += 8;
          v12 = v97;
        }

        while (8 * a5 != v56);
        return 1;
      }

      v66 = 0;
      v67 = v12;
      v68 = 2 * v12;
      v69 = v12;
      v70 = v12 & 0x7FFFFFF8;
      v71.i64[0] = 0x400000004;
      v71.i64[1] = 0x400000004;
      v72.i64[0] = 0x800000008;
      for (v72.i64[1] = 0x800000008; ; v72.i64[1] = 0x800000008)
      {
        v73 = *(*v98 + 8 * v66);
        v74 = *(a1 + 160);
        v75 = *v74;
        if (*v74 + 1 >= &v73->f32[v69] || v73 >= &(*v74)[v68])
        {
          v77 = v75 + 8;
          v78 = v73 + 1;
          v79 = v70;
          v80 = xmmword_19D475040;
          do
          {
            v106.val[0] = vaddq_s32(v80, v71);
            v81 = v78[-1];
            v106.val[1] = *v78;
            v82 = v77 - 8;
            vst2q_f32(v82, *v80.i8);
            vst2q_f32(v77, v106);
            v80 = vaddq_s32(v80, v72);
            v77 += 16;
            v78 += 2;
            v79 -= 8;
          }

          while (v79);
          v83 = v70;
          v84 = v100 * 4;
          if (v70 == v67)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v83 = 0;
          v84 = v100 * 4;
        }

        v85 = &v75[2 * v83 + 1];
        do
        {
          *(v85 - 1) = v83;
          *v85 = v73->f32[v83];
          v85 += 2;
          ++v83;
        }

        while (v67 != v83);
LABEL_75:
        v86 = (v75 + v84);
        v87 = v74[1];
        if ((v75 + v84) != v87)
        {
          sub_19D361270(v75, v86, v87);
          v75 = *v74;
          v86 = (*v74 + v84);
        }

        sub_19D361714(v75, v86, v102, v99, 1);
        ++v66;
        v71.i64[0] = 0x400000004;
        v71.i64[1] = 0x400000004;
        v72.i64[0] = 0x800000008;
        if (v66 == v55)
        {
          return 1;
        }
      }
    }

    do
    {
      v57 = *(a1 + 160);
      v58 = *v57;
      v59 = v57[1];
      v60 = &(*v57)[v100];
      if (v60 != v59)
      {
        sub_19D361270(v58, v60, v59);
        v58 = *v57;
        v60 = &(*v57)[v100];
      }

      sub_19D361714(v58, v60, v102, v99, 1);
      --a5;
    }

    while (a5);
  }

  return 1;
}

uint64_t sub_19D2D348C(uint64_t a1, float32x4_t *a2, unint64_t a3, signed int a4, int a5)
{
  if (!a2 || !a3)
  {
    sub_19D41C548(103);
  }

  v10 = *(*(*(a1 + 120) + 112) - 8);
  v11 = (*(*v10 + 272))(v10);
  v12 = *(*(*(a1 + 120) + 112) - 8);
  v13 = (*(*v12 + 32))(v12);
  if (a5 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a5;
  }

  v15 = *(a1 + 160);
  v16 = *v15;
  if (v11 >= 1)
  {
    v17 = *(*v13 + 8 * v14 - 8);
    if (v11 <= 7 || (v16 + 1 < &v17->f32[v11] ? (v18 = v17 >= &v16[2 * v11]) : (v18 = 1), !v18))
    {
      v19 = 0;
LABEL_18:
      v28 = &v16[2 * v19 + 1];
      do
      {
        *(v28 - 1) = v19;
        *v28 = v17->f32[v19];
        v28 += 2;
        ++v19;
      }

      while (v11 != v19);
      goto LABEL_20;
    }

    v19 = v11 & 0x7FFFFFF8;
    v20 = v16 + 8;
    v21 = xmmword_19D475040;
    v22 = v17 + 1;
    v23.i64[0] = 0x400000004;
    v23.i64[1] = 0x400000004;
    v24.i64[0] = 0x800000008;
    v24.i64[1] = 0x800000008;
    v25 = v19;
    do
    {
      v55.val[0] = vaddq_s32(v21, v23);
      v26 = v22[-1];
      v55.val[1] = *v22;
      v27 = v20 - 8;
      vst2q_f32(v27, *v21.i8);
      vst2q_f32(v20, v55);
      v21 = vaddq_s32(v21, v24);
      v20 += 16;
      v22 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v19 != v11)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  v29 = 2 * a4;
  v30 = &v16[v29];
  v31 = v15[1];
  if (&v16[v29] != v31)
  {
    sub_19D361270(v16, v30, v31);
    v16 = *v15;
    v30 = &(*v15)[v29];
  }

  v32 = 126 - 2 * __clz(a4);
  if (a4)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  sub_19D361714(v16, v30, &v52, v33, 1);
  if (v11 >= a4)
  {
    v34 = a4;
  }

  else
  {
    v34 = v11;
  }

  if (v34 >= 1)
  {
    v35 = *v15;
    if (v34 <= 0xB)
    {
      v36 = 0;
LABEL_31:
      v37 = &a2->i32[v36];
      v38 = (a3 + 4 * v36);
      v39 = (v35 + 8 * v36 + 4);
      v40 = v34 - v36;
      do
      {
        *v38++ = *(v39 - 1);
        v41 = *v39;
        v39 += 2;
        *v37++ = v41;
        --v40;
      }

      while (v40);
      return 1;
    }

    v36 = 0;
    v43 = v35 + 8 * v34;
    v45 = v43 > a2 && v35 + 4 < a2->u64 + 4 * v34;
    if (v35 < a3 + 4 * v34 && v43 - 4 > a3)
    {
      goto LABEL_31;
    }

    if (v45)
    {
      goto LABEL_31;
    }

    v36 = v34 & 0x7FFFFFF8;
    v47 = (v35 + 32);
    v48 = (a3 + 16);
    v49 = a2 + 1;
    v50 = v36;
    do
    {
      v51 = v47 - 8;
      v53 = vld2q_f32(v51);
      v54 = vld2q_f32(v47);
      v48[-1] = v53.val[0];
      *v48 = v54.val[0];
      v49[-1] = v53.val[1];
      *v49 = v54.val[1];
      v47 += 16;
      v48 += 2;
      v49 += 2;
      v50 -= 8;
    }

    while (v50);
    if (v36 != v34)
    {
      goto LABEL_31;
    }
  }

  return 1;
}

uint64_t sub_19D2D38E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_19D2D3C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, std::locale a12)
{
  std::locale::~locale(&a12);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D2D3EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_19D2D3EEC(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, int a5)
{
  if (a5 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  v7 = v6;
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D361714(0, 0, &v28, 0, 1);
  v8 = (a4[1] - *a4) >> 3;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      a4[1] = *a4 + 8 * v7;
    }
  }

  else
  {
    sub_19D3628E0(a4, v7 - v8);
  }

  if (v7)
  {
    v9 = *a4;
    if (v7 > 0xB)
    {
      v10 = 0;
      v15 = v9 + 8 * v7;
      v16 = 8 * v7;
      v17 = v16 - 4;
      v19 = v9 + 4 < v16 && v15 > 4;
      if ((v15 == 4 || v9 >= v17) && !v19)
      {
        v10 = v7 & 0x7FFFFFF8;
        v21 = 32;
        v22 = (v9 + 32);
        v23 = v10;
        do
        {
          v25 = *(v21 - 32);
          v24 = *(v21 - 16);
          v27 = *v21;
          v26 = *(v21 + 16);
          v21 += 64;
          *(v22 - 2) = v25;
          *(v22 - 1) = v24;
          *v22 = v27;
          v22[1] = v26;
          v22 += 4;
          v23 -= 8;
        }

        while (v23);
        if (v10 == v7)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = ((8 * v10) | 4);
    v12 = (v11 + v9);
    v13 = v7 - v10;
    do
    {
      *(v12 - 1) = *(v11 - 1);
      v14 = *v11;
      v11 += 2;
      *v12 = v14;
      v12 += 2;
      --v13;
    }

    while (v13);
LABEL_33:
    operator delete(0);
  }
}

void sub_19D2D4168(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2D4188(uint64_t a1)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  (***(a1 + 8))(*(a1 + 8));
  (*(**(*(*(a1 + 120) + 112) - 8) + 272))();
  operator new();
}

void sub_19D2D4C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33)
{
  sub_19D2B2DD8(&a30);
  sub_19D2B2DD8(&a33);
  operator delete(v34);
  operator delete(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2D4CD4(uint64_t a1, int a2, void **a3)
{
  bzero(*a3, 4 * *(a1 + 8));
  *(*a3 + a2) = 1065353216;
  return 0;
}

uint64_t sub_19D2D4D1C(uint64_t result)
{
  v1 = *(result + 120);
  if (v1)
  {
    return (*(**(v1 + 40) + 160))();
  }

  return result;
}

uint64_t sub_19D2D4D50(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      operator new();
    }

    if (*(a1 + 64) != 2)
    {
      goto LABEL_10;
    }

    v3 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v3 = *v3;
    }

    v4 = open(v3, 2);
    v5 = v4;
    v2 = *a1;
    if ((v4 & 0x80000000) == 0)
    {
      write(v4, v2, *(a1 + 8));
      close(v5);
      v2 = *a1;
    }

    if (v2)
    {
LABEL_10:
      operator delete[](v2);
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 16));
  return a1;
}

uint64_t sub_19D2D4EE8(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
  }

  return result;
}

void sub_19D2D4EFC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *(a1 + 104) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = xmmword_19D475290;
  *(a1 + 80) = 0x100000001;
  *(a1 + 88) = 32;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 48) = a2[4];
  *(a1 + 32) = a2[17];
  v3 = a2[12];
  if (v3 != 8)
  {
    if (v3 == 16)
    {
      sub_19D2D4FB0(a1, a2);
    }

    sub_19D2ECD90(a1, a2);
  }

  sub_19D2E0EA0(a1, a2);
}

void sub_19D2D4F90(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2D4FB0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 7) == 0)
  {
    v2 = *(a2 + 4);
    *(a1 + 8) = *(a2 + 12);
    *a1 = v2;
    *(a1 + 20) = vrev64_s32(*(a2 + 36));
    *(a1 + 96) = 0;
    operator new();
  }

  sub_19D41C548(345);
}

void sub_19D2DECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operator delete(v72);
  if (__p)
  {
    STACK[0x200] = __p;
    operator delete(__p);
  }

  v77 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v77;
    operator delete(v77);
  }

  v78 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v78;
    operator delete(v78);
  }

  v79 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v79;
    operator delete(v79);
  }

  v80 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v80;
    operator delete(v80);
  }

  v81 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v81;
    operator delete(v81);
  }

  v82 = *(v75 - 136);
  if (v82)
  {
    *(v75 - 128) = v82;
    operator delete(v82);
  }

  if (v73)
  {
    operator delete(v73);
  }

  operator delete(v74);
  operator delete(a13);
  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_19D2E0E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  operator delete(__p);
  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_19D2E0EA0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 7) == 0)
  {
    v2 = *(a2 + 4);
    *(a1 + 8) = *(a2 + 12);
    *a1 = v2;
    *(a1 + 20) = vrev64_s32(*(a2 + 36));
    *(a1 + 96) = 0;
    operator new();
  }

  sub_19D41C548(345);
}

void sub_19D2EABAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operator delete(v72);
  if (__p)
  {
    STACK[0x200] = __p;
    operator delete(__p);
  }

  v77 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v77;
    operator delete(v77);
  }

  v78 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v78;
    operator delete(v78);
  }

  v79 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v79;
    operator delete(v79);
  }

  v80 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v80;
    operator delete(v80);
  }

  v81 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v81;
    operator delete(v81);
  }

  v82 = *(v75 - 136);
  if (v82)
  {
    *(v75 - 128) = v82;
    operator delete(v82);
  }

  if (v73)
  {
    operator delete(v73);
  }

  operator delete(v74);
  operator delete(a13);
  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_19D2ECD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  operator delete(__p);
  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_19D2ECD90(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 7) == 0)
  {
    v2 = *(a2 + 4);
    *(a1 + 8) = *(a2 + 12);
    *a1 = v2;
    *(a1 + 20) = vrev64_s32(*(a2 + 36));
    *(a1 + 96) = 0;
    operator new();
  }

  sub_19D41C548(345);
}

void sub_19D2F6A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operator delete(v72);
  if (__p)
  {
    STACK[0x200] = __p;
    operator delete(__p);
  }

  v77 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v77;
    operator delete(v77);
  }

  v78 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v78;
    operator delete(v78);
  }

  v79 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v79;
    operator delete(v79);
  }

  v80 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v80;
    operator delete(v80);
  }

  v81 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v81;
    operator delete(v81);
  }

  v82 = *(v75 - 136);
  if (v82)
  {
    *(v75 - 128) = v82;
    operator delete(v82);
  }

  if (v73)
  {
    operator delete(v73);
  }

  operator delete(v74);
  operator delete(a13);
  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_19D2F8C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  operator delete(__p);
  operator delete(a14);
  _Unwind_Resume(a1);
}

void sub_19D2F8C80(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_19D2AE2B4();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

void sub_19D2F8D98(uint64_t a1, int a2, int a3, _DWORD **a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10B6748;
  *(a1 + 44) = a2;
  *(a1 + 52) = a3;
  *(a1 + 56) = a6;
  v15 = a1 + 752;
  v16 = (a1 + 1080);
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  v17 = a1 + 1200;
  *(a1 + 1192) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  v18 = (a1 + 1320);
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  v19 = (a1 + 1640);
  *(a1 + 1432) = 0;
  bzero((a1 + 64), 0x2A0uLL);
  *(v15 + 236) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  *(v16 + 28) = 0u;
  *(v17 + 28) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  *(v18 + 28) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *(a1 + 1688) = 0;
  sub_19D42933C(a1 + 1704);
  sub_19D42933C(a1 + 1776);
  sub_19D42933C(a1 + 1848);
  sub_19D42933C(a1 + 1920);
  sub_19D42933C(a1 + 1992);
  sub_19D42933C(a1 + 2064);
  sub_19D42933C(a1 + 2136);
  sub_19D42933C(a1 + 2208);
  sub_19D42933C(a1 + 2280);
  sub_19D42933C(a1 + 2352);
  sub_19D42933C(a1 + 2424);
  *(a1 + 2496) = a5;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2656) = 0u;
  (*(*a1 + 192))(a1);
  v20 = *(a7 + 45);
  *(a1 + 2692) = v20 ^ 1;
  *(a1 + 2672) = 0;
  *(a1 + 41) = 0;
  *(a1 + 2680) = a9;
  if (a9)
  {
    v21 = *(a9 + 376);
    *(a1 + 2688) = *(a9 + 28);
    nullsub_171("LSTM constructor");
    v22 = v21 ^ 1;
    a8 = *(*(a1 + 2680) + 376);
    *(a1 + 40) = a8;
    v20 = *(a7 + 45);
  }

  else
  {
    v22 = 1;
    *(a1 + 2688) = 1;
    *(a1 + 40) = a8;
  }

  *(a1 + 1696) = v20;
  *(a1 + 1697) = *(a7 + 46);
  v23 = *a4;
  *(a1 + 736) = **a4;
  *(a1 + 740) = v23[1];
  *(a1 + 744) = v23[2];
  if ((a8 & 1) == 0)
  {
    v22 = 0;
  }

  *(a1 + 48) = v22 + *(a1 + 44);
  if (a10)
  {
    (*(*a1 + 184))(a1);
    *(a1 + 2672) = 1;
    v20 = *(a1 + 1696);
  }

  *(a1 + 32) = *(a7 + 16);
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0;
  if ((v20 & 1) == 0)
  {
    v24 = *(a7 + 32);
    switch(v24)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        operator new();
    }
  }

  operator new();
}

void sub_19D2F9B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v53);
  v87 = (v52 + 2624);
  v88 = *(v52 + 2648);
  if (v88)
  {
    *(v52 + 2656) = v88;
    operator delete(v88);
    v55 = *v87;
    if (!*v87)
    {
LABEL_6:
      sub_19D429384(v52 + 2424);
      sub_19D429384(v52 + 2352);
      sub_19D429384(v52 + 2280);
      sub_19D429384(v52 + 2208);
      sub_19D429384(v52 + 2136);
      sub_19D429384(v52 + 2064);
      sub_19D429384(v52 + 1992);
      sub_19D429384(v52 + 1920);
      sub_19D429384(v52 + 1848);
      sub_19D429384(v52 + 1776);
      sub_19D429384(v52 + 1704);
      sub_19D308FC0((v52 + 1344));
      sub_19D308FC0((v52 + 1224));
      sub_19D308FC0((v52 + 1104));
      sub_19D308FC0((v52 + 984));
      v56 = *(v52 + 960);
      if (v56)
      {
        *(v52 + 968) = v56;
        operator delete(v56);
        v57 = *(v52 + 936);
        if (!v57)
        {
LABEL_8:
          v58 = *(v52 + 912);
          if (!v58)
          {
            goto LABEL_9;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v57 = *(v52 + 936);
        if (!v57)
        {
          goto LABEL_8;
        }
      }

      *(v52 + 944) = v57;
      operator delete(v57);
      v58 = *(v52 + 912);
      if (!v58)
      {
LABEL_9:
        v59 = *(v52 + 888);
        if (!v59)
        {
          goto LABEL_10;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(v52 + 920) = v58;
      operator delete(v58);
      v59 = *(v52 + 888);
      if (!v59)
      {
LABEL_10:
        v60 = *(v52 + 864);
        if (!v60)
        {
          goto LABEL_11;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(v52 + 896) = v59;
      operator delete(v59);
      v60 = *(v52 + 864);
      if (!v60)
      {
LABEL_11:
        v61 = *(v52 + 840);
        if (!v61)
        {
          goto LABEL_12;
        }

        goto LABEL_43;
      }

LABEL_42:
      *(v52 + 872) = v60;
      operator delete(v60);
      v61 = *(v52 + 840);
      if (!v61)
      {
LABEL_12:
        v62 = *(v52 + 816);
        if (!v62)
        {
          goto LABEL_13;
        }

        goto LABEL_44;
      }

LABEL_43:
      *(v52 + 848) = v61;
      operator delete(v61);
      v62 = *(v52 + 816);
      if (!v62)
      {
LABEL_13:
        v63 = *(v52 + 792);
        if (!v63)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }

LABEL_44:
      *(v52 + 824) = v62;
      operator delete(v62);
      v63 = *(v52 + 792);
      if (!v63)
      {
LABEL_14:
        v64 = *(v52 + 712);
        if (!v64)
        {
          goto LABEL_15;
        }

        goto LABEL_46;
      }

LABEL_45:
      *(v52 + 800) = v63;
      operator delete(v63);
      v64 = *(v52 + 712);
      if (!v64)
      {
LABEL_15:
        v65 = *(v52 + 688);
        if (!v65)
        {
          goto LABEL_16;
        }

        goto LABEL_47;
      }

LABEL_46:
      *(v52 + 720) = v64;
      operator delete(v64);
      v65 = *(v52 + 688);
      if (!v65)
      {
LABEL_16:
        v66 = *(v52 + 664);
        if (!v66)
        {
          goto LABEL_17;
        }

        goto LABEL_48;
      }

LABEL_47:
      *(v52 + 696) = v65;
      operator delete(v65);
      v66 = *(v52 + 664);
      if (!v66)
      {
LABEL_17:
        v67 = *(v52 + 640);
        if (!v67)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }

LABEL_48:
      *(v52 + 672) = v66;
      operator delete(v66);
      v67 = *(v52 + 640);
      if (!v67)
      {
LABEL_18:
        v68 = *(v52 + 616);
        if (!v68)
        {
          goto LABEL_19;
        }

        goto LABEL_50;
      }

LABEL_49:
      *(v52 + 648) = v67;
      operator delete(v67);
      v68 = *(v52 + 616);
      if (!v68)
      {
LABEL_19:
        v69 = *(v52 + 592);
        if (!v69)
        {
          goto LABEL_20;
        }

        goto LABEL_51;
      }

LABEL_50:
      *(v52 + 624) = v68;
      operator delete(v68);
      v69 = *(v52 + 592);
      if (!v69)
      {
LABEL_20:
        v70 = *(v52 + 568);
        if (!v70)
        {
          goto LABEL_21;
        }

        goto LABEL_52;
      }

LABEL_51:
      *(v52 + 600) = v69;
      operator delete(v69);
      v70 = *(v52 + 568);
      if (!v70)
      {
LABEL_21:
        v71 = *(v52 + 544);
        if (!v71)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

LABEL_52:
      *(v52 + 576) = v70;
      operator delete(v70);
      v71 = *(v52 + 544);
      if (!v71)
      {
LABEL_22:
        v72 = *(v52 + 520);
        if (!v72)
        {
          goto LABEL_23;
        }

        goto LABEL_54;
      }

LABEL_53:
      *(v52 + 552) = v71;
      operator delete(v71);
      v72 = *(v52 + 520);
      if (!v72)
      {
LABEL_23:
        v73 = *(v52 + 496);
        if (!v73)
        {
          goto LABEL_24;
        }

        goto LABEL_55;
      }

LABEL_54:
      *(v52 + 528) = v72;
      operator delete(v72);
      v73 = *(v52 + 496);
      if (!v73)
      {
LABEL_24:
        v74 = *(v52 + 472);
        if (!v74)
        {
          goto LABEL_25;
        }

        goto LABEL_56;
      }

LABEL_55:
      *(v52 + 504) = v73;
      operator delete(v73);
      v74 = *(v52 + 472);
      if (!v74)
      {
LABEL_25:
        v75 = *(v52 + 448);
        if (!v75)
        {
          goto LABEL_26;
        }

        goto LABEL_57;
      }

LABEL_56:
      *(v52 + 480) = v74;
      operator delete(v74);
      v75 = *(v52 + 448);
      if (!v75)
      {
LABEL_26:
        v76 = *(v52 + 424);
        if (!v76)
        {
          goto LABEL_27;
        }

        goto LABEL_58;
      }

LABEL_57:
      *(v52 + 456) = v75;
      operator delete(v75);
      v76 = *(v52 + 424);
      if (!v76)
      {
LABEL_27:
        v77 = *(v52 + 400);
        if (!v77)
        {
          goto LABEL_28;
        }

        goto LABEL_59;
      }

LABEL_58:
      *(v52 + 432) = v76;
      operator delete(v76);
      v77 = *(v52 + 400);
      if (!v77)
      {
LABEL_28:
        v78 = *(v52 + 376);
        if (!v78)
        {
          goto LABEL_29;
        }

        goto LABEL_60;
      }

LABEL_59:
      *(v52 + 408) = v77;
      operator delete(v77);
      v78 = *(v52 + 376);
      if (!v78)
      {
LABEL_29:
        v79 = *(v52 + 352);
        if (!v79)
        {
          goto LABEL_30;
        }

        goto LABEL_61;
      }

LABEL_60:
      *(v52 + 384) = v78;
      operator delete(v78);
      v79 = *(v52 + 352);
      if (!v79)
      {
LABEL_30:
        sub_19D2B2DD8((v52 + 208));
        v80 = *(v52 + 184);
        if (!v80)
        {
          goto LABEL_31;
        }

        goto LABEL_62;
      }

LABEL_61:
      *(v52 + 360) = v79;
      operator delete(v79);
      sub_19D2B2DD8((v52 + 208));
      v80 = *(v52 + 184);
      if (!v80)
      {
LABEL_31:
        v81 = *(v52 + 160);
        if (!v81)
        {
          goto LABEL_32;
        }

        goto LABEL_63;
      }

LABEL_62:
      *(v52 + 192) = v80;
      operator delete(v80);
      v81 = *(v52 + 160);
      if (!v81)
      {
LABEL_32:
        v82 = *(v52 + 136);
        if (!v82)
        {
          goto LABEL_33;
        }

        goto LABEL_64;
      }

LABEL_63:
      *(v52 + 168) = v81;
      operator delete(v81);
      v82 = *(v52 + 136);
      if (!v82)
      {
LABEL_33:
        v83 = *(v52 + 112);
        if (!v83)
        {
          goto LABEL_34;
        }

        goto LABEL_65;
      }

LABEL_64:
      *(v52 + 144) = v82;
      operator delete(v82);
      v83 = *(v52 + 112);
      if (!v83)
      {
LABEL_34:
        v84 = *(v52 + 88);
        if (!v84)
        {
          goto LABEL_35;
        }

        goto LABEL_66;
      }

LABEL_65:
      *(v52 + 120) = v83;
      operator delete(v83);
      v84 = *(v52 + 88);
      if (!v84)
      {
LABEL_35:
        v85 = *(v52 + 64);
        if (!v85)
        {
          goto LABEL_36;
        }

        goto LABEL_67;
      }

LABEL_66:
      *(v52 + 96) = v84;
      operator delete(v84);
      v85 = *(v52 + 64);
      if (!v85)
      {
LABEL_36:
        *v52 = a10;
        v86 = *(v52 + 8);
        if (!v86)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_67:
      *(v52 + 72) = v85;
      operator delete(v85);
      *v52 = a10;
      v86 = *(v52 + 8);
      if (!v86)
      {
LABEL_37:
        _Unwind_Resume(a1);
      }

LABEL_68:
      *(v52 + 16) = v86;
      operator delete(v86);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v55 = *v87;
    if (!*v87)
    {
      goto LABEL_6;
    }
  }

  *(v52 + 2632) = v55;
  operator delete(v55);
  goto LABEL_6;
}

void sub_19D2FC24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D308FC0(va);
  _Unwind_Resume(a1);
}

void sub_19D2FC260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_19D2B2DD8((v23 + 48));
    v25 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D2FC324(void *a1)
{
  v2 = a1 + 99;
  v3 = a1[20];
  v4 = a1[21];
  v5 = (v4 - v3) >> 3;
  v6 = a1[99];
  v7 = (a1[100] - v6) >> 3;
  if (v5 <= v7)
  {
    if (v5 < v7)
    {
      a1[100] = v6 + v4 - v3;
    }
  }

  else
  {
    sub_19D308DD0(a1 + 99, v5 - v7);
    v3 = a1[20];
    v4 = a1[21];
    v5 = (v4 - v3) >> 3;
  }

  if (v4 != v3)
  {
    v8 = *v2;
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    if (v5 <= 3)
    {
      v10 = 0;
LABEL_14:
      v15 = (v8 + 8 * v10);
      v16 = (v3 + 8 * v10);
      v17 = v9 - v10;
      do
      {
        v18 = *v16++;
        *v15++ = v18;
        --v17;
      }

      while (v17);
      return v2;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (v3 + 16);
    v12 = (v8 + 16);
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v5 != v10)
    {
      goto LABEL_14;
    }
  }

  return v2;
}

_BYTE *sub_19D2FC42C(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  if (!a2)
  {
LABEL_21:
    sub_19D41C548(3);
  }

  v7 = *(a2 + 72);
  v8 = *a2;
  v9 = (*a2 + v7);
  v10 = *a2 + *(a2 + 8) - 4;
  if (v9 <= v10)
  {
    v11 = *v9;
    v7 += 4;
    *(a2 + 72) = v7;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
LABEL_4:
      v13 = *v12;
      v7 += 4;
      *(a2 + 72) = v7;
      if (a4 < 1)
      {
        goto LABEL_16;
      }

LABEL_8:
      v14 = v7;
      v15 = (v8 + v7);
      if (v15 <= v10)
      {
        v19 = *v15;
        v7 += 4;
        *(a2 + 72) = v7;
        v14 = v7;
        *(a1 + 736) = v19;
        v20 = (v8 + v7);
        if (v20 <= v10)
        {
          v16 = *v20;
          v7 += 4;
          *(a2 + 72) = v7;
          *(a1 + 740) = v16;
          v17 = (v8 + v7);
          if (v17 > v10)
          {
LABEL_14:
            v18 = 0;
            goto LABEL_15;
          }

LABEL_11:
          v18 = *v17;
          *(a2 + 72) = v7 + 4;
LABEL_15:
          *(a1 + 744) = v18;
          goto LABEL_16;
        }
      }

      else
      {
        *(a1 + 736) = 0;
      }

      *(a1 + 740) = 0;
      v17 = (v8 + v14);
      if (v17 > v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    v12 = (v8 + v7);
    if (v12 <= v10)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a4 >= 1)
  {
    goto LABEL_8;
  }

LABEL_16:
  if (*(a1 + 52) != v11 || *(a1 + 48) != v13)
  {
    goto LABEL_21;
  }

  v21 = *(a1 + 2568);
  v22 = *a3;
  v23 = *(a1 + 1697);
  v24 = sub_19D41C520();
  sub_19D3090B4(v21, a2, v22, v23, v24, *(a1 + 52));
  v25 = *(a1 + 2576);
  v26 = *a3;
  v27 = *(a1 + 1697);
  v28 = sub_19D41C520();
  sub_19D3090B4(v25, a2, v26, v27, v28, *(a1 + 52));
  v29 = *(a1 + 2584);
  v30 = *a3;
  v31 = *(a1 + 1697);
  v32 = sub_19D41C520();
  sub_19D3090B4(v29, a2, v30, v31, v32, *(a1 + 52));
  v33 = *(a1 + 2504);
  v34 = *a3;
  v35 = *(a1 + 1697);
  v36 = sub_19D41C520();
  sub_19D3092B8(v33, a2, v34, v35, v36, *(a1 + 52), *(a1 + 48));
  v37 = *(a1 + 2512);
  v38 = *a3;
  v39 = *(a1 + 1697);
  v40 = sub_19D41C520();
  sub_19D3092B8(v37, a2, v38, v39, v40, *(a1 + 52), *(a1 + 48));
  v41 = *(a1 + 2520);
  v42 = *a3;
  v43 = *(a1 + 1697);
  v44 = sub_19D41C520();
  sub_19D3092B8(v41, a2, v42, v43, v44, *(a1 + 52), *(a1 + 48));
  v45 = *(a1 + 2528);
  v46 = *a3;
  v47 = *(a1 + 1697);
  v48 = sub_19D41C520();
  sub_19D3092B8(v45, a2, v46, v47, v48, *(a1 + 52), *(a1 + 48));
  v49 = *(a1 + 2536);
  v50 = *a3;
  v51 = *(a1 + 1697);
  v52 = sub_19D41C520();
  sub_19D3092B8(v49, a2, v50, v51, v52, *(a1 + 52), *(a1 + 52));
  v53 = *(a1 + 2544);
  v54 = *a3;
  v55 = *(a1 + 1697);
  v56 = sub_19D41C520();
  sub_19D3092B8(v53, a2, v54, v55, v56, *(a1 + 52), *(a1 + 52));
  v57 = *(a1 + 2552);
  v58 = *a3;
  v59 = *(a1 + 1697);
  v60 = sub_19D41C520();
  sub_19D3092B8(v57, a2, v58, v59, v60, *(a1 + 52), *(a1 + 52));
  v61 = *(a1 + 2560);
  v62 = *a3;
  v63 = *(a1 + 1697);
  v64 = sub_19D41C520();
  v65 = *(a1 + 52);

  return sub_19D3092B8(v61, a2, v62, v63, v64, v65, v65);
}

uint64_t sub_19D2FC7B4(uint64_t a1, FILE *__stream, int *a3, int a4, unsigned int a5)
{
  if (!__stream)
  {
    sub_19D41C548(3);
  }

  v10 = *(a1 + 48);
  sub_19D41C9E8(__stream, a3, *(a1 + 52));
  sub_19D41C9E8(__stream, a3, v10);
  if (a4 >= 1)
  {
    __ptr = *(a1 + 736);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 740);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    __ptr = *(a1 + 744);
    fwrite(&__ptr, 4uLL, 1uLL, __stream);
    *a3 += 12;
  }

  v11 = *(a1 + 2568);
  v12 = sub_19D41C520();
  sub_19D3094C4(v11, __stream, a3, 3, v12, a5);
  v13 = *(a1 + 2576);
  v14 = sub_19D41C520();
  sub_19D3094C4(v13, __stream, a3, 3, v14, a5);
  v15 = *(a1 + 2584);
  v16 = sub_19D41C520();
  sub_19D3094C4(v15, __stream, a3, 3, v16, a5);
  v17 = *(a1 + 2504);
  v18 = sub_19D41C520();
  sub_19D3095DC(v17, __stream, a3, 3, v18, a5);
  v19 = *(a1 + 2512);
  v20 = sub_19D41C520();
  sub_19D3095DC(v19, __stream, a3, 3, v20, a5);
  v21 = *(a1 + 2520);
  v22 = sub_19D41C520();
  sub_19D3095DC(v21, __stream, a3, 3, v22, a5);
  v23 = *(a1 + 2528);
  v24 = sub_19D41C520();
  sub_19D3095DC(v23, __stream, a3, 3, v24, a5);
  v25 = *(a1 + 2536);
  v26 = sub_19D41C520();
  sub_19D3095DC(v25, __stream, a3, 3, v26, a5);
  v27 = *(a1 + 2544);
  v28 = sub_19D41C520();
  sub_19D3095DC(v27, __stream, a3, 3, v28, a5);
  v29 = *(a1 + 2552);
  v30 = sub_19D41C520();
  sub_19D3095DC(v29, __stream, a3, 3, v30, a5);
  v31 = *(a1 + 2560);
  v32 = sub_19D41C520();
  return sub_19D3095DC(v31, __stream, a3, 3, v32, a5);
}

double sub_19D2FCA84(uint64_t a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    v5 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B68D0, 0);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = *(a1 + 52);
    if (v8 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B68D0, 0);
  v8 = *(a1 + 52);
  if (v8 < 1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v9 = *v7[321];
  v10 = *v5[321];
  v11 = **(a1 + 2568);
  if (v8 < 4)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v12 = 0;
  if ((v11 - v9) < 0x20 || (v11 - v10) < 0x20)
  {
    goto LABEL_9;
  }

  if (v8 >= 0x10)
  {
    v12 = v8 & 0x7FFFFFF0;
    v143 = v9 + 1;
    v144 = v10 + 1;
    v145 = v11 + 1;
    v146 = v12;
    do
    {
      v6 = vsubq_s16(v143[-1], v144[-1]);
      v147 = vsubq_s16(*v143, *v144);
      v145[-1] = v6;
      *v145 = v147;
      v143 += 2;
      v144 += 2;
      v145 += 2;
      v146 -= 16;
    }

    while (v146);
    if (v12 == v8)
    {
      goto LABEL_11;
    }

    if ((v8 & 0xC) == 0)
    {
LABEL_9:
      v13 = v8 - v12;
      v14 = v12;
      v15 = &v11->i16[v14];
      v16 = &v10->i16[v14];
      v17 = &v9->i16[v14];
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = *v16++;
        *v15++ = v18 - v20;
        --v13;
      }

      while (v13);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  v148 = v12;
  v12 = v8 & 0x7FFFFFFC;
  v149 = (v9 + 2 * v148);
  v150 = (v10 + 2 * v148);
  v151 = (v11->i64 + 2 * v148);
  v152 = v148 - v12;
  do
  {
    v153 = *v149++;
    v154 = v153;
    v155 = *v150++;
    *v6.i8 = vsub_s16(v154, v155);
    *v151++ = v6.i64[0];
    v152 += 4;
  }

  while (v152);
  if (v12 != v8)
  {
    goto LABEL_9;
  }

LABEL_11:
  v21 = *v7[322];
  v22 = *v5[322];
  v23 = **(a1 + 2576);
  if (v8 < 4)
  {
    v24 = 0;
    goto LABEL_13;
  }

  v24 = 0;
  if ((v23 - v21) < 0x20 || (v23 - v22) < 0x20)
  {
    goto LABEL_13;
  }

  if (v8 >= 0x10)
  {
    v24 = v8 & 0x7FFFFFF0;
    v156 = v21 + 1;
    v157 = v22 + 1;
    v158 = v23 + 1;
    v159 = v24;
    do
    {
      v6 = vsubq_s16(v156[-1], v157[-1]);
      v160 = vsubq_s16(*v156, *v157);
      v158[-1] = v6;
      *v158 = v160;
      v156 += 2;
      v157 += 2;
      v158 += 2;
      v159 -= 16;
    }

    while (v159);
    if (v24 == v8)
    {
      goto LABEL_15;
    }

    if ((v8 & 0xC) == 0)
    {
LABEL_13:
      v25 = v8 - v24;
      v26 = v24;
      v27 = &v23->i16[v26];
      v28 = &v22->i16[v26];
      v29 = &v21->i16[v26];
      do
      {
        v31 = *v29++;
        v30 = v31;
        v32 = *v28++;
        *v27++ = v30 - v32;
        --v25;
      }

      while (v25);
      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
  }

  v161 = v24;
  v24 = v8 & 0x7FFFFFFC;
  v162 = (v21 + 2 * v161);
  v163 = (v22 + 2 * v161);
  v164 = (v23->i64 + 2 * v161);
  v165 = v161 - v24;
  do
  {
    v166 = *v162++;
    v167 = v166;
    v168 = *v163++;
    *v6.i8 = vsub_s16(v167, v168);
    *v164++ = v6.i64[0];
    v165 += 4;
  }

  while (v165);
  if (v24 != v8)
  {
    goto LABEL_13;
  }

LABEL_15:
  v33 = *v7[323];
  v34 = *v5[323];
  v35 = **(a1 + 2584);
  if (v8 < 4)
  {
    v36 = 0;
    goto LABEL_17;
  }

  v36 = 0;
  if ((v35 - v33) < 0x20 || (v35 - v34) < 0x20)
  {
    goto LABEL_17;
  }

  if (v8 >= 0x10)
  {
    v36 = v8 & 0x7FFFFFF0;
    v169 = v33 + 1;
    v170 = v34 + 1;
    v171 = v35 + 1;
    v172 = v36;
    do
    {
      v6 = vsubq_s16(v169[-1], v170[-1]);
      v173 = vsubq_s16(*v169, *v170);
      v171[-1] = v6;
      *v171 = v173;
      v169 += 2;
      v170 += 2;
      v171 += 2;
      v172 -= 16;
    }

    while (v172);
    if (v36 == v8)
    {
      goto LABEL_19;
    }

    if ((v8 & 0xC) == 0)
    {
LABEL_17:
      v37 = v8 - v36;
      v38 = v36;
      v39 = &v35->i16[v38];
      v40 = &v34->i16[v38];
      v41 = &v33->i16[v38];
      do
      {
        v43 = *v41++;
        v42 = v43;
        v44 = *v40++;
        *v39++ = v42 - v44;
        --v37;
      }

      while (v37);
      goto LABEL_19;
    }
  }

  else
  {
    v36 = 0;
  }

  v174 = v36;
  v36 = v8 & 0x7FFFFFFC;
  v175 = (v33 + 2 * v174);
  v176 = (v34 + 2 * v174);
  v177 = (v35->i64 + 2 * v174);
  v178 = v174 - v36;
  do
  {
    v179 = *v175++;
    v180 = v179;
    v181 = *v176++;
    *v6.i8 = vsub_s16(v180, v181);
    *v177++ = v6.i64[0];
    v178 += 4;
  }

  while (v178);
  if (v36 != v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v45 = (*(a1 + 48) * v8);
  if (v45 < 1)
  {
    goto LABEL_36;
  }

  v46 = *v7[313];
  v47 = *v5[313];
  v48 = **(a1 + 2504);
  if (v45 < 4)
  {
    v49 = 0;
    goto LABEL_22;
  }

  v49 = 0;
  if ((v48 - v46) < 0x20 || (v48 - v47) < 0x20)
  {
    goto LABEL_22;
  }

  if (v45 >= 0x10)
  {
    v49 = v45 & 0x7FFFFFF0;
    v182 = v46 + 1;
    v183 = v47 + 1;
    v184 = v48 + 1;
    v185 = v49;
    do
    {
      v6 = vsubq_s16(v182[-1], v183[-1]);
      v186 = vsubq_s16(*v182, *v183);
      v184[-1] = v6;
      *v184 = v186;
      v182 += 2;
      v183 += 2;
      v184 += 2;
      v185 -= 16;
    }

    while (v185);
    if (v49 == v45)
    {
      goto LABEL_24;
    }

    if ((v45 & 0xC) == 0)
    {
LABEL_22:
      v50 = v45 - v49;
      v51 = v49;
      v52 = &v48->i16[v51];
      v53 = &v47->i16[v51];
      v54 = &v46->i16[v51];
      do
      {
        v56 = *v54++;
        v55 = v56;
        v57 = *v53++;
        *v52++ = v55 - v57;
        --v50;
      }

      while (v50);
      goto LABEL_24;
    }
  }

  else
  {
    v49 = 0;
  }

  v187 = v49;
  v49 = v45 & 0x7FFFFFFC;
  v188 = (v46 + 2 * v187);
  v189 = (v47 + 2 * v187);
  v190 = (v48->i64 + 2 * v187);
  v191 = v187 - v49;
  do
  {
    v192 = *v188++;
    v193 = v192;
    v194 = *v189++;
    *v6.i8 = vsub_s16(v193, v194);
    *v190++ = v6.i64[0];
    v191 += 4;
  }

  while (v191);
  if (v49 != v45)
  {
    goto LABEL_22;
  }

LABEL_24:
  v58 = *v7[315];
  v59 = *v5[315];
  v60 = **(a1 + 2520);
  if (v45 < 4)
  {
    v61 = 0;
    goto LABEL_26;
  }

  v61 = 0;
  if ((v60 - v58) < 0x20 || (v60 - v59) < 0x20)
  {
    goto LABEL_26;
  }

  if (v45 >= 0x10)
  {
    v61 = v45 & 0x7FFFFFF0;
    v195 = v58 + 1;
    v196 = v59 + 1;
    v197 = v60 + 1;
    v198 = v61;
    do
    {
      v6 = vsubq_s16(v195[-1], v196[-1]);
      v199 = vsubq_s16(*v195, *v196);
      v197[-1] = v6;
      *v197 = v199;
      v195 += 2;
      v196 += 2;
      v197 += 2;
      v198 -= 16;
    }

    while (v198);
    if (v61 == v45)
    {
      goto LABEL_28;
    }

    if ((v45 & 0xC) == 0)
    {
LABEL_26:
      v62 = v45 - v61;
      v63 = v61;
      v64 = &v60->i16[v63];
      v65 = &v59->i16[v63];
      v66 = &v58->i16[v63];
      do
      {
        v68 = *v66++;
        v67 = v68;
        v69 = *v65++;
        *v64++ = v67 - v69;
        --v62;
      }

      while (v62);
      goto LABEL_28;
    }
  }

  else
  {
    v61 = 0;
  }

  v200 = v61;
  v61 = v45 & 0x7FFFFFFC;
  v201 = (v58 + 2 * v200);
  v202 = (v59 + 2 * v200);
  v203 = (v60->i64 + 2 * v200);
  v204 = v200 - v61;
  do
  {
    v205 = *v201++;
    v206 = v205;
    v207 = *v202++;
    *v6.i8 = vsub_s16(v206, v207);
    *v203++ = v6.i64[0];
    v204 += 4;
  }

  while (v204);
  if (v61 != v45)
  {
    goto LABEL_26;
  }

LABEL_28:
  v70 = *v7[314];
  v71 = *v5[314];
  v72 = **(a1 + 2512);
  if (v45 < 4)
  {
    v73 = 0;
    goto LABEL_30;
  }

  v73 = 0;
  if ((v72 - v70) < 0x20 || (v72 - v71) < 0x20)
  {
    goto LABEL_30;
  }

  if (v45 >= 0x10)
  {
    v73 = v45 & 0x7FFFFFF0;
    v208 = v70 + 1;
    v209 = v71 + 1;
    v210 = v72 + 1;
    v211 = v73;
    do
    {
      v6 = vsubq_s16(v208[-1], v209[-1]);
      v212 = vsubq_s16(*v208, *v209);
      v210[-1] = v6;
      *v210 = v212;
      v208 += 2;
      v209 += 2;
      v210 += 2;
      v211 -= 16;
    }

    while (v211);
    if (v73 == v45)
    {
      goto LABEL_32;
    }

    if ((v45 & 0xC) == 0)
    {
LABEL_30:
      v74 = v45 - v73;
      v75 = v73;
      v76 = &v72->i16[v75];
      v77 = &v71->i16[v75];
      v78 = &v70->i16[v75];
      do
      {
        v80 = *v78++;
        v79 = v80;
        v81 = *v77++;
        *v76++ = v79 - v81;
        --v74;
      }

      while (v74);
      goto LABEL_32;
    }
  }

  else
  {
    v73 = 0;
  }

  v213 = v73;
  v73 = v45 & 0x7FFFFFFC;
  v214 = (v70 + 2 * v213);
  v215 = (v71 + 2 * v213);
  v216 = (v72->i64 + 2 * v213);
  v217 = v213 - v73;
  do
  {
    v218 = *v214++;
    v219 = v218;
    v220 = *v215++;
    *v6.i8 = vsub_s16(v219, v220);
    *v216++ = v6.i64[0];
    v217 += 4;
  }

  while (v217);
  if (v73 != v45)
  {
    goto LABEL_30;
  }

LABEL_32:
  v82 = *v7[316];
  v83 = *v5[316];
  v84 = **(a1 + 2528);
  if (v45 < 4)
  {
    v85 = 0;
    goto LABEL_34;
  }

  v85 = 0;
  if ((v84 - v82) < 0x20 || (v84 - v83) < 0x20)
  {
    goto LABEL_34;
  }

  if (v45 >= 0x10)
  {
    v85 = v45 & 0x7FFFFFF0;
    v221 = v82 + 1;
    v222 = v83 + 1;
    v223 = v84 + 1;
    v224 = v85;
    do
    {
      v6 = vsubq_s16(v221[-1], v222[-1]);
      v225 = vsubq_s16(*v221, *v222);
      v223[-1] = v6;
      *v223 = v225;
      v221 += 2;
      v222 += 2;
      v223 += 2;
      v224 -= 16;
    }

    while (v224);
    if (v85 == v45)
    {
      goto LABEL_36;
    }

    if ((v45 & 0xC) == 0)
    {
LABEL_34:
      v86 = v45 - v85;
      v87 = v85;
      v88 = &v84->i16[v87];
      v89 = &v83->i16[v87];
      v90 = &v82->i16[v87];
      do
      {
        v92 = *v90++;
        v91 = v92;
        v93 = *v89++;
        *v88++ = v91 - v93;
        --v86;
      }

      while (v86);
      goto LABEL_36;
    }
  }

  else
  {
    v85 = 0;
  }

  v226 = v85;
  v85 = v45 & 0x7FFFFFFC;
  v227 = (v82 + 2 * v226);
  v228 = (v83 + 2 * v226);
  v229 = (v84->i64 + 2 * v226);
  v230 = v226 - v85;
  do
  {
    v231 = *v227++;
    v232 = v231;
    v233 = *v228++;
    *v6.i8 = vsub_s16(v232, v233);
    *v229++ = v6.i64[0];
    v230 += 4;
  }

  while (v230);
  if (v85 != v45)
  {
    goto LABEL_34;
  }

LABEL_36:
  if (!v8)
  {
    return *v6.i64;
  }

  v94 = (v8 * v8);
  v95 = *v7[317];
  v96 = *v5[317];
  v97 = **(a1 + 2536);
  if (v94 < 4)
  {
    v98 = 0;
    goto LABEL_39;
  }

  v98 = 0;
  if ((v97 - v95) < 0x20 || (v97 - v96) < 0x20)
  {
    goto LABEL_39;
  }

  if (v94 >= 0x10)
  {
    v98 = v94 & 0x7FFFFFF0;
    v234 = v95 + 1;
    v235 = v96 + 1;
    v236 = v97 + 1;
    v237 = v98;
    do
    {
      v6 = vsubq_s16(v234[-1], v235[-1]);
      v238 = vsubq_s16(*v234, *v235);
      v236[-1] = v6;
      *v236 = v238;
      v234 += 2;
      v235 += 2;
      v236 += 2;
      v237 -= 16;
    }

    while (v237);
    if (v98 == v94)
    {
      goto LABEL_41;
    }

    if ((v94 & 0xC) == 0)
    {
LABEL_39:
      v99 = v94 - v98;
      v100 = v98;
      v101 = &v97->i16[v100];
      v102 = &v96->i16[v100];
      v103 = &v95->i16[v100];
      do
      {
        v105 = *v103++;
        v104 = v105;
        v106 = *v102++;
        *v101++ = v104 - v106;
        --v99;
      }

      while (v99);
      goto LABEL_41;
    }
  }

  else
  {
    v98 = 0;
  }

  v239 = v98;
  v98 = v94 & 0x7FFFFFFC;
  v240 = (v95 + 2 * v239);
  v241 = (v96 + 2 * v239);
  v242 = (v97->i64 + 2 * v239);
  v243 = v239 - v98;
  do
  {
    v244 = *v240++;
    v245 = v244;
    v246 = *v241++;
    *v6.i8 = vsub_s16(v245, v246);
    *v242++ = v6.i64[0];
    v243 += 4;
  }

  while (v243);
  if (v98 != v94)
  {
    goto LABEL_39;
  }

LABEL_41:
  v107 = *v7[319];
  v108 = *v5[319];
  v109 = **(a1 + 2552);
  if (v94 < 4)
  {
    v110 = 0;
    goto LABEL_43;
  }

  v110 = 0;
  if ((v109 - v107) < 0x20 || (v109 - v108) < 0x20)
  {
    goto LABEL_43;
  }

  if (v94 >= 0x10)
  {
    v110 = v94 & 0x7FFFFFF0;
    v247 = v107 + 1;
    v248 = v108 + 1;
    v249 = v109 + 1;
    v250 = v110;
    do
    {
      v6 = vsubq_s16(v247[-1], v248[-1]);
      v251 = vsubq_s16(*v247, *v248);
      v249[-1] = v6;
      *v249 = v251;
      v247 += 2;
      v248 += 2;
      v249 += 2;
      v250 -= 16;
    }

    while (v250);
    if (v110 == v94)
    {
      goto LABEL_45;
    }

    if ((v94 & 0xC) == 0)
    {
LABEL_43:
      v111 = v94 - v110;
      v112 = v110;
      v113 = &v109->i16[v112];
      v114 = &v108->i16[v112];
      v115 = &v107->i16[v112];
      do
      {
        v117 = *v115++;
        v116 = v117;
        v118 = *v114++;
        *v113++ = v116 - v118;
        --v111;
      }

      while (v111);
      goto LABEL_45;
    }
  }

  else
  {
    v110 = 0;
  }

  v252 = v110;
  v110 = v94 & 0x7FFFFFFC;
  v253 = (v107 + 2 * v252);
  v254 = (v108 + 2 * v252);
  v255 = (v109->i64 + 2 * v252);
  v256 = v252 - v110;
  do
  {
    v257 = *v253++;
    v258 = v257;
    v259 = *v254++;
    *v6.i8 = vsub_s16(v258, v259);
    *v255++ = v6.i64[0];
    v256 += 4;
  }

  while (v256);
  if (v110 != v94)
  {
    goto LABEL_43;
  }

LABEL_45:
  v119 = *v7[318];
  v120 = *v5[318];
  v121 = **(a1 + 2544);
  if (v94 < 4)
  {
    v122 = 0;
    goto LABEL_47;
  }

  v122 = 0;
  if ((v121 - v119) < 0x20 || (v121 - v120) < 0x20)
  {
    goto LABEL_47;
  }

  if (v94 >= 0x10)
  {
    v122 = v94 & 0x7FFFFFF0;
    v260 = v119 + 1;
    v261 = v120 + 1;
    v262 = v121 + 1;
    v263 = v122;
    do
    {
      v6 = vsubq_s16(v260[-1], v261[-1]);
      v264 = vsubq_s16(*v260, *v261);
      v262[-1] = v6;
      *v262 = v264;
      v260 += 2;
      v261 += 2;
      v262 += 2;
      v263 -= 16;
    }

    while (v263);
    if (v122 == v94)
    {
      goto LABEL_49;
    }

    if ((v94 & 0xC) == 0)
    {
LABEL_47:
      v123 = v94 - v122;
      v124 = v122;
      v125 = &v121->i16[v124];
      v126 = &v120->i16[v124];
      v127 = &v119->i16[v124];
      do
      {
        v129 = *v127++;
        v128 = v129;
        v130 = *v126++;
        *v125++ = v128 - v130;
        --v123;
      }

      while (v123);
      goto LABEL_49;
    }
  }

  else
  {
    v122 = 0;
  }

  v265 = v122;
  v122 = v94 & 0x7FFFFFFC;
  v266 = (v119 + 2 * v265);
  v267 = (v120 + 2 * v265);
  v268 = (v121->i64 + 2 * v265);
  v269 = v265 - v122;
  do
  {
    v270 = *v266++;
    v271 = v270;
    v272 = *v267++;
    *v6.i8 = vsub_s16(v271, v272);
    *v268++ = v6.i64[0];
    v269 += 4;
  }

  while (v269);
  if (v122 != v94)
  {
    goto LABEL_47;
  }

LABEL_49:
  v131 = *v7[320];
  v132 = *v5[320];
  v133 = **(a1 + 2560);
  if (v94 < 4)
  {
    v134 = 0;
    goto LABEL_51;
  }

  v134 = 0;
  if ((v133 - v131) < 0x20 || (v133 - v132) < 0x20)
  {
    goto LABEL_51;
  }

  if (v94 >= 0x10)
  {
    v134 = v94 & 0x7FFFFFF0;
    v273 = v131 + 1;
    v274 = v132 + 1;
    v275 = v133 + 1;
    v276 = v134;
    do
    {
      v6 = vsubq_s16(v273[-1], v274[-1]);
      v277 = vsubq_s16(*v273, *v274);
      v275[-1] = v6;
      *v275 = v277;
      v273 += 2;
      v274 += 2;
      v275 += 2;
      v276 -= 16;
    }

    while (v276);
    if (v134 == v94)
    {
      return *v6.i64;
    }

    if ((v94 & 0xC) == 0)
    {
LABEL_51:
      v135 = v94 - v134;
      v136 = v134;
      v137 = &v133->i16[v136];
      v138 = &v132->i16[v136];
      v139 = &v131->i16[v136];
      do
      {
        v141 = *v139++;
        v140 = v141;
        v142 = *v138++;
        *v137++ = v140 - v142;
        --v135;
      }

      while (v135);
      return *v6.i64;
    }
  }

  else
  {
    v134 = 0;
  }

  v278 = v134;
  v134 = v94 & 0x7FFFFFFC;
  v279 = (v131 + 2 * v278);
  v280 = (v132 + 2 * v278);
  v281 = (v133->i64 + 2 * v278);
  v282 = v278 - v134;
  do
  {
    v283 = *v279++;
    v284 = v283;
    v285 = *v280++;
    *v6.i8 = vsub_s16(v284, v285);
    *v281++ = v6.i64[0];
    v282 += 4;
  }

  while (v282);
  if (v134 != v94)
  {
    goto LABEL_51;
  }

  return *v6.i64;
}

void sub_19D2FD6E0(int a1, void *lpsrc, const void *a3)
{
  if (lpsrc)
  {
    __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B68D0, 0);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else if (!a3)
  {
LABEL_4:
    operator new();
  }

  __dynamic_cast(a3, &unk_1F10B68C0, &unk_1F10B68D0, 0);
  goto LABEL_4;
}

double sub_19D2FD860(uint64_t a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B68D0, 0);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 2568);
  v6 = v3[321];
  v7 = *(a1 + 52);
  if (v7 >= 8)
  {
    v8 = *v5;
    v9 = *v6;
    v10 = v7 / 8;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      v13 = vaddq_f32(v8[1], v12);
      v4 = vaddq_f32(*v8, v11);
      *v8 = v4;
      v8[1] = v13;
      v8 += 2;
      --v10;
    }

    while (v10);
  }

  LODWORD(v14) = 8 * (v7 / 8);
  if (v14 < v7)
  {
    v15 = *v6;
    v16 = *v5;
    v14 = v14;
    v17 = v7 - v14;
    if (v17 < 4)
    {
      goto LABEL_20;
    }

    v18 = 2 * v14;
    if (v16 + v18 < v15 + 2 * v7 && v15 + v18 < v16 + 2 * v7)
    {
      goto LABEL_20;
    }

    if (v17 >= 0x10)
    {
      v19 = v17 & 0xFFFFFFFFFFFFFFF0;
      v20 = v18 + 16;
      v21 = (&v15[1] + v18);
      v22 = (v16 + v20);
      v23 = v17 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v4 = vaddq_s16(v22[-1], v21[-1]);
        v24 = vaddq_s16(*v22, *v21);
        v22[-1] = v4;
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 16;
      }

      while (v23);
      if (v17 == v19)
      {
        goto LABEL_22;
      }

      if ((v17 & 0xC) == 0)
      {
        v14 = v19 + v14;
LABEL_20:
        v32 = v7 - v14;
        v33 = 2 * v14;
        v34 = (v16 + v33);
        v35 = (v15 + v33);
        do
        {
          v36 = v35->i16[0];
          v35 = (v35 + 2);
          v34->i16[0] += v36;
          v34 = (v34 + 2);
          --v32;
        }

        while (v32);
        goto LABEL_22;
      }
    }

    else
    {
      v19 = 0;
    }

    v25 = v17 - (v7 & 3) + v14;
    v26 = v19 + v14;
    v27 = v26 + (v7 & 3) - v7;
    v28 = 2 * v26;
    v29 = (v15 + 2 * v26);
    v30 = (v16 + v28);
    do
    {
      v31 = *v29++;
      *v4.f32 = vadd_s16(*v30, v31);
      *v30++ = *v4.f32;
      v27 += 4;
    }

    while (v27);
    v14 = v25;
    if ((v7 & 3) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v37 = *(a1 + 2576);
  v38 = v3[322];
  v39 = *(a1 + 52);
  if (v39 >= 8)
  {
    v40 = *v37;
    v41 = *v38;
    v42 = v39 / 8;
    do
    {
      v43 = *v41;
      v44 = v41[1];
      v41 += 2;
      v45 = vaddq_f32(v40[1], v44);
      v4 = vaddq_f32(*v40, v43);
      *v40 = v4;
      v40[1] = v45;
      v40 += 2;
      --v42;
    }

    while (v42);
  }

  LODWORD(v46) = 8 * (v39 / 8);
  if (v46 < v39)
  {
    v47 = *v38;
    v48 = *v37;
    v46 = v46;
    v49 = v39 - v46;
    if (v49 < 4)
    {
      goto LABEL_38;
    }

    v50 = 2 * v46;
    if (v48 + v50 < v47 + 2 * v39 && v47 + v50 < v48 + 2 * v39)
    {
      goto LABEL_38;
    }

    if (v49 >= 0x10)
    {
      v51 = v49 & 0xFFFFFFFFFFFFFFF0;
      v52 = v50 + 16;
      v53 = (&v47[1] + v50);
      v54 = (v48 + v52);
      v55 = v49 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v4 = vaddq_s16(v54[-1], v53[-1]);
        v56 = vaddq_s16(*v54, *v53);
        v54[-1] = v4;
        *v54 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 16;
      }

      while (v55);
      if (v49 == v51)
      {
        goto LABEL_40;
      }

      if ((v49 & 0xC) == 0)
      {
        v46 = v51 + v46;
LABEL_38:
        v64 = v39 - v46;
        v65 = 2 * v46;
        v66 = (v48 + v65);
        v67 = (v47 + v65);
        do
        {
          v68 = v67->i16[0];
          v67 = (v67 + 2);
          v66->i16[0] += v68;
          v66 = (v66 + 2);
          --v64;
        }

        while (v64);
        goto LABEL_40;
      }
    }

    else
    {
      v51 = 0;
    }

    v57 = v49 - (v39 & 3) + v46;
    v58 = v51 + v46;
    v59 = v58 + (v39 & 3) - v39;
    v60 = 2 * v58;
    v61 = (v47 + 2 * v58);
    v62 = (v48 + v60);
    do
    {
      v63 = *v61++;
      *v4.f32 = vadd_s16(*v62, v63);
      *v62++ = *v4.f32;
      v59 += 4;
    }

    while (v59);
    v46 = v57;
    if ((v39 & 3) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_40:
  v69 = *(a1 + 2584);
  v70 = v3[323];
  v71 = *(a1 + 52);
  if (v71 >= 8)
  {
    v72 = *v69;
    v73 = *v70;
    v74 = v71 / 8;
    do
    {
      v75 = *v73;
      v76 = v73[1];
      v73 += 2;
      v77 = vaddq_f32(v72[1], v76);
      v4 = vaddq_f32(*v72, v75);
      *v72 = v4;
      v72[1] = v77;
      v72 += 2;
      --v74;
    }

    while (v74);
  }

  LODWORD(v78) = 8 * (v71 / 8);
  if (v78 < v71)
  {
    v79 = *v70;
    v80 = *v69;
    v78 = v78;
    v81 = v71 - v78;
    if (v81 < 4)
    {
      goto LABEL_56;
    }

    v82 = 2 * v78;
    if (v80 + v82 < v79 + 2 * v71 && v79 + v82 < v80 + 2 * v71)
    {
      goto LABEL_56;
    }

    if (v81 >= 0x10)
    {
      v83 = v81 & 0xFFFFFFFFFFFFFFF0;
      v84 = v82 + 16;
      v85 = (&v79[1] + v82);
      v86 = (v80 + v84);
      v87 = v81 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v4 = vaddq_s16(v86[-1], v85[-1]);
        v88 = vaddq_s16(*v86, *v85);
        v86[-1] = v4;
        *v86 = v88;
        v85 += 2;
        v86 += 2;
        v87 -= 16;
      }

      while (v87);
      if (v81 == v83)
      {
        goto LABEL_58;
      }

      if ((v81 & 0xC) == 0)
      {
        v78 = v83 + v78;
LABEL_56:
        v96 = v71 - v78;
        v97 = 2 * v78;
        v98 = (v80 + v97);
        v99 = (v79 + v97);
        do
        {
          v100 = v99->i16[0];
          v99 = (v99 + 2);
          v98->i16[0] += v100;
          v98 = (v98 + 2);
          --v96;
        }

        while (v96);
        goto LABEL_58;
      }
    }

    else
    {
      v83 = 0;
    }

    v89 = v81 - (v71 & 3) + v78;
    v90 = v83 + v78;
    v91 = v90 + (v71 & 3) - v71;
    v92 = 2 * v90;
    v93 = (v79 + 2 * v90);
    v94 = (v80 + v92);
    do
    {
      v95 = *v93++;
      *v4.f32 = vadd_s16(*v94, v95);
      *v94++ = *v4.f32;
      v91 += 4;
    }

    while (v91);
    v78 = v89;
    if ((v71 & 3) != 0)
    {
      goto LABEL_56;
    }
  }

LABEL_58:
  v101 = *(a1 + 52);
  v102 = (*(a1 + 48) * v101);
  if (v102 < 1)
  {
    goto LABEL_103;
  }

  v103 = **(a1 + 2504);
  v104 = *v3[313];
  v105 = 2 * v102;
  if (v102 >= 4 && (v103 >= &v104->i8[v105] || v104 >= &v103->i8[v105]))
  {
    if (v102 >= 0x10)
    {
      v107 = v102 & 0x7FFFFFF0;
      v178 = v103 + 1;
      v179 = v104 + 1;
      v180 = v107;
      do
      {
        v4 = vaddq_s16(v179[-1], v178[-1]);
        v181 = vaddq_s16(*v179, *v178);
        v178[-1] = v4;
        *v178 = v181;
        v178 += 2;
        v179 += 2;
        v180 -= 16;
      }

      while (v180);
      if (v107 == v102)
      {
        goto LABEL_70;
      }

      if ((v102 & 0xC) == 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v107 = 0;
    }

    v182 = v107;
    v107 = v102 & 0x7FFFFFFC;
    v183 = (v103 + 2 * v182);
    v184 = (v104 + 2 * v182);
    v185 = v182 - v107;
    do
    {
      v186 = *v184++;
      *v4.f32 = vadd_s16(v186, *v183);
      *v183++ = *v4.f32;
      v185 += 4;
    }

    while (v185);
    if (v107 == v102)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  v107 = 0;
LABEL_68:
  v108 = v102 - v107;
  v109 = v107;
  v110 = &v104->i16[v109];
  v111 = &v103->i16[v109];
  do
  {
    v112 = *v110++;
    *v111++ += v112;
    --v108;
  }

  while (v108);
LABEL_70:
  v113 = **(a1 + 2512);
  v114 = *v3[314];
  if (v102 >= 4 && (v113 >= &v114->i8[v105] || v114 >= &v113->i8[v105]))
  {
    if (v102 >= 0x10)
    {
      v116 = v102 & 0x7FFFFFF0;
      v187 = v113 + 1;
      v188 = v114 + 1;
      v189 = v116;
      do
      {
        v4 = vaddq_s16(v188[-1], v187[-1]);
        v190 = vaddq_s16(*v188, *v187);
        v187[-1] = v4;
        *v187 = v190;
        v187 += 2;
        v188 += 2;
        v189 -= 16;
      }

      while (v189);
      if (v116 == v102)
      {
        goto LABEL_81;
      }

      if ((v102 & 0xC) == 0)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v116 = 0;
    }

    v191 = v116;
    v116 = v102 & 0x7FFFFFFC;
    v192 = (v113 + 2 * v191);
    v193 = (v114 + 2 * v191);
    v194 = v191 - v116;
    do
    {
      v195 = *v193++;
      *v4.f32 = vadd_s16(v195, *v192);
      *v192++ = *v4.f32;
      v194 += 4;
    }

    while (v194);
    if (v116 == v102)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v116 = 0;
LABEL_79:
  v117 = v102 - v116;
  v118 = v116;
  v119 = &v114->i16[v118];
  v120 = &v113->i16[v118];
  do
  {
    v121 = *v119++;
    *v120++ += v121;
    --v117;
  }

  while (v117);
LABEL_81:
  v122 = **(a1 + 2520);
  v123 = *v3[315];
  if (v102 >= 4 && (v122 >= &v123->i8[v105] || v123 >= &v122->i8[v105]))
  {
    if (v102 >= 0x10)
    {
      v125 = v102 & 0x7FFFFFF0;
      v196 = v122 + 1;
      v197 = v123 + 1;
      v198 = v125;
      do
      {
        v4 = vaddq_s16(v197[-1], v196[-1]);
        v199 = vaddq_s16(*v197, *v196);
        v196[-1] = v4;
        *v196 = v199;
        v196 += 2;
        v197 += 2;
        v198 -= 16;
      }

      while (v198);
      if (v125 == v102)
      {
        goto LABEL_92;
      }

      if ((v102 & 0xC) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v125 = 0;
    }

    v200 = v125;
    v125 = v102 & 0x7FFFFFFC;
    v201 = (v122 + 2 * v200);
    v202 = (v123 + 2 * v200);
    v203 = v200 - v125;
    do
    {
      v204 = *v202++;
      *v4.f32 = vadd_s16(v204, *v201);
      *v201++ = *v4.f32;
      v203 += 4;
    }

    while (v203);
    if (v125 == v102)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v125 = 0;
LABEL_90:
  v126 = v102 - v125;
  v127 = v125;
  v128 = &v123->i16[v127];
  v129 = &v122->i16[v127];
  do
  {
    v130 = *v128++;
    *v129++ += v130;
    --v126;
  }

  while (v126);
LABEL_92:
  v131 = **(a1 + 2528);
  v132 = *v3[316];
  if (v102 < 4 || (v131 < &v132->i8[v105] ? (v133 = v132 >= &v131->i8[v105]) : (v133 = 1), !v133))
  {
    v134 = 0;
    goto LABEL_101;
  }

  if (v102 >= 0x10)
  {
    v134 = v102 & 0x7FFFFFF0;
    v205 = v131 + 1;
    v206 = v132 + 1;
    v207 = v134;
    do
    {
      v4 = vaddq_s16(v206[-1], v205[-1]);
      v208 = vaddq_s16(*v206, *v205);
      v205[-1] = v4;
      *v205 = v208;
      v205 += 2;
      v206 += 2;
      v207 -= 16;
    }

    while (v207);
    if (v134 == v102)
    {
      goto LABEL_103;
    }

    if ((v102 & 0xC) == 0)
    {
LABEL_101:
      v135 = v102 - v134;
      v136 = v134;
      v137 = &v132->i16[v134];
      v138 = &v131->i16[v136];
      do
      {
        v139 = *v137++;
        *v138++ += v139;
        --v135;
      }

      while (v135);
      goto LABEL_103;
    }
  }

  else
  {
    v134 = 0;
  }

  v209 = v134;
  v134 = v102 & 0x7FFFFFFC;
  v210 = (v131 + 2 * v209);
  v211 = (v132 + 2 * v209);
  v212 = v209 - v134;
  do
  {
    v213 = *v211++;
    *v4.f32 = vadd_s16(v213, *v210);
    *v210++ = *v4.f32;
    v212 += 4;
  }

  while (v212);
  if (v134 != v102)
  {
    goto LABEL_101;
  }

LABEL_103:
  if (!v101)
  {
    return *v4.i64;
  }

  v140 = (v101 * v101);
  v141 = **(a1 + 2536);
  v142 = *v3[317];
  v143 = 2 * v140;
  if (v140 >= 4 && (v141 >= &v142->i8[v143] || v142 >= &v141->i8[v143]))
  {
    if (v140 >= 0x10)
    {
      v145 = v140 & 0x7FFFFFF0;
      v214 = v141 + 1;
      v215 = v142 + 1;
      v216 = v145;
      do
      {
        v4 = vaddq_s16(v215[-1], v214[-1]);
        v217 = vaddq_s16(*v215, *v214);
        v214[-1] = v4;
        *v214 = v217;
        v214 += 2;
        v215 += 2;
        v216 -= 16;
      }

      while (v216);
      if (v145 == v140)
      {
        goto LABEL_115;
      }

      if ((v140 & 0xC) == 0)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v145 = 0;
    }

    v218 = v145;
    v145 = v140 & 0x7FFFFFFC;
    v219 = (v141 + 2 * v218);
    v220 = (v142 + 2 * v218);
    v221 = v218 - v145;
    do
    {
      v222 = *v220++;
      *v4.f32 = vadd_s16(v222, *v219);
      *v219++ = *v4.f32;
      v221 += 4;
    }

    while (v221);
    if (v145 == v140)
    {
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v145 = 0;
LABEL_113:
  v146 = v140 - v145;
  v147 = v145;
  v148 = &v142->i16[v147];
  v149 = &v141->i16[v147];
  do
  {
    v150 = *v148++;
    *v149++ += v150;
    --v146;
  }

  while (v146);
LABEL_115:
  v151 = **(a1 + 2544);
  v152 = *v3[318];
  if (v140 >= 4 && (v151 >= &v152->i8[v143] || v152 >= &v151->i8[v143]))
  {
    if (v140 >= 0x10)
    {
      v154 = v140 & 0x7FFFFFF0;
      v223 = v151 + 1;
      v224 = v152 + 1;
      v225 = v154;
      do
      {
        v4 = vaddq_s16(v224[-1], v223[-1]);
        v226 = vaddq_s16(*v224, *v223);
        v223[-1] = v4;
        *v223 = v226;
        v223 += 2;
        v224 += 2;
        v225 -= 16;
      }

      while (v225);
      if (v154 == v140)
      {
        goto LABEL_126;
      }

      if ((v140 & 0xC) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v154 = 0;
    }

    v227 = v154;
    v154 = v140 & 0x7FFFFFFC;
    v228 = (v151 + 2 * v227);
    v229 = (v152 + 2 * v227);
    v230 = v227 - v154;
    do
    {
      v231 = *v229++;
      *v4.f32 = vadd_s16(v231, *v228);
      *v228++ = *v4.f32;
      v230 += 4;
    }

    while (v230);
    if (v154 == v140)
    {
      goto LABEL_126;
    }

    goto LABEL_124;
  }

  v154 = 0;
LABEL_124:
  v155 = v140 - v154;
  v156 = v154;
  v157 = &v152->i16[v156];
  v158 = &v151->i16[v156];
  do
  {
    v159 = *v157++;
    *v158++ += v159;
    --v155;
  }

  while (v155);
LABEL_126:
  v160 = **(a1 + 2552);
  v161 = *v3[319];
  if (v140 >= 4 && (v160 >= &v161->i8[v143] || v161 >= &v160->i8[v143]))
  {
    if (v140 >= 0x10)
    {
      v163 = v140 & 0x7FFFFFF0;
      v232 = v160 + 1;
      v233 = v161 + 1;
      v234 = v163;
      do
      {
        v4 = vaddq_s16(v233[-1], v232[-1]);
        v235 = vaddq_s16(*v233, *v232);
        v232[-1] = v4;
        *v232 = v235;
        v232 += 2;
        v233 += 2;
        v234 -= 16;
      }

      while (v234);
      if (v163 == v140)
      {
        goto LABEL_137;
      }

      if ((v140 & 0xC) == 0)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v163 = 0;
    }

    v236 = v163;
    v163 = v140 & 0x7FFFFFFC;
    v237 = (v160 + 2 * v236);
    v238 = (v161 + 2 * v236);
    v239 = v236 - v163;
    do
    {
      v240 = *v238++;
      *v4.f32 = vadd_s16(v240, *v237);
      *v237++ = *v4.f32;
      v239 += 4;
    }

    while (v239);
    if (v163 == v140)
    {
      goto LABEL_137;
    }

    goto LABEL_135;
  }

  v163 = 0;
LABEL_135:
  v164 = v140 - v163;
  v165 = v163;
  v166 = &v161->i16[v165];
  v167 = &v160->i16[v165];
  do
  {
    v168 = *v166++;
    *v167++ += v168;
    --v164;
  }

  while (v164);
LABEL_137:
  v169 = **(a1 + 2560);
  v170 = *v3[320];
  if (v140 < 4 || (v169 < &v170->i8[v143] ? (v171 = v170 >= &v169->i8[v143]) : (v171 = 1), !v171))
  {
    v172 = 0;
    goto LABEL_146;
  }

  if (v140 >= 0x10)
  {
    v172 = v140 & 0x7FFFFFF0;
    v241 = v169 + 1;
    v242 = v170 + 1;
    v243 = v172;
    do
    {
      v4 = vaddq_s16(v242[-1], v241[-1]);
      v244 = vaddq_s16(*v242, *v241);
      v241[-1] = v4;
      *v241 = v244;
      v241 += 2;
      v242 += 2;
      v243 -= 16;
    }

    while (v243);
    if (v172 == v140)
    {
      return *v4.i64;
    }

    if ((v140 & 0xC) == 0)
    {
LABEL_146:
      v173 = v140 - v172;
      v174 = v172;
      v175 = &v170->i16[v172];
      v176 = &v169->i16[v174];
      do
      {
        v177 = *v175++;
        *v176++ += v177;
        --v173;
      }

      while (v173);
      return *v4.i64;
    }
  }

  else
  {
    v172 = 0;
  }

  v245 = v172;
  v172 = v140 & 0x7FFFFFFC;
  v246 = (v169 + 2 * v245);
  v247 = (v170 + 2 * v245);
  v248 = v245 - v172;
  do
  {
    v249 = *v247++;
    *v4.f32 = vadd_s16(v249, *v246);
    *v246++ = *v4.f32;
    v248 += 4;
  }

  while (v248);
  if (v172 != v140)
  {
    goto LABEL_146;
  }

  return *v4.i64;
}