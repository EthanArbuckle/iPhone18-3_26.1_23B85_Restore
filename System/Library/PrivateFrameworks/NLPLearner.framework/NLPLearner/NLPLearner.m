void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_25AE24EC8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_25AE2505C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25AE25240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 112), 8);
  _Block_object_dispose((v26 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25AE257F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25AE25AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25AE25DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<void *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25AE264F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279928940, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_25AE267A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25AE26E3C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  nlp::CFScopedPtr<void *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void sub_25AE285EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_25AE28940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_25AE293D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25AE29B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void sub_25AE29EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_25AE2A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v17);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a13);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL16tokenIDForStringPK10_LXLexiconPK10__CFString_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  TokenID = LXEntryGetTokenID();
  if (a3 && CFStringCompare(*(a1 + 48), v5, 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = TokenID;
    *a3 = 1;
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = [(__CFString *)v5 decomposedStringWithCanonicalMapping];
  v8 = [*(a1 + 48) decomposedStringWithCanonicalMapping];
  v9 = [v7 length];
  if (v9 == [v8 length])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:TokenID];
    [v10 addObject:v11];
  }

  if (v5)
  {
LABEL_8:
    CFRelease(v5);
  }
}

void sub_25AE2B3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void nlp::CFScopedPtr<_LXLexicon const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFData const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void applesauce::CF::convert_to<std::vector<float>,0>(const void *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  if (!a1 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  applesauce::CF::details::CFArray_get_value_to<std::vector<float>>(a1, a2);
}

void applesauce::CF::details::CFArray_get_value_to<std::vector<float>>(const __CFArray *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  a2->__begin_ = 0;
  std::vector<unsigned int>::reserve(a2, Count);
  if (Count >= 1)
  {
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v8 = applesauce::CF::convert_to<float,0>(ValueAtIndex);
      end = a2->__end_;
      value = a2->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a2->__begin_;
        v13 = end - a2->__begin_;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v16 = value - begin;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v17);
        }

        *(4 * v14) = v8;
        v11 = 4 * v14 + 4;
        memcpy(0, begin, v13);
        v18 = a2->__begin_;
        a2->__begin_ = 0;
        a2->__end_ = v11;
        a2->__end_cap_.__value_ = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *end = v8;
        v11 = (end + 1);
      }

      a2->__end_ = v11;
      ++v5;
    }

    while (v6 != v5);
  }
}

