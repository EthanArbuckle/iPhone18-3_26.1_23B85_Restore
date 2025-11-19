void sub_22CDA55D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26, uint64_t a27)
{
  __cxa_free_exception(v27);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22CDA57C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  MEMORY[0x2318C0600](v20, v21);
  _Unwind_Resume(a1);
}

NLTextSlot *NLTransliterationCandidateCopyInputString(NLTextSlot *result)
{
  if (result)
  {
    ResolvedDate = NLTextSlot::getResolvedDate(result);
    NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(ResolvedDate);

    return createCFStringFromString(v2);
  }

  return result;
}

CFStringRef NLTransliterationCandidateCopyOutputString(NLTextSlot *a1)
{
  if (!a1)
  {
    return 0;
  }

  ResolvedDate = NLTextSlot::getResolvedDate(a1);
  if (!ResolvedDate)
  {
    return 0;
  }

  TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(ResolvedDate);

  return createCFStringFromString(TransliteratedWord);
}

NLTextSlot *NLTransliterationCandidateIsExtensionCandidate(NLTextSlot *result)
{
  if (result)
  {
    ResolvedDate = NLTextSlot::getResolvedDate(result);

    return NLTransliterationCandidate::isExtensionCandidate(ResolvedDate);
  }

  return result;
}

double NLTransliterationCandidateScore(NLTextSlot *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  ResolvedDate = NLTextSlot::getResolvedDate(a1);

  return NLTransliterationCandidate::getLMScore(ResolvedDate);
}

void NLTransliteratorAcceptCandidate(uint64_t a1, CFIndex a2, NLTextSlot *a3)
{
  if (a1 && a3 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = *(a1 + 24);
    convertToVector(a2, __p);
    ResolvedDate = NLTextSlot::getResolvedDate(a3);
    (*(*v6 + 32))(v6, __p, ResolvedDate);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_22CDA5998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLTransliteratorFlushDynamicLanguageModel(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    v3 = *(**(a1 + 24) + 40);

    return v3();
  }

  return result;
}

uint64_t NLTransliteratorResetDynamicLanguageModel(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    v3 = *(**(a1 + 24) + 48);

    return v3();
  }

  return result;
}

uint64_t NLTransliterationCandidateIsInVocabulary(NLTextSlot *a1)
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  ResolvedDate = NLTextSlot::getResolvedDate(a1);
  if (!ResolvedDate)
  {
    return 0;
  }

  return NLTransliterationCandidate::isInVocabulary(ResolvedDate);
}

uint64_t NLTransliteratorAssetsAvailable()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v2 = 0;
    v3 = &v2;
    v4 = 0x3812000000;
    v5 = __Block_byref_object_copy__12;
    v6 = __Block_byref_object_dispose__12;
    v7 = &unk_22CDFE4D1;
    cf = 0;
    LMEnumerateAssetDataItems();
    v1 = v3[6];
    _Block_object_dispose(&v2, 8);
    if (cf)
    {
      CFRelease(cf);
    }

    return v1 != 0;
  }

  return result;
}

void sub_22CDA5C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v6 + 48), 0);
  _Unwind_Resume(a1);
}

uint64_t NLTransliterationCandidateCopyMetadata(NLTextSlot *a1)
{
  ResolvedDate = NLTextSlot::getResolvedDate(a1);

  return NLTransliterationCandidate::copyMetadata(ResolvedDate);
}

void TransliteratorWrapper::~TransliteratorWrapper(TransliteratorWrapper *this)
{
  TransliteratorWrapper::~TransliteratorWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400EF48;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    NLCompositeTransliterator::~NLCompositeTransliterator(v3);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

unint64_t applesauce::CF::convert_to<std::string,0>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *applesauce::CF::details::at_to<void const*>(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (result = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

unint64_t applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
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
    std::string::__throw_length_error[abi:ne200100]();
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

void sub_22CDA607C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
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

void nlp::CFScopedPtr<void *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZL23isSeq2SeqModelAvailablePK10__CFLocale_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v10 = PathComponent;
    if (CFStringsAreEqual(PathComponent, @"EMT_package"))
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = CFURLCopyPath(url);
      nlp::CFScopedPtr<__CFString const*>::reset((v11 + 48), v12);
      *a6 = 1;
    }

    CFRelease(v10);
  }
}

void sub_22CDA6214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NLLatticePath::NLLatticePath(uint64_t a1, const std::string *a2, double a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = a1 + 24;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  NLExtendedString::NLExtendedString(__p);
  v6 = *(a1 + 32);
  if (v6 >= *(a1 + 40))
  {
    v9 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(v5, __p);
    v10 = SHIBYTE(v13);
    *(a1 + 32) = v9;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = *__p;
    *(v6 + 16) = v13;
    *v6 = v7;
    v8 = v14;
    *(v6 + 40) = v15;
    *(v6 + 24) = v8;
    *(a1 + 32) = v6 + 48;
  }

  *(a1 + 48) = a3;
  return a1;
}

void sub_22CDA62E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

uint64_t NLLatticePath::appendPathString(std::string *this, const NLExtendedString *a2)
{
  size = this[1].__r_.__value_.__l.__size_;
  v3 = this + 1;
  if (size == this[1].__r_.__value_.__r.__words[0])
  {
    goto LABEL_16;
  }

  if (NLExtendedString::getJoinNext((size - 48)) == 1 && NLExtendedString::getJoinPrev(a2) == 1)
  {
    goto LABEL_8;
  }

  v6 = this[1].__r_.__value_.__l.__size_;
  if (v6 == this[1].__r_.__value_.__r.__words[0])
  {
LABEL_16:
    std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
  }

  if (NLExtendedString::getJoinNext((v6 - 48)) || NLExtendedString::getJoinPrev(a2))
  {
    v7 = 0;
    goto LABEL_15;
  }

LABEL_8:
  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(a2);
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  std::string::append(this, v10, v11);
  v7 = 1;
LABEL_15:
  std::vector<NLExtendedString>::push_back[abi:ne200100](v3, a2);
  return v7;
}

double NLLatticePath::addPathScore(NLLatticePath *this, double a2)
{
  result = *(this + 6) + a2;
  *(this + 6) = result;
  return result;
}

uint64_t NLLatticePath::getNodeVector@<X0>(NLLatticePath *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(a2, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 4));
}

void NLTokenizerWithDataDetector::NLTokenizerWithDataDetector(NLTokenizerWithDataDetector *this)
{
  err = 0;
  v2 = DDScannerCreateWithType();
  *this = v2;
  if (!v2 && err)
  {
    v3 = CFErrorCopyDescription(err);
    UTF8StringFromCFString = getUTF8StringFromCFString(v3, __p);
    v5 = NL::CFLogger::sharedInstance(UTF8StringFromCFString);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    (*(*v5 + 16))(v5, 3, "Could not create DDScanner : %s", v6);
    if (v3)
    {
      CFRelease(v3);
    }

    CFRelease(err);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22CDA6504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLTokenizerWithDataDetector::copyTokenizeWithDataDetectors(NLTokenizerWithDataDetector *this, const __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (*this && DDScannerScanString() && (v6 = *this, (v7 = DDScannerCopyResultsWithOptions()) != 0))
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v12 = 0;
      cf2 = *MEMORY[0x277D040A8];
      v28 = *MEMORY[0x277D04198];
      v29 = *MEMORY[0x277D040B0];
      v26 = *MEMORY[0x277D04190];
      v27 = *MEMORY[0x277D040A0];
      v13 = *MEMORY[0x277D04140];
      v30 = *MEMORY[0x277D04140];
      v31 = *MEMORY[0x277D041A8];
      while (1)
      {
        CFArrayGetValueAtIndex(v8, v12);
        Category = DDResultGetCategory();
        if (Category > 2)
        {
          if (Category == 3)
          {
            v15 = @"ADDRESS";
            goto LABEL_23;
          }

          if (Category == 4)
          {
            Type = DDResultGetType();
            if (CFEqual(Type, cf2) || CFEqual(Type, v29) || CFEqual(Type, v28) || CFEqual(Type, v27) || CFEqual(Type, v26))
            {
              goto LABEL_20;
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (Category == 1)
          {
            v15 = @"URL";
            goto LABEL_23;
          }

          if (Category == 2)
          {
            v15 = @"PHONE";
LABEL_23:
            Range = DDResultGetRange();
            v21 = v20;
            if (Range > v11)
            {
              v33.location = v11;
              v33.length = Range - v11;
              v22 = CFStringCreateWithSubstring(v4, a2, v33);
              CFArrayAppendValue(Mutable, v22);
              CFRelease(v22);
            }

            CFArrayAppendValue(Mutable, v15);
            v11 = Range + v21;
            goto LABEL_26;
          }
        }

        v17 = DDResultGetType();
        v18 = CFEqual(v17, v31);
        v15 = @"CURRENCY";
        if (DDResultHasType())
        {
          goto LABEL_23;
        }

        if (v18)
        {
LABEL_20:
          v15 = @"DATETIME";
          goto LABEL_23;
        }

LABEL_26:
        if (v10 == ++v12)
        {
          goto LABEL_30;
        }
      }
    }

    v11 = 0;
LABEL_30:
    CFRelease(v8);
  }

  else
  {
    v11 = 0;
  }

  Length = CFStringGetLength(a2);
  if (Length > v11)
  {
    v34.location = v11;
    v34.length = Length - v11;
    v24 = CFStringCreateWithSubstring(v4, a2, v34);
    CFArrayAppendValue(Mutable, v24);
    CFRelease(v24);
  }

  return Mutable;
}

__CFArray *NLTokenizerWithDataDetector::copyCharacterTokens(NLTokenizerWithDataDetector *this, const __CFString *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  Length = CFStringGetLength(a2);
  if (Length >= 1)
  {
    v6 = Length;
    for (i = 0; i != v6; ++i)
    {
      v10.location = i;
      v10.length = 1;
      v8 = CFStringCreateWithSubstring(v3, a2, v10);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
    }
  }

  return Mutable;
}

CFMutableArrayRef NLTokenizerWithDataDetector::copyTokens(NLTokenizerWithDataDetector *this, const __CFString *a2)
{
  v2 = NLTokenizerWithDataDetector::copyTokenizeWithDataDetectors(this, a2);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, *MEMORY[0x277D003A8]);
  v5 = NLTaggerCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Count = CFArrayGetCount(v2);
  v7 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
      NLTaggerSetString();
      CFStringGetLength(ValueAtIndex);
      NLTaggerEnumerateTokens();
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

void ___ZN27NLTokenizerWithDataDetector10copyTokensEPK10__CFString_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], *(a1 + 32), *a2);
  CFArrayAppendValue(*(a1 + 40), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFMutableArrayRef NLTokenizerWithDataDetector::copyTokenizedSentences(NLTokenizerWithDataDetector *this, const __CFString *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, *MEMORY[0x277D003A8]);
  v6 = NLTaggerCreate();
  NLTaggerSetString();
  CFStringGetLength(a2);
  v7 = CFArrayCreateMutable(v3, 0, v4);
  NLTaggerEnumerateTokens();
  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void ___ZN27NLTokenizerWithDataDetector22copyTokenizedSentencesEPK10__CFString_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], *(a1 + 32), *a2);
  CFArrayAppendValue(*(a1 + 40), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void getVocabulary(uint64_t a1, uint64_t a2)
{
  Completion = nlp::TrieCompletionGetCompletion(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, Completion);
  Score = NLBranchGetScore(a2);
  NL::SearchRules::addVocabulary(a1, __p, Score);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CDA6C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::SearchRules::addVocabulary(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    TermID = a3;
    if (a3)
    {
      v8 = a1 + 32;
      if (a1 + 40 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, a2))
      {
        return;
      }

LABEL_15:
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      LODWORD(v11) = TermID;
      std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(v8, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = TermID;
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *a2, *(a2 + 8));
      }

      else
      {
        *&__p.__r_.__value_.__r.__words[1] = *a2;
        v11 = *(a2 + 16);
      }

      std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::string>>(a1 + 8, &__p);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__size_);
      }

      return;
    }

    if (v4 < 0)
    {
      if (*(a2 + 8) != 4)
      {
LABEL_13:
        v8 = a1 + 32;
        if (a1 + 40 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, a2))
        {
          return;
        }

        TermID = NL::SearchRules::getTermID(a1, a2);
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else
    {
      v9 = a2;
      if (v4 != 4)
      {
        goto LABEL_13;
      }
    }

    if (*v9 == 1701736270)
    {
      return;
    }

    goto LABEL_13;
  }
}

void sub_22CDA6E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::SearchRules::createFromPath(NL::SearchRules *this, const __CFURL *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (this)
  {
    CFURLGetFileSystemRepresentation(this, 1u, buffer, 1024);
    if (!stat(buffer, &v6))
    {
      v4 = open(buffer, 0);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = mmap(0, v6.st_size, 1, 1, v4, 0);
        if (v5 != -1)
        {
          if (*v5 == 485346046 && v5[1] == 2)
          {
            operator new();
          }

          munmap(v5, v6.st_size);
        }

        close(v4);
      }
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t *NL::SearchRules::addRule(NL::SearchRules *this, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v10 = this + 208;
  v9 = *(this + 26);
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = this + 208;
  v12 = *(this + 26);
  do
  {
    v13 = *(v12 + 8);
    v14 = v13 >= a3;
    v15 = v13 < a3;
    if (v14)
    {
      v11 = v12;
    }

    v12 = *&v12[8 * v15];
  }

  while (v12);
  if (v11 == v10 || *(v11 + 8) > a3)
  {
LABEL_9:
    v44 = 0;
    v45 = 0;
    v43 = &v44;
    LODWORD(v46) = a3;
    v48 = 0;
    v49 = 0;
    v47 = &v48;
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>(this + 200, &v46);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(&v47, v48);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(&v43, v44);
    v9 = *v10;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v16 = v10;
  v17 = v9;
  do
  {
    v18 = *(v17 + 32);
    v14 = v18 >= a3;
    v19 = v18 < a3;
    if (v14)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v19);
  }

  while (v17);
  if (v16 == v10 || *(v16 + 8) > a3)
  {
LABEL_18:
    v16 = v10;
  }

  v22 = *(v16 + 6);
  v20 = v16 + 48;
  v21 = v22;
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = v20;
  do
  {
    v24 = *(v21 + 8);
    v14 = v24 >= a2;
    v25 = v24 < a2;
    if (v14)
    {
      v23 = v21;
    }

    v21 = *&v21[8 * v25];
  }

  while (v21);
  if (v23 == v20 || *(v23 + 8) > a2)
  {
LABEL_27:
    v23 = v20;
  }

  if (!v9)
  {
    goto LABEL_36;
  }

  v26 = v10;
  v27 = v9;
  do
  {
    v28 = *(v27 + 32);
    v14 = v28 >= a3;
    v29 = v28 < a3;
    if (v14)
    {
      v26 = v27;
    }

    v27 = *(v27 + 8 * v29);
  }

  while (v27);
  if (v26 == v10 || *(v26 + 8) > a3)
  {
LABEL_36:
    v26 = v10;
  }

  if (v23 == v26 + 48)
  {
    if (!v9)
    {
      goto LABEL_48;
    }

    v30 = v10;
    do
    {
      v31 = *(v9 + 32);
      v14 = v31 >= a3;
      v32 = v31 < a3;
      if (v14)
      {
        v30 = v9;
      }

      v9 = *(v9 + 8 * v32);
    }

    while (v9);
    if (v30 == v10 || *(v30 + 8) > a3)
    {
LABEL_48:
      v30 = v10;
    }

    v44 = 0;
    v45 = 0;
    v43 = &v44;
    LODWORD(v46) = a2;
    v48 = 0;
    v49 = 0;
    v47 = &v48;
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>((v30 + 40), &v46);
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(&v47, v48);
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(&v43, v44);
    v9 = *v10;
    if (!*v10)
    {
      goto LABEL_57;
    }
  }

  else if (!v9)
  {
LABEL_57:
    v33 = v10;
    goto LABEL_58;
  }

  v33 = v10;
  do
  {
    v34 = *(v9 + 32);
    v14 = v34 >= a3;
    v35 = v34 < a3;
    if (v14)
    {
      v33 = v9;
    }

    v9 = *(v9 + 8 * v35);
  }

  while (v9);
  if (v33 == v10 || *(v33 + 8) > a3)
  {
    goto LABEL_57;
  }

LABEL_58:
  v38 = *(v33 + 6);
  v36 = v33 + 48;
  v37 = v38;
  if (!v38)
  {
    goto LABEL_66;
  }

  v39 = v36;
  do
  {
    v40 = v37[8];
    v14 = v40 >= a2;
    v41 = v40 < a2;
    if (v14)
    {
      v39 = v37;
    }

    v37 = *&v37[2 * v41];
  }

  while (v37);
  if (v39 == v36 || *(v39 + 8) > a2)
  {
LABEL_66:
    v39 = v36;
  }

  v46 = a4 | (a5 << 32);
  return std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>((v39 + 5), &v46);
}

void sub_22CDA7428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(v15 + 8, a15);
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

void NL::SearchRules::setIsInferred(NL::SearchRules *this, unsigned int a2)
{
  v10 = a2;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 16);
    do
    {
      v4 = v2[8];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[2 * v6];
    }

    while (v2);
    if (v3 != (this + 16) && v3[8] <= a2)
    {
      v8 = *(this + 13);
      v9 = *(this + 14);
      v7 = (this + 104);
      if (v8 != v9)
      {
        while (*v8 != a2)
        {
          if (++v8 == v9)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_14:
        std::vector<unsigned int>::push_back[abi:ne200100](v7, &v10);
      }
    }
  }
}

void NL::SearchRules::setIsCombinable(NL::SearchRules *this, unsigned int a2)
{
  v10 = a2;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 16);
    do
    {
      v4 = v2[8];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[2 * v6];
    }

    while (v2);
    if (v3 != (this + 16) && v3[8] <= a2)
    {
      v8 = *(this + 16);
      v9 = *(this + 17);
      v7 = (this + 128);
      if (v8 != v9)
      {
        while (*v8 != a2)
        {
          if (++v8 == v9)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_14:
        std::vector<unsigned int>::push_back[abi:ne200100](v7, &v10);
      }
    }
  }
}

