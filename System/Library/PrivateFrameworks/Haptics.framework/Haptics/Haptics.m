__CFString *typeToKey(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      result = @"Default";
      break;
    case 1:
      result = @"Variant1.SingleClick.Normal";
      break;
    case 2:
      result = @"Variant1.SingleClick.Soft";
      break;
    case 3:
      result = @"Variant1.SecondClick.Normal";
      break;
    case 4:
      result = @"Variant1.SecondClick.Soft";
      break;
    case 5:
      result = @"Variant2.SingleClick.Normal";
      break;
    case 6:
      result = @"Variant2.SingleClick.Soft";
      break;
    case 7:
      result = @"Variant2.SecondClick.Normal";
      break;
    case 8:
      result = @"Variant2.SecondClick.Soft";
      break;
    case 9:
      result = @"Variant3.SingleClick.Normal";
      break;
    case 10:
      result = @"Variant3.SingleClick.Soft";
      break;
    case 11:
      result = @"Variant3.SecondClick.Normal";
      break;
    case 12:
      result = @"Variant3.SecondClick.Soft";
      break;
    case 13:
      result = @"Variant1.SingleClick.SemiSoft";
      break;
    case 14:
      result = @"Variant1.SecondClick.SemiSoft";
      break;
    case 15:
      result = @"Variant2.SingleClick.SemiSoft";
      break;
    case 16:
      result = @"Variant2.SecondClick.SemiSoft";
      break;
    case 17:
      result = @"Variant3.SingleClick.SemiSoft";
      break;
    case 18:
      result = @"Variant3.SecondClick.SemiSoft";
      break;
    default:
      if (a1 == 100)
      {
        result = @"Latch";
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

const void *getDictionary(const __CFDictionary *a1, const __CFString *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDictionaryGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *getString(const __CFDictionary *a1, const __CFString *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFStringGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getFloat64(const __CFDictionary *a1, const __CFString *a2, double *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberDoubleType, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dictForType(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  TuningPListMgr::TuningPListMgr(v21, "/Library/Audio/Tunings");
  v19 = PlatformUtilities::CopyHardwareModelShortName(v4);
  v20 = 1;
  v17 = CFStringCreateWithCString(0, "ButtonHaptics", 0x600u);
  v18 = 1;
  v15 = CFStringCreateWithCString(0, "buttonhapticsconfig", 0x600u);
  v16 = 1;
  *buf = &v19;
  v23 = &v17;
  v24 = &v15;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v21, buf, 3u, 2);
  CACFString::~CACFString(&v15);
  CACFString::~CACFString(&v17);
  if (!TuningInSubdirs)
  {
    AUPListByName = TuningPListMgr::getAUPListByName(v21, "buttonhapticsconfig");
    if (AUPListByName)
    {
      Dictionary = getDictionary(AUPListByName, @"States");
      if (Dictionary)
      {
        v11 = typeToKey(a1);
        if (v11)
        {
          v12 = getDictionary(Dictionary, v11);
          *a2 = v12;
          if (v12)
          {
            CFRetain(v12);
            TuningInSubdirs = 0;
            goto LABEL_19;
          }

          TuningInSubdirs = 1886155636;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v6 = MEMORY[0x277D86220];
          v7 = "get typeDictionary failed";
        }

        else
        {
          TuningInSubdirs = 1954115617;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v6 = MEMORY[0x277D86220];
          v7 = "bad typeKey";
        }
      }

      else
      {
        TuningInSubdirs = 1886155636;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 0;
        v6 = MEMORY[0x277D86220];
        v7 = "get statesDictionary failed";
      }
    }

    else
    {
      TuningInSubdirs = 1886155636;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "getAUPListByName failed";
    }

    v8 = 2;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = TuningInSubdirs;
    v6 = MEMORY[0x277D86220];
    v7 = "loadTuning failed %d";
    v8 = 8;
LABEL_18:
    _os_log_impl(&dword_2510D3000, v6, OS_LOG_TYPE_ERROR, v7, buf, v8);
  }

LABEL_19:
  CACFString::~CACFString(&v19);
  TuningPListMgr::~TuningPListMgr(v21);
  v13 = *MEMORY[0x277D85DE8];
  return TuningInSubdirs;
}

void sub_2510D4318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  CACFString::~CACFString(va);
  TuningPListMgr::~TuningPListMgr(va1);
  _Unwind_Resume(a1);
}

void MatchingNotificationHandler(void *a1, io_iterator_t iterator)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = IOIteratorNext(iterator);
  if (v2)
  {
    v3 = v2;
    memset(v17, 0, sizeof(v17));
    MEMORY[0x25306A950](v2, v17);
    v4 = MEMORY[0x277D85F48];
    v5 = IOServiceOpen(v3, *MEMORY[0x277D85F48], 0, &gButtonServiceConnection);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "void MatchingNotificationHandler(void *, io_iterator_t)";
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_2510D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Unable to open user client err %d", buf, 0x12u);
      }
    }

    else if (!MEMORY[0x25306A910](gButtonServiceConnection, 0, *v4, &_sharedMemoryAddress, &_sharedMemorySize, 1))
    {
      _sharedMemoryPtr = _sharedMemoryAddress;
      output = -999;
      outputCnt = 1;
      v7 = IOConnectCallScalarMethod(gButtonServiceConnection, 1u, 0, 0, &output, &outputCnt);
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v14 = "void MatchingNotificationHandler(void *, io_iterator_t)";
          v15 = 1024;
          v16 = v8;
          _os_log_impl(&dword_2510D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s failed to send GetNumberOfSupportedAssets err %d", buf, 0x12u);
        }
      }

      else
      {
        gNumberOfSlots = output;
      }

      gServiceAvailable = 1;
      v9 = dispatch_get_global_queue(17, 0);
      dispatch_async_f(v9, 0, serviceCameUp);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void serviceCameUp(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v1 = +[HAButtonHapticsLoader sharedInstance];
  [v2 postNotificationName:@"HAButtonHapticsLoaderServiceIsAvailableNotification" object:v1];
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_2510D52C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CFDictionaryReleaser::~CFDictionaryReleaser(va);

  _Unwind_Resume(a1);
}

void sub_2510D55F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFDictionaryReleaser::~CFDictionaryReleaser(va);
  _Unwind_Resume(a1);
}

void sub_2510D567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFDictionaryReleaser::~CFDictionaryReleaser(va);
  _Unwind_Resume(a1);
}