void sub_25AE2B72C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float applesauce::CF::convert_to<float,0>(const __CFNumber *a1)
{
  v1 = applesauce::CF::convert_as<float,0>(a1);
  if ((v1 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

uint64_t applesauce::CF::convert_as<float,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<float>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = COERCE_UNSIGNED_INT(CFBooleanGetValue(a1));
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

unint64_t applesauce::CF::details::number_convert_as<float>(const __CFNumber *a1)
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
      goto LABEL_24;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_22;
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
      v16 = SLOBYTE(valuePtr);
      goto LABEL_20;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16 = SLOWORD(valuePtr);
LABEL_20:
      v17 = v16;
      goto LABEL_25;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_24:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_22;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_22;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_26;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_22;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_22:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_25:
      v9 = LODWORD(v17);
LABEL_26:
      v18 = v9 | 0x100000000;
      if (!Value)
      {
        v18 = 0;
      }

      v19 = v18 & 0x100000000;
      break;
    default:
      v19 = 0;
      LODWORD(v18) = 0;
      break;
  }

  return v18 | v19;
}

id trainMLPModelForDES(void *a1, void *a2, void *a3, void *a4)
{
  v122[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = [v7 attachments];
  v10 = [NLPLearnerUtils getAttachmentURLByName:@"nlmodel" attachments:v9 error:a4];

  if (!v10)
  {
    v16 = 0;
    goto LABEL_85;
  }

  v11 = [v7 recipeUserInfo];
  v12 = [v11 objectForKey:@"iCloudAggServiceKey"];

  if (!v12)
  {
    if ([v7 pluginShouldAddNoiseAndEncryptResult])
    {
      v17 = [v7 recipeUserInfo];
      v18 = [v17 objectForKey:@"noEncryption"];

      if (!v18)
      {
        if (a4)
        {
          v14 = MEMORY[0x277CCA9B8];
          v15 = &unk_286C3AA90;
          goto LABEL_39;
        }

LABEL_40:
        v16 = 0;
        goto LABEL_84;
      }
    }

    v13 = 0;
LABEL_10:
    v19 = MEMORY[0x277CBEAF8];
    v20 = [v7 recipeUserInfo];
    v21 = [v20 objectForKey:@"locales"];
    v22 = [v19 localeWithLocaleIdentifier:v21];

    if (!v22)
    {
      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:1 userInfo:&unk_286C3AAB8];
        *a4 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_83;
    }

    v113 = a3;
    v120 = v22;
    v23 = [v7 recipeUserInfo];
    v24 = [v23 objectForKey:@"task"];
    v25 = [NLPLearnerTaskWrapper taskFromRecipe:v24];

    v26 = [NLPLearnerTextData dataForPFL:v25 andLocale:v22];
    v27 = v26;
    switch(v25)
    {
      case 1:
        v119 = v12;
        v28 = v26;
        v29 = [v7 attachments];
        v30 = @"emojiClasses.plist";
        break;
      case 3:
        v119 = v12;
        v116 = v13;
        [v7 attachments];
        v117 = v10;
        v31 = v8;
        v33 = v32 = v27;
        v34 = [v33 firstObject];
        v35 = [v34 URLByDeletingLastPathComponent];
        v36 = [v35 path];
        v28 = v32;
        v37 = v32;
        v8 = v31;
        v10 = v117;
        [v37 addResource:v36];

        goto LABEL_21;
      case 2:
        v119 = v12;
        v28 = v26;
        v29 = [v7 attachments];
        v30 = @"montrealidmap.dat";
        break;
      default:
        if (a4)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:6 userInfo:&unk_286C3AAE0];
          *a4 = v16 = 0;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_82;
    }

    v33 = [NLPLearnerUtils getAttachmentURLByName:v30 attachments:v29 error:a4];

    if (!v33)
    {
      v16 = 0;
      v27 = v28;
      v12 = v119;
LABEL_82:

LABEL_83:
      goto LABEL_84;
    }

    v116 = v13;
    v34 = [v33 path];
    [v28 addResource:v34];
LABEL_21:

    v38 = [v7 recipeUserInfo];
    v39 = [v38 objectForKey:@"maxSeqLength"];
    v40 = [v39 intValue];

    v41 = v40 < 1;
    v27 = v28;
    if (!v41)
    {
      v42 = [v7 recipeUserInfo];
      v43 = [v42 objectForKey:@"maxSeqLength"];
      [v28 setMaxSequenceLength:{objc_msgSend(v43, "intValue")}];
    }

    v44 = [v8 coreDuetEvents];
    [v28 loadFromCoreDuet:v44 limitSamplesTo:0];

    v45 = [v7 recipeUserInfo];
    v46 = [v45 objectForKey:@"numberOfEpochs"];
    v47 = v46;
    v48 = &unk_286C3AA38;
    if (v46)
    {
      v48 = v46;
    }

    v118 = v48;

    v49 = [v7 recipeUserInfo];
    v111 = [v49 objectForKey:@"noSDP"];

    v50 = [QuickTypePFLTrainerMLP alloc];
    v51 = [NLPLearnerTaskWrapper privacyIdentifierForTask:v25];
    v52 = [(QuickTypePFLTrainerMLP *)v50 initWithSeedModelPath:v10 andPrivacyIdentifier:v51];

    v53 = [v7 recipeUserInfo];
    v54 = [v53 objectForKey:@"batchSize"];

    v12 = v119;
    if (v54)
    {
      -[QuickTypePFLTrainerMLP setBatchSize:](v52, "setBatchSize:", [v54 unsignedIntegerValue]);
    }

    v115 = v54;
    v55 = [v7 recipeUserInfo];
    v56 = [v55 objectForKey:@"minTrainingSamples"];
    v57 = v56;
    v58 = &unk_286C3AA50;
    if (v56)
    {
      v58 = v56;
    }

    v59 = v58;

    v60 = [v27 numSamples];
    v114 = v59;
    if (v60 < [v59 intValue] || (v61 = objc_msgSend(v27, "numSamples"), v61 < -[QuickTypePFLTrainerMLP batchSize](v52, "batchSize")))
    {
      v13 = v116;
      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:2 userInfo:&unk_286C3AB08];
        *a4 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      v22 = v120;
      v62 = v114;
      goto LABEL_81;
    }

    v63 = [v7 recipeUserInfo];
    v64 = [v63 objectForKey:@"learningRate"];

    if (v64)
    {
      [(QuickTypePFLTrainerMLP *)v52 setLearningRate:v64];
    }

    v65 = [v7 recipeUserInfo];
    v66 = [v65 objectForKey:@"gradientClipMin"];
    [(QuickTypePFLTrainerMLP *)v52 setGradientClipMin:v66];

    v67 = [v7 recipeUserInfo];
    v68 = [v67 objectForKey:@"gradientClipMax"];
    [(QuickTypePFLTrainerMLP *)v52 setGradientClipMax:v68];

    v69 = [v7 recipeUserInfo];
    v70 = [v69 objectForKey:@"maxNorm"];

    if (v70)
    {
      [(QuickTypePFLTrainerMLP *)v52 setClippingNorm:v70];
    }

    v109 = v70;
    v71 = [v7 recipeUserInfo];
    v72 = [v71 objectForKey:@"normBinCount"];

    if (v72)
    {
      -[QuickTypePFLTrainerMLP setNormBinCount:](v52, "setNormBinCount:", [v72 unsignedIntegerValue]);
    }

    v108 = v72;
    v73 = objc_autoreleasePoolPush();
    v74 = -[QuickTypePFLTrainerMLP trainOn:forNEpochs:](v52, "trainOn:forNEpochs:", v27, [v118 unsignedIntegerValue]);
    objc_autoreleasePoolPop(v73);
    v110 = v64;
    if (!v74)
    {
      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:4 userInfo:{&unk_286C3AB30, v108}];
        *a4 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      v13 = v116;
      v22 = v120;
      v62 = v114;
LABEL_80:

LABEL_81:
      goto LABEL_82;
    }

    v75 = v8;
    v76 = v27;
    v77 = [v7 recipeUserInfo];
    v78 = [v77 objectForKey:@"storeUpdatedModel"];
    if (v78)
    {
      v79 = v78;
      v80 = +[NLPLearnerUtils isInternalInstall];

      if (!v80)
      {
LABEL_54:
        v84 = objc_autoreleasePoolPush();
        v85 = [(QuickTypePFLTrainerMLP *)v52 getWeightUpdatesAddNoise:v111 == 0 encryptionKey:v116 recipe:v7];
        objc_autoreleasePoolPop(v84);
        v112 = v85;
        if (v85)
        {
          *v113 = [v85 weightUpdates];
          v121 = @"NumberOfTrainingSamples";
          v27 = v76;
          v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v76, "numSamples")}];
          v122[0] = v86;
          v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:&v121 count:1];
          v16 = [v87 mutableCopy];

          v88 = [(QuickTypePFLTrainerMLP *)v52 initialLoss];
          if (v88)
          {
            v89 = v88;
            v90 = [(QuickTypePFLTrainerMLP *)v52 initialLoss];
            [v90 floatValue];
            v92 = v91 & 0x7FFFFFFF;

            v41 = v92 <= 2139095039;
            v27 = v76;
            if (v41)
            {
              v93 = [(QuickTypePFLTrainerMLP *)v52 initialLoss];
              [v16 setObject:v93 forKeyedSubscript:@"InitialLoss"];
            }
          }

          v94 = [(QuickTypePFLTrainerMLP *)v52 trainingLoss];
          v62 = v114;
          if (v94)
          {
            v95 = v94;
            v96 = [(QuickTypePFLTrainerMLP *)v52 trainingLoss];
            [v96 floatValue];
            v98 = v97 & 0x7FFFFFFF;

            v41 = v98 <= 2139095039;
            v27 = v76;
            if (v41)
            {
              v99 = [(QuickTypePFLTrainerMLP *)v52 trainingLoss];
              [v16 setObject:v99 forKeyedSubscript:@"TrainingLoss"];
            }
          }

          v100 = [v112 privacyDiagnosticReport];

          if (v100)
          {
            v101 = [v112 privacyDiagnosticReport];
            [v16 setObject:v101 forKeyedSubscript:@"localPrivacyParameters"];
          }

          v102 = [v112 weightUpdatesDiagnosticReport];

          v13 = v116;
          v8 = v75;
          if (v102)
          {
            v103 = [v112 weightUpdatesDiagnosticReport];
            [v16 setObject:v103 forKeyedSubscript:@"$local_only.QuickTypeModelUpdate"];
          }

          v12 = v119;
          if (+[NLPLearnerUtils isInternalInstall])
          {
            v104 = [v112 l2Norm];
            [v16 setObject:v104 forKeyedSubscript:@"L2Norm"];

            v105 = [v112 maxNorm];
            [v16 setObject:v105 forKeyedSubscript:@"MaxNorm"];
          }

          v22 = v120;
        }

        else
        {
          v27 = v76;
          if (a4)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:5 userInfo:&unk_286C3AB58];
            *a4 = v16 = 0;
          }

          else
          {
            v16 = 0;
          }

          v13 = v116;
          v8 = v75;
          v12 = v119;
          v22 = v120;
          v62 = v114;
        }

        goto LABEL_80;
      }

      v81 = MEMORY[0x277CBEBC0];
      v77 = [v7 recipeUserInfo];
      v82 = [v77 objectForKey:@"storeUpdatedModel"];
      v83 = [v81 URLWithString:v82];
      [(QuickTypePFLTrainerMLP *)v52 writeModelToURL:v83];
    }

    goto LABEL_54;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v12 options:1];
  if (v13)
  {
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_40;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = &unk_286C3AA68;
LABEL_39:
  [v14 errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:5 userInfo:v15];
  *a4 = v16 = 0;
LABEL_84:

LABEL_85:
  v106 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_25AE2D260(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, const void *);
  nlp::CFScopedPtr<MLPModelTrainer *>::reset(va, 0);
  nlp::CFScopedPtr<void *>::reset(va1, 0);

  _Unwind_Resume(a1);
}