void NL::SearchRules::setIsFunction(NL::SearchRules *this, unsigned int a2)
{
  v10 = a2;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 16);
    do
    {
      v4 = v2[8];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[2 * v6];
    }

    while (v2);
    if (v3 != (this + 16) && v3[8] <= a2)
    {
      v8 = *(this + 19);
      v9 = *(this + 20);
      v7 = (this + 152);
      if (v8 != v9)
      {
        while (*v8 != a2)
        {
          if (++v8 == v9)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_14:
        std::vector<unsigned int>::push_back[abi:ne200100](v7, &v10);
      }
    }
  }
}

void NL::SearchRules::setRequiresComplement(NL::SearchRules *this, unsigned int a2)
{
  v10 = a2;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 16);
    do
    {
      v4 = v2[8];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[2 * v6];
    }

    while (v2);
    if (v3 != (this + 16) && v3[8] <= a2)
    {
      v8 = *(this + 22);
      v9 = *(this + 23);
      v7 = (this + 176);
      if (v8 != v9)
      {
        while (*v8 != a2)
        {
          if (++v8 == v9)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_14:
        std::vector<unsigned int>::push_back[abi:ne200100](v7, &v10);
      }
    }
  }
}

void NL::SearchRules::setEquivalence(NL::SearchRules *this, unsigned int a2, unsigned int a3)
{
  v42 = a3;
  v43 = a2;
  v5 = this + 64;
  v4 = *(this + 8);
  v6 = this + 56;
  if (!v4)
  {
LABEL_15:
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - *(this + 10)) >> 3);
    __p = a2;
    v40 = v16;
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned long>>(this + 56, &__p);
    __p = v42;
    v40 = v16;
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned long>>(v6, &__p);
    __p = 0;
    v40 = 0;
    v41 = 0;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v43);
    std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v42);
    std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](this + 80, &__p);
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    return;
  }

  v7 = this + 64;
  v8 = *(this + 8);
  do
  {
    v9 = *(v8 + 7);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v7 = v8;
    }

    v8 = *&v8[8 * v11];
  }

  while (v8);
  v12 = this + 64;
  v13 = *(this + 8);
  if (v7 == v5 || (v12 = this + 64, v13 = *(this + 8), *(v7 + 7) > a2))
  {
    do
    {
      v14 = *(v13 + 7);
      v10 = v14 >= a3;
      v15 = v14 < a3;
      if (v10)
      {
        v12 = v13;
      }

      v13 = *&v13[8 * v15];
    }

    while (v13);
    if (v12 == v5 || *(v12 + 7) > a3)
    {
      goto LABEL_15;
    }

    v29 = this + 64;
    v30 = *(this + 8);
    do
    {
      v31 = *(v30 + 7);
      v10 = v31 >= a3;
      v32 = v31 < a3;
      if (v10)
      {
        v29 = v30;
      }

      v30 = *&v30[8 * v32];
    }

    while (v30);
    if (v29 == v5 || *(v29 + 7) > a3)
    {
      v29 = this + 64;
    }

    v21 = *(v29 + 8);
    v33 = *(this + 10) + 24 * v21;
    v34 = *v33;
    v35 = *(v33 + 8);
    if (*v33 != v35)
    {
      while (*v34 != a2)
      {
        if (++v34 == v35)
        {
          goto LABEL_53;
        }
      }
    }

    if (v34 == v35)
    {
LABEL_53:
      std::vector<unsigned int>::push_back[abi:ne200100](v33, &v43);
      v4 = *v5;
      a2 = v43;
    }

    if (!v4)
    {
      goto LABEL_62;
    }

    v36 = v5;
    do
    {
      v37 = *(v4 + 28);
      v10 = v37 >= a2;
      v38 = v37 < a2;
      if (v10)
      {
        v36 = v4;
      }

      v4 = *(v4 + 8 * v38);
    }

    while (v4);
    if (v36 == v5 || a2 < *(v36 + 7))
    {
LABEL_62:
      v28 = a2;
      goto LABEL_63;
    }
  }

  else
  {
    v17 = this + 64;
    v18 = *(this + 8);
    do
    {
      v19 = *(v18 + 7);
      v10 = v19 >= a2;
      v20 = v19 < a2;
      if (v10)
      {
        v17 = v18;
      }

      v18 = *&v18[8 * v20];
    }

    while (v18);
    if (v17 == v5 || *(v17 + 7) > a2)
    {
      v17 = this + 64;
    }

    v21 = *(v17 + 8);
    v22 = *(this + 10) + 24 * v21;
    v23 = *v22;
    v24 = *(v22 + 8);
    if (*v22 != v24)
    {
      while (*v23 != a3)
      {
        if (++v23 == v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (v23 == v24)
    {
LABEL_30:
      std::vector<unsigned int>::push_back[abi:ne200100](v22, &v42);
      v4 = *v5;
      a3 = v42;
    }

    if (!v4)
    {
      goto LABEL_39;
    }

    v25 = v5;
    do
    {
      v26 = *(v4 + 28);
      v10 = v26 >= a3;
      v27 = v26 < a3;
      if (v10)
      {
        v25 = v4;
      }

      v4 = *(v4 + 8 * v27);
    }

    while (v4);
    if (v25 == v5 || a3 < *(v25 + 7))
    {
LABEL_39:
      v28 = a3;
LABEL_63:
      __p = (v28 | (v21 << 32));
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>(v6, &__p);
    }
  }
}

void sub_22CDA7994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NL::SearchRules *NL::SearchRules::SearchRules(NL::SearchRules *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 5) = 0u;
  *(this + 8) = 0u;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 24) = 0;
  *(this + 25) = this + 208;
  NL::SearchRules::loadVocabulary(this);
  return this;
}

void sub_22CDA7A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = v6;
  std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::destroy(v8, *(v2 + 208));
  v10 = *(v2 + 176);
  if (v10)
  {
    *(v2 + 184) = v10;
    operator delete(v10);
  }

  NL::SearchRules::SearchRules((v2 + 152), v7, (v2 + 104), v2);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(v5, *(v2 + 64));
  std::__tree<std::string>::destroy(v4, *(v2 + 40));
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(v3, *(v2 + 16));
  _Unwind_Resume(a1);
}

void NL::SearchRules::loadVocabulary(NL::SearchRules *this)
{
  std::string::basic_string[abi:ne200100]<0>(v2, "None");
  *__p = *v2;
  *&__p[16] = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  LODWORD(v5) = 0;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(this + 32, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v2, "None");
  *__p = 0;
  *&__p[8] = *v2;
  v5 = v3;
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::string>>(this + 8, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v2, "S");
  *__p = *v2;
  *&__p[16] = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  LODWORD(v5) = 1;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(this + 32, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v2, "S");
  *__p = 1;
  *&__p[8] = *v2;
  v5 = v3;
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::string>>(this + 8, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v2, "$");
  *__p = *v2;
  *&__p[16] = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  LODWORD(v5) = 2;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(this + 32, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v2, "$");
  *__p = 2;
  *&__p[8] = *v2;
  v5 = v3;
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::string>>(this + 8, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }

  *(this + 1) = 3;
  std::string::basic_string[abi:ne200100]<0>(__p, "To");
  NL::SearchRules::addVocabulary(this, __p, 3);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Of");
  NL::SearchRules::addVocabulary(this, __p, 4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "From");
  NL::SearchRules::addVocabulary(this, __p, 5);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "For");
  NL::SearchRules::addVocabulary(this, __p, 6);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "About");
  NL::SearchRules::addVocabulary(this, __p, 7);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "With");
  NL::SearchRules::addVocabulary(this, __p, 8);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "By");
  NL::SearchRules::addVocabulary(this, __p, 9);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "In");
  NL::SearchRules::addVocabulary(this, __p, 10);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "As");
  NL::SearchRules::addVocabulary(this, __p, 11);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Via");
  NL::SearchRules::addVocabulary(this, __p, 12);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Honorific");
  NL::SearchRules::addVocabulary(this, __p, 13);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "After");
  NL::SearchRules::addVocabulary(this, __p, 14);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Before");
  NL::SearchRules::addVocabulary(this, __p, 15);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Since");
  NL::SearchRules::addVocabulary(this, __p, 16);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  NL::SearchRules::addVocabulary(this, __p, 17);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  NL::SearchRules::addVocabulary(this, __p, 18);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "JabberOrEmail");
  NL::SearchRules::addVocabulary(this, __p, 19);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AIMOrEmail");
  NL::SearchRules::addVocabulary(this, __p, 20);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Date");
  NL::SearchRules::addVocabulary(this, __p, 21);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TO");
  NL::SearchRules::addVocabulary(this, __p, 22);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FROM");
  NL::SearchRules::addVocabulary(this, __p, 23);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FROMTO");
  NL::SearchRules::addVocabulary(this, __p, 24);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SENTO");
  NL::SearchRules::addVocabulary(this, __p, 25);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SENTFROM");
  NL::SearchRules::addVocabulary(this, __p, 26);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "WITH");
  NL::SearchRules::addVocabulary(this, __p, 27);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "BY");
  NL::SearchRules::addVocabulary(this, __p, 28);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AUTHORED");
  NL::SearchRules::addVocabulary(this, __p, 29);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "DATE");
  NL::SearchRules::addVocabulary(this, __p, 30);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ANYDATE");
  NL::SearchRules::addVocabulary(this, __p, 31);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FROMDATE");
  NL::SearchRules::addVocabulary(this, __p, 32);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "BEFOREDATE");
  NL::SearchRules::addVocabulary(this, __p, 33);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AFTERDATE");
  NL::SearchRules::addVocabulary(this, __p, 34);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SINCEDATE");
  NL::SearchRules::addVocabulary(this, __p, 35);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "STARTDATE");
  NL::SearchRules::addVocabulary(this, __p, 36);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ENDDATE");
  NL::SearchRules::addVocabulary(this, __p, 37);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ABOUT");
  NL::SearchRules::addVocabulary(this, __p, 38);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TOPIC");
  NL::SearchRules::addVocabulary(this, __p, 39);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TOPICMOD");
  NL::SearchRules::addVocabulary(this, __p, 40);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "THEME");
  NL::SearchRules::addVocabulary(this, __p, 41);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TITLE");
  NL::SearchRules::addVocabulary(this, __p, 42);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TITLED");
  NL::SearchRules::addVocabulary(this, __p, 43);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TITLEMOD");
  NL::SearchRules::addVocabulary(this, __p, 44);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FILETITLED");
  NL::SearchRules::addVocabulary(this, __p, 45);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "QUOTED");
  NL::SearchRules::addVocabulary(this, __p, 46);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD");
  NL::SearchRules::addVocabulary(this, __p, 47);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVEMOD");
  NL::SearchRules::addVocabulary(this, __p, 48);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "IGNORED");
  NL::SearchRules::addVocabulary(this, __p, 49);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "IGNOREMOD");
  NL::SearchRules::addVocabulary(this, __p, 50);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "REPLIED");
  NL::SearchRules::addVocabulary(this, __p, 51);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "REPLYMOD");
  NL::SearchRules::addVocabulary(this, __p, 52);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FLAGGED");
  NL::SearchRules::addVocabulary(this, __p, 53);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FLAGMOD");
  NL::SearchRules::addVocabulary(this, __p, 54);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED");
  NL::SearchRules::addVocabulary(this, __p, 55);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MODIFIED");
  NL::SearchRules::addVocabulary(this, __p, 56);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "DOWNLOADED");
  NL::SearchRules::addVocabulary(this, __p, 57);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PRINTED");
  NL::SearchRules::addVocabulary(this, __p, 58);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "VIEWED");
  NL::SearchRules::addVocabulary(this, __p, 59);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ADDED");
  NL::SearchRules::addVocabulary(this, __p, 60);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AIRDROPPED");
  NL::SearchRules::addVocabulary(this, __p, 61);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGED");
  NL::SearchRules::addVocabulary(this, __p, 62);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILED");
  NL::SearchRules::addVocabulary(this, __p, 63);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SHARED");
  NL::SearchRules::addVocabulary(this, __p, 64);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "CAPTURED");
  NL::SearchRules::addVocabulary(this, __p, 65);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "CONTAINS");
  NL::SearchRules::addVocabulary(this, __p, 66);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TAGGED");
  NL::SearchRules::addVocabulary(this, __p, 67);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TAGMOD");
  NL::SearchRules::addVocabulary(this, __p, 68);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ATTACHED");
  NL::SearchRules::addVocabulary(this, __p, 69);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ATTACHMOD");
  NL::SearchRules::addVocabulary(this, __p, 70);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "KIND");
  NL::SearchRules::addVocabulary(this, __p, 71);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ALBUM");
  NL::SearchRules::addVocabulary(this, __p, 72);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Sent");
  NL::SearchRules::addVocabulary(this, __p, 73);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "UserSent");
  NL::SearchRules::addVocabulary(this, __p, 74);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Received");
  NL::SearchRules::addVocabulary(this, __p, 75);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Tag");
  NL::SearchRules::addVocabulary(this, __p, 76);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  NL::SearchRules::addVocabulary(this, __p, 77);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "NameText");
  NL::SearchRules::addVocabulary(this, __p, 78);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  NL::SearchRules::addVocabulary(this, __p, 79);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Title");
  NL::SearchRules::addVocabulary(this, __p, 80);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Titled");
  NL::SearchRules::addVocabulary(this, __p, 81);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MessageKind");
  NL::SearchRules::addVocabulary(this, __p, 82);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MailKind");
  NL::SearchRules::addVocabulary(this, __p, 83);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ChatKind");
  NL::SearchRules::addVocabulary(this, __p, 84);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteKind");
  NL::SearchRules::addVocabulary(this, __p, 85);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  NL::SearchRules::addVocabulary(this, __p, 86);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  NL::SearchRules::addVocabulary(this, __p, 87);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  NL::SearchRules::addVocabulary(this, __p, 88);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  NL::SearchRules::addVocabulary(this, __p, 89);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AlbumKind");
  NL::SearchRules::addVocabulary(this, __p, 90);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ApplicationKind");
  NL::SearchRules::addVocabulary(this, __p, 91);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  NL::SearchRules::addVocabulary(this, __p, 92);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  NL::SearchRules::addVocabulary(this, __p, 93);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  NL::SearchRules::addVocabulary(this, __p, 94);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  NL::SearchRules::addVocabulary(this, __p, 95);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PdfKind");
  NL::SearchRules::addVocabulary(this, __p, 96);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  NL::SearchRules::addVocabulary(this, __p, 97);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "NotesKind");
  NL::SearchRules::addVocabulary(this, __p, 98);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_22CDA8F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22CDA90E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    JUMPOUT(0x22CDA90D8);
  }

  JUMPOUT(0x22CDA90DCLL);
}