void sub_2510D5708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFDictionaryReleaser::~CFDictionaryReleaser(va);
  _Unwind_Resume(a1);
}

void sub_2510D5794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFDictionaryReleaser::~CFDictionaryReleaser(va);
  _Unwind_Resume(a1);
}

void TuningPListMgr::TuningPListMgr(TuningPListMgr *this, const char *a2)
{
  *this = CFStringCreateWithCString(0, a2, 0x600u);
  *(this + 8) = 1;
  *(this + 6) = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = 16;
  v5 = MEMORY[0x277CBF138];
  v6 = MEMORY[0x277CBF150];
  do
  {
    *(this + v4) = CFDictionaryCreateMutable(v3, 0, v5, v6);
    v4 += 8;
  }

  while (v4 != 48);
}

void CACFString::~CACFString(CACFString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<void const*>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          std::vector<void const*>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25306A9B0](exception, "Could not construct");
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_2510D5B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
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

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(result, a2);
    }

    std::vector<void const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[31],int>(applesauce::CF::TypeRef *a1, const char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25306A9B0](exception, "Could not construct");
  }

  return a1;
}

void sub_2510D5E10(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *this = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25306A9B0](exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_2510D5F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void CFDictionaryReleaser::~CFDictionaryReleaser(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

uint64_t CACFString::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 != *a1)
  {
    if (*a1 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(*a1);
      v3 = *a2;
    }

    *a1 = v3;
    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    if (v5 == 1 && v3 != 0)
    {
      CFRetain(v3);
    }
  }

  return a1;
}

void TuningPListMgr::~TuningPListMgr(TuningPListMgr *this)
{
  for (i = 16; i != 48; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      CFRelease(v3);
      *(this + i) = 0;
    }
  }

  v4 = *(this + 6);
  if (v4)
  {
    if (*v4 != -1)
    {
      PListLogger::log(*(this + 6), "*** done.\n");
      close(*v4);
      *v4 = -1;
    }

    MEMORY[0x25306AA10](v4, 0x1000C4005A209FELL);
  }

  CACFString::~CACFString(this);
}