void sub_25AE2DB0C(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);

  nlp::CFScopedPtr<__CFData *>::reset(va, 0);
  nlp::CFScopedPtr<__CFData const*>::reset(va1, 0);
  nlp::CFScopedPtr<void *>::reset(va2, 0);

  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFData *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFArray const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<MLPModelTrainer *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_25AE2ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id supportedMetrics()
{
  if (supportedMetrics_onceToken != -1)
  {
    supportedMetrics_cold_1();
  }

  v1 = supportedMetrics_supportedMetrics;

  return v1;
}

void sub_25AE30528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __supportedMetrics_block_invoke()
{
  v0 = supportedMetrics_supportedMetrics;
  supportedMetrics_supportedMetrics = &unk_286C3ABA8;
}

void __overrideWordErrorCountForMetrics_block_invoke()
{
  v0 = overrideWordErrorCountForMetrics_overrideWordErrorCountForMetrics;
  overrideWordErrorCountForMetrics_overrideWordErrorCountForMetrics = &unk_286C3ABC0;
}

void __reporterKeysToKeep_block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D6FF70];
  v5[0] = *MEMORY[0x277D6FF68];
  v5[1] = v0;
  v1 = *MEMORY[0x277D6FF80];
  v5[2] = *MEMORY[0x277D6FF78];
  v5[3] = v1;
  v5[4] = *MEMORY[0x277D6FF88];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = reporterKeysToKeep_keysForCASchema;
  reporterKeysToKeep_keysForCASchema = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}