BOOL NL::SearchRules::hasExpansions(NL::SearchRules *this, unsigned int a2)
{
  v4 = *(this + 26);
  v2 = this + 208;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 8) > a2)
  {
LABEL_9:
    v5 = v2;
  }

  return v5 != v2;
}

BOOL NL::SearchRules::isEquivalent(NL::SearchRules *this, unsigned int a2, unsigned int a3)
{
  v5 = *(this + 8);
  v3 = this + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  do
  {
    v8 = *(v7 + 7);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *&v7[8 * v10];
  }

  while (v7);
  if (v6 == v3 || *(v6 + 7) > a2)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  do
  {
    v13 = *(v12 + 7);
    v9 = v13 >= a3;
    v14 = v13 < a3;
    if (v9)
    {
      v11 = v12;
    }

    v12 = *&v12[8 * v14];
  }

  while (v12);
  if (v11 == v3 || *(v11 + 7) > a3)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  do
  {
    v17 = *(v16 + 7);
    v9 = v17 >= a2;
    v18 = v17 < a2;
    if (v9)
    {
      v15 = v16;
    }

    v16 = *&v16[8 * v18];
  }

  while (v16);
  if (v15 == v3 || *(v15 + 7) > a2)
  {
    v15 = v3;
  }

  v19 = *(v15 + 8);
  v20 = v3;
  do
  {
    v21 = *(v4 + 7);
    v9 = v21 >= a3;
    v22 = v21 < a3;
    if (v9)
    {
      v20 = v4;
    }

    v4 = *&v4[8 * v22];
  }

  while (v4);
  if (v20 == v3 || *(v20 + 7) > a3)
  {
    v20 = v3;
  }

  return v19 == *(v20 + 8);
}

char *NL::SearchRules::term(NL::SearchRules *this, unsigned int a2)
{
  v4 = *(this + 2);
  v2 = this + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v2;
  v6 = v3;
  do
  {
    v7 = *(v6 + 8);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *&v6[8 * v9];
  }

  while (v6);
  if (v5 == v2 || *(v5 + 8) > a2)
  {
    do
    {
      v10 = v3;
      v3 = *v3;
    }

    while (v3);
    if (v10 != v2 && !*(v10 + 8))
    {
      return v10 + 40;
    }

LABEL_20:
    v10 = v2;
    return v10 + 40;
  }

  v10 = v2;
  do
  {
    v11 = *(v3 + 8);
    v8 = v11 >= a2;
    v12 = v11 < a2;
    if (v8)
    {
      v10 = v3;
    }

    v3 = *&v3[8 * v12];
  }

  while (v3);
  if (v10 == v2 || *(v10 + 8) > a2)
  {
    goto LABEL_20;
  }

  return v10 + 40;
}

uint64_t NL::SearchRules::termID(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  if (a1 + 40 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, a2))
  {
    return *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, a2) + 56);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "None");
  v5 = *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, __p) + 56);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_22CDA93B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::SearchRules::score(NL::SearchRules *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = *(this + 26);
  v4 = this + 208;
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  do
  {
    v9 = *(v8 + 8);
    v10 = v9 >= a3;
    v11 = v9 < a3;
    if (v10)
    {
      v7 = v8;
    }

    v8 = *&v8[8 * v11];
  }

  while (v8);
  if (v7 == v4 || *(v7 + 8) > a3)
  {
    return 0;
  }

  v12 = v4;
  do
  {
    v13 = *(v5 + 8);
    v10 = v13 >= a3;
    v14 = v13 < a3;
    if (v10)
    {
      v12 = v5;
    }

    v5 = *&v5[8 * v14];
  }

  while (v5);
  if (v12 == v4 || *(v12 + 8) > a3)
  {
    v12 = v4;
  }

  v17 = *(v12 + 6);
  v15 = v12 + 48;
  v16 = v17;
  if (!v17)
  {
    return 0;
  }

  v18 = v15;
  v19 = v16;
  do
  {
    v20 = *(v19 + 8);
    v10 = v20 >= a2;
    v21 = v20 < a2;
    if (v10)
    {
      v18 = v19;
    }

    v19 = *&v19[8 * v21];
  }

  while (v19);
  if (v18 == v15 || *(v18 + 8) > a2)
  {
    return 0;
  }

  v22 = v15;
  do
  {
    v23 = *(v16 + 8);
    v10 = v23 >= a2;
    v24 = v23 < a2;
    if (v10)
    {
      v22 = v16;
    }

    v16 = *&v16[8 * v24];
  }

  while (v16);
  if (v22 == v15 || *(v22 + 8) > a2)
  {
    v22 = v15;
  }

  v27 = *(v22 + 6);
  v26 = v22 + 48;
  v25 = v27;
  if (!v27)
  {
    return 0;
  }

  v28 = v26;
  v29 = v25;
  do
  {
    v30 = *(v29 + 7);
    v10 = v30 >= a4;
    v31 = v30 < a4;
    if (v10)
    {
      v28 = v29;
    }

    v29 = *&v29[8 * v31];
  }

  while (v29);
  if (v28 == v26 || *(v28 + 7) > a4)
  {
    return 0;
  }

  v33 = v26;
  do
  {
    v34 = *(v25 + 7);
    v10 = v34 >= a4;
    v35 = v34 < a4;
    if (v10)
    {
      v33 = v25;
    }

    v25 = *&v25[8 * v35];
  }

  while (v25);
  if (v33 == v26 || *(v33 + 7) > a4)
  {
    v33 = v26;
  }

  return *(v33 + 8);
}

uint64_t NL::SearchRules::termIDs(uint64_t result, uint64_t a2)
{
  v8 = 0;
  v2 = *(result + 8);
  v3 = (result + 16);
  if (v2 != (result + 16))
  {
    do
    {
      result = (*(a2 + 16))(a2, *(v2 + 8), &v8);
      if (v8)
      {
        break;
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void NL::SearchRules::expansions(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v27 = 0;
  v5 = *(a1 + 208);
  v3 = a1 + 208;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    v8 = v4;
    do
    {
      v9 = *(v8 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = *(v8 + 8 * v11);
    }

    while (v8);
    if (v7 != v3 && *(v7 + 32) <= a2)
    {
      v12 = v3;
      do
      {
        v13 = *(v4 + 32);
        v10 = v13 >= a2;
        v14 = v13 < a2;
        if (v10)
        {
          v12 = v4;
        }

        v4 = *(v4 + 8 * v14);
      }

      while (v4);
      if (v12 == v3 || *(v12 + 32) > a2)
      {
        v12 = v3;
      }

      v15 = *(v12 + 40);
      v16 = (v12 + 48);
      if (v15 != (v12 + 48))
      {
        do
        {
          __p = 0;
          v25 = 0;
          v26 = 0;
          v17 = v15[5];
          if (v17 != v15 + 6)
          {
            do
            {
              std::vector<unsigned int>::push_back[abi:ne200100](&__p, v17 + 7);
              v18 = v17[1];
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
                  v19 = v17[2];
                  v20 = *v19 == v17;
                  v17 = v19;
                }

                while (!v20);
              }

              v17 = v19;
            }

            while (v19 != v15 + 6);
          }

          (*(a3 + 16))(a3, *(v15 + 8), &__p, &v27);
          v21 = v27;
          if (__p)
          {
            v25 = __p;
            operator delete(__p);
          }

          if (v21)
          {
            break;
          }

          v22 = v15[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v15[2];
              v20 = *v23 == v15;
              v15 = v23;
            }

            while (!v20);
          }

          v15 = v23;
        }

        while (v23 != v16);
      }
    }
  }
}

void sub_22CDA974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(a1, v12);
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

uint64_t NL::SearchRules::getTermID(uint64_t a1, const void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, a2);
  if (a1 + 40 != v4)
  {
    return *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 32, a2) + 56);
  }

  v6 = *(a1 + 32);
  if (v6 == v4)
  {
    result = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      if (*(v6 + 14) > v7)
      {
        v7 = *(v6 + 14);
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v4);
    result = v7 + 1;
  }

  *(a1 + 4) = result;
  return result;
}

uint64_t std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28400E028;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>>::__construct_node<std::pair<unsigned int,std::map<unsigned int,std::map<unsigned int,unsigned int>>>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::string>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned long>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(&v14);
  return v8;
}

void sub_22CDAA144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CDAA1B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void NLAbstractDictionaryLookup::~NLAbstractDictionaryLookup(NLAbstractDictionaryLookup *this)
{
  *this = &unk_28400E8D0;
  v1 = *(this + 1);
  if (v1)
  {
    NL::StringMap::~StringMap(v1);
    MEMORY[0x2318C0600]();
  }
}

_DWORD *NLMessageIntentTypeWithMetadata::NLMessageIntentTypeWithMetadata(_DWORD *a1, int a2, uint64_t a3)
{
  *a1 = a2;
  std::unordered_map<std::string,std::string>::unordered_map((a1 + 2), a3);
  return a1;
}

void NLEnglishHindiDictionaryLookup::NLEnglishHindiDictionaryLookup(NLEnglishHindiDictionaryLookup *this)
{
  NLAbstractDictionaryLookup::NLAbstractDictionaryLookup(this);
  *v1 = &unk_28400E2F0;
  NLEnglishHindiDictionaryLookup::loadDictMap(v1);
}

void NLEnglishHindiDictionaryLookup::loadDictMap(NLEnglishHindiDictionaryLookup *this)
{
  CFLocaleCreate(0, @"hi");
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  __p[3] = MEMORY[0x277D85DD0];
  __p[4] = 0x40000000;
  __p[5] = ___ZN30NLEnglishHindiDictionaryLookup11loadDictMapEv_block_invoke;
  __p[6] = &unk_27873FAB8;
  __p[7] = &v5;
  LMEnumerateAssetDataItems();
  v2 = v6[3];
  if (v2)
  {
    getUTF8StringFromCFString(v2, __p);
    CFRelease(v6[3]);
    NL::StringMap::createWithFile();
  }

  v3 = NL::CFLogger::sharedInstance(0);
  (*(*v3 + 16))(v3, 3, "Could not locate English-Hindi dictionary resource");
  *(this + 1) = 0;
  _Block_object_dispose(&v5, 8);
}

void ___ZN30NLEnglishHindiDictionaryLookup11loadDictMapEv_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v10 = PathComponent;
    if (CFStringsAreEqual(PathComponent, @"english-hindi.dict"))
    {
      *(*(*(a1 + 32) + 8) + 24) = CFURLCopyPath(url);
      *a6 = 1;
    }

    CFRelease(v10);
  }
}

double NLEnglishHindiDictionaryLookup::getWord@<D0>(uint64_t a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    NL::StringMap::get(v4, a2, &v30);
    if (!std::string::compare(&v30, ""))
    {
      result = *&v30.__r_.__value_.__l.__data_;
      *a3 = v30;
    }

    else
    {
      v26 = a3;
      __src = 0;
      v5 = 0;
      v28 = 0;
      v29 = 0;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v30;
      }

      else
      {
        v6 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v8 = *MEMORY[0x277D82828];
      v9 = *(MEMORY[0x277D82828] + 24);
      do
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 > 0x71)
        {
          if (v10 == 114)
          {
            v11 = 44;
          }

          else
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
            MEMORY[0x2318C0470](&v33, v10);
            v12 = std::stringbuf::str();
            v13 = NL::CFLogger::sharedInstance(v12);
            p_p = &__p;
            if (v32 < 0)
            {
              p_p = __p;
            }

            (*(*v13 + 16))(v13, 3, "Could not find decoding for character: %s\n", p_p);
            if (v32 < 0)
            {
              operator delete(__p);
            }

            v33 = v8;
            *(&v33 + *(v8 - 24)) = v9;
            v34 = MEMORY[0x277D82878] + 16;
            if (v36 < 0)
            {
              operator delete(v35[7].__locale_);
            }

            v34 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v35);
            std::ostream::~ostream();
            MEMORY[0x2318C0570](&v37);
            v11 = 32;
            v5 = v28;
          }
        }

        else
        {
          v11 = v10 | 0x900;
        }

        if (v5 >= v29)
        {
          v15 = __src;
          v16 = v5 - __src;
          v17 = (v5 - __src) >> 1;
          if (v17 <= -2)
          {
            std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
          }

          if (v29 - __src <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          else
          {
            v18 = v29 - __src;
          }

          v19 = 0x7FFFFFFFFFFFFFFFLL;
          if (v29 - __src < 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__src, v19);
          }

          v20 = v17;
          v21 = (2 * v17);
          v22 = &v21[-v20];
          *v21 = v11;
          v5 = v21 + 1;
          memcpy(v22, v15, v16);
          v23 = __src;
          __src = v22;
          v28 = v5;
          v29 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v5++ = v11;
        }

        v28 = v5;
        v6 = (v6 + 1);
        --size;
      }

      while (size);
      v24 = CFStringCreateWithCharacters(0, __src, (v5 - __src) >> 1);
      getUTF8StringFromCFString(v24, v26);
      CFRelease(v24);
      if (__src)
      {
        v28 = __src;
        operator delete(__src);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    a3[23] = 0;
    *a3 = 0;
  }

  return result;
}