uint64_t TuningPListMgr::loadTuningInSubdirs_(uint64_t a1, const __CFString ***a2, unsigned int a3, int a4)
{
  if (a3 && (v8 = **a2) != 0 && CFStringHasPrefix(v8, @"/"))
  {
    v38 = 1;
    MutableCopy = CFStringCreateMutableCopy(0, 0, &stru_28632B830);
    theString = MutableCopy;
  }

  else
  {
    v10 = *a1;
    v38 = 1;
    MutableCopy = CFStringCreateMutableCopy(0, 0, v10);
    theString = MutableCopy;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v11 = a3 - 1;
  v12 = a2;
  if (!MutableCopy)
  {
    goto LABEL_9;
  }

LABEL_7:
  CFStringAppend(MutableCopy, @"/");
  if (theString)
  {
    CFStringAppend(theString, **v12);
  }

LABEL_9:
  while (v11)
  {
    MutableCopy = theString;
    --v11;
    ++v12;
    if (theString)
    {
      goto LABEL_7;
    }
  }

LABEL_12:
  if (a4 <= 4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277CBECE8];
  v15 = strlen(TuningPListMgr::kTuningFileTypeSuffixMap[v13]);
  v16 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], TuningPListMgr::kTuningFileTypeSuffixMap[v13], v15, 0x600u, 0, *MEMORY[0x277CBED00]);
  if (theString)
  {
    v17 = theString;
    if (!CFStringHasSuffix(theString, v16))
    {
      CFStringAppend(theString, v16);
      v17 = theString;
    }
  }

  else
  {
    v17 = 0;
  }

  Mutable = CFStringCreateMutable(v14, 512);
  v19 = CFURLCreateWithFileSystemPath(v14, v17, kCFURLPOSIXPathStyle, 0);
  if (v19 && (v20 = CFReadStreamCreateWithFile(v14, v19), CFRelease(v19), v20) && (CFReadStreamOpen(v20), v21 = CFPropertyListCreateWithStream(v14, v20, 0, 0, 0, 0), CFReadStreamClose(v20), CFRelease(v20), v21))
  {
    CFRelease(Mutable);
    v22 = a2[a3 - 1];
    v23 = *v22;
    if (v13)
    {
      v35 = *v22;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v35 = theString;
      v39 = 0;
      do
      {
        v28 = kLegacyStripNameKeys[v27];
        if (!CFDictionaryContainsKey(v21, v28))
        {
          if (!v26)
          {
            Count = CFDictionaryGetCount(v21);
            v25 = CFDictionaryCreateMutableCopy(v14, Count + 2, v21);
            v39 = v25;
          }

          CFDictionaryAddValue(v25, v28, v23);
          v26 = v25;
        }

        ++v27;
      }

      while (v27 != 2);
      if (v25)
      {
        CFRelease(v21);
      }

      else
      {
        v25 = v21;
      }

      v21 = v25;
    }

    Value = CFDictionaryGetValue(v21, @"name");
    if (Value)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(Value) && CFDictionaryGetCount(*(a1 + 16 + 8 * v13)) >= 1)
      {
        operator new[]();
      }
    }

    CFDictionarySetValue(*(a1 + 16 + 8 * v13), v35, v21);
    v33 = *(a1 + 48);
    if (v33)
    {
      PListLogger::logItemEntry(*(a1 + 16 + 8 * v13), "@@ Strips Oct 10 2025 21:34:37", v33, v32);
    }

    v24 = 0;
    if (v16)
    {
LABEL_45:
      CFRelease(v16);
    }
  }

  else
  {
    if (Mutable)
    {
      CFStringAppend(Mutable, @"Error loading plist file ");
      CFStringAppend(Mutable, v17);
      CFStringAppend(Mutable, @"\n");
    }

    CFRelease(Mutable);
    v21 = 0;
    v24 = 0xFFFFFFFFLL;
    if (v16)
    {
      goto LABEL_45;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  CACFMutableString::~CACFMutableString(&theString);
  return v24;
}

void sub_2510D672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(va1);
  CACFMutableString::~CACFMutableString(va);
  _Unwind_Resume(a1);
}