void sub_22CDAA8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void NLTextSlot::~NLTextSlot(NLTextSlot *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t NLTextStructuredEvent::NLTextStructuredEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, char **a8, char **a9)
{
  *(a1 + 56) = 0u;
  v11 = (a1 + 56);
  v12 = (a1 + 80);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  v13 = *a7;
  v14 = a7[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v15 = *(a1 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = v13;
  }

  if (v11 != a8)
  {
    std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(v11, *a8, a8[1], (a8[1] - *a8) >> 3);
  }

  if (v12 != a9)
  {
    std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(v12, *a9, a9[1], (a9[1] - *a9) >> 3);
  }

  return a1;
}

void sub_22CDAAAA4(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  NLTextStructuredEvent::NLTextStructuredEvent(v2, v4, v1);
  _Unwind_Resume(a1);
}

void NLTextStructuredEvent::~NLTextStructuredEvent(NLTextStructuredEvent *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    NLTextSlot::~NLTextSlot(v2);
    MEMORY[0x2318C0600]();
  }

  if (*(this + 5))
  {
    v3 = *(this + 6);
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 7);
  v5 = *(this + 8);
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      if (v4[v6])
      {
        NLTextSlot::~NLTextSlot(v4[v6]);
        MEMORY[0x2318C0600]();
        v4 = *(this + 7);
        v5 = *(this + 8);
      }

      ++v6;
    }

    while (v6 < v5 - v4);
  }

  v7 = *(this + 10);
  v8 = *(this + 11);
  if (v8 != v7)
  {
    v9 = 0;
    do
    {
      v10 = v7[v9];
      if (v10)
      {
        NLTextSlot::~NLTextSlot(v10);
        MEMORY[0x2318C0600]();
        v7 = *(this + 10);
        v8 = *(this + 11);
      }

      ++v9;
    }

    while (v9 < (v8 - v7) >> 3);
    v4 = *(this + 7);
  }

  *(this + 8) = v4;
  *(this + 11) = v7;
  if (v7)
  {
    operator delete(v7);
    v4 = *(this + 7);
  }

  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v11 = *(this + 6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

uint64_t NLTextStructuredEvent::getLocationRanges@<X0>(NLTextStructuredEvent *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<NLTextSlot *>::__init_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(a2, *(this + 7), *(this + 8), (*(this + 8) - *(this + 7)) >> 3);
}

uint64_t NLTextStructuredEvent::getPeopleRanges@<X0>(NLTextStructuredEvent *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<NLTextSlot *>::__init_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(a2, *(this + 10), *(this + 11), (*(this + 11) - *(this + 10)) >> 3);
}

void NLTextSlotRecurrentEvent::NLTextSlotRecurrentEvent(NLTextSlotRecurrentEvent *this, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4, CFRange a5, char a6)
{
  length = a5.length;
  location = a5.location;
  *(this + 4) = 0;
  *this = 0;
  *(this + 1) = 0;
  if (cf)
  {
    *this = CFRetain(cf);
  }

  if (a3)
  {
    *(this + 1) = CFRetain(a3);
  }

  if (a4)
  {
    *(this + 4) = CFRetain(a4);
  }

  *(this + 2) = location;
  *(this + 3) = length;
  *(this + 40) = a6;
}

void NLTextSlotRecurrentEvent::~NLTextSlotRecurrentEvent(NLTextSlotRecurrentEvent *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t NLTextSlotRecurrentEvent::setEventDateRange(uint64_t this, uint64_t a2, uint64_t a3)
{
  *(this + 16) = a2;
  *(this + 24) = a3;
  return this;
}

void NLTextSlotParser::NLTextSlotParser(NLTextSlotParser *this, const __CFLocale *a2, const __CFDictionary *a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *this = MEMORY[0x2318BF880](*MEMORY[0x277CBECE8], a2);
  *(this + 1) = CFRetain(a3);
}

void NLTextSlotParser::~NLTextSlotParser(NLTextSlotParser *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    NLTextSlotParserEventExtractor::~NLTextSlotParserEventExtractor(v4);
    MEMORY[0x2318C0600]();
  }

  v5 = *(this + 3);
  if (v5)
  {
    NLTextSlotParserDateTimeExtractor::~NLTextSlotParserDateTimeExtractor(v5);
    MEMORY[0x2318C0600]();
  }

  v6 = *(this + 4);
  if (v6)
  {
    NLTextSlotParserNamedEntityExtractor::~NLTextSlotParserNamedEntityExtractor(v6);
    MEMORY[0x2318C0600]();
  }

  v7 = *(this + 5);
  if (v7)
  {
    NLTextSlotParserRecurrenceEventExtractor::~NLTextSlotParserRecurrenceEventExtractor(v7);
    MEMORY[0x2318C0600]();
  }
}

uint64_t NLTextSlotParser::createStructuredEvent(NLTextSlotParser *this, const __CFString *a2, const __CFTimeZone *a3)
{
  if (a3 && a2 && *this)
  {
    memset(&cf[4], 0, 48);
    v6 = *(this + 2);
    if (!v6)
    {
      operator new();
    }

    NLTextSlotParserEventExtractor::getEventNameRange(v6, a2);
    NLTextSlotParserEventExtractor::getEventActionPhraseRange(*(this + 2), a2);
    v7 = *(this + 3);
    if (!v7)
    {
      operator new();
    }

    NLTextSlotParserDateTimeExtractor::getEventFixedDateTimeAndRange(v7, a3, cf);
    operator new();
  }

  return 0;
}

void sub_22CDAB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  MEMORY[0x2318C0600](v27, 0x60C40FAD0F902);
  if (__p)
  {
    operator delete(__p);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::vector<std::pair<NLTextSlotID,CFRange>>,std::vector<std::pair<NLTextSlotID,CFRange>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *std::vector<NLTextSlot *>::__assign_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<NLTransliterationCandidate *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<NLTextSlot *>::__init_with_size[abi:ne200100]<NLTextSlot **,NLTextSlot **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NLTransliterationCandidate *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CDAB4A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void NLQamus::NLQamus(NLQamus *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 5) = 0u;
  *(this + 18) = 1065353216;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  NLConvertBW2UTF::NLConvertBW2UTF((this + 240));
}

void sub_22CDAB564(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v4);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void NLQamus::~NLQamus(NLQamus *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 280);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 240);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 200);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 120);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 80);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 40);

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this);
}

void NLQamus::loadTable(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v6[72] = *MEMORY[0x277D85DE8];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::ifstream::basic_ifstream(v6, a1);
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v2, "^\\s+", 0);
}

void sub_22CDABAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::locale a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::locale a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a24);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a32);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a46);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v46);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2318C03D0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2318C0570](a1 + 53);
  return a1;
}

uint64_t NLQamus::loadDict@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v30[19] = *MEMORY[0x277D85DE8];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::ifstream::basic_ifstream(v28, a1);
  v26[1] = 0;
  v26[0] = 0;
  v27 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  while (1)
  {
    std::ios_base::getloc((v28 + *(v28[0] - 24)));
    v2 = std::locale::use_facet(&v10[0].__loc_, MEMORY[0x277D82680]);
    v3 = (v2->__vftable[2].~facet_0)(v2, 10);
    std::locale::~locale(&v10[0].__loc_);
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v28, v26, v3);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, ";");
    v5 = startswith(v26, v10);
    v6 = v5;
    if (SHIBYTE(v10[0].__col_) < 0)
    {
      operator delete(v10[0].__loc_.__locale_);
      if (!v6)
      {
LABEL_7:
        v22 = 0;
        __str = 0;
        v23 = 0;
        splitWithChar(v26, 9u, &__str);
        std::string::basic_string[abi:ne200100]<0>(&v20, "");
        std::string::basic_string[abi:ne200100]<0>(&v19, "");
        std::string::basic_string[abi:ne200100]<0>(&v18, "");
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
        std::string::basic_string[abi:ne200100]<0>(&v16, "");
        std::string::basic_string[abi:ne200100]<0>(&v15, "");
        std::string::basic_string[abi:ne200100]<0>(&v14, "");
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __str) >> 3);
        switch(v7)
        {
          case 5uLL:
            std::string::operator=(&v18, __str);
            std::string::operator=(&v17, __str + 1);
            std::string::operator=(&v16, __str + 2);
            std::string::operator=(&v15, __str + 3);
            std::string::operator=(&v14, __str + 4);
            trim(&v14, v10);
            if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v14.__r_.__value_.__l.__data_);
            }

            v14 = v10[0];
            break;
          case 6uLL:
            std::string::operator=(&v19, __str);
            std::string::operator=(&v18, __str + 1);
            std::string::operator=(&v17, __str + 2);
            std::string::operator=(&v16, __str + 3);
            std::string::operator=(&v15, __str + 4);
            trim(&__str[5], v10);
            if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v14.__r_.__value_.__l.__data_);
            }

            v14 = v10[0];
LABEL_16:
            if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(v24, &v19.__r_.__value_.__l.__data_))
            {
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v24, &v19.__r_.__value_.__l.__data_);
            }

            break;
          case 8uLL:
            std::string::operator=(&v20, __str);
            std::string::operator=(&v19, __str + 1);
            std::string::operator=(&v18, __str + 2);
            std::string::operator=(&v17, __str + 3);
            std::string::operator=(&v16, __str + 4);
            std::string::operator=(&v15, __str + 5);
            std::string::operator=(&v14, __str + 6);
            trim(&__str[7], v10);
            if (SHIBYTE(__p.__col_) < 0)
            {
              operator delete(__p.__loc_.__locale_);
            }

            __p = v10[0];
            goto LABEL_16;
        }

        memset(v12, 0, sizeof(v12));
        std::vector<std::string>::push_back[abi:ne200100](v12, &v18);
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v11, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
        }

        else
        {
          v11 = v18;
        }

        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v10, "^[>|<{]", 0);
      }
    }

    else if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v28 + *(v28[0] - 24)), *&v29[*(v28[0] - 24) + 16] | 4);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v24);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  v28[0] = *MEMORY[0x277D82808];
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2318C03D0](v29);
  std::istream::~istream();
  result = MEMORY[0x2318C0570](v30);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char *>,std::regex_traits<char>,char>(std::string *a1, char *a2, char *a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::regex_iterator(v29, a2, a3, a4, a6);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if (std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator==(v29, v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (v9 != a3)
      {
        std::string::push_back(a1, *v9++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator==(v29, v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v30[6];
        v15 = v30[7];
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(v30, a1, a5, &a5[v11], v6);
      v13 = v30[9];
      v12 = v30[10];
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator++(v29);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return a1;
}

void sub_22CDACBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void NLQamus::loadData(NLQamus *this)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x4002000000;
  v35 = __Block_byref_object_copy__13;
  v36 = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&v37, "");
  v26 = 0;
  v27 = &v26;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__13;
  v30 = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&v31, "");
  v20 = 0;
  v21 = &v20;
  v22 = 0x4002000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&v25, "");
  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&v19, "");
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&v13, "");
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4002000000;
  v6[3] = __Block_byref_object_copy__13;
  v6[4] = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&v7, "");
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x4002000000;
  v4[3] = __Block_byref_object_copy__13;
  v4[4] = __Block_byref_object_dispose__13;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v2 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"ar");
  v3[5] = MEMORY[0x277D85DD0];
  v3[6] = 0x40000000;
  v3[7] = ___ZN7NLQamus8loadDataEv_block_invoke;
  v3[8] = &unk_27873FAE0;
  v3[9] = &v32;
  v3[10] = &v26;
  v3[11] = &v20;
  v3[12] = &v14;
  v3[13] = &v8;
  v3[14] = v6;
  v3[15] = v4;
  NL::Resource::enumerateAssetResourcesWithContentType();
  CFRelease(v2);
  NLConvertBW2UTF::loadBw2utf(this + 30, v33 + 5);
  NLQamus::loadDict(v27 + 5, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__move_assign(this + 120, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v3);
  NLQamus::loadDict(v21 + 5, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__move_assign(this + 160, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v3);
  NLQamus::loadDict(v15 + 5, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__move_assign(this + 200, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v3);
  NLQamus::loadTable(v9 + 5, v3);
}

void sub_22CDAD08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  _Block_object_dispose(&a25, 8);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a36, 8);
  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Block_object_dispose(&a47, 8);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  _Block_object_dispose(&a58, 8);
  if (a68 < 0)
  {
    operator delete(a63);
  }

  _Block_object_dispose((v68 - 240), 8);
  if (*(v68 - 177) < 0)
  {
    operator delete(*(v68 - 200));
  }

  _Block_object_dispose((v68 - 176), 8);
  if (*(v68 - 113) < 0)
  {
    operator delete(*(v68 - 136));
  }

  _Block_object_dispose((v68 - 112), 8);
  if (*(v68 - 49) < 0)
  {
    operator delete(*(v68 - 72));
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__13(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN7NLQamus8loadDataEv_block_invoke(int a1, const __CFURL **this)
{
  if (this)
  {
    NL::Resource::exists(this);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, "Couldn't create the resource for Arabic Morphological Analyzer");
  NL::ResourceCreationException::ResourceCreationException(exception, __p);
}

void sub_22CDAD564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void extractRooPartOfSpeechTag(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 23))
  {
LABEL_3:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    splitWithChar(a1, 0x20u, &v3);
    std::string::basic_string[abi:ne200100]<0>(a2, "");
    if (v4 != v3)
    {
      std::string::operator=(a2, v3);
    }

    v6 = &v3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_22CDAD67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void NLQamus::process_word_for_analysisType(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "");
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  v17 = 0u;
  v18 = 0u;
  v19 = 1065353216;
  v14 = 0u;
  v15 = 0u;
  v16 = 1065353216;
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v27;
  }

  std::operator+<char>();
  v3 = std::string::append(&v9, "\n");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v8 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v8 >= 0)
  {
    v6 = HIBYTE(v8);
  }

  else
  {
    v6 = __p[1];
  }

  std::string::append(&v26, v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  NLQamus::get_lookup(a1, &v27);
}

void sub_22CDAEC8C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&STACK[0x2E0]);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x310]);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&STACK[0x340]);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&STACK[0x370]);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x3A0]);
  if (*(v1 - 209) < 0)
  {
    operator delete(*(v1 - 232));
  }

  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void NLQamus::get_lookup(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v2, *a2, *(a2 + 8));
  }

  else
  {
    v2 = *a2;
  }

  NLConvertBW2UTF::utf2bw(&v2, &v3);
}

void sub_22CDAF314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a9);
  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(a1);
}

void NLQamus::get_variants(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v6, "");
  std::vector<std::string>::push_back[abi:ne200100](a2, a1);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v7, a1);
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v4, "Y'$", 0);
}

void sub_22CDAFF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::locale a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::locale a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::locale a57)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a25);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a33);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a41);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a49);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a57);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v58 - 224));
  *(v58 - 224) = v58 - 160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v58 - 224));
  if (*(v58 - 113) < 0)
  {
    operator delete(*(v58 - 136));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v58 - 112);
  *(v58 - 224) = v57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v58 - 224));
  _Unwind_Resume(a1);
}

void NLQamus::analyze(void *a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  NLQamus::segmentword(a2, &v102);
  v4 = v102;
  v52 = v103;
  if (v102 != v103)
  {
    do
    {
      v53 = v4;
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v101, *v4, *(v4 + 1));
      }

      else
      {
        v5 = *v4;
        v101.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&v101.__r_.__value_.__l.__data_ = v5;
      }

      v98 = 0;
      v99 = 0;
      v100 = 0;
      splitWithChar(&v101, 9u, &v98);
      if (SHIBYTE(v98->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v97, v98->__r_.__value_.__l.__data_, v98->__r_.__value_.__l.__size_);
      }

      else
      {
        v6 = *&v98->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v6;
      }

      v7 = std::string::basic_string[abi:ne200100]<0>(v95, "");
      if (0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3) >= 2)
      {
        std::string::operator=(v7, v98 + 1);
      }

      v8 = std::string::basic_string[abi:ne200100]<0>(v93, "");
      if (0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3) >= 3)
      {
        std::string::operator=(v8, v98 + 2);
      }

      if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 20, &v97.__r_.__value_.__l.__data_) && std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 15, v95) && std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 25, v93))
      {
        v60.__r_.__value_.__r.__words[0] = &v97;
        v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 20, &v97.__r_.__value_.__l.__data_);
        v11 = v9[5];
        v10 = v9[6];
        v54 = v10;
        while (v11 != v10)
        {
          v55 = v11;
          if (v11[23] < 0)
          {
            std::string::__init_copy_ctor_external(&v92, *v11, *(v11 + 1));
          }

          else
          {
            v12 = *v11;
            v92.__r_.__value_.__r.__words[2] = *(v11 + 2);
            *&v92.__r_.__value_.__l.__data_ = v12;
          }

          memset(v91, 0, sizeof(v91));
          splitWithChar(&v92, 9u, v91);
          v13 = v91[0];
          if (*(v91[0] + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v90, *v91[0], *(v91[0] + 8));
            v13 = v91[0];
          }

          else
          {
            v14 = *v91[0];
            v90.__r_.__value_.__r.__words[2] = *(v91[0] + 16);
            *&v90.__r_.__value_.__l.__data_ = v14;
          }

          if (*(v13 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v89, *(v13 + 24), *(v13 + 32));
            v13 = v91[0];
          }

          else
          {
            v89 = *(v13 + 24);
          }

          if (*(v13 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v88, *(v13 + 48), *(v13 + 56));
            v13 = v91[0];
          }

          else
          {
            v88 = *(v13 + 48);
          }

          if (*(v13 + 95) < 0)
          {
            std::string::__init_copy_ctor_external(&v87, *(v13 + 72), *(v13 + 80));
            v13 = v91[0];
          }

          else
          {
            v87 = *(v13 + 72);
          }

          if (*(v13 + 119) < 0)
          {
            std::string::__init_copy_ctor_external(&v86, *(v13 + 96), *(v13 + 104));
          }

          else
          {
            v86 = *(v13 + 96);
          }

          v60.__r_.__value_.__r.__words[0] = v95;
          v15 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 15, v95);
          v17 = v15[5];
          v16 = v15[6];
          v56 = v16;
          while (v17 != v16)
          {
            if (v17[23] < 0)
            {
              std::string::__init_copy_ctor_external(&v85, *v17, *(v17 + 1));
            }

            else
            {
              v18 = *v17;
              v85.__r_.__value_.__r.__words[2] = *(v17 + 2);
              *&v85.__r_.__value_.__l.__data_ = v18;
            }

            memset(v84, 0, sizeof(v84));
            splitWithChar(&v85, 9u, v84);
            v19 = v84[0];
            if (*(v84[0] + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v83, *v84[0], *(v84[0] + 8));
              v19 = v84[0];
            }

            else
            {
              v20 = *v84[0];
              v83.__r_.__value_.__r.__words[2] = *(v84[0] + 16);
              *&v83.__r_.__value_.__l.__data_ = v20;
            }

            if (*(v19 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v82, *(v19 + 24), *(v19 + 32));
              v19 = v84[0];
            }

            else
            {
              v82 = *(v19 + 24);
            }

            if (*(v19 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&v81, *(v19 + 48), *(v19 + 56));
              v19 = v84[0];
            }

            else
            {
              v81 = *(v19 + 48);
            }

            if (*(v19 + 95) < 0)
            {
              std::string::__init_copy_ctor_external(&v80, *(v19 + 72), *(v19 + 80));
              v19 = v84[0];
            }

            else
            {
              v80 = *(v19 + 72);
            }

            if (*(v19 + 119) < 0)
            {
              std::string::__init_copy_ctor_external(&v79, *(v19 + 96), *(v19 + 104));
              v19 = v84[0];
            }

            else
            {
              v79 = *(v19 + 96);
            }

            if (*(v19 + 143) < 0)
            {
              std::string::__init_copy_ctor_external(&v78, *(v19 + 120), *(v19 + 128));
              v19 = v84[0];
            }

            else
            {
              v78 = *(v19 + 120);
            }

            if (*(v19 + 167) < 0)
            {
              std::string::__init_copy_ctor_external(&v77, *(v19 + 144), *(v19 + 152));
              v19 = v84[0];
            }

            else
            {
              v77 = *(v19 + 144);
            }

            if (*(v19 + 191) < 0)
            {
              std::string::__init_copy_ctor_external(&v76, *(v19 + 168), *(v19 + 176));
            }

            else
            {
              v76 = *(v19 + 168);
            }

            if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v88.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v60, size + 1);
            if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v60;
            }

            else
            {
              v22 = v60.__r_.__value_.__r.__words[0];
            }

            if (size)
            {
              if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = &v88;
              }

              else
              {
                v23 = v88.__r_.__value_.__r.__words[0];
              }

              memmove(v22, v23, size);
            }

            *(&v22->__r_.__value_.__l.__data_ + size) = 32;
            if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &v81;
            }

            else
            {
              v24 = v81.__r_.__value_.__r.__words[0];
            }

            if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v25 = v81.__r_.__value_.__l.__size_;
            }

            v26 = std::string::append(&v60, v24, v25);
            v27 = *&v26->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            trim(&__p, v74);
            v57 = v17;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1, v74))
            {
              v60.__r_.__value_.__r.__words[0] = v93;
              v28 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 25, v93);
              v30 = v28[5];
              v29 = v28[6];
              v58 = v29;
              while (v30 != v29)
              {
                if (v30[23] < 0)
                {
                  std::string::__init_copy_ctor_external(&v73, *v30, *(v30 + 1));
                }

                else
                {
                  v31 = *v30;
                  v73.__r_.__value_.__r.__words[2] = *(v30 + 2);
                  *&v73.__r_.__value_.__l.__data_ = v31;
                }

                memset(v72, 0, sizeof(v72));
                splitWithChar(&v73, 9u, v72);
                v32 = v72[0];
                if (*(v72[0] + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v71, *v72[0], *(v72[0] + 8));
                  v32 = v72[0];
                }

                else
                {
                  v33 = *v72[0];
                  v71.__r_.__value_.__r.__words[2] = *(v72[0] + 16);
                  *&v71.__r_.__value_.__l.__data_ = v33;
                }

                if (*(v32 + 47) < 0)
                {
                  std::string::__init_copy_ctor_external(&v70, *(v32 + 24), *(v32 + 32));
                  v32 = v72[0];
                }

                else
                {
                  v70 = *(v32 + 24);
                }

                if (*(v32 + 71) < 0)
                {
                  std::string::__init_copy_ctor_external(&v69, *(v32 + 48), *(v32 + 56));
                  v32 = v72[0];
                }

                else
                {
                  v69 = *(v32 + 48);
                }

                if (*(v32 + 95) < 0)
                {
                  std::string::__init_copy_ctor_external(&v68, *(v32 + 72), *(v32 + 80));
                  v32 = v72[0];
                }

                else
                {
                  v68 = *(v32 + 72);
                }

                if (*(v32 + 119) < 0)
                {
                  std::string::__init_copy_ctor_external(&v67, *(v32 + 96), *(v32 + 104));
                }

                else
                {
                  v67 = *(v32 + 96);
                }

                if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v34 = v88.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&v60, v34 + 1);
                if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v35 = &v60;
                }

                else
                {
                  v35 = v60.__r_.__value_.__r.__words[0];
                }

                if (v34)
                {
                  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v36 = &v88;
                  }

                  else
                  {
                    v36 = v88.__r_.__value_.__r.__words[0];
                  }

                  memmove(v35, v36, v34);
                }

                *(&v35->__r_.__value_.__l.__data_ + v34) = 32;
                if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = &v69;
                }

                else
                {
                  v37 = v69.__r_.__value_.__r.__words[0];
                }

                if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v38 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v38 = v69.__r_.__value_.__l.__size_;
                }

                v39 = std::string::append(&v60, v37, v38);
                v40 = *&v39->__r_.__value_.__l.__data_;
                __p.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
                *&__p.__r_.__value_.__l.__data_ = v40;
                v39->__r_.__value_.__l.__size_ = 0;
                v39->__r_.__value_.__r.__words[2] = 0;
                v39->__r_.__value_.__r.__words[0] = 0;
                trim(&__p, v65);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v60.__r_.__value_.__l.__data_);
                }

                if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 5, v65))
                {
                  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v41 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v41 = v81.__r_.__value_.__l.__size_;
                  }

                  std::string::basic_string[abi:ne200100](&v60, v41 + 1);
                  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v42 = &v60;
                  }

                  else
                  {
                    v42 = v60.__r_.__value_.__r.__words[0];
                  }

                  if (v41)
                  {
                    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v43 = &v81;
                    }

                    else
                    {
                      v43 = v81.__r_.__value_.__r.__words[0];
                    }

                    memmove(v42, v43, v41);
                  }

                  *(&v42->__r_.__value_.__l.__data_ + v41) = 32;
                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v44 = &v69;
                  }

                  else
                  {
                    v44 = v69.__r_.__value_.__r.__words[0];
                  }

                  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v45 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v45 = v69.__r_.__value_.__l.__size_;
                  }

                  v46 = std::string::append(&v60, v44, v45);
                  v47 = *&v46->__r_.__value_.__l.__data_;
                  __p.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
                  *&__p.__r_.__value_.__l.__data_ = v47;
                  v46->__r_.__value_.__l.__size_ = 0;
                  v46->__r_.__value_.__r.__words[2] = 0;
                  v46->__r_.__value_.__r.__words[0] = 0;
                  trim(&__p, v63);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v60.__r_.__value_.__l.__data_);
                  }

                  if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 10, v63))
                  {
                    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v89.__r_.__value_.__l.__data_, &v82.__r_.__value_.__l.__data_, &__p);
                    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v48 = &v70;
                    }

                    else
                    {
                      v48 = v70.__r_.__value_.__r.__words[0];
                    }

                    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v49 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v49 = v70.__r_.__value_.__l.__size_;
                    }

                    v50 = std::string::append(&__p, v48, v49);
                    v51 = *&v50->__r_.__value_.__l.__data_;
                    v62 = v50->__r_.__value_.__r.__words[2];
                    __s = v51;
                    v50->__r_.__value_.__l.__size_ = 0;
                    v50->__r_.__value_.__r.__words[2] = 0;
                    v50->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v60, "A\\+a([pt])", 0);
                  }

                  if (v64 < 0)
                  {
                    operator delete(v63[0]);
                  }
                }

                if (v66 < 0)
                {
                  operator delete(v65[0]);
                }

                if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v67.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v68.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v69.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v70.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v71.__r_.__value_.__l.__data_);
                }

                __p.__r_.__value_.__r.__words[0] = v72;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
                if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v73.__r_.__value_.__l.__data_);
                }

                v30 += 24;
                v29 = v58;
              }
            }

            if (v75 < 0)
            {
              operator delete(v74[0]);
            }

            if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v76.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v77.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v78.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v79.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v80.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v82.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v83.__r_.__value_.__l.__data_);
            }

            __p.__r_.__value_.__r.__words[0] = v84;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            v17 = v57 + 24;
            v16 = v56;
          }

          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v86.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = v91;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          v10 = v54;
          v11 = v55 + 24;
        }
      }

      if (v94 < 0)
      {
        operator delete(v93[0]);
      }

      if (v96 < 0)
      {
        operator delete(v95[0]);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = &v98;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      v4 = (v53 + 24);
    }

    while ((v53 + 24) != v52);
  }

  __p.__r_.__value_.__r.__words[0] = &v102;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_22CDB1D94()
{
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    v0 = STACK[0x400];
    JUMPOUT(0x22CDB1B68);
  }

  JUMPOUT(0x22CDB1B6CLL);
}

void sub_22CDB1DD0()
{
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    v0 = STACK[0x400];
    JUMPOUT(0x22CDB1B78);
  }

  JUMPOUT(0x22CDB1B7CLL);
}

void NLResult::~NLResult(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void NLQamus::segmentword(std::string *__str@<X1>, std::string::size_type size@<X8>)
{
  v3 = size;
  v4 = 0;
  LODWORD(size) = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  __n = size;
  v21 = size;
  do
  {
    std::string::basic_string(&v30, __str, 0, v4, &v29);
    if (v21 > v4)
    {
      v5 = 0;
      v6 = __n;
      do
      {
        std::string::basic_string(&v29, __str, v4, v6, &v28);
        std::string::basic_string(&v28, __str, v4 + v6, v5, __p);
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v7 = v30.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v23, v7 + 1);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v23;
        }

        else
        {
          v8 = v23.__r_.__value_.__r.__words[0];
        }

        if (v7)
        {
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v9 = &v30;
          }

          else
          {
            v9 = v30.__r_.__value_.__r.__words[0];
          }

          memmove(v8, v9, v7);
        }

        *(&v8->__r_.__value_.__l.__data_ + v7) = 9;
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v29;
        }

        else
        {
          v10 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = v29.__r_.__value_.__l.__size_;
        }

        v12 = std::string::append(&v23, v10, v11);
        v13 = *&v12->__r_.__value_.__l.__data_;
        v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v24.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v14 = std::string::append(&v24, "\t");
        v15 = *&v14->__r_.__value_.__l.__data_;
        v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v25.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v28;
        }

        else
        {
          v16 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v28.__r_.__value_.__l.__size_;
        }

        v18 = std::string::append(&v25, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v27 = v18->__r_.__value_.__r.__words[2];
        *__p = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](v3, __p);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v6 < 2)
        {
          break;
        }

        --v6;
      }

      while (v5++ < 6);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    ++v4;
    --__n;
  }

  while (v4 != 5);
}

void sub_22CDB2118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  *(v44 - 120) = v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v44 - 120));
  _Unwind_Resume(a1);
}

void NLResult::NLResult(std::string *this, const NLResult *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  LODWORD(this[5].__r_.__value_.__l.__data_) = *(a2 + 30);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = *(a2 + 8);
    this[6].__r_.__value_.__r.__words[0] = *(a2 + 18);
    *&this[5].__r_.__value_.__r.__words[1] = v9;
  }
}

void sub_22CDB22F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator==(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && std::sub_match<std::__wrap_iter<char *>>::compare[abi:ne200100](v4, v7) == 0;
  }

  return v10;
}

uint64_t std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::operator++(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v9, v8, v10, &__p, v5 | 0x80u);
    std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v3, v8, v10, &__p, (v5 & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, v4 | 0x860u);
  std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v3, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_22CDB25D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::regex_iterator<std::__wrap_iter<char *>,char,std::regex_traits<char>>::regex_iterator(uint64_t a1, char *a2, char *a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a2, a3, &__p, a5);
  std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v9, a2, a3, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return a1;
}

void sub_22CDB26CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<std::__wrap_iter<char *>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char *>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

void std::vector<std::sub_match<std::__wrap_iter<char *>>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char *>>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char *>>>::__append(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char *>>>>(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char *>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::sub_match<std::__wrap_iter<char *>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_22CDB2BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
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

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::vector<NLResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<NLResult>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<NLResult>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<NLResult>>::destroy[abi:ne200100]<NLResult,0>(a1, i))
  {
    i -= 152;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<NLResult>>::destroy[abi:ne200100]<NLResult,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
  }

  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::vector<NLResult>::__emplace_back_slow_path<NLResult>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLResult>>(a1, v6);
  }

  v7 = 152 * v2;
  v20 = 0;
  v21 = v7;
  *(&v22 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 11);
  *(v7 + 72) = v11;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v12 = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 96) = v12;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(v7 + 120) = *(a2 + 30);
  v13 = a2[8];
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 128) = v13;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 16) = 0;
  *&v22 = 152 * v2 + 152;
  v14 = a1[1];
  v15 = 152 * v2 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLResult>,NLResult*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<NLResult>::~__split_buffer(&v20);
  return v19;
}