void CACFMutableString::~CACFMutableString(CACFMutableString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void PListLogger::logItemEntry(const __CFString *this, const char *a2, char *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(this);
  if (CFStringGetTypeID() == v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    valuePtr = 0u;
    v32 = 0u;
    v8 = *(a3 + 1);
    if (v8)
    {
      if (v8 >= 127)
      {
        v9 = 127;
      }

      else
      {
        v9 = v8;
      }

      memset(&valuePtr + v9 - (v9 - 1) - 1, 32, v9);
    }

    PListLogger::log(a3, "%s", &valuePtr);
    CFGetRetainCount(this);
    CFStringGetCStringPtr(this, 0);
    PListLogger::log(a3, "'%s' | String{%d} | %s\n");
  }

  else if (CFNumberGetTypeID() == v7)
  {
    Type = CFNumberGetType(this);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    valuePtr = 0u;
    v32 = 0u;
    v12 = *(a3 + 1);
    if (v12)
    {
      if (v12 >= 127)
      {
        v13 = 127;
      }

      else
      {
        v13 = v12;
      }

      memset(&valuePtr + v13 - (v13 - 1) - 1, 32, v13);
    }

    PListLogger::log(a3, "%s", &valuePtr);
    if (Type > kCFNumberDoubleType)
    {
      goto LABEL_55;
    }

    if (((1 << Type) & 0x3060) != 0)
    {
      *&valuePtr = 0;
      CFNumberGetValue(this, Type, &valuePtr);
      CFGetRetainCount(this);
      PListLogger::log(a3, "'%s' | Number(float){%d} | %f\n");
      goto LABEL_8;
    }

    if (((1 << Type) & 0x82) != 0)
    {
      LOBYTE(valuePtr) = 0;
      CFNumberGetValue(this, Type, &valuePtr);
      CFGetRetainCount(this);
      PListLogger::log(a3, "'%s' | Number(SInt8){%d} | 0x%02x\n");
      goto LABEL_8;
    }

    if (((1 << Type) & 0x104) == 0)
    {
LABEL_55:
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(this, Type, &valuePtr);
      v30 = CFGetRetainCount(this);
      PListLogger::log(a3, "'%s' | Number(SInt32){%d} | %-6d 0x%08x %c%c%c%c\n", a2, v30);
      goto LABEL_8;
    }

    LOWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    CFGetRetainCount(this);
    PListLogger::log(a3, "'%s' | Number(SInt16){%d} | 0x%04x\n");
  }

  else if (CFDictionaryGetTypeID() == v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    valuePtr = 0u;
    v32 = 0u;
    v14 = *(a3 + 1);
    if (v14)
    {
      if (v14 >= 127)
      {
        v15 = 127;
      }

      else
      {
        v15 = v14;
      }

      memset(&valuePtr + v15 - (v15 - 1) - 1, 32, v15);
    }

    PListLogger::log(a3, "%s", &valuePtr);
    v16 = CFGetRetainCount(this);
    Count = CFDictionaryGetCount(this);
    PListLogger::log(a3, "'%s' | Dictionary{%d} | %d key/value pairs\n", a2, v16, Count);
    if (!strcmp("aupreset", a2))
    {
      a3[8] = 1;
    }

    *(a3 + 1) += 4;
    CFDictionaryApplyFunction(this, PListLogger::logDictEntry, a3);
    *(a3 + 1) -= 4;
    a3[8] = 0;
  }

  else if (CFArrayGetTypeID() == v7)
  {
    v18 = CFArrayGetCount(this);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    valuePtr = 0u;
    v32 = 0u;
    v19 = *(a3 + 1);
    if (v19)
    {
      if (v19 >= 127)
      {
        v20 = 127;
      }

      else
      {
        v20 = v19;
      }

      memset(&valuePtr + v20 - (v20 - 1) - 1, 32, v20);
    }

    PListLogger::log(a3, "%s", &valuePtr);
    v21 = CFGetRetainCount(this);
    PListLogger::log(a3, "'%s' | Array{%d} | %d ordered objects\n", a2, v21, v18);
    v22 = *(a3 + 1);
    *(a3 + 1) = v22 + 4;
    if (v18 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(this, i);
        valuePtr = 0uLL;
        snprintf(&valuePtr, 0x10uLL, "[%u]", i);
        PListLogger::logItemEntry(ValueAtIndex, &valuePtr, a3, v25);
      }

      v22 = *(a3 + 1) - 4;
    }

    *(a3 + 1) = v22;
  }

  else if (CFDataGetTypeID() == v7)
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    valuePtr = 0uLL;
    v32 = 0uLL;
    v26 = *(a3 + 1);
    if (v26)
    {
      if (v26 >= 127)
      {
        v27 = 127;
      }

      else
      {
        v27 = v26;
      }

      memset(&valuePtr + v27 - (v27 - 1) - 1, 32, v27);
    }

    PListLogger::log(a3, "%s", &valuePtr);
    a3[8];
    CFGetRetainCount(this);
    CFDataGetLength(this);
    PListLogger::log(a3, "'%s' | %sData{%d} | %d bytes\n");
  }

  else
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    valuePtr = 0uLL;
    v32 = 0uLL;
    v28 = *(a3 + 1);
    if (v28)
    {
      if (v28 >= 127)
      {
        v29 = 127;
      }

      else
      {
        v29 = v28;
      }

      memset(&valuePtr + v29 - (v29 - 1) - 1, 32, v29);
    }

    PListLogger::log(a3, "%s", &valuePtr);
    PListLogger::log(a3, "'%s' | <unknown type id: %d)>\n");
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t PListLogger::logDictEntry(const __CFString *this, PListLogger *a2, const char *a3, void *a4)
{
  CStringPtr = CFStringGetCStringPtr(this, 0);

  return PListLogger::logItemEntry(a2, CStringPtr, a3, v7);
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

NSObject *TuningPListMgr::getAUPListByName(TuningPListMgr *this, const char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(this + 4) || (v3 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0, *MEMORY[0x277CBED00])) == 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(*(this + 4), v3);
  if (!Value || (v6 = Value, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v6)))
  {
    CFRelease(v4);
    if (atomic_load_explicit(&logSubsystem(void)::onceflag, memory_order_acquire) != -1)
    {
      *buf = &v10;
      v11 = buf;
      std::__call_once(&logSubsystem(void)::onceflag, &v11, std::__call_once_proxy[abi:ne200100]<std::tuple<logSubsystem(void)::$_0 &&>>);
    }

    if (logSubsystem(void)::scope)
    {
      v6 = *logSubsystem(void)::scope;
      if (!*logSubsystem(void)::scope)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "TuningPListMgr.cpp";
      v13 = 1024;
      v14 = 435;
      _os_log_impl(&dword_2510D3000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d return dictionary is null", buf, 0x12u);
    }

    goto LABEL_14;
  }

  CFRelease(v4);
LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

CFMutableStringRef PlatformUtilities::CopyHardwareModelShortName(PlatformUtilities *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    MutableCopy = 0;
    goto LABEL_20;
  }

  v3 = Mutable;
  v15 = 0u;
  v16 = 0u;
  *cStr = 0u;
  v14 = 0u;
  v11 = 64;
  sysctlbyname("hw.model", cStr, &v11, 0, 0);
  CFStringAppendCString(v3, cStr, 0);
  MutableCopy = CFStringCreateMutableCopy(v1, 0, v3);
  CFRelease(v3);
  if (MutableCopy)
  {
    v5 = @"AP";
    if (CFStringHasSuffix(MutableCopy, @"AP") || (v5 = @"DEV", CFStringHasSuffix(MutableCopy, @"DEV")) || (v5 = @"ap", CFStringHasSuffix(MutableCopy, @"ap")) || (v5 = @"dev", CFStringHasSuffix(MutableCopy, @"dev")))
    {
      CFStringTrim(MutableCopy, v5);
    }

    *cStr = 0;
    *&cStr[8] = 1;
    v6 = MGGetProductType();
    if (v6 == 952317141)
    {
      v11 = CFStringCreateWithCString(0, "u", 0x600u);
      v12 = 1;
      CACFString::operator=(cStr, &v11);
    }

    else
    {
      if (v6 != 2081274472 && v6 != 2468178735)
      {
        goto LABEL_16;
      }

      v11 = CFStringCreateWithCString(0, "m", 0x600u);
      v12 = 1;
      CACFString::operator=(cStr, &v11);
    }

    CACFString::~CACFString(&v11);
LABEL_16:
    v7 = *cStr;
    if (*cStr && CFStringHasSuffix(MutableCopy, *cStr))
    {
      Length = CFStringGetLength(MutableCopy);
      v18.length = CFStringGetLength(v7);
      v18.location = Length - v18.length;
      CFStringFindAndReplace(MutableCopy, v7, &stru_28632B830, v18, 1uLL);
    }

    CACFString::~CACFString(cStr);
  }

LABEL_20:
  v9 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

void sub_2510D7208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  CACFString::~CACFString(&a9);
  CACFString::~CACFString(&a11);
  _Unwind_Resume(a1);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}