void sub_22CDB2FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<NLResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLResult>,NLResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v12 = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(a4 + 96) = v12;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(a4 + 120) = *(v7 + 120);
      v13 = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 128) = v13;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 128) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<NLResult>>::destroy[abi:ne200100]<NLResult,0>(a1, v5);
      v5 += 152;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLResult>,NLResult*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLResult>,NLResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<NLResult>,NLResult*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<NLResult>,NLResult*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 152;
      std::allocator_traits<std::allocator<NLResult>>::destroy[abi:ne200100]<NLResult,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<NLResult>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<NLResult>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<NLResult>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 152;
    std::allocator_traits<std::allocator<NLResult>>::destroy[abi:ne200100]<NLResult,0>(v5, v4 - 152);
  }
}

void NLMessageConversationTurn::NLMessageConversationTurn(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  this[2].__r_.__value_.__r.__words[0] = a4;
}

void sub_22CDB3314(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFStringTokenizerRef NL::Transcriber::updateLocale(const void **this, CFLocaleRef locale)
{
  v4 = *this;
  if (v4)
  {
    CFRelease(v4);
  }

  v6.location = 0;
  v6.length = 0;
  result = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], &stru_284010170, v6, 0x10000uLL, locale);
  *this = result;
  return result;
}

const void **NL::Transcriber::Transcriber(const void **this, const __CFLocale *a2)
{
  *this = 0;
  NL::Transcriber::updateLocale(this, a2);
  return this;
}

void NL::Transcriber::~Transcriber(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  *this = 0;
}

CFMutableStringRef NL::Transcriber::copyTranscription(CFStringTokenizerRef *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v5 = *this;
  v9.length = CFStringGetLength(a2);
  v9.location = 0;
  CFStringTokenizerSetString(v5, a2, v9);
  while (CFStringTokenizerAdvanceToNextToken(*this))
  {
    v6 = CFStringTokenizerCopyCurrentTokenAttribute(*this, 0x10000uLL);
    if (v6)
    {
      v7 = v6;
      CFStringAppend(Mutable, v6);
      CFStringAppend(Mutable, @" ");
      CFRelease(v7);
    }
  }

  CFStringTrimWhitespace(Mutable);
  if (CFStringsAreEqual(Mutable, a2))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void NLTextSlotParserNamedEntityExtractor::NLTextSlotParserNamedEntityExtractor(NLTextSlotParserNamedEntityExtractor *this, const __CFLocale *a2)
{
  v3 = *MEMORY[0x277CBECE8];
  *this = MEMORY[0x2318BF880](*MEMORY[0x277CBECE8]);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v5 = CFLocaleCreate(v3, @"root");
  CFArrayAppendValue(Mutable, *MEMORY[0x277D00398]);
  AssetResource = NL::Resource::createAssetResource(v5, @"Tagging", @"reminder-gazetteer.dat", v6);
  if (AssetResource)
  {
    NL::Resource::exists(AssetResource);
  }

  *(this + 1) = NLTaggerCreate();
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_22CDB37F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, const void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, const void *a23, const void *a24)
{
  nlp::CFScopedPtr<__CFArray *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a14, 0);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a22, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(&a23, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a24, 0);
  _Unwind_Resume(a1);
}

void NLTextSlotParserNamedEntityExtractor::~NLTextSlotParserNamedEntityExtractor(NLTextSlotParserNamedEntityExtractor *this)
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

void NLTextSlotParserNamedEntityExtractor::getLocationAndPeopleNameRanges(NLTextSlotParserNamedEntityExtractor *this@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (*(this + 1))
  {
    NLTaggerSetString();
    v7 = *this;
    v6 = *(this + 1);
    CFStringGetLength(a2);
    NLTaggerSetLocaleForRange();
    v30 = 0;
    v31 = &v30;
    v32 = 0x4002000000;
    v33 = __Block_byref_object_copy__14;
    v34 = __Block_byref_object_dispose__14;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x4002000000;
    v25 = __Block_byref_object_copy__14;
    v26 = __Block_byref_object_dispose__14;
    __p = 0;
    v28 = 0;
    v29 = 0;
    v8 = *(this + 1);
    CFStringGetLength(a2);
    v15 = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZN36NLTextSlotParserNamedEntityExtractor30getLocationAndPeopleNameRangesEPK10__CFString_block_invoke;
    v18 = &unk_27873FB08;
    v20 = &v30;
    v21 = this;
    v19 = &v22;
    NLTaggerEnumerateTokens();
    std::pair<std::vector<std::pair<NLTextSlotID,CFRange>>,std::vector<std::pair<NLTextSlotID,CFRange>>>::pair[abi:ne200100]<std::vector<std::pair<NLTextSlotID,CFRange>>&,std::vector<std::pair<NLTextSlotID,CFRange>>&,0>(&v11, v31 + 5, v23 + 5);
    v9 = v12;
    *a3 = v11;
    *(a3 + 16) = v9;
    v10 = v14;
    *(a3 + 24) = v13;
    *(a3 + 40) = v10;
    _Block_object_dispose(&v22, 8);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v30, 8);
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }
}

void sub_22CDB3AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v30 - 128), 8);
  v32 = *(v30 - 88);
  if (v32)
  {
    *(v30 - 80) = v32;
    operator delete(v32);
  }

  std::pair<std::vector<std::pair<NLTextSlotID,CFRange>>,std::vector<std::pair<NLTextSlotID,CFRange>>>::~pair(v29);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN36NLTextSlotParserNamedEntityExtractor30getLocationAndPeopleNameRangesEPK10__CFString_block_invoke(void *a1, __int128 *a2)
{
  v4 = *(a1[6] + 8);
  v5 = *MEMORY[0x277D00398];
  v6 = NLTaggerCopyTagForCurrentToken();
  if (v6)
  {
    v7 = v6;
    if (CFStringCompare(v6, *MEMORY[0x277D002F8], 0))
    {
      if (CFStringCompare(v7, *MEMORY[0x277D00300], 0))
      {
        if (CFStringCompare(v7, @"<LEAVE_CAR>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 8;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<GOTO_CAR>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 7;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<LEAVE_WORK>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 10;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<GOTO_WORK>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 9;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<LEAVE_HOME>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 6;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<GOTO_HOME>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 5;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<LEAVE_SCHOOL>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 12;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<GOTO_SCHOOL>", 0) == kCFCompareEqualTo)
        {
          v8 = *(a1[5] + 8);
          v9 = 11;
          goto LABEL_25;
        }

        if (CFStringCompare(v7, @"<SERVICE>", 0) && CFStringCompare(v7, @"<GROCERY>", 0) && CFStringCompare(v7, @"<RESTAURANT>", 0))
        {
          goto LABEL_26;
        }
      }

      v8 = *(a1[5] + 8);
      v9 = 4;
    }

    else
    {
      v8 = *(a1[4] + 8);
      v9 = 14;
    }

LABEL_25:
    v10 = v9;
    v11 = *a2;
    std::vector<std::pair<NLTextSlotID,CFRange>>::push_back[abi:ne200100](v8 + 40, &v10);
LABEL_26:
    CFRelease(v7);
  }
}

void std::vector<std::pair<NLTextSlotID,CFRange>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void *std::pair<std::vector<std::pair<NLTextSlotID,CFRange>>,std::vector<std::pair<NLTextSlotID,CFRange>>>::pair[abi:ne200100]<std::vector<std::pair<NLTextSlotID,CFRange>>&,std::vector<std::pair<NLTextSlotID,CFRange>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::pair<NLTextSlotID,CFRange>>::__init_with_size[abi:ne200100]<std::pair<NLTextSlotID,CFRange>*,std::pair<NLTextSlotID,CFRange>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::pair<NLTextSlotID,CFRange>>::__init_with_size[abi:ne200100]<std::pair<NLTextSlotID,CFRange>*,std::pair<NLTextSlotID,CFRange>*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_22CDB3F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<NLTextSlotID,CFRange>>::__init_with_size[abi:ne200100]<std::pair<NLTextSlotID,CFRange>*,std::pair<NLTextSlotID,CFRange>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<NLTextSlotID,CFRange>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CDB3FB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<NLTextSlotID,CFRange>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void *operator<<(void *a1, uint64_t a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Latin string: ", 14);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", Transliterated string: ", 25);
  v10 = *(a2 + 47);
  if (v10 >= 0)
  {
    v11 = a2 + 24;
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 47);
  }

  else
  {
    v12 = *(a2 + 32);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", LM score: ", 12);
  v15 = MEMORY[0x2318C0460](v14, *(a2 + 56));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", Seq2Seq score: ", 17);
  v17 = MEMORY[0x2318C0460](v16, *(a2 + 64));
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", Total Score: ", 15);
  TotalScore = NLTransliterationCandidate::getTotalScore(a2);
  v20 = MEMORY[0x2318C0460](v18, TotalScore);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", Type: ", 8);
  v22 = *(a2 + 72);
  if (v22 > 3)
  {
    if (v22 <= 5)
    {
      if (v22 == 4)
      {
        v23 = "Unknown";
      }

      else
      {
        v23 = "Exception list";
      }

      goto LABEL_30;
    }

    if (v22 == 6)
    {
      v23 = "Seq2Seq";
      goto LABEL_30;
    }

    if (v22 == 7)
    {
      v23 = "Emoji";
      goto LABEL_30;
    }
  }

  else
  {
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = "NasalizedVariant";
      }

      else
      {
        v23 = "EnglishLexicon";
      }

      goto LABEL_30;
    }

    if (!v22)
    {
      v23 = "Lexicon";
      goto LABEL_30;
    }

    if (v22 == 1)
    {
      v23 = "OrthographicVariant";
LABEL_30:
      std::string::basic_string[abi:ne200100]<0>(v41, v23);
      goto LABEL_31;
    }
  }

  std::to_string(&v43, v22);
  v37 = std::string::insert(&v43, 0, "Unknown type: ");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v42 = v37->__r_.__value_.__r.__words[2];
  *v41 = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

LABEL_31:
  if (v42 >= 0)
  {
    v24 = v41;
  }

  else
  {
    v24 = v41[0];
  }

  if (v42 >= 0)
  {
    v25 = HIBYTE(v42);
  }

  else
  {
    v25 = v41[1];
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v24, v25);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", Is in vocabulary: ", 20);
  if (*(a2 + 77))
  {
    v28 = "true";
  }

  else
  {
    v28 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(&v43, v28);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v43;
  }

  else
  {
    v29 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, size);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", Is extension candidate: ", 26);
  if (*(a2 + 76))
  {
    v33 = "true";
  }

  else
  {
    v33 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v33);
  if ((v40 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v35 = v40;
  }

  else
  {
    v35 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  return a1;
}

void sub_22CDB4320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLTransliterationCandidate::NLTransliterationCandidate(std::string *this, __int128 *a2, __int128 *a3, int a4, std::string::value_type a5, double a6, double a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v14;
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  *&this[2].__r_.__value_.__l.__size_ = a6;
  *&this[2].__r_.__value_.__r.__words[2] = a7;
  LODWORD(this[3].__r_.__value_.__l.__data_) = a4;
  this[3].__r_.__value_.__s.__data_[4] = a5;
  this[3].__r_.__value_.__s.__data_[5] = 0;
}

void sub_22CDB4468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createCandidateWrapper(NLTransliterationCandidate *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_TransliterationCandidateWrapper)
  {
    qword_280C27050 = 0;
    unk_280C27060 = 0u;
    unk_280C27070 = 0u;
    g_CFTypeID_TransliterationCandidateWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

void TransliterationCandidateWrapper::~TransliterationCandidateWrapper(TransliterationCandidateWrapper *this)
{
  TransliterationCandidateWrapper::~TransliterationCandidateWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400E210;
  v2 = *(this + 1);
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x2318C0600](v2, 0x1012C40B0087DDBLL);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void sub_22CDB46F0(_Unwind_Exception *a1, int a2)
{
  v4 = v2;
  MEMORY[0x2318C0600](v4, 0x80C40803F642BLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x22CDB46E0);
  }

  _Unwind_Resume(a1);
}

void NL::StringMap::~StringMap(NL::StringMap *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 1), *(v2 + 8));
    MEMORY[0x2318C0600](v2, 0x1020C4062D53EE8);
  }

  if (*this)
  {
    StringMapFile::~StringMapFile(*this);
    MEMORY[0x2318C0600]();
  }
}

void NL::StringMap::get(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    StringMapBuilder::get(v4, a2, a3);
  }

  else
  {
    StringMapFile::get(*a1, a2, a3);
  }
}

void StringMapBuilder::get(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v5)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else if (*(v5 + 79) < 0)
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 64);

    std::string::__init_copy_ctor_external(a3, v7, v8);
  }

  else
  {
    v6 = *(v5 + 56);
    a3->__r_.__value_.__r.__words[2] = *(v5 + 72);
    *&a3->__r_.__value_.__l.__data_ = v6;
  }
}

_BYTE *StringMapFile::get@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (CFBurstTrieFindUTF8String())
  {
    v8 = a1[1];
  }

  else
  {
    v8 = "";
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v8);
}

uint64_t *StringMapFile::StringMapFile(uint64_t *a1, char *a2)
{
  *a1 = 0;
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  NL::ReadOnlyFile<char>::open(v3, "r", 1, a1 + 2);
  v4 = *a1[2];
  if (*v4 != -149896238)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "string map file is invalid");
    NL::ResourceCreationException::ResourceCreationException(exception, &v8);
  }

  if (v4[1] != 1)
  {
    v7 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "string map file version is not supported");
    NL::ResourceCreationException::ResourceCreationException(v7, &v8);
  }

  a1[1] = v4 + v4[2] + 24;
  *a1 = CFBurstTrieCreateFromMapBytes();
  return a1;
}

void sub_22CDB4A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = *(v15 + 24);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void NL::ReadOnlyFile<char>::open(char *__s@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___ZN2NL12ReadOnlyFileIcE4openEPKcS3_b_block_invoke;
  v10[3] = &unk_27873FB30;
  v10[5] = __s;
  v10[6] = a2;
  v11 = a3;
  v10[4] = &v14;
  nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getResource(__p, v10, a4);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(v15 + 63);
  if (v8 < 0)
  {
    v8 = v15[6];
  }

  if (v8)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    NL::ResourceCreationException::ResourceCreationException(exception, (v15 + 5));
  }

  _Block_object_dispose(&v14, 8);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }
}

void sub_22CDB4BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v36 = *(v34 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Block_object_dispose(&a24, 8);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getResource(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3802000000;
  v12 = __Block_byref_object_copy__4;
  v14 = 0;
  v15 = 0;
  v13 = __Block_byref_object_dispose__5;
  Queue = nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN3nlp24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN2NL12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPSA_vE_block_invoke;
  v8[3] = &unk_2787403D8;
  v8[5] = &v9;
  v8[6] = a1;
  v8[4] = a2;
  dispatch_sync(Queue, v8);
  v7 = v10[6];
  *a3 = v10[5];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v9, 8);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_22CDB4DCC(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x2318C0600](v5, 0x1012C403EBA5055);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    v8 = (*(*v7 + 16))(v7);
    MEMORY[0x2318C02F0](*(*(v2 + 32) + 8) + 40, v8);
    __cxa_end_catch();
    JUMPOUT(0x22CDB4DB8);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue()
{
  {
    nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue();
  }

  {
    nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue();
  }

  return nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue(void)::queue;
}

void ___ZN3nlp24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN2NL12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPSA_vE_block_invoke(uint64_t a1)
{
  Cache = nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getCache();
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(Cache, *(a1 + 48));
  if (v3)
  {
    v4 = v3;
    v5 = v3[6];
    if (v5 && (v5 = std::__shared_weak_count::lock(v5)) != 0)
    {
      v6 = v4[5];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 48);
    *(v7 + 40) = v6;
    *(v7 + 48) = v5;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v9 = *(*(a1 + 40) + 8);
  v11 = *(v9 + 40);
  v10 = v9 + 40;
  if (!v11)
  {
    v12 = (*(*(a1 + 32) + 16))();
    std::shared_ptr<NL::ReadOnlyFile<char>>::reset[abi:ne200100]<NL::ReadOnlyFile<char>,0>(v10, v12);
  }
}

void sub_22CDB4FD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getCache()
{
  {
    nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getCache();
  }

  return &nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getCache(void)::cache;
}

void std::shared_ptr<NL::ReadOnlyFile<char>>::shared_ptr[abi:ne200100]<NL::ReadOnlyFile<char>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_22CDB50F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<NL::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<NL::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    OnlyFile = NL::ReadOnlyFile<char>::~ReadOnlyFile(v2);
    MEMORY[0x2318C0600](OnlyFile, 0x1012C403EBA5055);
  }

  return a1;
}

void std::__shared_ptr_pointer<NL::ReadOnlyFile<char> *,std::shared_ptr<NL::ReadOnlyFile<char>>::__shared_ptr_default_delete<NL::ReadOnlyFile<char>,NL::ReadOnlyFile<char>>,std::allocator<NL::ReadOnlyFile<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

uint64_t std::__shared_ptr_pointer<NL::ReadOnlyFile<char> *,std::shared_ptr<NL::ReadOnlyFile<char>>::__shared_ptr_default_delete<NL::ReadOnlyFile<char>,NL::ReadOnlyFile<char>>,std::allocator<NL::ReadOnlyFile<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    NL::ReadOnlyFile<char>::~ReadOnlyFile(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<NL::ReadOnlyFile<char> *,std::shared_ptr<NL::ReadOnlyFile<char>>::__shared_ptr_default_delete<NL::ReadOnlyFile<char>,NL::ReadOnlyFile<char>>,std::allocator<NL::ReadOnlyFile<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t NL::ReadOnlyFile<char>::~ReadOnlyFile(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
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
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x2318C05E0](v2, 0x1000C8077774924);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22CDB5540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<NL::ReadOnlyFile<char>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<NL::ReadOnlyFile<char>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<NL::ReadOnlyFile<char>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t NL::ReadOnlyFile<char>::ReadOnlyFile(uint64_t a1, char *a2, char *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), a2);
  std::string::basic_string[abi:ne200100]<0>((a1 + 40), a3);
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  if (*a3 != 114)
  {
    goto LABEL_15;
  }

  if (a3[1])
  {
    if (a3[1] == 43 && !a3[2])
    {
      *(a1 + 64) = 514;
      v8 = open(a2, 514, 384);
      goto LABEL_7;
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x20uLL);
    NL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 1);
    goto LABEL_18;
  }

  *(a1 + 64) = 0;
  v8 = open(a2, 0);
LABEL_7:
  v9 = v8;
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    NL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 2);
    goto LABEL_18;
  }

  if (fstat(v8, &v16) < 0)
  {
    close(v9);
    exception = __cxa_allocate_exception(0x20uLL);
    NL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 3);
LABEL_18:
  }

  st_size = v16.st_size;
  *(a1 + 8) = v16.st_size;
  v17 = 0;
  v18 = st_size;
  fcntl(v9, 44, &v17);
  if (!a4)
  {
    v12 = *(a1 + 8);
    operator new[]();
  }

  if (*(a1 + 8))
  {
    v11 = mmap(0, *(a1 + 8), *(a1 + 64) & 2 | 1u, 1, v9, 0);
    if (v11 == -1)
    {
      close(v9);
      v15 = __cxa_allocate_exception(0x20uLL);
      NL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(v15, 4);
    }

    *a1 = v11;
  }

  close(v9);
  return a1;
}

void sub_22CDB58EC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

void *NL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(void *a1, int a2)
{
  if ((a2 - 1) <= 4)
  {
    v3 = off_2787403F8[a2 - 1];
  }

  std::operator+<char>();
  NL::ResourceCreationException::ResourceCreationException(a1, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_28400E130;
  return a1;
}

void sub_22CDB59DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::ReadOnlyFileCreationException::~ReadOnlyFileCreationException(std::exception *this)
{
  NL::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x2318C0600);
}

void StringMapFile::~StringMapFile(StringMapFile *this)
{
  if (*this)
  {
    CFBurstTrieRelease();
  }

  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

dispatch_queue_t ___Z23getParserResourcesQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.NLP.Resources", 0);
  getParserResourcesQueue(void)::resourcesQueue = result;
  return result;
}

NL::ParserResources *NL::ParserResources::ParserResources(NL::ParserResources *this, const __CFDictionary *a2)
{
  *(this + 1) = 0u;
  v4 = (this + 16);
  *this = 0u;
  *(this + 5) = 0;
  v5 = (this + 40);
  *(this + 8) = 8;
  *(this + 24) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  NL::AssetResourceManager::AssetResourceManager((this + 80));
  if (!a2)
  {
    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(a2, kNLSearchParserLocaleKey);
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID())
    {
      v9 = CFLocaleCreate(0, v7);
    }

    else
    {
      v10 = CFGetTypeID(v7);
      if (v10 != CFLocaleGetTypeID())
      {
        goto LABEL_8;
      }

      v9 = CFRetain(v7);
    }

    nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, v9);
  }

LABEL_8:
  v11 = CFDictionaryGetValue(a2, kNLSearchParserDateKey);
  if (v11)
  {
    NL::ParserResources::setDate(this, v11);
  }

  v12 = CFDictionaryGetValue(a2, kNLSearchParserCustomResourceDirectoryKey);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  v14 = CFGetTypeID(v12);
  if (v14 == CFStringGetTypeID())
  {
    v15 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], v13, kCFURLPOSIXPathStyle, 1u);
  }

  else
  {
    v16 = CFGetTypeID(v13);
    if (v16 != CFURLGetTypeID())
    {
      goto LABEL_16;
    }

    v15 = CFRetain(v13);
  }

  nlp::CFScopedPtr<__CFURL const*>::reset(v5, v15);
LABEL_16:
  if (!*v5)
  {
    v17 = CFURLCreateWithString(*MEMORY[0x277CBECE8], &stru_284010170, 0);
    nlp::CFScopedPtr<__CFURL const*>::reset(v5, v17);
  }

LABEL_18:
  v18 = CFDictionaryGetValue(a2, @"username");
  if (v18)
  {
    v19 = CFRetain(v18);
    nlp::CFScopedPtr<__CFString const*>::reset(v4, v19);
  }

  if (CFDictionaryContainsKey(a2, @"contextIdentifier"))
  {
    v20 = CFDictionaryGetValue(a2, @"contextIdentifier");
    NL::ParserResources::setContext(this, v20);
  }

  if (CFDictionaryContainsKey(a2, @"includeFutureDates"))
  {
    v21 = CFDictionaryGetValue(a2, @"includeFutureDates");
    if (v21)
    {
      if (CFBooleanGetValue(v21))
      {
        *(this + 49) = 1;
      }
    }
  }

LABEL_26:
  if (!*(this + 1))
  {
    *(this + 48) = 1;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, this, localeChangeCallback, *MEMORY[0x277CBEEB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v23 = copyCurrentLocale();
    nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, v23);
  }

  if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
  {
    NL::ParserResources::ParserResources();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN2NL15ParserResourcesC2EPK14__CFDictionary_block_invoke;
  block[3] = &__block_descriptor_tmp_12;
  block[4] = this;
  dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, block);
  return this;
}

void sub_22CDB5DB0(_Unwind_Exception *a1)
{
  NL::AssetResourceManager::~AssetResourceManager((v1 + 80));
  v5 = *(v1 + 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  nlp::CFScopedPtr<__CFURL const*>::reset(v3, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v1 + 24), 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset((v1 + 8), 0);
  nlp::CFScopedPtr<__CFDate const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

void NL::ParserResources::setDate(const void **this, CFTypeRef cf2)
{
  if (cf2)
  {
    v3 = cf2;
    v4 = *this;
    if (*this && CFEqual(v4, cf2))
    {
      return;
    }

    nlp::CFScopedPtr<__CFDate const*>::reset(this, 0);
    cf2 = CFRetain(v3);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(this, cf2);
}

CFComparisonResult NL::ParserResources::setContext(NL::ParserResources *this, CFStringRef theString1)
{
  result = CFStringCompare(theString1, @"com.apple.mail", 1uLL);
  if (result == kCFCompareEqualTo)
  {
    *(this + 8) = 1;
    return result;
  }

  result = CFStringCompare(theString1, @"com.apple.Finder", 1uLL);
  if (result == kCFCompareEqualTo)
  {
    v5 = 2;
    goto LABEL_15;
  }

  result = CFStringCompare(theString1, @"com.apple.Notes", 1uLL);
  if (result == kCFCompareEqualTo || (result = CFStringCompare(theString1, @"com.apple.mobilenotes", 1uLL)) == kCFCompareEqualTo)
  {
    v5 = 3;
    goto LABEL_15;
  }

  result = CFStringCompare(theString1, @"com.apple.Photos", 1uLL);
  if (result == kCFCompareEqualTo)
  {
    v5 = 4;
    goto LABEL_15;
  }

  result = CFStringCompare(theString1, @"com.apple.Reminders", 1uLL);
  if (result == kCFCompareEqualTo)
  {
    v5 = 5;
    goto LABEL_15;
  }

  result = CFStringCompare(theString1, @"com.apple.Calendar", 1uLL);
  if (result == kCFCompareEqualTo || (result = CFStringCompare(theString1, @"com.apple.iCal", 1uLL)) == kCFCompareEqualTo)
  {
    v5 = 6;
    goto LABEL_15;
  }

  result = CFStringCompare(theString1, @"com.apple.Spotlight", 1uLL);
  if (result == kCFCompareEqualTo)
  {
    v5 = 7;
    goto LABEL_15;
  }

  result = CFStringCompare(theString1, @"com.apple.NLP", 1uLL);
  if (result)
  {
    v5 = 8;
LABEL_15:
    *(this + 8) = v5;
    return result;
  }

  *(this + 8) = 0;
  return result;
}

void localeChangeCallback(__CFNotificationCenter *a1, NL::ParserResources *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  if (a2)
  {
    v6 = copyCurrentLocale();
    NL::ParserResources::updateLocale(a2, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_22CDB605C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2NL15ParserResourcesC2EPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1);
  if (v2)
  {
    NL::ParserResources::updateLockedResources(v1, v2);
  }
}

void NL::ParserResources::updateLockedResources(NL::ParserResources *this, CFLocaleRef locale)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    NLEntityDetectorRelease(v5);
    *(this + 7) = 0;
  }

  v6 = *MEMORY[0x277CBEED0];
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  v8 = CFRetain(Value);
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFLocaleCreate(*MEMORY[0x277CBECE8], v8);
  if (!v10)
  {
    v17 = 0;
    LocaleIdentifierFromComponents = v8;
    goto LABEL_39;
  }

  if (CFStringsAreEqual(v8, @"zh"))
  {
    v11 = *MEMORY[0x277CBEED8];
    v12 = CFLocaleGetValue(locale, *MEMORY[0x277CBEED8]);
    if (v12)
    {
LABEL_12:
      keys = v6;
      v38 = v11;
      values[0] = v8;
      values[1] = v12;
      v14 = CFDictionaryCreate(v9, &keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(v9, v14);
      if (v8)
      {
        CFRelease(v8);
      }

      v16 = CFLocaleCreate(v9, LocaleIdentifierFromComponents);
      CFRelease(v10);
      if (v14)
      {
        CFRelease(v14);
      }

      goto LABEL_18;
    }

    v13 = CFLocaleGetValue(locale, *MEMORY[0x277CBEE98]);
    if (v13)
    {
      if (CFStringsAreEqual(v13, @"CN"))
      {
        v12 = @"Hans";
      }

      else
      {
        v12 = @"Hant";
      }

      goto LABEL_12;
    }
  }

  v16 = v10;
  LocaleIdentifierFromComponents = v8;
LABEL_18:
  if (*(this + 5))
  {
    values[0] = CFStringCreateWithFormat(v9, 0, @"%@/%@-search.plist", LocaleIdentifierFromComponents, LocaleIdentifierFromComponents);
    NL::AssetResourceManager::createAssetResourceFromPathWithName(v16, *(this + 5), values[0], v18);
  }

  NL::AssetResourceManager::createAssetResourceOfType(&keys);
  v19 = keys;
  v17 = v38;
  if (keys && NL::AssetResource::exists(keys))
  {
    v20 = NL::AssetResource::URL(v19);
    DictionaryWithContentsOfURL = createDictionaryWithContentsOfURL(v20, 0);
    v22 = DictionaryWithContentsOfURL;
    keys = DictionaryWithContentsOfURL;
    if (!DictionaryWithContentsOfURL)
    {
      goto LABEL_47;
    }

    if (CFDictionaryContainsKey(DictionaryWithContentsOfURL, @"Contents") && (v23 = CFDictionaryGetValue(v22, @"Contents"), CFArrayGetCount(v23) == 2))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v23, 0);
      if (CFDictionaryContainsKey(ValueAtIndex, @"Version"))
      {
        v25 = CFDictionaryGetValue(ValueAtIndex, @"Version");
        values[0] = CFNumberCreate(v9, kCFNumberIntType, &NLPARSER_MIN_CACHE_VERSION);
        v26 = CFNumberCompare(v25, values[0], 0) >= kCFCompareEqualTo;
        nlp::CFScopedPtr<__CFNumber const*>::reset(values, 0);
      }

      else
      {
        v26 = 0;
      }

      v28 = CFArrayGetValueAtIndex(v23, 1);
      if (CFDictionaryContainsKey(v28, @"Version"))
      {
        v29 = CFDictionaryGetValue(ValueAtIndex, @"Version");
        values[0] = CFNumberCreate(v9, kCFNumberIntType, &NLPARSER_MIN_CFG_VERSION);
        v27 = CFNumberCompare(v29, values[0], 0) >= kCFCompareEqualTo && v26;
        nlp::CFScopedPtr<__CFNumber const*>::reset(values, 0);
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 1;
    }

    if (CFDictionaryContainsKey(v22, @"CanonicalRegions"))
    {
      v30 = CFDictionaryGetValue(v22, @"CanonicalRegions");
      Copy = CFDictionaryCreateCopy(v9, v30);
      nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, Copy);
    }

    CFRelease(v22);
    if (v27)
    {
LABEL_47:
      if (*(this + 5))
      {
        v32 = CFStringCreateWithFormat(v9, 0, @"%@/%@-search.cache", LocaleIdentifierFromComponents, LocaleIdentifierFromComponents);
        NL::AssetResourceManager::createAssetResourceFromPathWithName(v16, *(this + 5), v32, v33);
      }

      NL::AssetResourceManager::createAssetResourceOfType(&keys);
      NL::AssetResourceManager::createAssetResourceOfType(&keys);
      NL::AssetResourceManager::createAssetResourceFromBundle(0, @"root", @"cache", 0, v35);
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_39:
  if (LocaleIdentifierFromComponents)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_22CDB66CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  v13 = va_arg(va3, void);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  v16 = va_arg(va4, void);
  v17 = va_arg(va4, void);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va3, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va4, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va2, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void NL::ParserResources::~ParserResources(NL::ParserResources *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    NLEntityDetectorRelease(v2);
  }

  NL::AssetResourceManager::~AssetResourceManager((this + 80));
  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  nlp::CFScopedPtr<__CFURL const*>::reset(this + 5, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, 0);
  nlp::CFScopedPtr<__CFDate const*>::reset(this, 0);
}

uint64_t NL::ParserResources::copyEntityDetector(NL::ParserResources *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
  {
    NL::ParserResources::copyEntityDetector();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2NL15ParserResources18copyEntityDetectorEv_block_invoke;
  v4[3] = &unk_2787404B0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void NL::ParserResources::getSearchGrammar(NL::ParserResources *this@<X0>, void *a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3802000000;
  v9 = __Block_byref_object_copy__16;
  v11 = 0;
  v12 = 0;
  v10 = __Block_byref_object_dispose__16;
  if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
  {
    NL::ParserResources::copyEntityDetector();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN2NL15ParserResources16getSearchGrammarEv_block_invoke;
  block[3] = &unk_2787404D8;
  block[4] = &v6;
  block[5] = this;
  dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, block);
  v4 = v7[6];
  *a2 = v7[5];
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v6, 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void NL::ParserResources::setLocale(NL::ParserResources *this, const __CFLocale *a2)
{
  *(this + 48) = 0;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, this, *MEMORY[0x277CBEEB0], 0);
  if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
  {
    NL::ParserResources::ParserResources();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN2NL15ParserResources9setLocaleEPK10__CFLocale_block_invoke;
  v5[3] = &__block_descriptor_tmp_13_0;
  v5[4] = this;
  v5[5] = a2;
  dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, v5);
}

void ___ZN2NL15ParserResources9setLocaleEPK10__CFLocale_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v2 + 1, 0);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = CFRetain(v3);
    nlp::CFScopedPtr<__CFLocale const*>::reset(v2 + 1, v4);
    v5 = v2[1];

    NL::ParserResources::updateLockedResources(v2, v5);
  }
}

void NL::ParserResources::updateLocale(NL::ParserResources *this, const __CFLocale *a2)
{
  if (a2)
  {
    v4 = NL::ParserResources::copyLocale(this);
    block[6] = v4;
    if (v4)
    {
      if ((NL::AssetResourceManager::checkHasUpdatedAssetsAndReset((this + 80)) & 1) == 0)
      {
        v5 = *MEMORY[0x277CBEED0];
        Value = CFLocaleGetValue(a2, *MEMORY[0x277CBEED0]);
        v7 = CFLocaleGetValue(v4, v5);
        v8 = !Value || v7 == 0;
        if (v8 || CFStringHasPrefix(v7, Value))
        {
          goto LABEL_13;
        }
      }
    }

    if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
    {
      NL::ParserResources::ParserResources();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN2NL15ParserResources12updateLocaleEPK10__CFLocale_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = this;
    block[5] = a2;
    dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, block);
    if (v4)
    {
LABEL_13:
      CFRelease(v4);
    }
  }
}

void sub_22CDB6D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::ParserResources::copyLocale(NL::ParserResources *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
  {
    NL::ParserResources::copyEntityDetector();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2NL15ParserResources10copyLocaleEv_block_invoke;
  v4[3] = &unk_278740488;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN2NL15ParserResources12updateLocaleEPK10__CFLocale_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v2 + 1, 0);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = CFRetain(v3);
    nlp::CFScopedPtr<__CFLocale const*>::reset(v2 + 1, v4);
    v5 = v2[1];

    NL::ParserResources::updateLockedResources(v2, v5);
  }
}

uint64_t ___ZN2NL15ParserResources10copyLocaleEv_block_invoke(uint64_t result)
{
  if (*(*(result + 40) + 8))
  {
    v1 = result;
    result = MEMORY[0x2318BF880](*MEMORY[0x277CBECE8]);
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ___ZN2NL15ParserResources18copyEntityDetectorEv_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 56);
  if (result)
  {
    result = NLEntityDetectorRetain(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

__n128 __Block_byref_object_copy__16(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__16(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2NL15ParserResources16getSearchGrammarEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 48);
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

NL::AssetResource *NL::ParserResources::copyReferenceDatesPath(NL::ParserResources *this)
{
  v2 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"root");
  cf = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 5);
  if (v4)
  {
    NL::AssetResourceManager::createAssetResourceFromPathWithName(v2, v4, @"root/dates.plist", v3);
  }

  NL::AssetResourceManager::createAssetResourceOfType(v9);
  v5 = v9[0];
  v6 = v9[1];
  if (v9[0])
  {
    if (NL::AssetResource::exists(v9[0]))
    {
      v7 = NL::AssetResource::URL(v5);
      v5 = CFRetain(v7);
    }

    else
    {
      v5 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v5;
}

void sub_22CDB7020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NL::ParserResources::setCustomResourcePath(const void **this, const __CFURL *a2)
{
  nlp::CFScopedPtr<__CFURL const*>::reset(this + 5, 0);
  if (a2)
  {
    v4 = CFURLCopyAbsoluteURL(a2);
    nlp::CFScopedPtr<__CFURL const*>::reset(this + 5, v4);
  }

  if (getParserResourcesQueue(void)::resourcesOnceToken != -1)
  {
    NL::ParserResources::ParserResources();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN2NL15ParserResources21setCustomResourcePathEPK7__CFURL_block_invoke;
  block[3] = &__block_descriptor_tmp_60;
  block[4] = this;
  dispatch_sync(getParserResourcesQueue(void)::resourcesQueue, block);
}

void NL::ParserResources::reset(NL::ParserResources *this)
{
  if (!*(this + 8) || !*(this + 7))
  {
    v2 = NL::ParserResources::copyLocale(this);
    NL::ParserResources::updateLocale(this, v2);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void sub_22CDB7190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<NL::SearchGrammar>::__shared_ptr_emplace[abi:ne200100]<__CFURL const*,std::allocator<NL::SearchGrammar>,0>(void *a1, const __CFURL **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D800;
  NL::SearchGrammar::SearchGrammar((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<NL::SearchGrammar>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void NLHindiTransliterator::NLHindiTransliterator(NLHindiTransliterator *this, const __CFDictionary *a2)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = xmmword_22CDDF0C0;
  *(this + 34) = 2;
  *(this + 18) = 0xC03E000000000000;
  *(this + 19) = 0x3E800000005;
  *(this + 40) = 3;
  *(this + 21) = 0x3FF3333333333333;
  *(this + 22) = 0x1F40000000ALL;
  *this = &unk_28400EFD8;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((this + 184), "[,,;.'?!:{}<>*\\-]", 0);
}

void sub_22CDB75B4(_Unwind_Exception *a1)
{
  MEMORY[0x2318C0600](v2, 0x10E1C4025DEE3AFLL);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 63);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 55);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 47);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 39);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 31);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(v1 + 23);
  NLGenericTransliterator::~NLGenericTransliterator(v1);
  _Unwind_Resume(a1);
}

uint64_t NLHindiTransliterator::shouldProcessForPhonetics(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  memset(v9, 0, 41);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 32);
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if ((v3 & 0x80u) != 0)
  {
    a2 = *a2;
    v3 = v4;
  }

  *(&__p.__unmatched_.std::pair<const char *, const char *> + 1) = 0uLL;
  v5 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 504, a2, (a2 + v3), &__p, 0);
  v6 = *(v2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = *v2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v9, v7, (v7 + v6), &__p, 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v9[0].__begin_)
  {
    v9[0].__end_ = v9[0].__begin_;
    operator delete(v9[0].__begin_);
  }

  return v5;
}

void sub_22CDB77A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiTransliterator::addSpecialElements(void **a1, char *a2, int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  std::string::basic_string(&v16, &__str, *a3, 2uLL, &p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  (*(*a1[1] + 32))(&__str);
  ((*a1)[18])(a1, &__str, *a4, *a5, a2, a6);
  v12 = *a6;
  if (a6[1] != *a6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      NLExtendedString::setJoin(v12 + v13, 1);
      ++v14;
      v12 = *a6;
      v13 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 4) > v14);
  }

  p_str = &__str;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&p_str);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_22CDB7924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t *a22)
{
  a22 = &a10;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double NLHindiTransliterator::getEnglishCandidateSequenceScore(uint64_t a1, uint64_t *a2)
{
  stringToUTF32Characters(a2, &v8);
  v2 = 0.0;
  if (v8 != v9)
  {
    v3 = v8;
    do
    {
      v4 = *v3;
      v5 = -0.75;
      if (*v3 != 2381)
      {
        v5 = 1.0;
        if ((v4 - 2325) >= 0x25 && (v4 & 0xFFFFFFF8) != 0x958)
        {
          if ((v4 & 0xFFFFFFFE) != 0x960 && (v4 - 2309) >= 0x10)
          {
            v5 = 0.3;
          }

          else
          {
            v5 = 0.5;
          }
        }
      }

      v2 = v2 + v5;
      ++v3;
    }

    while (v3 != v9);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return v2;
}

void NLHindiTransliterator::preProcessForRomanSuffixes(uint64_t a1@<X0>, std::__wrap_iter<const char *> a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2.__i_ + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5 < 4)
    {
      *a3 = *a2.__i_;
      v6 = *(a2.__i_ + 2);
LABEL_19:
      *(a3 + 16) = v6;
      return;
    }

    v7 = *(a2.__i_ + 1);
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if ((v5 & 0x80000000) != 0)
    {
      a2.__i_ = *a2.__i_;
      v5 = v7;
    }

    v9.__i_ = &a2.__i_[v5];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(a3, a2, v9, (a1 + 248), "$1$2", 0);
    memset(&v13, 0, sizeof(v13));
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11.__i_ = a3;
    }

    else
    {
      v11.__i_ = *a3;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    v12.__i_ = &v11.__i_[v10];
    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&v13, v11, v12, (a1 + 312), "$1", 0);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *&v13.__r_.__value_.__l.__data_;
    v6 = v13.__r_.__value_.__r.__words[2];
    goto LABEL_19;
  }

  v7 = *(a2.__i_ + 1);
  if (v7 >= 4)
  {
    goto LABEL_9;
  }

  v8 = *a2.__i_;

  std::string::__init_copy_ctor_external(a3, v8, v7);
}

void sub_22CDB7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiTransliterator::addDynamicMapping(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  memset(v41, 0, 41);
  memset(&v50.__prefix_, 0, 17);
  memset(&v50.__suffix_, 0, 17);
  v50.__ready_ = 0;
  v50.__position_start_ = 0;
  memset(&v50, 0, 32);
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  *(&v50.__unmatched_.std::pair<const char *, const char *> + 1) = 0uLL;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 376, a2, (a2 + v4), &v50, 0);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v41, v8, (v8 + v7), &v50, 0);
  if (v50.__matches_.__begin_)
  {
    v50.__matches_.__end_ = v50.__matches_.__begin_;
    operator delete(v50.__matches_.__begin_);
  }

  v9 = *(v2 + 23);
  if (v6)
  {
    if ((v9 & 0x80u) == 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = *v2;
    }

    if ((v9 & 0x80u) == 0)
    {
      v11 = *(v2 + 23);
    }

    else
    {
      v11 = *(v2 + 8);
    }

    v12 = &v10[v11];
    if (v11 > 4)
    {
      v13 = v11;
      v14 = v10;
      do
      {
        v15 = memchr(v14, 112, v13 - 4);
        if (!v15)
        {
          break;
        }

        if (*v15 == 1953067632 && v15[4] == 104)
        {
          goto LABEL_26;
        }

        v14 = v15 + 1;
        v13 = v12 - v14;
      }

      while (v12 - v14 > 4);
    }

    v15 = &v10[v11];
LABEL_26:
    v18 = v15 != v12 && v15 - v10 != -1;
    if (v11 >= 4)
    {
      v19 = v10;
      do
      {
        v20 = memchr(v19, 103, v11 - 3);
        if (!v20)
        {
          break;
        }

        if (*v20 == 1751741031)
        {
          goto LABEL_38;
        }

        v19 = v20 + 1;
        v11 = v12 - v19;
      }

      while (v12 - v19 > 3);
    }

    v20 = v12;
LABEL_38:
    v22 = v20 != v12 && v20 - v10 != -1 || v18;
    if (v22 == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      NLExtendedString::NLExtendedString(&v50, __p, 2, 2, 1.0);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      NLExtendedString::NLExtendedString(&v50, __p, 2, 2, 0.005);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    v23 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "i");
    (*(*v23 + 16))(v23, __p, &v50);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v50.__matches_.__begin_);
    }

    v9 = *(v2 + 23);
    v24 = *(v2 + 8);
    if ((v9 & 0x80u) != 0)
    {
      v25 = *v2;
    }

    else
    {
      v24 = *(v2 + 23);
      v25 = v2;
    }

    if (v24 >= 2)
    {
      v26 = &v25[v24];
      v27 = v25;
      do
      {
        v28 = memchr(v27, 114, v24 - 1);
        if (!v28)
        {
          break;
        }

        if (*v28 == 30066)
        {
          if (v28 != v26 && v28 - v25 != -1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "");
            NLExtendedString::NLExtendedString(&v50, __p, 2, 2, 0.005);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            v29 = *(a1 + 8);
            std::string::basic_string[abi:ne200100]<0>(__p, "u");
            (*(*v29 + 16))(v29, __p, &v50);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v50.__matches_.__end_cap_.__value_) < 0)
            {
              operator delete(v50.__matches_.__begin_);
            }

            v9 = *(v2 + 23);
          }

          break;
        }

        v27 = v28 + 1;
        v24 = v26 - v27;
      }

      while (v26 - v27 >= 2);
    }
  }

  if ((v9 & 0x80) != 0)
  {
    if (*(v2 + 8) != 1)
    {
      goto LABEL_122;
    }

    v30 = *v2;
  }

  else
  {
    v30 = v2;
    if (v9 != 1)
    {
      goto LABEL_86;
    }
  }

  if (*v30 == 111)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ऑ");
    NLExtendedString::NLExtendedString(&v50, __p, 1, 3, 1.0);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v31 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "o");
    (*(*v31 + 16))(v31, __p, &v50);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v50.__matches_.__begin_);
    }

    v9 = *(v2 + 23);
  }

  if ((v9 & 0x80) != 0)
  {
    if (*(v2 + 8) != 1)
    {
      goto LABEL_122;
    }

    v32 = *v2;
    goto LABEL_90;
  }

LABEL_86:
  if (v9 != 1)
  {
    goto LABEL_111;
  }

  v9 = 1;
  v32 = v2;
LABEL_90:
  if (*v32 == 110)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ण");
    NLExtendedString::NLExtendedString(&v50, __p, 1, 3, 0.00001);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v33 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "n");
    (*(*v33 + 16))(v33, __p, &v50);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v39, "ञ");
    NLExtendedString::NLExtendedString(__p, &v39, 1, 3, 0.00001);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v34 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(&v39, "n");
    (*(*v34 + 16))(v34, &v39, __p);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v37, "ङ");
    NLExtendedString::NLExtendedString(&v39, v37, 1, 3, 0.00001);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    v35 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v37, "n");
    (*(*v35 + 16))(v35, v37, &v39);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v50.__matches_.__begin_);
    }

    v9 = *(v2 + 23);
  }

  if ((v9 & 0x80) == 0)
  {
LABEL_111:
    if (v9 != 1)
    {
      goto LABEL_122;
    }

    goto LABEL_115;
  }

  if (*(v2 + 8) != 1)
  {
    goto LABEL_122;
  }

  v2 = *v2;
LABEL_115:
  if (*v2 == 114)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ऋ");
    NLExtendedString::NLExtendedString(&v50, __p, 1, 3, 0.00001);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v36 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "r");
    (*(*v36 + 16))(v36, __p, &v50);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__matches_.__end_cap_.__value_) < 0)
    {
      operator delete(v50.__matches_.__begin_);
    }
  }

LABEL_122:
  if (v41[0].__begin_)
  {
    v41[0].__end_ = v41[0].__begin_;
    operator delete(v41[0].__begin_);
  }
}