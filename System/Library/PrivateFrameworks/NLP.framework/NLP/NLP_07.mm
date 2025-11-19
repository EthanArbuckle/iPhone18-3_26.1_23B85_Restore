BOOL NLBengaliOrthographyChecker::canNuktaFollowLetter(NLBengaliOrthographyChecker *this, const __CFString *a2)
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, @"ডঢয");
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v3);
  CFRelease(@"ডঢয");
  CFRelease(v3);
  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  v5 = CFStringFindCharacterFromSet(a2, InvertedSet, v7, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v5;
}

BOOL NLBengaliOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"অ", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"এ", 0) == kCFCompareEqualTo || CFStringCompare(theString1, this[2], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[8];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL NLBengaliOrthographyChecker::canViramaPrecedeLetter(NLBengaliOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 8);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 1), 0) == kCFCompareEqualTo;
}

BOOL NLBengaliOrthographyChecker::checkSpelling(NLBengaliOrthographyChecker *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  Length = CFStringGetLength(theString);
  result = xmmword_22CDDE300;
  v34.location = 0;
  v34.length = Length;
  if (CFStringFindCharacterFromSet(theString, *(this + 7), v34, 0, &result))
  {
    v8 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (!result.location)
      {
        goto LABEL_59;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL && result.location == v8 + location)
      {
        v35.location = location;
        v35.length = v8;
        v10 = CFStringCreateWithSubstring(0, theString, v35);
        v11 = CFStringCreateWithSubstring(0, theString, result);
        if ((CFStringCompare(v10, *(this + 2), 0) || CFStringCompare(v11, *(this + 2), 0) == kCFCompareEqualTo) && (CFStringCompare(v11, *(this + 5), 0) || !NLBengaliOrthographyChecker::isVowelSign(0, v10)) && (CFStringCompare(v11, *(this + 6), 0) || !NLBengaliOrthographyChecker::isVowelSign(0, v10)) && (CFStringCompare(v11, *(this + 4), 0) || !NLBengaliOrthographyChecker::isVowelSign(0, v10)))
        {
          if (v10)
          {
            CFRelease(v10);
          }

          if (v11)
          {
            CFRelease(v11);
          }

LABEL_59:
          v29 = 0;
          v31 = @"illegal diacritic placement";
          if (!a4)
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }

      location = result.location;
      v8 = result.length;
      v36.location = result.length + result.location;
      v36.length = Length - (result.length + result.location);
    }

    while (CFStringFindCharacterFromSet(theString, *(this + 7), v36, 0, &result));
  }

  result = xmmword_22CDDE300;
  v12 = *(this + 2);
  v13 = theString;
  v14.location = 0;
  v14.length = Length;
  while (CFStringFindWithOptions(v13, v12, v14, 0, &result))
  {
    if (!result.location)
    {
      goto LABEL_53;
    }

    v37.location = result.location - 1;
    v37.length = 1;
    v15 = CFStringCreateWithSubstring(0, theString, v37);
    if (!NLBengaliOrthographyChecker::canNuktaFollowLetter(v15, v15))
    {
      if (v15)
      {
        CFRelease(v15);
      }

LABEL_53:
      v29 = 0;
      v31 = @"illegal nukta placement";
      if (!a4)
      {
        goto LABEL_72;
      }

LABEL_70:
      if (v29)
      {
        goto LABEL_72;
      }

      *a4 = v31;
      return v29;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v14.location = result.length + result.location;
    v14.length = Length - (result.length + result.location);
    v12 = *(this + 2);
    v13 = theString;
  }

  result = xmmword_22CDDE300;
  v16 = *(this + 3);
  v17 = theString;
  v18.location = 0;
  v18.length = Length;
  while (1)
  {
    if (!CFStringFindWithOptions(v17, v16, v18, 0, &result))
    {
      v22 = CFCharacterSetCreateWithCharactersInString(0, @"ঁং্");
      v23 = CFStringGetLength(theString);
      v24 = *(this + 9);
      v25 = theString;
      v26.location = 0;
      v26.length = v23;
      while (1)
      {
        if (!CFStringFindCharacterFromSet(v25, v24, v26, 0, &result))
        {
          CFRelease(v22);
          v40.length = CFStringGetLength(theString);
          v40.location = 0;
          CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 10), v40, 0, &result);
          v29 = CharacterFromSet == 0;
          if (CharacterFromSet)
          {
            v30 = CFStringCreateWithSubstring(0, theString, result);
            v31 = CFStringCreateWithFormat(0, 0, @"invalid letter '%@'", v30);
            CFRelease(v30);
            if (a4)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v31 = 0;
            if (a4)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_72;
        }

        if (result.location + 1 < v23)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
          if (CFCharacterSetIsCharacterMember(*(this + 7), CharacterAtIndex))
          {
            if (!CFCharacterSetIsCharacterMember(v22, CharacterAtIndex))
            {
              break;
            }
          }
        }

        v26.location = result.length + result.location;
        v24 = *(this + 9);
        v26.length = v23 - (result.length + result.location);
        v25 = theString;
      }

      CFRelease(v22);
      v29 = 0;
      v31 = @"illegal diacritic after vowel letter";
      if (!a4)
      {
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    if (!result.location)
    {
      break;
    }

    v38.location = result.location - 1;
    v38.length = 1;
    v19 = CFStringCreateWithSubstring(0, theString, v38);
    if (result.location + 1 >= Length)
    {
      v20 = 0;
      if (!NLBengaliOrthographyChecker::canViramaFollowLetter(this, v19))
      {
LABEL_61:
        if (v19)
        {
          CFRelease(v19);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        break;
      }

LABEL_37:
      v21 = 1;
      if (!v19)
      {
        goto LABEL_39;
      }

LABEL_38:
      CFRelease(v19);
      goto LABEL_39;
    }

    v39.length = 1;
    v39.location = result.location + 1;
    v20 = CFStringCreateWithSubstring(0, theString, v39);
    if (!NLBengaliOrthographyChecker::canViramaFollowLetter(this, v19))
    {
      goto LABEL_61;
    }

    if (!v20)
    {
      goto LABEL_37;
    }

    if (!NLBengaliOrthographyChecker::canViramaPrecedeLetter(this, v20))
    {
      goto LABEL_61;
    }

    v21 = 0;
    if (v19)
    {
      goto LABEL_38;
    }

LABEL_39:
    if ((v21 & 1) == 0)
    {
      CFRelease(v20);
    }

    v18.location = result.length + result.location;
    v18.length = Length - (result.length + result.location);
    v16 = *(this + 3);
    v17 = theString;
  }

  v29 = 0;
  v31 = @"illegal virama placement";
  if (a4)
  {
    goto LABEL_70;
  }

LABEL_72:
  if (!a4 && v31)
  {
    CFRelease(v31);
  }

  return v29;
}

uint64_t createSentenceCorrectorWrapper(NLSentenceCorrectorModel *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_SentenceCorrectorWrapper)
  {
    qword_280C27170 = 0;
    unk_280C27180 = 0u;
    unk_280C27190 = 0u;
    g_CFTypeID_SentenceCorrectorWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

const __CFDictionary *NLSentenceCorrectorCreate(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    CFDictionaryGetValue(result, kNLSentenceCorrectorLocaleKey);
    if (CFDictionaryContainsKey(v1, kNLSentenceCorrectorResourceDirectoryLocationKey))
    {
      CFDictionaryGetValue(v1, kNLSentenceCorrectorResourceDirectoryLocationKey);
    }

    operator new();
  }

  return result;
}

void NLSentenceCorrectorEnumerateErrorsForSentenceWithBlock(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      v9 = *(a1 + 24);
      NLSentenceCorrectorModel::clearInputTokens(v9);
      v23.location = a3;
      v23.length = a4;
      v10 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a2, v23);
      if (v9)
      {
        v11 = v10;
        if (v10)
        {
          NLSentenceCorrectorModel::setInputTokens(v9, v10);
          NLSentenceCorrectorModel::getErrorCategoriesAndErrorRanges(v9, v11, &__p);
          v12 = v22;
          if (__p != v22)
          {
            v13 = __p + 24;
            do
            {
              v19 = *(v13 - 24);
              v20 = *(v13 - 1);
              v17 = v19;
              v18 = v20;
              v14 = NLSentenceCorrectorModel::possibleCorrectionsForSentenceError(v9, v11, &v17);
              v16 = 0;
              v17 = v19;
              v18 = v20;
              (*(a5 + 16))(a5, &v17, v14, &v16);
              if (v14)
              {
                CFRelease(v14);
              }

              if (v16)
              {
                break;
              }

              v15 = v13 == v12;
              v13 += 24;
            }

            while (!v15);
          }

          CFRelease(v11);
          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }
}

void sub_22CD84D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SentenceCorrectorWrapper::~SentenceCorrectorWrapper(SentenceCorrectorWrapper *this)
{
  SentenceCorrectorWrapper::~SentenceCorrectorWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400EA90;
  v2 = *(this + 1);
  if (v2)
  {
    NLSentenceCorrectorModel::~NLSentenceCorrectorModel(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void NLAbstractLanguageModeler::NLAbstractLanguageModeler(NLAbstractLanguageModeler *this, const __CFString *a2)
{
  *this = &unk_28400EA20;
  *(this + 1) = 0;
  *(this + 2) = createLexicon(a2);
}

void NLAbstractLanguageModeler::~NLAbstractLanguageModeler(NLAbstractLanguageModeler *this)
{
  *this = &unk_28400EA20;
  if (*(this + 1))
  {
    LMLanguageModelRelease();
  }

  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }
}

{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

void NLAbstractLanguageModeler::getNBestCandidates(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(a1 + 8))
  {
    NLCommons::split(a2, 0x20u, &v34);
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      if (*(a2 + 8))
      {
LABEL_4:
        operator new[]();
      }
    }

    else if (*(a2 + 23))
    {
      goto LABEL_4;
    }

    v6 = v34;
    if (v35 != v34)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *MEMORY[0x277CBECE8];
      do
      {
        v11 = NLCommons::trim((v6 + v7));
        if (SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__src, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
        }

        else
        {
          v12 = *&v11->__r_.__value_.__l.__data_;
          __src.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&__src.__r_.__value_.__l.__data_ = v12;
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_src = &__src;
        }

        else
        {
          p_src = __src.__r_.__value_.__r.__words[0];
        }

        v14 = CFStringCreateWithCString(v10, p_src, 0x8000100u);
        if (v14)
        {
          v15 = *(a1 + 8);
          *(4 * v8) = LMLanguageModelGetTokenIDForString();
          CFRelease(v14);
          ++v9;
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        ++v8;
        v6 = v34;
        v7 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3) > v8);
    }

    v16 = *(a1 + 8);
    LMLanguageModelCreatePredictionEnumerator();
    v17 = 0;
    memset(v32, 0, sizeof(v32));
    v33 = 1065353216;
    while (1)
    {
      v18 = LMPredictionEnumeratorAdvance();
      v19 = v17 < 100 ? v18 : 0;
      if (v19 != 1)
      {
        break;
      }

      v31 = 0;
      v30 = 0;
      LMPredictionEnumeratorGetPrediction();
      v20 = *(a1 + 8);
      StringForTokenID = LMLanguageModelCreateStringForTokenID();
      CFStringGetCString(StringForTokenID, &__src, 1024, 0x8000100u);
      CFRelease(StringForTokenID);
      v22 = strlen(&__src);
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v23 = v22;
      if (v22 >= 0x17)
      {
        operator new();
      }

      v29 = v22;
      if (v22)
      {
        memcpy(&__dst, &__src, v22);
      }

      *(&__dst + v23) = 0;
      if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(v32, &__dst))
      {
        v24 = 0;
      }

      else
      {
        std::vector<std::string>::push_back[abi:ne200100](a4, &__dst);
        v24 = ++v17 >= a3;
      }

      if (v29 < 0)
      {
        operator delete(__dst);
        if (v24)
        {
          break;
        }
      }

      else if (v24)
      {
        break;
      }
    }

    LMPredictionEnumeratorRelease();
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v32);
    __src.__r_.__value_.__r.__words[0] = &v34;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22CD85810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a28 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t NLAbstractLanguageModeler::logProbability(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {
    return (*(v1 + 88))();
  }

  else
  {
    return (*(v1 + 80))();
  }
}

double NLAbstractLanguageModeler::calcNgramProb(uint64_t a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v4 = *(a1 + 8);
  if (LMLanguageModelGetTokenIDForString())
  {
    v5 = *(a1 + 8);
    LMLanguageModelConditionalProbability();
    v7 = v6;
    if (!v3)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v7 = -15.6535598;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

  return v7;
}

void sub_22CD859E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t caseInsensitiveCompare(char *a1, char *a2)
{
  v2 = a1[23];
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v2 != v4)
  {
    return 0;
  }

  if (v3 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (!v2)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = v2 - 1;
  do
  {
    v10 = *v6++;
    v9 = v10;
    v11 = *v7++;
    v12 = __toupper(v9);
    v14 = v12 == __toupper(v11);
    result = v14;
    v14 = !v14 || v8-- == 0;
  }

  while (!v14);
  return result;
}

double NLAbstractLanguageModeler::calcUnigramsProbability(uint64_t a1, uint64_t a2)
{
  CFStringFromString = createCFStringFromString(a2);
  v16 = CFStringFromString;
  v4 = *(a1 + 16);
  RootCursor = LXLexiconCreateRootCursor();
  v15 = RootCursor;
  v6 = LXCursorCreateByAdvancing();
  v14 = v6;
  v10 = 0;
  v11 = &v10;
  v7 = *MEMORY[0x277D23180];
  v12 = 0x2000000000;
  v13 = v7;
  if (!v6)
  {
    v8 = v11[3];
    _Block_object_dispose(&v10, 8);
    if (!RootCursor)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (LXCursorHasEntries())
  {
    LXCursorEnumerateEntries();
  }

  v8 = v11[3];
  _Block_object_dispose(&v10, 8);
  CFRelease(v6);
  if (RootCursor)
  {
LABEL_7:
    CFRelease(RootCursor);
  }

LABEL_8:
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  return v8;
}

void sub_22CD85C14(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<_LXCursor const*>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

void ___ZNK25NLAbstractLanguageModeler23calcUnigramsProbabilityERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  v19 = v5;
  getUTF8StringFromCFString(v5, __p);
  v6 = *(a1 + 40);
  v7 = *(v6 + 23);
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = __p[1];
  }

  if ((v18 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v7 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  if (v7 >= 0)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = *v6;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v10 == v8 && v13 == 0)
  {
    LXEntryGetProbability();
    *(*(*(a1 + 32) + 8) + 24) = v16;
    *a3 = 1;
  }

  else if (caseInsensitiveCompare(__p, v6))
  {
    LXEntryGetProbability();
    *(*(*(a1 + 32) + 8) + 24) = v15;
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v5)
  {
LABEL_27:
    CFRelease(v5);
  }
}

uint64_t NLAbstractLanguageModeler::isPresentInLexicon(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  CFStringFromString = createCFStringFromString(a2);
  v4 = *(a1 + 16);
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 24);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  _Block_object_dispose(&v7, 8);
  return v5;
}

void sub_22CD85E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZN25NLAbstractLanguageModeler18isPresentInLexiconERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERj_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  v8 = v5;
  getUTF8StringFromCFString(v5, __p);
  if (caseInsensitiveCompare(__p, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v5)
  {
LABEL_7:
    CFRelease(v5);
  }
}

void sub_22CD85F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a15, 0);
  _Unwind_Resume(a1);
}

uint64_t NLAbstractLanguageModeler::getTokenIDForStringFromUnigrams(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  CFStringFromString = createCFStringFromString(a2);
  v4 = *(a1 + 16);
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 6);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  _Block_object_dispose(&v7, 8);
  return v5;
}

void sub_22CD86058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZN25NLAbstractLanguageModeler31getTokenIDForStringFromUnigramsERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  v17 = v5;
  getUTF8StringFromCFString(v5, __p);
  v6 = *(a1 + 40);
  v7 = *(v6 + 23);
  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __p[1];
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v7 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  if (v7 >= 0)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = *v6;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v10 == v8 && v13 == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = LXEntryGetTokenID();
    *a3 = 1;
  }

  else if (caseInsensitiveCompare(__p, v6))
  {
    *(*(*(a1 + 32) + 8) + 24) = LXEntryGetTokenID();
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v5)
  {
LABEL_27:
    CFRelease(v5);
  }
}

void NLAbstractLanguageModeler::getDiacriticsInsensitiveCandidatesFromLexicon(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  memset(v13, 0, sizeof(v13));
  CFStringFromString = createCFStringFromString(a2);
  p_isa = &CFStringFromString->isa;
  v6 = *(a1 + 16);
  LXLexiconEnumerateEntriesForString();
  v7 = v9;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, v7[5], v7[6], 0xAAAAAAAAAAAAAAABLL * ((v7[6] - v7[5]) >> 3));
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  _Block_object_dispose(&v8, 8);
  p_isa = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_isa);
}

void sub_22CD86324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  *(v11 - 72) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v11 - 72));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(void *a1, uint64_t a2)
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

void ___ZN25NLAbstractLanguageModeler45getDiacriticsInsensitiveCandidatesFromLexiconERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = LXEntryCopyString();
  v24 = v3;
  getUTF8StringFromCFString(v3, v22);
  (*(*v2 + 72))(v20, v2, v22, *(a1 + 56));
  (*(*v2 + 72))(__p, v2, *(a1 + 48), *(a1 + 56));
  v4 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v5 = v21;
  }

  else
  {
    v5 = v20[1];
  }

  v6 = v19;
  v7 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v5 == v6)
  {
    v8 = (v21 & 0x80u) == 0 ? v20 : v20[0];
    v9 = __p[0];
    v10 = (v19 & 0x80u) == 0 ? __p : __p[0];
    if (!memcmp(v8, v10, v5))
    {
      v11 = *(a1 + 48);
      v12 = *(v11 + 23);
      v13 = v23;
      if ((v23 & 0x80u) == 0)
      {
        v14 = v22;
      }

      else
      {
        v13 = v22[1];
        v14 = v22[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v15 = *(a1 + 48);
      }

      else
      {
        v12 = *(v11 + 8);
        v15 = *v11;
      }

      if (v12 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      v17 = v12 == v13;
      if (memcmp(v14, v15, v16))
      {
        v17 = 0;
      }

      if (v7 < 0)
      {
        operator delete(v9);
        if ((v21 & 0x80) == 0)
        {
LABEL_32:
          if (v17)
          {
            goto LABEL_37;
          }

LABEL_36:
          std::vector<std::string>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, v22);
          goto LABEL_37;
        }
      }

      else if ((v4 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      operator delete(v20[0]);
      if (v17)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v20[0]);
LABEL_37:
  if (v23 < 0)
  {
    operator delete(v22[0]);
    if (!v3)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v3)
  {
LABEL_41:
    CFRelease(v3);
  }
}

void sub_22CD8659C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v23 - 56), 0);
  _Unwind_Resume(a1);
}

void NLAbstractLanguageModeler::removeDiacritics(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void nlp::CFScopedPtr<_LXCursor const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void NLSentenceCorrectorModel::NLSentenceCorrectorModel(NLSentenceCorrectorModel *this, const __CFLocale *a2, const __CFString *a3)
{
  v68[19] = *MEMORY[0x277D85DE8];
  *(this + 12) = 0;
  v6 = this + 96;
  *(this + 11) = this + 96;
  v7 = (this + 88);
  *(this + 10) = 0;
  *(this + 13) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v8 = *MEMORY[0x277CBECE8];
  *(this + 3) = MEMORY[0x2318BF880](*MEMORY[0x277CBECE8]);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (a3)
  {
    MutableCopy = CFStringCreateMutableCopy(v8, 0, a3);
    if (MutableCopy)
    {
      v12 = MEMORY[0x2318BF8A0](a2);
      CFStringAppend(MutableCopy, v12);
      CFStringAppend(MutableCopy, @"/scmodel.dat");
      CFDictionaryAddValue(Mutable, kMRLModelFileLocationKey, MutableCopy);
      CFRelease(MutableCopy);
    }
  }

  else
  {
    AssetResource = NL::Resource::createAssetResource(a2, @"SentenceCorrection", @"scmodel.dat", v9);
    if (AssetResource)
    {
      NL::Resource::exists(AssetResource);
    }
  }

  if (!CFDictionaryContainsKey(Mutable, kMRLModelFileLocationKey))
  {
    CFRelease(Mutable);
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "OptionalAssets absent.");
    NL::ResourceCreationException::ResourceCreationException(exception, __p);
  }

  v14 = MRLModelCreate();
  *this = v14;
  if (!v14)
  {
    CFRelease(Mutable);
    v47 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "Montreal model creation failed.");
    NL::ResourceCreationException::ResourceCreationException(v47, __p);
  }

  *(this + 1) = MRLModelGetOutputSize();
  v15 = *this;
  IOMappings = MRLModelGetIOMappings();
  *(this + 10) = IOMappings;
  std::string::basic_string[abi:ne200100]<0>(__p, "xOOVx");
  *(this + 16) = *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(IOMappings, __p) + 56);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(this + 10);
  std::string::basic_string[abi:ne200100]<0>(__p, "xNUMx");
  *(this + 17) = *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v17, __p) + 56);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *(this + 10);
  std::string::basic_string[abi:ne200100]<0>(__p, "xCURx");
  *(this + 18) = *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v18, __p) + 56);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  v49 = 0;
  v50 = 0;
  v48 = &v49;
  if (a3)
  {
    v20 = CFStringCreateMutableCopy(v8, 0, a3);
    if (v20)
    {
      v21 = MEMORY[0x2318BF8A0](a2);
      CFStringAppend(v20, v21);
      CFStringAppend(v20, @"/scsubs.dat");
      Copy = CFStringCreateCopy(v8, v20);
      CFRelease(v20);
      if (Copy)
      {
        v23 = convertToCString(Copy);
        if (v23)
        {
          std::string::basic_string[abi:ne200100]<0>(&v62, v23);
          std::ifstream::basic_ifstream(__p, &v62);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          v58[0] = 0;
          v58[1] = 0;
          v59 = 0;
          memset(&v57, 0, sizeof(v57));
          v24 = MEMORY[0x277D82680];
          while (1)
          {
            std::ios_base::getloc((__p + *(__p[0] - 3)));
            v25 = std::locale::use_facet(&v62, v24);
            v26 = (v25->__vftable[2].~facet_0)(v25, 10);
            std::locale::~locale(&v62);
            v27 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v58, v26);
            if ((*(v27 + *(*v27 - 24) + 32) & 5) != 0)
            {
              break;
            }

            v54 = 0;
            v55 = 0;
            v56 = 0;
            splitWithChar(v58, 9u, &v54);
            v28 = v54;
            v29 = v55;
            if (v55 - v54 == 24)
            {
              std::string::operator=(&v57, v54);
              v51 = &v57;
              std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v48, &v57.__r_.__value_.__l.__data_);
              v28 = v54;
              v29 = v55;
            }

            if (v29 - v28 == 48)
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              splitWithChar(&v28[1], 0x2Fu, &v51);
              v30 = v51;
              v31 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3);
              if (v31 == 1)
              {
                if (SHIBYTE(v51->__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v64, v51->__r_.__value_.__l.__data_, v51->__r_.__value_.__l.__size_);
                }

                else
                {
                  v33 = *&v51->__r_.__value_.__l.__data_;
                  v64.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
                  *&v64.__r_.__value_.__l.__data_ = v33;
                }

                memset(&v62, 0, sizeof(v62));
                std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v62, &v64, &v65, 1uLL);
                v60 = &v57;
                v35 = std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v48, &v57.__r_.__value_.__l.__data_);
                v60 = v54;
                v36 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v35 + 56, &v54->__r_.__value_.__l.__data_);
                std::vector<std::string>::__vdeallocate((v36 + 56));
                *(v36 + 56) = v62;
                v61 = &v62;
                memset(&v62, 0, sizeof(v62));
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
                if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v64.__r_.__value_.__l.__data_);
                }
              }

              else if (v31 == 2)
              {
                if (SHIBYTE(v51->__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v62, v51->__r_.__value_.__l.__data_, v51->__r_.__value_.__l.__size_);
                  v30 = v51;
                }

                else
                {
                  v32 = *&v51->__r_.__value_.__l.__data_;
                  v62.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
                  *&v62.__r_.__value_.__l.__data_ = v32;
                }

                if (SHIBYTE(v30[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v63, v30[1].__r_.__value_.__l.__data_, v30[1].__r_.__value_.__l.__size_);
                }

                else
                {
                  v34 = *&v30[1].__r_.__value_.__l.__data_;
                  v63.__r_.__value_.__r.__words[2] = v30[1].__r_.__value_.__r.__words[2];
                  *&v63.__r_.__value_.__l.__data_ = v34;
                }

                memset(&v64, 0, sizeof(v64));
                std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v64, &v62, &v64, 2uLL);
                v60 = &v57;
                v37 = std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v48, &v57.__r_.__value_.__l.__data_);
                v60 = v54;
                v38 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v37 + 56, &v54->__r_.__value_.__l.__data_);
                std::vector<std::string>::__vdeallocate((v38 + 56));
                *(v38 + 56) = v64;
                memset(&v64, 0, sizeof(v64));
                v61 = &v64;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
                for (i = 0; i != -6; i -= 3)
                {
                  if (SHIBYTE(v63.__r_.__value_.__r.__words[i + 2]) < 0)
                  {
                    operator delete(*(&v62 + i * 8 + 24));
                  }
                }
              }

              v62.__r_.__value_.__r.__words[0] = &v51;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v62);
            }

            v62.__r_.__value_.__r.__words[0] = &v54;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v62);
          }

          free(v23);
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v59) < 0)
          {
            operator delete(v58[0]);
          }

          __p[0] = *MEMORY[0x277D82808];
          *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82808] + 24);
          MEMORY[0x2318C03D0](&v67);
          std::istream::~istream();
          MEMORY[0x2318C0570](v68);
        }

        CFRelease(Copy);
      }
    }
  }

  else
  {
    v40 = NL::Resource::createAssetResource(a2, @"SentenceCorrection", @"scsubs.dat", v19);
    if (v40)
    {
      NL::Resource::exists(v40);
    }
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(v7, *(this + 12));
  v41 = v49;
  *(this + 11) = v48;
  *(this + 12) = v41;
  v42 = v50;
  *(this + 13) = v50;
  if (v42)
  {
    v41[2] = v6;
    v48 = &v49;
    v49 = 0;
    v50 = 0;
    v41 = 0;
  }

  else
  {
    *v7 = v6;
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(&v48, v41);
  v43 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v44 = v43;
  if (v43)
  {
    CFArrayAppendValue(v43, *MEMORY[0x277D003A8]);
    *(this + 2) = NLTaggerCreate();
    CFRelease(v44);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_22CD87028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(&a15, a16);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(v61, *(v60 + 96));
  v63 = *(v60 + 40);
  if (v63)
  {
    *(v60 + 48) = v63;
    operator delete(v63);
  }

  _Unwind_Resume(a1);
}

void NLSentenceCorrectorModel::~NLSentenceCorrectorModel(NLSentenceCorrectorModel *this)
{
  if (*this)
  {
    MRLModelRelease();
  }

  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(this + 88, *(this + 12));
  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

uint64_t *NLSentenceCorrectorModel::getLabelProbabilities@<X0>(uint64_t *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this[4];
  if (v3)
  {
    v4 = this;
    std::vector<float>::vector[abi:ne200100](&v9, this[1] * v3);
    v6 = v4[4];
    v5 = v4[5];
    v7 = *v4;
    v8 = v10;
    *a2 = v9;
    a2[2] = v8;
    return MRLModelRecognize();
  }

  return this;
}

void sub_22CD8733C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void NLSentenceCorrectorModel::createLabelSequenceString(void *a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "A");
    v24 = 1058642330;
    std::string::basic_string[abi:ne200100]<0>(v25, "B");
    v26 = 1056964608;
    std::string::basic_string[abi:ne200100]<0>(v27, "C");
    v28 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v29, "D");
    v30 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(v31, "0");
    v32 = 1065353216;
    std::map<std::string,float>::map[abi:ne200100](NLSentenceCorrectorModel::createLabelSequenceString(std::vector<float>)::kIncorrectThresholdMap, &v23.__r_.__value_.__l.__data_, 5);
    for (i = 0; i != -160; i -= 32)
    {
      if (v31[i + 23] < 0)
      {
        operator delete(*&v31[i]);
      }
    }

    __cxa_atexit(std::map<std::string,float>::~map[abi:ne200100], NLSentenceCorrectorModel::createLabelSequenceString(std::vector<float>)::kIncorrectThresholdMap, &dword_22CD0B000);
  }

  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (!(((a2[1] - *a2) >> 2) % a1[1]) && a1[4])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v22 = 0;
      v8 = a1[1];
      if (v8)
      {
        v9 = 0;
        v10 = *a2 + v8 * v6;
        v11 = 0.0;
        do
        {
          v12 = *(v10 + 4 * v9);
          if (v12 > v11)
          {
            v22 = v9;
            v11 = v12;
          }

          ++v9;
        }

        while (v8 != v9);
      }

      else
      {
        v11 = 0.0;
      }

      v13 = *std::map<int,int>::at(a1[10] + 72, &v22);
      *(&v23.__r_.__value_.__s + 23) = 1;
      LOWORD(v23.__r_.__value_.__l.__data_) = v13;
      if (!std::string::compare(&v23, "Y") || v11 > *std::map<std::string,float>::at(NLSentenceCorrectorModel::createLabelSequenceString(std::vector<float>)::kIncorrectThresholdMap, &v23.__r_.__value_.__l.__data_))
      {
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v23;
        }

        else
        {
          v14 = v23.__r_.__value_.__r.__words[0];
        }

        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v23.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, v14, size);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Y");
        if ((v21 & 0x80u) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if ((v21 & 0x80u) == 0)
        {
          v17 = v21;
        }

        else
        {
          v17 = __p[1];
        }

        std::string::append(a3, v16, v17);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      ++v7;
      v6 += 4;
    }

    while (a1[4] > v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22CD87664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = (v21 + 151);
  v24 = -160;
  v25 = (v21 + 151);
  while (1)
  {
    v26 = *v25;
    v25 -= 32;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 32;
    if (!v24)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *std::map<int,int>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::map<std::string,float>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void *NLSentenceCorrectorModel::clearInputTokens(void *this)
{
  v1 = this[5];
  if (this[6] != v1)
  {
    this[6] = v1;
  }

  this[4] = 0;
  return this;
}

void findAndNormalizePunctuation(__CFString *theString)
{
  v8 = *MEMORY[0x277D85DE8];
  {
    v7[1] = @"";
    v7[3] = @"'";
    v7[4] = @"‘";
    v7[5] = @"'";
    v7[6] = @"’";
    v7[7] = @"'";
    v7[8] = @"‚";
    v7[9] = @"'";
    v7[10] = @"‛";
    v7[11] = @"'";
    v7[12] = @"“";
    v7[13] = @"";
    v7[14] = @"”";
    v7[15] = @"";
    v7[16] = @"„";
    v7[17] = @"";
    v7[18] = @"‟";
    v7[19] = @"";
    v7[20] = @"--";
    v7[21] = @"—";
    v7[22] = @"‐‐";
    v7[23] = @"—";
    v7[24] = @" - ";
    v7[25] = @"—";
    v7[26] = @" ‑ ";
    v7[27] = @"—";
    v7[28] = @"-";
    v7[29] = @"‐";
    v7[30] = @"-";
    v7[31] = @"‐";
    v7[32] = @"‒";
    v7[33] = @"—";
    v7[34] = @"‒";
    v7[35] = @"—";
    v7[36] = @"‒";
    v7[37] = @"—";
    findAndNormalizePunctuation(__CFString *)::punctuationMap = 0;
    unk_27D9EE6F0 = 0;
    qword_27D9EE6F8 = 0;
    std::vector<std::pair<__CFString const*,__CFString const*>>::__init_with_size[abi:ne200100]<std::pair<__CFString const*,__CFString const*> const*,std::pair<__CFString const*,__CFString const*> const*>(&findAndNormalizePunctuation(__CFString *)::punctuationMap, v7, &v8, 0x13uLL);
    __cxa_atexit(std::vector<std::pair<__CFString const*,__CFString const*>>::~vector[abi:ne200100], &findAndNormalizePunctuation(__CFString *)::punctuationMap, &dword_22CD0B000);
  }

  v2 = findAndNormalizePunctuation(__CFString *)::punctuationMap;
  v3 = unk_27D9EE6F0;
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v9.length = CFStringGetLength(theString);
    v9.location = 0;
    CFStringFindAndReplace(theString, v4, v5, v9, 0);
    v2 += 16;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<std::pair<__CFString const*,__CFString const*>>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

BOOL isNumericalToken(const std::string *a1)
{
  std::istringstream::basic_istringstream[abi:ne200100](v4, a1, 8);
  v3 = 0;
  *(&v4[1] + *(v4[0] - 24)) &= ~0x1000u;
  MEMORY[0x2318C0400](v4, &v3);
  v1 = *(&v6[1].__locale_ + *(v4[0] - 24));
  v4[0] = *MEMORY[0x277D82820];
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::istream::~istream();
  MEMORY[0x2318C0570](&v8);
  return (v1 & 7) == 2;
}

void sub_22CD87C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::istringstream::~istringstream(&a11, MEMORY[0x277D82820]);
  MEMORY[0x2318C0570](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_22CD87D94(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2318C0570](v1);
  _Unwind_Resume(a1);
}

BOOL isCurrencyToken(unsigned __int8 *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "$");
    std::string::basic_string[abi:ne200100]<0>(v13, "usd");
    std::string::basic_string[abi:ne200100]<0>(v14, "£");
    std::string::basic_string[abi:ne200100]<0>(v15, "gbp");
    std::string::basic_string[abi:ne200100]<0>(v16, "€");
    std::string::basic_string[abi:ne200100]<0>(v17, "eur");
    std::string::basic_string[abi:ne200100]<0>(v18, "¥");
    std::string::basic_string[abi:ne200100]<0>(v19, "yen");
    isCurrencyToken(std::string const&)::currency = 0;
    unk_27D9EE710 = 0;
    qword_27D9EE718 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&isCurrencyToken(std::string const&)::currency, v12, &v20, 8uLL);
    for (i = 0; i != -192; i -= 24)
    {
      if (v19[i + 23] < 0)
      {
        operator delete(*&v19[i]);
      }
    }

    __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &isCurrencyToken(std::string const&)::currency, &dword_22CD0B000);
  }

  v2 = isCurrencyToken(std::string const&)::currency;
  v3 = unk_27D9EE710;
  if (isCurrencyToken(std::string const&)::currency != unk_27D9EE710)
  {
    v4 = a1[23];
    if (v4 >= 0)
    {
      v5 = a1[23];
    }

    else
    {
      v5 = *(a1 + 1);
    }

    if (v4 < 0)
    {
      a1 = *a1;
    }

    while (1)
    {
      v6 = *(v2 + 23);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v2 + 8);
      }

      if (v6 == v5)
      {
        v8 = v7 >= 0 ? v2 : *v2;
        if (!memcmp(v8, a1, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  result = v2 != v3;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CD87FE0(_Unwind_Exception *a1)
{
  v3 = (v1 + 191);
  v4 = -192;
  v5 = (v1 + 191);
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(a1);
    }
  }
}

void **std::vector<std::string>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void NLSentenceCorrectorModel::setInputTokens(CFLocaleRef *this, CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  if (MutableCopy)
  {
    v4 = MutableCopy;
    CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
    CFStringLowercase(v4, this[3]);
    findAndNormalizePunctuation(v4);
    v5 = &v48;
    v48 = 0;
    v49 = &v48;
    v50 = 0x4002000000;
    v51 = __Block_byref_object_copy__8;
    v52 = __Block_byref_object_dispose__8;
    memset(v53, 0, 24);
    if (this[2])
    {
      NLTaggerSetString();
      v6 = this[2];
      v7 = this[3];
      CFStringGetLength(v4);
      NLTaggerSetLocaleForRange();
      CFStringGetLength(v4);
      v44.__r_.__value_.__r.__words[0] = 0;
      v44.__r_.__value_.__l.__size_ = &v44;
      v44.__r_.__value_.__r.__words[2] = 0x4002000000;
      v45 = __Block_byref_object_copy__93;
      v46 = __Block_byref_object_dispose__94;
      v47 = xmmword_22CDDE2F0;
      v8 = this[2];
      NLTaggerEnumerateTokens();
      _Block_object_dispose(&v44, 8);
      v5 = v49;
      v9 = v49[5];
    }

    else
    {
      v9 = 0;
    }

    v10 = v5[6];
    while (v9 != v10)
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v44.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v44.__r_.__value_.__l.__data_ = v11;
      }

      v12 = this[10];
      if (!v12)
      {
        goto LABEL_61;
      }

      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v12, &v44.__r_.__value_.__l.__data_);
      if ((this[10] + 8) == v13)
      {
        if (isNumericalToken(&v44))
        {
          v15 = this[6];
          v17 = this[7];
          if (v15 >= v17)
          {
            v18 = this[5];
            v19 = v15 - v18;
            v29 = (v15 - v18) >> 2;
            v30 = v29 + 1;
            if ((v29 + 1) >> 62)
            {
              goto LABEL_66;
            }

            v31 = v17 - v18;
            if (v31 >> 1 > v30)
            {
              v30 = v31 >> 1;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v32 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>((this + 5), v32);
            }

            v26 = (v15 - v18) >> 2;
            v27 = (4 * v29);
            v28 = *(this + 17);
            goto LABEL_58;
          }

          v16 = *(this + 17);
        }

        else
        {
          v24 = isCurrencyToken(&v44);
          v15 = this[6];
          v25 = this[7];
          if (v24)
          {
            if (v15 >= v25)
            {
              v18 = this[5];
              v19 = v15 - v18;
              v34 = (v15 - v18) >> 2;
              v35 = v34 + 1;
              if ((v34 + 1) >> 62)
              {
                goto LABEL_66;
              }

              v36 = v25 - v18;
              if (v36 >> 1 > v35)
              {
                v35 = v36 >> 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v37 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>((this + 5), v37);
              }

              v26 = (v15 - v18) >> 2;
              v27 = (4 * v34);
              v28 = *(this + 18);
              goto LABEL_58;
            }

            v16 = *(this + 18);
          }

          else
          {
            if (v15 >= v25)
            {
              v18 = this[5];
              v19 = v15 - v18;
              v38 = (v15 - v18) >> 2;
              v39 = v38 + 1;
              if ((v38 + 1) >> 62)
              {
LABEL_66:
                std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
              }

              v40 = v25 - v18;
              if (v40 >> 1 > v39)
              {
                v39 = v40 >> 1;
              }

              if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v41 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>((this + 5), v41);
              }

              v26 = (v15 - v18) >> 2;
              v27 = (4 * v38);
              v28 = *(this + 16);
              goto LABEL_58;
            }

            v16 = *(this + 16);
          }
        }
      }

      else
      {
        v15 = this[6];
        v14 = this[7];
        if (v15 >= v14)
        {
          v18 = this[5];
          v19 = v15 - v18;
          v20 = (v15 - v18) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            goto LABEL_66;
          }

          v22 = v14 - v18;
          if (v22 >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>((this + 5), v23);
          }

          v26 = v20;
          v27 = (4 * v20);
          v28 = *(v13 + 56);
LABEL_58:
          v42 = &v27[-v26];
          *v27 = v28;
          v33 = (v27 + 1);
          memcpy(v42, v18, v19);
          v43 = this[5];
          this[5] = v42;
          this[6] = v33;
          this[7] = 0;
          if (v43)
          {
            operator delete(v43);
          }

          goto LABEL_60;
        }

        v16 = *(v13 + 56);
      }

      *v15 = v16;
      v33 = (v15 + 4);
LABEL_60:
      this[6] = v33;
LABEL_61:
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v9 = (v9 + 24);
    }

    this[4] = ((this[6] - this[5]) >> 2);
    CFRelease(v4);
    _Block_object_dispose(&v48, 8);
    v44.__r_.__value_.__r.__words[0] = v53;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  }
}

void sub_22CD88544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&__p, 8);
  _Block_object_dispose(&a29, 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__8(void *a1, uint64_t a2)
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

__n128 __Block_byref_object_copy__93(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN24NLSentenceCorrectorModel14setInputTokensEPK10__CFString_block_invoke(uint64_t a1, CFRange *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5.location = *(v4 + 40);
  v6 = *(v4 + 48);
  if (v6 + v5.location == a2->location && (a2[1].location & 0x410) == 0x10)
  {
    v5.length = a2->length + v6;
    v7 = CFStringCreateWithSubstring(0, *(a1 + 48), v5);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 48);
    v11 = (v10 - 24);
    if (*(v10 - 1) < 0)
    {
      operator delete(*v11);
    }

    *(v9 + 48) = v11;
    v12 = convertToCString(v8);
    std::string::basic_string[abi:ne200100]<0>(__p, v12);
    free(v12);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 48);
    if (v14 < *(v13 + 56))
    {
      if (SHIBYTE(v24) < 0)
      {
        std::string::__init_copy_ctor_external(*(v13 + 48), __p[0], __p[1]);
      }

      else
      {
        v15 = *__p;
        *(v14 + 16) = v24;
        *v14 = v15;
      }

      v20 = (v14 + 24);
      *(v13 + 48) = v14 + 24;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = CFStringCreateWithSubstring(0, *(a1 + 48), *a2);
    if (!v16)
    {
      return;
    }

    v8 = v16;
    v17 = convertToCString(v16);
    std::string::basic_string[abi:ne200100]<0>(__p, v17);
    free(v17);
    v13 = *(*(a1 + 40) + 8);
    v18 = *(v13 + 48);
    if (v18 < *(v13 + 56))
    {
      if (SHIBYTE(v24) < 0)
      {
        std::string::__init_copy_ctor_external(*(v13 + 48), __p[0], __p[1]);
      }

      else
      {
        v19 = *__p;
        *(v18 + 16) = v24;
        *v18 = v19;
      }

      v20 = (v18 + 24);
      *(v13 + 48) = v18 + 24;
      goto LABEL_19;
    }
  }

  v20 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(v13 + 40, __p);
LABEL_19:
  *(v13 + 48) = v20;
  v21 = *(*(a1 + 32) + 8);
  v22 = *a2;
  *(v21 + 56) = a2[1].location;
  *(v21 + 40) = v22;
  CFRelease(v8);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CD88810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v16 + 48) = v15;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLSentenceCorrectorModel::getErrorCategoriesAndErrorRanges(NLSentenceCorrectorModel *this@<X0>, const __CFString *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  NLSentenceCorrectorModel::getLabelProbabilities(this, &__p);
  v6 = *(this + 1);
  v7 = __p;
  if (!v6)
  {
LABEL_5:
    if (!__p)
    {
      return;
    }

    goto LABEL_6;
  }

  v8 = (__p + 4 * v6);
  v9 = __p;
  while (*v9 == 0.0)
  {
    if (++v9 == v8)
    {
      goto LABEL_5;
    }
  }

  v104 = 0;
  v105 = 0;
  v103 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v103, __p, v108, (v108 - __p) >> 2);
  NLSentenceCorrectorModel::createLabelSequenceString(this, &v103, &v106);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  v10 = *MEMORY[0x277CBECE8];
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v106;
  }

  else
  {
    v11 = v106.__r_.__value_.__r.__words[0];
  }

  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v11, 0x8000100u);
  v13 = v12;
  if (v12)
  {
    v113.length = CFStringGetLength(v12);
    v113.location = 0;
    Results = CFStringCreateArrayWithFindResults(v10, v13, @"A", v113, 0);
    v15 = Results;
    v98 = v10;
    v99 = v13;
    if (Results)
    {
      Count = CFArrayGetCount(Results);
      if (Count >= 1)
      {
        v17 = 0;
        v95 = v15;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
          v19 = sentenceRangeForErrorIndex(*(this + 2), *(this + 3), a2, *ValueAtIndex);
          v21 = v20;
          v110.location = v19;
          v110.length = v20;
          v22 = CFStringCreateWithSubstring(v10, a2, v110);
          if (v22)
          {
            std::string::basic_string[abi:ne200100]<0>(v100, kErrorTypeMap);
            v109 = v100;
            v23 = std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 88, v100);
            possibleCorrectionsForErrorString(v22, v23 + 56, *(this + 3), &v102);
            if (v101 < 0)
            {
              operator delete(v100[0]);
            }

            if (v102.__end_ != v102.__begin_)
            {
              v24 = Count;
              v25 = a3[1];
              v26 = a3[2];
              if (v25 >= v26)
              {
                v28 = *a3;
                v29 = v25 - *a3;
                v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3) + 1;
                if (v30 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
                }

                v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v28) >> 3);
                if (2 * v31 > v30)
                {
                  v30 = 2 * v31;
                }

                if (v31 >= 0x555555555555555)
                {
                  v30 = 0xAAAAAAAAAAAAAAALL;
                }

                if (v30)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(a3, v30);
                }

                v32 = 8 * (v29 >> 3);
                *v32 = 0;
                *(v32 + 8) = v19;
                *(v32 + 16) = v21;
                v27 = v32 + 24;
                v33 = v32 - v29;
                memcpy((v32 - v29), v28, v29);
                v34 = *a3;
                *a3 = v33;
                a3[1] = v27;
                a3[2] = 0;
                if (v34)
                {
                  operator delete(v34);
                }

                v10 = v98;
              }

              else
              {
                *v25 = 0;
                v27 = (v25 + 24);
                *(v25 + 1) = v19;
                *(v25 + 2) = v21;
              }

              a3[1] = v27;
              Count = v24;
              v15 = v95;
            }

            CFRelease(v22);
            v100[0] = &v102;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v100);
          }

          ++v17;
        }

        while (Count != v17);
      }

      CFRelease(v15);
      v13 = v99;
    }

    v114.length = CFStringGetLength(v13);
    v114.location = 0;
    v35 = CFStringCreateArrayWithFindResults(v10, v13, @"B", v114, 0);
    v36 = v35;
    if (v35)
    {
      v37 = CFArrayGetCount(v35);
      if (v37 >= 1)
      {
        v38 = 0;
        v96 = v36;
        do
        {
          v39 = CFArrayGetValueAtIndex(v36, v38);
          v40 = sentenceRangeForErrorIndex(*(this + 2), *(this + 3), a2, *v39);
          v42 = v41;
          v111.location = v40;
          v111.length = v41;
          v43 = CFStringCreateWithSubstring(v10, a2, v111);
          if (v43)
          {
            std::string::basic_string[abi:ne200100]<0>(v100, qword_27D9EE490);
            v109 = v100;
            v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 88, v100);
            possibleCorrectionsForErrorString(v43, v44 + 56, *(this + 3), &v102);
            if (v101 < 0)
            {
              operator delete(v100[0]);
            }

            if (v102.__end_ != v102.__begin_)
            {
              v45 = v37;
              v46 = a3[1];
              v47 = a3[2];
              if (v46 >= v47)
              {
                v49 = *a3;
                v50 = v46 - *a3;
                v51 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 3) + 1;
                if (v51 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
                }

                v52 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v49) >> 3);
                if (2 * v52 > v51)
                {
                  v51 = 2 * v52;
                }

                if (v52 >= 0x555555555555555)
                {
                  v51 = 0xAAAAAAAAAAAAAAALL;
                }

                if (v51)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(a3, v51);
                }

                v53 = 8 * (v50 >> 3);
                *v53 = 1;
                *(v53 + 8) = v40;
                *(v53 + 16) = v42;
                v48 = v53 + 24;
                v54 = v53 - v50;
                memcpy((v53 - v50), v49, v50);
                v55 = *a3;
                *a3 = v54;
                a3[1] = v48;
                a3[2] = 0;
                if (v55)
                {
                  operator delete(v55);
                }

                v10 = v98;
              }

              else
              {
                *v46 = 1;
                v48 = (v46 + 24);
                *(v46 + 1) = v40;
                *(v46 + 2) = v42;
              }

              a3[1] = v48;
              v37 = v45;
              v36 = v96;
            }

            CFRelease(v43);
            v100[0] = &v102;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v100);
          }

          ++v38;
        }

        while (v37 != v38);
      }

      CFRelease(v36);
      v13 = v99;
    }

    v115.length = CFStringGetLength(v13);
    v115.location = 0;
    v56 = CFStringCreateArrayWithFindResults(v10, v13, @"C", v115, 0);
    v57 = v56;
    if (v56)
    {
      v58 = CFArrayGetCount(v56);
      if (v58 >= 1)
      {
        v59 = 0;
        v97 = v57;
        do
        {
          v60 = CFArrayGetValueAtIndex(v57, v59);
          v61 = sentenceRangeForErrorIndex(*(this + 2), *(this + 3), a2, *v60);
          v63 = v62;
          v112.location = v61;
          v112.length = v62;
          v64 = CFStringCreateWithSubstring(v10, a2, v112);
          if (v64)
          {
            std::string::basic_string[abi:ne200100]<0>(v100, qword_27D9EE498);
            v109 = v100;
            v65 = std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 88, v100);
            possibleCorrectionsForErrorString(v64, v65 + 56, *(this + 3), &v102);
            if (v101 < 0)
            {
              operator delete(v100[0]);
            }

            if (v102.__end_ != v102.__begin_)
            {
              v66 = v58;
              v67 = a3[1];
              v68 = a3[2];
              if (v67 >= v68)
              {
                v70 = *a3;
                v71 = v67 - *a3;
                v72 = 0xAAAAAAAAAAAAAAABLL * (v71 >> 3) + 1;
                if (v72 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
                }

                v73 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v70) >> 3);
                if (2 * v73 > v72)
                {
                  v72 = 2 * v73;
                }

                if (v73 >= 0x555555555555555)
                {
                  v72 = 0xAAAAAAAAAAAAAAALL;
                }

                if (v72)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(a3, v72);
                }

                v74 = 8 * (v71 >> 3);
                *v74 = 1;
                *(v74 + 8) = v61;
                *(v74 + 16) = v63;
                v69 = v74 + 24;
                v75 = v74 - v71;
                memcpy((v74 - v71), v70, v71);
                v76 = *a3;
                *a3 = v75;
                a3[1] = v69;
                a3[2] = 0;
                if (v76)
                {
                  operator delete(v76);
                }

                v10 = v98;
              }

              else
              {
                *v67 = 1;
                v69 = (v67 + 24);
                *(v67 + 1) = v61;
                *(v67 + 2) = v63;
              }

              a3[1] = v69;
              v58 = v66;
              v57 = v97;
            }

            CFRelease(v64);
            v100[0] = &v102;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v100);
          }

          ++v59;
        }

        while (v58 != v59);
      }

      CFRelease(v57);
      v13 = v99;
    }

    v116.length = CFStringGetLength(v13);
    v116.location = 0;
    v77 = CFStringCreateArrayWithFindResults(v10, v13, @"D", v116, 0);
    v78 = v77;
    if (v77)
    {
      v79 = CFArrayGetCount(v77);
      if (v79 >= 1)
      {
        for (i = 0; i != v79; ++i)
        {
          v81 = CFArrayGetValueAtIndex(v78, i);
          v82 = sentenceRangeForErrorIndex(*(this + 2), *(this + 3), a2, *v81);
          v84 = v83;
          v85 = a3[1];
          v86 = a3[2];
          if (v85 >= v86)
          {
            v88 = *a3;
            v89 = v85 - *a3;
            v90 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3) + 1;
            if (v90 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
            }

            v91 = 0xAAAAAAAAAAAAAAABLL * ((v86 - v88) >> 3);
            if (2 * v91 > v90)
            {
              v90 = 2 * v91;
            }

            if (v91 >= 0x555555555555555)
            {
              v90 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v90)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(a3, v90);
            }

            v92 = 8 * (v89 >> 3);
            *v92 = 3;
            *(v92 + 8) = v82;
            *(v92 + 16) = v84;
            v87 = v92 + 24;
            v93 = v92 - v89;
            memcpy((v92 - v89), v88, v89);
            v94 = *a3;
            *a3 = v93;
            a3[1] = v87;
            a3[2] = 0;
            if (v94)
            {
              operator delete(v94);
            }

            v13 = v99;
          }

          else
          {
            *v85 = 3;
            v87 = (v85 + 24);
            *(v85 + 1) = v82;
            *(v85 + 2) = v83;
          }

          a3[1] = v87;
        }
      }

      CFRelease(v78);
    }

    CFRelease(v13);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v7 = __p;
  if (__p)
  {
LABEL_6:
    operator delete(v7);
  }
}

void sub_22CD89110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_22CD89204(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x22CD891D0);
}

uint64_t sentenceRangeForErrorIndex(void *a1, const __CFLocale *a2, const __CFString *a3, unint64_t a4)
{
  v5 = &v14;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = __Block_byref_object_copy__124;
  v18 = __Block_byref_object_dispose__125;
  __p = 0;
  v20 = 0;
  v21 = 0;
  if (a1)
  {
    NLTaggerSetString();
    CFStringGetLength(a3);
    NLTaggerSetLocaleForRange();
    CFStringGetLength(a3);
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x4002000000;
    v12[3] = __Block_byref_object_copy__93;
    v12[4] = __Block_byref_object_dispose__94;
    v13 = xmmword_22CDDE2F0;
    NLTaggerEnumerateTokens();
    _Block_object_dispose(v12, 8);
    v5 = v15;
    v7 = v15[5];
  }

  else
  {
    v7 = 0;
  }

  if (a4 >= (v5[6] - v7) >> 4)
  {
    std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = (v7 + 16 * a4);
  v9 = *v8;
  v10 = v8[1];
  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_22CD893E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void possibleCorrectionsForErrorString(CFStringRef theString@<X0>, uint64_t a2@<X1>, const __CFLocale *a3@<X2>, std::vector<std::string> *a4@<X8>)
{
  a4->__begin_ = 0;
  a4->__end_ = 0;
  a4->__end_cap_.__value_ = 0;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormC);
  CFStringLowercase(MutableCopy, a3);
  findAndNormalizePunctuation(MutableCopy);
  if (MutableCopy)
  {
    v8 = convertToCString(MutableCopy);
    if (v8)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (a2 + 8 != v9 && (v9 + 56) != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, *(v9 + 56), *(v9 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 64) - *(v9 + 56)) >> 3));
      }

      free(v8);
    }

    CFRelease(MutableCopy);
  }
}

__CFArray *NLSentenceCorrectorModel::possibleCorrectionsForSentenceError(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = Mutable;
  if (*a3 == 3)
  {
    CFArrayAppendValue(Mutable, @"a");
    CFArrayAppendValue(v8, @"an");
    CFArrayAppendValue(v8, @"the");
  }

  else
  {
    v9 = CFStringCreateWithSubstring(v6, a2, *(a3 + 2));
    if (v9)
    {
      v10 = v9;
      std::string::basic_string[abi:ne200100]<0>(&__p, kErrorTypeMap[*a3]);
      p_p = &__p;
      v11 = std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 88, &__p.__r_.__value_.__l.__data_);
      possibleCorrectionsForErrorString(v10, v11 + 56, *(a1 + 24), &v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      CFRelease(v10);
      begin = v19.__begin_;
      for (i = v19.__end_; begin != i; ++begin)
      {
        if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, begin->__r_.__value_.__l.__data_, begin->__r_.__value_.__l.__size_);
        }

        else
        {
          v14 = *&begin->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = begin->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v14;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &__p;
        }

        else
        {
          v15 = __p.__r_.__value_.__r.__words[0];
        }

        v16 = CFStringCreateWithCString(v6, v15, 0x8000100u);
        if (v16)
        {
          CFArrayAppendValue(v8, v16);
          CFRelease(v16);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      __p.__r_.__value_.__r.__words[0] = &v19;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    }
  }

  return v8;
}

void sub_22CD8972C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *NL::ResourceCreationException::ResourceCreationException(void *a1, __int128 *a2)
{
  *a1 = &unk_28400E158;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void NL::ResourceCreationException::~ResourceCreationException(std::exception *this)
{
  NL::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x2318C0600);
}

{
  this->__vftable = &unk_28400E158;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t NL::ResourceCreationException::what(NL::ResourceCreationException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::vector<std::string>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::vector<std::string>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

__n128 __Block_byref_object_copy__124(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__125(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 ___ZL26sentenceRangeForErrorIndexPvPK10__CFLocalePK10__CFStringl_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 32) + 8) + 48) + *(*(*(a1 + 32) + 8) + 40) != *a2 || (*(a2 + 16) & 0x410) != 0x10)
  {
    v4 = *(*(a1 + 40) + 8);
    v9 = v4[6];
    v10 = v4[7];
    if (v9 < v10)
    {
      *v9 = *a2;
      goto LABEL_7;
    }

    v12 = v4[5];
    v13 = (v9 - v12) >> 4;
    v14 = v13 + 1;
    if (!((v13 + 1) >> 60))
    {
      v15 = v10 - v12;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>((v4 + 5), v16);
      }

      *(16 * v13) = *a2;
      v11 = 16 * v13 + 16;
      v17 = v4[5];
      v18 = v4[6] - v17;
      v19 = (16 * v13 - v18);
      goto LABEL_25;
    }

LABEL_28:
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  *(*(*(a1 + 40) + 8) + 48) -= 16;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v7 = *(a2 + 8) + *(v5 + 48);
  v9 = v4[6];
  v8 = v4[7];
  if (v9 < v8)
  {
    *v9 = v6;
    *(v9 + 8) = v7;
LABEL_7:
    v11 = v9 + 16;
    goto LABEL_27;
  }

  v17 = v4[5];
  v18 = v9 - v17;
  v20 = (v9 - v17) >> 4;
  v21 = v20 + 1;
  if ((v20 + 1) >> 60)
  {
    goto LABEL_28;
  }

  v22 = v8 - v17;
  if (v22 >> 3 > v21)
  {
    v21 = v22 >> 3;
  }

  v23 = v22 >= 0x7FFFFFFFFFFFFFF0;
  v24 = 0xFFFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v24 = v21;
  }

  if (v24)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>((v4 + 5), v24);
  }

  v25 = (16 * v20);
  *v25 = v6;
  v25[1] = v7;
  v11 = 16 * v20 + 16;
  v19 = 0;
LABEL_25:
  memcpy(v19, v17, v18);
  v26 = v4[5];
  v4[5] = v19;
  v4[6] = v11;
  v4[7] = 0;
  if (v26)
  {
    operator delete(v26);
  }

LABEL_27:
  v4[6] = v11;
  v27 = *(*(a1 + 32) + 8);
  result = *a2;
  *(v27 + 56) = *(a2 + 16);
  *(v27 + 40) = result;
  return result;
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::vector<std::string>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD8A094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
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

void sub_22CD8A26C(_Unwind_Exception *exception_object)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void *std::map<std::string,float>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::pair<std::string const,float> const&>();
  }

  return result;
}

void sub_22CD8A464(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<__CFString const*,__CFString const*>>::__init_with_size[abi:ne200100]<std::pair<__CFString const*,__CFString const*> const*,std::pair<__CFString const*,__CFString const*> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<__CFString const*,__CFString const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD8A4D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<__CFString const*,__CFString const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFString const*,__CFString const*>>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFString const*,__CFString const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD8A718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLSentenceError>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

NL::AssetResource *NL::AssetResource::AssetResource(NL::AssetResource *this, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  *(this + 1) = 0;
  v7 = (this + 8);
  *(this + 2) = 0;
  v8 = (this + 16);
  *this = 0;
  if (cf)
  {
    v9 = CFRetain(cf);
    nlp::CFScopedPtr<__CFURL const*>::reset(this, v9);
  }

  if (a3)
  {
    v10 = CFRetain(a3);
    nlp::CFScopedPtr<__CFLocale const*>::reset(v7, v10);
  }

  if (a4)
  {
    v11 = CFRetain(a4);
    nlp::CFScopedPtr<__CFString const*>::reset(v8, v11);
  }

  return this;
}

void sub_22CD8A8F8(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset(v3, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

BOOL NL::AssetResource::exists(const __CFURL **this)
{
  v1 = *this;
  if (v1)
  {
    getFileSystemRepresentationFromCFURL(v1);
  }

  v6 = 0;
  LOBYTE(__p) = 0;
  v2 = open(&__p, 0);
  v3 = v2;
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  return v3 >= 0;
}

void sub_22CD8A9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NL::AssetResourceManager *NL::AssetResourceManager::AssetResourceManager(NL::AssetResourceManager *this)
{
  *this = 0;
  *(this + 2) = 0;
  v2 = (this + 8);
  *(this + 1) = 0;
  v3 = (this + 4);
  v4 = dispatch_queue_create("com.apple.NLP.assetmanager", 0);
  *(this + 2) = v4;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN2NL20AssetResourceManagerC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp_8;
  handler[4] = this;
  notify_register_dispatch("com.apple.MobileAsset.LinguisticData.new-asset-installed", v3, v4, handler);
  v5 = *(this + 2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN2NL20AssetResourceManagerC2Ev_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_3_0;
  v7[4] = this;
  notify_register_dispatch("com.apple.MobileAsset.LinguisticData.cached-metadata-updated", v2, v5, v7);
  return this;
}

void NL::AssetResourceManager::~AssetResourceManager(NL::AssetResourceManager *this)
{
  notify_cancel(*(this + 1));
  notify_cancel(*(this + 2));
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
  }
}

uint64_t NL::AssetResourceManager::checkHasUpdatedAssetsAndReset(NL::AssetResourceManager *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2NL20AssetResourceManager29checkHasUpdatedAssetsAndResetEv_block_invoke;
  v4[3] = &unk_278740188;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZN2NL20AssetResourceManager29checkHasUpdatedAssetsAndResetEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*v1 == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *v1 = 0;
  }

  return result;
}

void NL::AssetResourceManager::enumerateAssetResourcesWithContentTypeOfType()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v1 = 0;
  LDEnumerateAssetDataItems();
  _Block_object_dispose(v0, 8);
}

uint64_t ___ZN2NL20AssetResourceManager44enumerateAssetResourcesWithContentTypeOfTypeEPK10__CFLocalePK10__CFStringjU13block_pointerFvNSt3__110shared_ptrINS_13AssetResourceEEEPbE_block_invoke(uint64_t result, const __CFURL *a2, int a3, uint64_t a4, const __CFString *a5)
{
  v7 = a4;
  v8 = a2;
  if (a3 == 2)
  {
    if ((*(result + 56) & 8) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if ((*(result + 56) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!a3 && (*(result + 56) & 2) != 0)
  {
LABEL_9:
    result = CFStringsAreEqual(a5, *(result + 48));
    if (result)
    {
      cf = CFURLCopyLastPathComponent(a2);
      std::allocate_shared[abi:ne200100]<NL::AssetResource,std::allocator<NL::AssetResource>,__CFURL const*&,__CFLocale const*&,nlp::CFScopedPtr<__CFString const*> &,0>();
    }
  }

  return result;
}

void sub_22CD8AE0C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NL::AssetResourceManager::createAssetResourceOfType(void *a1@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3802000000;
  v10 = __Block_byref_object_copy__9;
  v12 = 0;
  v13 = 0;
  v11 = __Block_byref_object_dispose__9;
  NL::AssetResourceManager::enumerateAssetResourcesWithContentTypeOfType();
  v6 = v8[6];
  *a1 = v8[5];
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v7, 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_22CD8AF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__9(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2NL20AssetResourceManager25createAssetResourceOfTypeEPK10__CFLocalePK10__CFStringS6_j_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = *(*a2 + 16);
  if (v4)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (CFStringFind(v4, v6, 0).location != -1)
      {
        v8 = *(*(a1 + 32) + 8);
        v10 = *a2;
        v9 = a2[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(v8 + 48);
        *(v8 + 40) = v10;
        *(v8 + 48) = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        *a3 = 1;
      }
    }
  }
}

void NL::AssetResourceManager::createAssetResourceFromBundle(NL::AssetResourceManager *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  CFBundleCopyResourceURL(BundleWithIdentifier, a2, a3, a4);
  std::allocate_shared[abi:ne200100]<NL::AssetResource,std::allocator<NL::AssetResource>,nlp::CFScopedPtr<__CFURL const*> &,__CFLocale const*&,__CFString const*&,0>();
}

void *std::__shared_ptr_emplace<NL::AssetResource>::__shared_ptr_emplace[abi:ne200100]<__CFURL const*&,__CFLocale const*&,nlp::CFScopedPtr<__CFString const*> &,std::allocator<NL::AssetResource>,0>(void *a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D870;
  NL::AssetResource::AssetResource((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<NL::AssetResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28400D870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318C0600);
}

void std::__shared_ptr_emplace<NL::AssetResource>::__on_zero_shared(const void **a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset(a1 + 5, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(a1 + 4, 0);

  nlp::CFScopedPtr<__CFURL const*>::reset(a1 + 3, 0);
}

void *std::__shared_ptr_emplace<NL::AssetResource>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFURL const*> &,__CFLocale const*&,__CFString const*&,std::allocator<NL::AssetResource>,0>(void *a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28400D870;
  NL::AssetResource::AssetResource((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void NLGenericTransliterator::NLGenericTransliterator(NLGenericTransliterator *this, const __CFDictionary *a2)
{
  *this = &unk_28400EC40;
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
  operator new();
}

void sub_22CD8B5F0(_Unwind_Exception *a1)
{
  MEMORY[0x2318C0600](v2, 0xE1C40D30581F4);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void NLGenericTransliterator::~NLGenericTransliterator(NLGenericTransliterator *this)
{
  *this = &unk_28400EC40;
  v2 = *(this + 1);
  if (v2)
  {
    *v2 = &unk_28400EDA8;
    std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::~__hash_table((v2 + 16));
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((v2 + 11));
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((v2 + 6));
    std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::~__hash_table((v2 + 1));
    MEMORY[0x2318C0600](v2, 0x10A1C405853761CLL);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    NLAbstractDictionaryLookup::~NLAbstractDictionaryLookup(v9);
    MEMORY[0x2318C0600]();
  }

  v10 = *(this + 8);
  if (v10)
  {
    NLAbstractDictionaryLookup::~NLAbstractDictionaryLookup(v10);
    MEMORY[0x2318C0600]();
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 80);
}

{
  NLGenericTransliterator::~NLGenericTransliterator(this);

  JUMPOUT(0x2318C0600);
}

BOOL NLGenericTransliterator::isPresentInTargetLexicon(uint64_t a1, uint64_t a2)
{
  CFStringFromString = createCFStringFromString(a2);
  (*(**(a1 + 16) + 56))(*(a1 + 16));
  LODWORD(a1) = LMLanguageModelGetTokenIDForString();
  CFRelease(CFStringFromString);
  return a1 != 0;
}

void NLGenericTransliterator::acceptCandidateInDynamicLanguageModel(uint64_t a1, void *a2, NLTransliterationCandidate *this)
{
  TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(this);
  CFStringFromString = createCFStringFromString(TransliteratedWord);
  (*(**(a1 + 16) + 56))(*(a1 + 16));
  TokenIDForString = LMLanguageModelGetTokenIDForString();
  if (!TokenIDForString)
  {
    (*(**(a1 + 16) + 56))(*(a1 + 16));
    v7 = LMLanguageModelAddTokenForString();
    v8 = v7;
    v9 = NL::CFLogger::sharedInstance(v7);
    if (v8)
    {
      v10 = TokenIDForString;
      getUTF8StringFromCFString(CFStringFromString, __p);
      v11 = v15 >= 0 ? __p : __p[0];
      (*(*v9 + 16))(v9, 7, "Token ID: %u added\t for %s", v10, v11);
    }

    else
    {
      getUTF8StringFromCFString(CFStringFromString, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      (*(*v9 + 16))(v9, 3, "Could not add %s in dynamic language model", v12);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a2[1] != *a2)
  {
    operator new[]();
  }

  (*(**(a1 + 16) + 56))(*(a1 + 16));
  v13 = a2[1] - *a2;
  LMLanguageModelIncrementUsageCount();
  CFRelease(CFStringFromString);
}

void sub_22CD8BBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLGenericTransliterator::flushDynamicData(NLGenericTransliterator *this)
{
  v1 = (*(**(this + 2) + 56))(*(this + 2));

  return MEMORY[0x282181938](v1, 0);
}

uint64_t NLGenericTransliterator::resetDynamicData(NLGenericTransliterator *this)
{
  v1 = (*(**(this + 2) + 56))(*(this + 2));

  return MEMORY[0x282181990](v1, 0);
}

void NLGenericTransliterator::reRankOOVCandidates(uint64_t a1, int a2, uint64_t *a3)
{
  if (*(a1 + 40))
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = (v5 - *a3) >> 3;
    if (*(a1 + 180) >= v7)
    {
      v8 = (v5 - *a3) >> 3;
    }

    else
    {
      v8 = *(a1 + 180);
    }

    v9 = a2 - v8;
    if (a2 >= v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2;
      v11 = a2;
      do
      {
        if (v11 >= (a3[1] - *a3) >> 3)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*(*a3 + 8 * v11));
        if (*(TransliteratedWord + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, *TransliteratedWord, *(TransliteratedWord + 8));
        }

        else
        {
          v13 = *TransliteratedWord;
          v17.__r_.__value_.__r.__words[2] = *(TransliteratedWord + 16);
          *&v17.__r_.__value_.__l.__data_ = v13;
        }

        stringToUTF32Characters(&v17, __p);
        (*(**(a1 + 40) + 24))(*(a1 + 40), &v17);
        if (v11 >= (a3[1] - *a3) >> 3)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        NLTransliterationCandidate::setCharLMScore(*(*a3 + 8 * v11), v14);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        ++v11;
      }

      while (!__CFADD__(v9++, 1));
      v6 = *a3;
      v5 = a3[1];
      v7 = (v5 - *a3) >> 3;
    }

    v17.__r_.__value_.__r.__words[0] = NLTransliteratorUtils::greater_than_key_oov;
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>,BOOL (*)(NLTransliterationCandidate const*,NLTransliterationCandidate const*)>((v6 + 8 * v10), (v5 - 8 * (v7 - v8)), &v17);
  }
}

void sub_22CD8BE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::preProcessForCanonicalization(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  (***(a1 + 64))(&v5);
  if (!std::string::compare(&v5, ""))
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    *a3 = v5;
    memset(&v5, 0, sizeof(v5));
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_22CD8BF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::getTargetNumberString(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a3, "");
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    for (i = 0; i < v11; ++i)
    {
      v8 = std::string::at(a2, i);
      (*(*a1 + 80))(__p, a1, (*v8 - 48));
      if ((v13 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v10 = v13;
      }

      else
      {
        v10 = __p[1];
      }

      std::string::append(a3, v9, v10);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = *(a2 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a2 + 8);
      }
    }
  }
}

void sub_22CD8C020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void NLGenericTransliterator::getTargetDigit(NLGenericTransliterator *this@<X0>, int __val@<W1>, std::string *a3@<X8>)
{
  std::to_string(a3, __val);
  (*(**(this + 1) + 32))(v6);
  if (v6[1] != v6[0])
  {
    NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(v6[0]);
    std::string::operator=(a3, v5);
  }

  v7 = v6;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_22CD8C0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::makeNumericLattice(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v26 = 0;
  v27 = 0;
  v9 = *(a2 + *a3);
  v28 = 0;
  (*(*a1 + 80))(v24);
  NLExtendedString::NLExtendedString(__p, v24, *a3, 1.0);
  v10 = v27;
  if (v27 >= v28)
  {
    v27 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v26, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v27 + 16) = v21;
    *v10 = v11;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    v12 = v23;
    *(v10 + 24) = v22;
    *(v10 + 40) = v12;
    v27 = v10 + 48;
  }

  v13 = *a3;
  v14 = *(a2 + v13);
  v19 = 1;
  LOWORD(v18) = v14;
  NLExtendedString::NLExtendedString(__p, &v18, v13, 1.0);
  v15 = v27;
  if (v27 >= v28)
  {
    v27 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v26, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v16 = *__p;
    *(v27 + 16) = v21;
    *v15 = v16;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    v17 = v23;
    *(v15 + 24) = v22;
    *(v15 + 40) = v17;
    v27 = v15 + 48;
  }

  std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](a5, &v26);
  ++*a4;
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  __p[0] = &v26;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_22CD8C2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  __p = (v30 - 56);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<NLExtendedString>>::__emplace_back_slow_path<std::vector<NLExtendedString> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<NLExtendedString>>::__construct_one_at_end[abi:ne200100]<std::vector<NLExtendedString> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void NLGenericTransliterator::makePunctuationLattice(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *a3;
  v8 = *(a2 + v7);
  v12 = 1;
  LOWORD(v11) = v8;
  NLExtendedString::NLExtendedString(__p, &v11, v7, 1.0);
  v14 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v13, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](a5, &v13);
  ++*a4;
  if (v12 < 0)
  {
    operator delete(v11);
  }

  __p[0] = &v13;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_22CD8C444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a9 = (v23 - 40);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void NLGenericTransliterator::addAbbreviationCandidates(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = *a3;
  if (a3[1] != *a3)
  {
    v8 = 0;
    do
    {
      NLCommons::split((v5 + 24 * v8), 0x20u, &v12);
      v9 = v12;
      if (v13 != v12)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a5, (v9 + v10)))
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3) > v11)
            {
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a5, (v12 + v10));
              operator new();
            }

            std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
          }

          ++v11;
          v9 = v12;
          v10 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3) > v11);
      }

      v14 = &v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
      ++v8;
      v5 = *a3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v8);
  }
}

void sub_22CD8C618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::vector<NLTransliterationCandidate *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t NLGenericTransliterator::getLetterType(NLGenericTransliterator *this, NLCommons *a2, int8x16_t a3)
{
  if (NLCommons::isVowel(a2, a3))
  {
    return 1;
  }

  if (NLCommons::isConsonant(a2))
  {
    return 2;
  }

  if (NLCommons::isPunct(a2, v5, v6))
  {
    return 3;
  }

  if ((a2 & 0x80000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * a2 + 60) & 0x400) != 0)
  {
    return 4;
  }

  return 0;
}

void NLGenericTransliterator::createTransliterationCandidates(int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v6 = *a3;
  v7 = a3[1];
  if (v7 != *a3)
  {
    v8 = 0;
    do
    {
      TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*(v6 + 8 * v8));
      std::vector<std::string>::push_back[abi:ne200100](v20, TransliteratedWord);
      ++v8;
      v6 = *a3;
      v7 = a3[1];
    }

    while (v8 < (v7 - *a3) >> 3);
  }

  memset(v19, 0, sizeof(v19));
  if (v7 != v6)
  {
    v10 = 0;
    do
    {
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(*(v6 + 8 * v10));
      std::vector<std::string>::push_back[abi:ne200100](v19, v11);
      ++v10;
      v6 = *a3;
    }

    while (v10 < (a3[1] - *a3) >> 3);
  }

  if (std::string::compare(a2, ""))
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

    if (v12 <= a1[30])
    {
      memset(&v18, 0, sizeof(v18));
      (*(*a1 + 200))(__p, a1, a2);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = *__p;
      *(a2 + 16) = v17;
      (*(*a1 + 88))(a1, a2);
      NLTransliteratorUtils::separateByNonAlphanumericDelimeter();
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  __p[0] = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_22CD8D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a29);
  a29 = &a38;
  std::vector<NLLatticePath>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = &a41;
  std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = &a44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  a29 = &a53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  a29 = &a69;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = (v69 - 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = (v69 - 208);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  a29 = (v69 - 184);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<NLTransliterationCandidate *>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<NLTransliterationCandidate *>>::__emplace_back_slow_path<std::vector<NLTransliterationCandidate *> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<NLTransliterationCandidate *>>::__construct_one_at_end[abi:ne200100]<std::vector<NLTransliterationCandidate *> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void NLLatticePath::~NLLatticePath(void **this)
{
  v2 = this + 3;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t NLGenericTransliterator::isOrthographyCorrect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  cf = 0;
  NLCommons::normalize(a2, &v11);
  if (!std::string::compare(&v11, ""))
  {
    v7 = 0;
  }

  else
  {
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v11;
    }

    else
    {
      v5 = v11.__r_.__value_.__r.__words[0];
    }

    v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
    if (v6)
    {
      v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), v6, &v13, &cf);
      if (v13)
      {
        getUTF8StringFromCFString(v13, &v9);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v9;
        *(a3 + 16) = v10;
        CFRelease(v13);
      }
    }

    else
    {
      v7 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_22CD8DE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::evaluatePaths(uint64_t a1, uint64_t *a2, NLLatticePath *this, int a4, int a5, int a6, uint64_t *a7, unint64_t a8, char a9, int a10, uint64_t a11)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > a5)
  {
    v12 = a5;
    v14 = (*a2 + 24 * a5);
    v13 = *v14;
    if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - *v14) >> 4) > a6)
    {
      v21 = a6;
      if (NLLatticePath::appendPathString(this, (v13 + 48 * a6)))
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v12)
        {
LABEL_63:
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        v23 = (*a2 + 24 * v12);
        v22 = *v23;
        if (0xAAAAAAAAAAAAAAABLL * ((v23[1] - *v23) >> 4) <= v21)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        Weight = NLExtendedString::getWeight((v22 + 48 * v21));
        NLLatticePath::addPathScore(this, Weight);
        v59 = 0uLL;
        v60 = 0;
        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
        if (std::string::compare(v25, ""))
        {
          if (a9)
          {
            NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
            if (((*(*a1 + 160))(a1, v26, &v59) & 1) == 0)
            {
              NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
              if ((NLCommons::isNumeric(v27) & 1) == 0)
              {
                goto LABEL_21;
              }
            }
          }
        }

        if (*(a1 + 152) < a5)
        {
          v28 = *(a11 + 8 * v12);
          if (fabs(v28) != INFINITY && v28 < *(a1 + 144))
          {
            goto LABEL_21;
          }
        }

        v29 = *(a1 + 40);
        if (!v29 || *(a1 + 160) >= a5 || *(a1 + 156) >= a10)
        {
          goto LABEL_20;
        }

        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
        v31 = (*(*v29 + 32))(v29, v30);
        v32 = *(a11 + 8 * v12);
        if (v31 > v32)
        {
          *(a11 + 8 * v12) = v31;
          v32 = v31;
        }

        if (v32 == 0.0 || v31 / v32 <= *(a1 + 168))
        {
LABEL_20:
          v33 = 1;
        }

        else
        {
LABEL_21:
          v33 = 0;
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
          if ((v33 & 1) == 0)
          {
            return;
          }
        }

        else if ((v33 & 1) == 0)
        {
          return;
        }

        v34 = v12 + 1;
        v35 = *a2;
        v36 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
        if (v36 == v12 + 1)
        {
          NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
          if (!std::string::compare(v37, "") || (a9 & 1) != 0)
          {
            v49 = a7[1];
            if (v49 >= a7[2])
            {
              v50 = std::vector<NLLatticePath>::__emplace_back_slow_path<NLLatticePath const&>(a7, this);
            }

            else
            {
              std::vector<NLLatticePath>::__construct_one_at_end[abi:ne200100]<NLLatticePath const&>(a7, this);
              v50 = v49 + 56;
            }

            a7[1] = v50;
          }

          else
          {
            (*(*a1 + 304))(&v57, a1);
            NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
            v39 = *(v38 + 23);
            if (v39 >= 0)
            {
              v40 = v38;
            }

            else
            {
              v40 = *v38;
            }

            if (v39 >= 0)
            {
              v41 = *(v38 + 23);
            }

            else
            {
              v41 = *(v38 + 8);
            }

            v42 = std::string::append(&v57, v40, v41);
            v43 = *&v42->__r_.__value_.__l.__data_;
            v58.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
            *&v58.__r_.__value_.__l.__data_ = v43;
            v42->__r_.__value_.__l.__size_ = 0;
            v42->__r_.__value_.__r.__words[2] = 0;
            v42->__r_.__value_.__r.__words[0] = 0;
            (*(*a1 + 304))(__p, a1);
            if ((v56 & 0x80u) == 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = __p[0];
            }

            if ((v56 & 0x80u) == 0)
            {
              v45 = v56;
            }

            else
            {
              v45 = __p[1];
            }

            v46 = std::string::append(&v58, v44, v45);
            v47 = *&v46->__r_.__value_.__l.__data_;
            v60 = v46->__r_.__value_.__r.__words[2];
            v59 = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            if (v56 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
            }

            memset(&v58, 0, sizeof(v58));
            if ((*(*a1 + 160))(a1, &v59, &v58))
            {
              std::vector<NLLatticePath>::emplace_back<NLLatticePath const&>(a7, this);
            }

            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60) < 0)
            {
              operator delete(v59);
            }
          }
        }

        else if (v36 > v12 + 1)
        {
          v48 = 0;
          while (0xAAAAAAAAAAAAAAABLL * ((*(v35 + 24 * v34 + 8) - *(v35 + 24 * v34)) >> 4) >= v48)
          {
            if (v48 < a8)
            {
              if (*(this + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v52, *this, *(this + 1));
              }

              else
              {
                v52 = *this;
              }

              memset(v53, 0, sizeof(v53));
              std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v53, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 4));
              v54 = *(this + 6);
              HIDWORD(v51) = a10;
              LOBYTE(v51) = a9;
              (*(*a1 + 112))(a1, a2, &v52, (a4 + 1), v34, v48, a7, a8, v51, a11);
              *&v59 = v53;
              std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v59);
              if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v52.__r_.__value_.__l.__data_);
              }
            }

            ++v48;
            v35 = *a2;
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v34)
            {
              goto LABEL_63;
            }
          }
        }
      }
    }
  }
}

void sub_22CD8E43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 121) < 0)
  {
    operator delete(*(v37 - 144));
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::postProcessForNewOrthography(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void NLGenericTransliterator::postProcessForPhonetics(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t NLGenericTransliterator::pruneLattice(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  MaximumLayerSize = NLTransliteratorUtils::getMaximumLayerSize(a2);
  v5 = *a3;
  if (a3[1] == *a3)
  {
    return 1;
  }

  v6 = MaximumLayerSize;
  v7 = 0;
  v8 = 0;
  LODWORD(v9) = 1;
  do
  {
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLExtendedString *>,std::greater<NLExtendedString>>(*(v5 + v7), *(v5 + v7 + 8), &v15);
    v10 = *a3;
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v8)
    {
      goto LABEL_11;
    }

    v11 = (v10 + v7);
    v12 = -1431655765 * ((*(v10 + v7 + 8) - *(v10 + v7)) >> 4);
    if (v6 < v12)
    {
      v12 = v6;
    }

    std::vector<NLExtendedString>::resize(v11, v12);
    v5 = *a3;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
    if (v13 <= v8)
    {
LABEL_11:
      std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = -1431655765 * ((*(v5 + v7 + 8) - *(v5 + v7)) >> 4) * v9;
    ++v8;
    v7 += 24;
  }

  while (v13 > v8);
  return v9;
}

void std::vector<NLExtendedString>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<NLExtendedString>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 25);
      v3 -= 6;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

void NLGenericTransliterator::getBestCandidate(uint64_t a1, uint64_t *a2, int a3, int a4, const char *a5, uint64_t a6)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v7 = *a2;
  if (a2[1] == *a2)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = a4;
    v27 = a3;
    do
    {
      v14 = (v7 + v11);
      if (*(v7 + v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        v28.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&v28.__r_.__value_.__l.__data_ = v15;
      }

      v16 = *(v7 + v11 + 24);
      v30 = *(v7 + v11 + 40);
      v29 = v16;
      Pos = NLExtendedString::getPos(&v28);
      if (!a3 && Pos == 1 || (v18 = NLExtendedString::getPos(&v28), a3 >= 1) && v18 == 2 && (v19 = strlen(a5) - 1, v19 > v27) && v19 != v13 || NLExtendedString::getPos(&v28) == 3 && (v20 = strlen(a5), a3) && v20 - 1 == v13 || NLExtendedString::getPos(&v28) == 4)
      {
        std::vector<NLExtendedString>::push_back[abi:ne200100](&v31, &v28);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      ++v12;
      v7 = *a2;
      v11 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) > v12);
    v21 = v31;
    v22 = v32;
  }

  v23 = v22 - v21;
  if (v23 == 48)
  {
    std::vector<NLExtendedString>::push_back[abi:ne200100](a6, v21);
  }

  else if (0xAAAAAAAAAAAAAAABLL * (v23 >> 4) >= 2 && v32 != v21)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      std::vector<NLExtendedString>::push_back[abi:ne200100](a6, &v21[v25]);
      ++v26;
      v21 = v31;
      v25 += 3;
    }

    while (0xAAAAAAAAAAAAAAABLL * (v32 - v31) > v26);
  }

  v28.__r_.__value_.__r.__words[0] = &v31;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void sub_22CD8E8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __p = &a21;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

const void **NLGenericTransliterator::getCharLexiconSet@<X0>(const void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = this[1] + 144; ; this = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, (i + 16)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return this;
}

void NLGenericTransliterator::getTransliterationForAbbreviation(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, std::string *a3@<X8>)
{
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
  v6 = *v5;
  if (*v5)
  {
    v7 = v5 + 1;
    do
    {
      v17 = 1;
      LOWORD(__p[0]) = v6;
      (*(**(a1 + 8) + 32))(v15);
      if (v15[1] == v15[0])
      {
        v9 = v17;
        v10 = __p[1];
        v11 = v17 < 0;
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }
      }

      else
      {
        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(v15[0]);
        v9 = *(v8 + 23);
        v10 = *(v8 + 8);
        v11 = (v9 & 0x80u) != 0;
        if ((v9 & 0x80u) == 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = *v8;
        }
      }

      if (v11)
      {
        v13 = v10;
      }

      else
      {
        v13 = v9;
      }

      std::string::append(a3, v12, v13);
      v18 = v15;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = *v7++;
      v6 = v14;
    }

    while (v14);
  }
}

void sub_22CD8EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::getAllSubParts(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v30 = v6;
  v31 = v4;
  v29 = exp2((v4 - 1));
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(&v35, "");
      std::string::basic_string[abi:ne200100]<0>(&v34, "");
      v8 = v30;
      v9 = v31;
      v10 = i;
      if (v31 >= 1)
      {
        do
        {
          v12 = *v8++;
          v11 = v12;
          if (v10)
          {
            std::string::push_back(&v35, v11);
          }

          else
          {
            std::string::push_back(&v35, v11);
            v13 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), &v35.__r_.__value_.__l.__data_);
            if (*(a1 + 104) && !v13)
            {
              goto LABEL_52;
            }

            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v35.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](__p, size + 1);
            if ((v33 & 0x80u) == 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            if (size)
            {
              if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v35;
              }

              else
              {
                v16 = v35.__r_.__value_.__r.__words[0];
              }

              memmove(v15, v16, size);
            }

            *(v15 + size) = 32;
            if ((v33 & 0x80u) == 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            if ((v33 & 0x80u) == 0)
            {
              v18 = v33;
            }

            else
            {
              v18 = __p[1];
            }

            std::string::append(&v34, v17, v18);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }

            MEMORY[0x2318C02F0](&v35, "");
          }

          v10 >>= 1;
          --v9;
        }

        while (v9);
      }

      v19 = NLCommons::trim(&v34);
      std::string::operator=(&v34, v19);
      v20 = a2[23];
      if (v20 >= 0)
      {
        v21 = a2[23];
      }

      else
      {
        v21 = *(a2 + 1);
      }

      if (v20 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a2;
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v34.__r_.__value_.__l.__size_;
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v34;
      }

      else
      {
        v24 = v34.__r_.__value_.__r.__words[0];
      }

      if (v23 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      v26 = memcmp(v22, v24, v25);
      if (v23 != v21 || v26)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, &v34.__r_.__value_.__l.__data_);
      }

LABEL_52:
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }
  }
}

uint64_t NLGenericTransliterator::createContextIDs(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    operator new[]();
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
  if (v8 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = (v9 - 2);
  if (v8 > v10)
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = 24 * v10;
    do
    {
      v13 = (v6 + v12);
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v13, *(v13 + 1));
      }

      else
      {
        v14 = *v13;
        __p.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&__p.__r_.__value_.__l.__data_ = v14;
      }

      v15 = NLCommons::trim(&__p);
      std::string::operator=(&__p, v15);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v17 = CFStringCreateWithCString(v11, p_p, 0x8000100u);
      if (v17)
      {
        (*(**(a1 + 16) + 56))(*(a1 + 16));
        *(4 * v10) = LMLanguageModelGetTokenIDForString();
        ++*a3;
        CFRelease(v17);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v10;
      v6 = *a2;
      v12 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v10);
  }

  return 0;
}

void sub_22CD8EF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLGenericTransliterator::isCurrentEnglish(void **a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v5 = ((*a1)[30])(a1, a3, &v12);
  v11 = 0;
  v6 = (*(*a1[3] + 16))(a1[3], a2, &v11);
  if ((*(*a1[4] + 16))(a1[4], a2, &v11))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = 1;
    if (!v5)
    {
      return (v6 ^ 1) & v9;
    }

    goto LABEL_9;
  }

  v8 = (*(*a1[3] + 24))(a1[3], a2, v5, v12);
  v9 = (*(*a1[4] + 24))(a1[4], a2, v5, v12) > v8;
  if (v5)
  {
LABEL_9:
    MEMORY[0x2318C0600](v5, 0x1000C4052888210);
  }

  return (v6 ^ 1) & v9;
}

void NLGenericTransliterator::preProcessForRomanSuffixes(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

uint64_t NLGenericTransliterator::addLatticeCandidates(void **a1, char **a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void *a6, double *a7)
{
  v96[0] = 0;
  v82 = ((*a1)[30])(a1, a4, v96);
  v83 = a3;
  v10 = *a3;
  if (a3[1] != *a3)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v10 + v11));
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, v13))
      {
        break;
      }

      ++v12;
      v10 = *a3;
      v11 += 56;
      if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) <= v12)
      {
        goto LABEL_73;
      }
    }

    if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) <= v12 || (v14 = a1[2], NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*a3 + v11)), (*(*v14 + 24))(v14, v15, v82, v96[0]), v95 = 0, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) <= v12))
    {
LABEL_147:
      std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
    }

    v17 = v16;
    v18 = a1[2];
    NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*a3 + v11));
    if ((*(*v18 + 16))(v18, v19, &v95))
    {
      v20 = 1;
      goto LABEL_10;
    }

    if ((*(*a1[2] + 56))(a1[2]))
    {
      v20 = fabs(v17) != INFINITY;
      if (v20)
      {
LABEL_10:
        if (v17 < *a7)
        {
          *a7 = v17;
          v20 = 1;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) > v12)
    {
      v79 = v20;
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*a3 + v11));
      ((*a1)[26])(&v94, a1, v21);
      memset(&v93, 0, sizeof(v93));
      if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) > v12)
      {
        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*a3 + v11));
        v23 = *(v22 + 23);
        if (SHIBYTE(v94.__end_cap_.__value_) >= 0)
        {
          value_high = HIBYTE(v94.__end_cap_.__value_);
        }

        else
        {
          value_high = v94.__end_;
        }

        begin = &v94;
        if (SHIBYTE(v94.__end_cap_.__value_) < 0)
        {
          begin = v94.__begin_;
        }

        if (v23 >= 0)
        {
          v26 = *(v22 + 23);
        }

        else
        {
          v26 = v22[1];
        }

        if (v23 >= 0)
        {
          v27 = v22;
        }

        else
        {
          v27 = *v22;
        }

        if (v26 >= value_high)
        {
          v28 = value_high;
        }

        else
        {
          v28 = v26;
        }

        v29 = memcmp(begin, v27, v28);
        if ((v26 != value_high || v29) && ((*a1)[20])(a1, &v94, &v93))
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, &v94.__begin_))
          {
            v92 = 0;
            (*(*a1[2] + 16))(a1[2], &v94, &v92);
            (*(*a1[2] + 24))(a1[2], &v94, v82, v96[0]);
            operator new();
          }

          __p = 0;
          v90 = 0;
          v91 = 0;
          std::vector<NLTransliterationCandidate *>::__init_with_size[abi:ne200100]<NLTransliterationCandidate **,NLTransliterationCandidate **>(&__p, *a5, a5[1], (a5[1] - *a5) >> 3);
          ExistingCandidate = NLTransliteratorUtils::findExistingCandidate(&__p, &v94);
          if (__p)
          {
            v90 = __p;
            operator delete(__p);
          }

          v31 = v79;
          if (!ExistingCandidate)
          {
            v31 = 0;
          }

          if (v31 && NLTransliterationCandidate::getType(ExistingCandidate) == 4)
          {
            v32 = (*(*a1[2] + 24))(a1[2], &v94, v82, v96[0]);
            NLTransliterationCandidate::setType(ExistingCandidate, 1);
            NLTransliterationCandidate::setLMScore(ExistingCandidate, v32);
          }
        }

        if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) <= v12)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        v33 = a1[9];
        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*a3 + v11));
        (*(*v33 + 24))(&v88, v33, v34);
        if (SHIBYTE(v94.__end_cap_.__value_) < 0)
        {
          operator delete(v94.__begin_);
        }

        v94 = v88;
        if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) > v12)
        {
          NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*a3 + v11));
          v36 = *(v35 + 23);
          if (SHIBYTE(v94.__end_cap_.__value_) >= 0)
          {
            end = HIBYTE(v94.__end_cap_.__value_);
          }

          else
          {
            end = v94.__end_;
          }

          v38 = &v94;
          if (SHIBYTE(v94.__end_cap_.__value_) < 0)
          {
            v38 = v94.__begin_;
          }

          if (v36 >= 0)
          {
            v39 = *(v35 + 23);
          }

          else
          {
            v39 = v35[1];
          }

          if (v36 >= 0)
          {
            v40 = v35;
          }

          else
          {
            v40 = *v35;
          }

          if (v39 >= end)
          {
            v41 = end;
          }

          else
          {
            v41 = v39;
          }

          v42 = memcmp(v38, v40, v41);
          if ((v39 != end || v42) && ((*a1)[20])(a1, &v94, &v93))
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, &v94.__begin_))
            {
              v92 = 0;
              (*(*a1[2] + 16))(a1[2], &v94, &v92);
              (*(*a1[2] + 24))(a1[2], &v94, v82, v96[0]);
              operator new();
            }

            v85 = 0;
            v86 = 0;
            v87 = 0;
            std::vector<NLTransliterationCandidate *>::__init_with_size[abi:ne200100]<NLTransliterationCandidate **,NLTransliterationCandidate **>(&v85, *a5, a5[1], (a5[1] - *a5) >> 3);
            v43 = NLTransliteratorUtils::findExistingCandidate(&v85, &v94);
            if (v85)
            {
              v86 = v85;
              operator delete(v85);
            }

            v44 = v79;
            if (!v43)
            {
              v44 = 0;
            }

            if (v44 && NLTransliterationCandidate::getType(v43) == 4)
            {
              v45 = (*(*a1[2] + 24))(a1[2], &v94, v82, v96[0]);
              NLTransliterationCandidate::setType(v43, 1);
              NLTransliterationCandidate::setLMScore(v43, v45);
            }
          }

          operator new();
        }
      }

      std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
    }

    goto LABEL_147;
  }

LABEL_73:
  v80 = ((*a1)[32])(a1, a2);
  v46 = *a3;
  if (a3[1] != *a3)
  {
    v47 = 0;
    do
    {
      memset(&v94, 0, sizeof(v94));
      v48 = *(a2 + 23);
      if (v48 >= 0)
      {
        v49 = a2;
      }

      else
      {
        v49 = *a2;
      }

      if (v48 < 0)
      {
        v48 = a2[1];
      }

      if (v48 >= 2)
      {
        v50 = &v49[v48];
        v51 = v49;
        do
        {
          v52 = memchr(v51, 110, v48 - 1);
          if (!v52)
          {
            break;
          }

          if (*v52 == 24942)
          {
            if (v52 != v50 && v52 - v49 != -1)
            {
              v53 = 1;
              goto LABEL_90;
            }

            break;
          }

          v51 = v52 + 1;
          v48 = v50 - v51;
        }

        while (v50 - v51 >= 2);
      }

      v53 = 0;
LABEL_90:
      v54 = a1[2];
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v46 + 56 * v47));
      (*(*v54 + 64))(&v93, v54, v55, v53);
      std::vector<std::string>::__vdeallocate(&v94);
      v94 = v93;
      memset(&v93, 0, sizeof(v93));
      v88.__begin_ = &v93;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v88);
      v56 = v94.__begin_;
      if (v94.__end_ != v94.__begin_)
      {
        v57 = 0;
        v58 = 0;
        do
        {
          if ((((*a1)[34])(a1, a2, &v56[v57]) & 1) == 0)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v94.__end_ - v94.__begin_) >> 3) <= v58)
            {
              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }

            if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, &v94.__begin_[v57].__r_.__value_.__l.__data_))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v94.__end_ - v94.__begin_) >> 3) > v58)
              {
                (*(*a1[2] + 24))(a1[2], &v94.__begin_[v57], v82, v96[0]);
                operator new();
              }

              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }
          }

          ++v58;
          v56 = v94.__begin_;
          ++v57;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v94.__end_ - v94.__begin_) >> 3) > v58);
      }

      if (v80)
      {
        if (0x6DB6DB6DB6DB6DB7 * ((v83[1] - *v83) >> 3) <= v47)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((*v83 + 56 * v47));
        ((*a1)[28])(&v93, a1, v59);
        v60 = v93.__begin_;
        if (v93.__end_ != v93.__begin_)
        {
          v61 = 0;
          v62 = 0;
          do
          {
            if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, &v60[v61].__r_.__value_.__l.__data_))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v93.__end_ - v93.__begin_) >> 3) > v62)
              {
                (*(*a1[2] + 24))(a1[2], &v93.__begin_[v61], v82, v96[0]);
                v95 = 0;
                if (0xAAAAAAAAAAAAAAABLL * ((v93.__end_ - v93.__begin_) >> 3) > v62)
                {
                  if (((*(*a1[2] + 16))(a1[2], &v93.__begin_[v61], &v95) & 1) == 0)
                  {
                    (*(*a1[2] + 56))(a1[2]);
                  }

                  operator new();
                }

                std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
              }

              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }

            ++v62;
            v60 = v93.__begin_;
            ++v61;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v93.__end_ - v93.__begin_) >> 3) > v62);
        }

        v88.__begin_ = &v93;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v88);
      }

      v93.__begin_ = &v94;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v93);
      ++v47;
      v46 = *v83;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v83[1] - *v83) >> 3) > v47);
  }

  v63 = a5;
  v64 = *a5;
  if (a5[1] != *a5)
  {
    v65 = 0;
    do
    {
      if (NLTransliterationCandidate::getType(*(v64 + 8 * v65)) != 4)
      {
        if (v65 >= (v63[1] - *v63) >> 3)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        v66 = a1[9];
        TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*(*v63 + 8 * v65));
        (*(*v66 + 24))(&v94, v66, TransliteratedWord);
        if (v65 >= (v63[1] - *v63) >> 3)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        v68 = NLTransliterationCandidate::getTransliteratedWord(*(*v63 + 8 * v65));
        v69 = *(v68 + 23);
        if (SHIBYTE(v94.__end_cap_.__value_) >= 0)
        {
          v70 = HIBYTE(v94.__end_cap_.__value_);
        }

        else
        {
          v70 = v94.__end_;
        }

        if (SHIBYTE(v94.__end_cap_.__value_) >= 0)
        {
          v71 = &v94;
        }

        else
        {
          v71 = v94.__begin_;
        }

        if (v69 >= 0)
        {
          v72 = *(v68 + 23);
        }

        else
        {
          v72 = *(v68 + 8);
        }

        if (v69 >= 0)
        {
          v73 = v68;
        }

        else
        {
          v73 = *v68;
        }

        if (v72 >= v70)
        {
          v74 = v70;
        }

        else
        {
          v74 = v72;
        }

        v75 = memcmp(v71, v73, v74);
        v76 = v72 == v70 && v75 == 0;
        v63 = a5;
        if (!v76 && !std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, &v94.__begin_))
        {
          LODWORD(v88.__begin_) = 0;
          (*(*a1[2] + 16))(a1[2], &v94, &v88);
          (*(*a1[2] + 24))(a1[2], &v94, v82, v96[0]);
          operator new();
        }

        if (SHIBYTE(v94.__end_cap_.__value_) < 0)
        {
          operator delete(v94.__begin_);
        }
      }

      ++v65;
      v64 = *v63;
    }

    while (v65 < (v63[1] - *v63) >> 3);
  }

  result = v82;
  if (v82)
  {
    return MEMORY[0x2318C0600](v82, 0x1000C4052888210);
  }

  return result;
}

void sub_22CD9049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  MEMORY[0x2318C0600](v37, 0x1012C40B0087DDBLL);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t NLGenericTransliterator::splitCharacters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(*a1 + 128))(v78);
  *a3 = 0;
  a3[1] = 0;
  v52 = a3;
  a3[2] = 0;
  (*(*a1 + 280))(v76, a1);
  (*(*a1 + 288))(&v73, a1);
  (*(*a1 + 296))(&__p, a1);
  v5 = v79;
  if (!v79)
  {
    goto LABEL_99;
  }

  do
  {
    v53 = v5;
    NLCommons::split((v5 + 16), 0x20u, &v68);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    if (v69 == v68)
    {
      goto LABEL_92;
    }

    v6 = 0;
    do
    {
      (*(**(a1 + 8) + 32))(&v63);
      v7 = v63;
      if (v64 == v63)
      {
        v54.__r_.__value_.__r.__words[0] = &v63;
        std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v54);
        goto LABEL_98;
      }

      v8 = 0;
      v9 = 0;
      memset(v62, 0, sizeof(v62));
      do
      {
        v10 = *(a1 + 72);
        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v7 + v8));
        v12 = (*(*v10 + 16))(v10, v11);
        v13 = v63;
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4);
        if (v12)
        {
          if (v14 <= v9)
          {
            goto LABEL_106;
          }

          Weight = NLExtendedString::getWeight((v63 + v8));
          NLExtendedString::setWeight(v13 + v8, Weight * 0.5);
          v13 = v63;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4);
        }

        if (v14 <= v9)
        {
LABEL_106:
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<NLExtendedString>::push_back[abi:ne200100](v62, (v13 + v8));
        ++v9;
        v7 = v63;
        v8 += 48;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) > v9);
      v59 = 0;
      v60 = 0;
      v61 = 0;
      if (v64 == v63)
      {
        goto LABEL_91;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor((v7 + v16));
        if (*(v18 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *v18, *(v18 + 1));
        }

        else
        {
          v19 = *v18;
          __str.__r_.__value_.__r.__words[2] = *(v18 + 2);
          *&__str.__r_.__value_.__l.__data_ = v19;
        }

        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (!size)
        {
          goto LABEL_85;
        }

        if (v75 < 0)
        {
          if (!v74)
          {
            goto LABEL_72;
          }
        }

        else if (!v75)
        {
          goto LABEL_72;
        }

        if (v72 < 0)
        {
          if (!v71)
          {
            goto LABEL_72;
          }
        }

        else if (!v72)
        {
          goto LABEL_72;
        }

        std::string::basic_string(&v54, &__str, 0, 1uLL, &v57);
        v21 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v54.__r_.__value_.__l.__size_;
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v54;
        }

        else
        {
          v23 = v54.__r_.__value_.__r.__words[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v24 = v75;
        }

        else
        {
          v24 = v74;
        }

        if ((v75 & 0x80u) == 0)
        {
          v25 = &v73;
        }

        else
        {
          v25 = v73;
        }

        if (v24 >= v22)
        {
          v26 = v22;
        }

        else
        {
          v26 = v24;
        }

        v27 = memcmp(v23, v25, v26);
        v28 = v22 < v24;
        if (v27)
        {
          v28 = v27 < 0;
        }

        if (v28)
        {
          std::string::basic_string(&v57, &__str, 0, 1uLL, v80);
          v29 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
          v30 = v57.__r_.__value_.__r.__words[0];
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v31 = v57.__r_.__value_.__l.__size_;
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = &v57;
          }

          else
          {
            v32 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v72 & 0x80u) == 0)
          {
            v33 = v72;
          }

          else
          {
            v33 = v71;
          }

          if ((v72 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v33 >= v31)
          {
            v35 = v31;
          }

          else
          {
            v35 = v33;
          }

          v36 = memcmp(v32, p_p, v35);
          if (v31 < v33)
          {
            v37 = -1;
          }

          else
          {
            v37 = v33 < v31;
          }

          if (v36)
          {
            v37 = v36;
          }

          v38 = v37 > 0;
          if (v29 < 0)
          {
            operator delete(v30);
          }

          if ((*(&v54.__r_.__value_.__s + 23) & 0x80) == 0)
          {
LABEL_71:
            if (v38)
            {
              goto LABEL_85;
            }

            goto LABEL_72;
          }
        }

        else
        {
          v38 = 0;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_71;
          }
        }

        operator delete(v54.__r_.__value_.__l.__data_);
        if (v38)
        {
          goto LABEL_85;
        }

LABEL_72:
        if (0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) <= v17)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        Pos = NLExtendedString::getPos((v63 + v16));
        if (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3) - 1 > v6)
        {
          v40 = Pos;
          if ((*(**(a1 + 72) + 16))(*(a1 + 72), &__str))
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, v76, &v57);
            if (0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) <= v17)
            {
              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }

            v41 = NLExtendedString::getWeight((v63 + v16));
            NLExtendedString::NLExtendedString(&v54, &v57, v40, v41 * 0.35);
            v42 = v60;
            if (v60 >= v61)
            {
              goto LABEL_81;
            }

LABEL_80:
            v44 = *&v54.__r_.__value_.__l.__data_;
            *(v42 + 16) = *(&v54.__r_.__value_.__l + 2);
            *v42 = v44;
            memset(&v54, 0, sizeof(v54));
            v45 = v56;
            *(v42 + 24) = v55;
            *(v42 + 40) = v45;
            v60 = v42 + 48;
          }

          else
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, v76, &v57);
            if (0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) <= v17)
            {
              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }

            v43 = NLExtendedString::getWeight((v63 + v16));
            NLExtendedString::NLExtendedString(&v54, &v57, v40, v43 * 1.001);
            v42 = v60;
            if (v60 < v61)
            {
              goto LABEL_80;
            }

LABEL_81:
            v60 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v59, &v54);
            if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v54.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }
        }

LABEL_85:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        ++v17;
        v7 = v63;
        v16 += 48;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 4) > v17);
      v46 = v59;
      if (v60 != v59)
      {
        v47 = 0;
        v48 = 0;
        do
        {
          std::vector<NLExtendedString>::push_back[abi:ne200100](v62, (v46 + v47));
          ++v48;
          v46 = v59;
          v47 += 48;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 4) > v48);
      }

LABEL_91:
      std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](&v65, v62);
      v54.__r_.__value_.__r.__words[0] = &v59;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v54);
      v54.__r_.__value_.__r.__words[0] = v62;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v54);
      v54.__r_.__value_.__r.__words[0] = &v63;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v54);
      ++v6;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3) > v6);
LABEL_92:
    if (v52[1] == *v52)
    {
      goto LABEL_96;
    }

    v49 = *(a2 + 23);
    if ((v49 & 0x80u) != 0)
    {
      v49 = *(a2 + 8);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 3) != v49)
    {
LABEL_96:
      std::vector<std::vector<std::vector<NLExtendedString>>>::push_back[abi:ne200100](v52, &v65);
    }

LABEL_98:
    v54.__r_.__value_.__r.__words[0] = &v65;
    std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](&v54);
    v54.__r_.__value_.__r.__words[0] = &v68;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v54);
    v5 = *v53;
  }

  while (*v53);
LABEL_99:
  if (v72 < 0)
  {
    operator delete(__p);
  }

  if (v75 < 0)
  {
    operator delete(v73);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v78);
}

void sub_22CD90DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v53 - 193) < 0)
  {
    operator delete(*(v53 - 216));
  }

  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  a12 = a10;
  std::vector<std::vector<std::vector<NLExtendedString>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v53 - 168);
  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::vector<std::vector<std::vector<NLExtendedString>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<NLExtendedString>>>::__emplace_back_slow_path<std::vector<std::vector<NLExtendedString>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<NLExtendedString>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<NLExtendedString>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

double NLGenericTransliterator::getEnglishCandidateSequenceScore(uint64_t a1, uint64_t *a2)
{
  stringToUTF32Characters(a2, &v5);
  v2 = v5;
  v3 = v6;
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return ((v3 - v2) >> 2);
}

void NLGenericTransliterator::addEnglishCandidates(void **a1, double a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v11 = *a4;
  v12 = a4[1];
  if (v12 != *a4)
  {
    ((*a1)[42])(a1);
    v11 = *a4;
    v12 = a4[1];
  }

  if (v12 != v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = a2 + -0.0001;
    v16 = fabs(a2);
    while (1)
    {
      v30 = 0;
      v17 = (*(*a1[2] + 16))(a1[2], v11 + v13, &v30);
      memset(&__str, 0, sizeof(__str));
      std::string::basic_string[abi:ne200100]<0>(&v28, "");
      v27 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v14)
      {
LABEL_45:
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      if (NLCommons::isNumeric((*a4 + v13)))
      {
        break;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v14)
      {
        goto LABEL_45;
      }

      if (((*a1)[20])(a1, *a4 + v13, &__str))
      {
        break;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!__str.__r_.__value_.__l.__size_)
        {
          break;
        }
      }

      else if (!*(&__str.__r_.__value_.__s + 23))
      {
        break;
      }

      std::string::operator=(&v28, &__str);
      if (v17)
      {
        v17 = 1;
      }

      else
      {
        v17 = (*(*a1[2] + 16))(a1[2], &v28, &v27);
      }

      v18 = (*(*a1[2] + 24))(a1[2], &v28, 0, 0);
      if (v17)
      {
LABEL_10:
        v19 = (*(*a1[2] + 24))(a1[2], *a4 + v13, 0, 0);
        v20 = 0;
        if (v19 >= v18)
        {
          v18 = v19;
        }

        goto LABEL_22;
      }

LABEL_21:
      v18 = 1.0;
      v20 = 3;
LABEL_22:
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v14)
      {
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a6, (*a4 + v13)))
      {
        v23 = v17 ^ 1;
        if (v16 == INFINITY)
        {
          v23 = 0;
        }

        if ((v23 & 1) == 0)
        {
          operator new();
        }

        operator new();
      }

      __p = 0;
      v25 = 0;
      v26 = 0;
      std::vector<NLTransliterationCandidate *>::__init_with_size[abi:ne200100]<NLTransliterationCandidate **,NLTransliterationCandidate **>(&__p, *a5, a5[1], (a5[1] - *a5) >> 3);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v14)
      {
        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      ExistingCandidate = NLTransliteratorUtils::findExistingCandidate(&__p, *a4 + v13);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v16 == INFINITY || (!NLTransliterationCandidate::getType(ExistingCandidate) ? (v22 = 1) : (v22 = v17), v18 = v15, (v22 & 1) == 0))
      {
        NLTransliterationCandidate::setLMScore(ExistingCandidate, v18);
      }

      NLTransliterationCandidate::setType(ExistingCandidate, v20);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v14;
      v11 = *a4;
      v13 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v14)
      {
        return;
      }
    }

    v18 = -INFINITY;
    if (v17)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }
}

void sub_22CD916BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void NLGenericTransliterator::makeCharacterLattice(void **a1, const char *a2, int *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v89 = 0;
  v90 = 0;
  v91 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v88, "");
  v12 = strlen(a2);
  LODWORD(v14) = *a3;
  if (v12 > *a3)
  {
    v14 = *a3;
    do
    {
      LetterType = NLGenericTransliterator::getLetterType(v12, a2[v14], v13);
      v17 = a4 == 4 && LetterType == 3;
      LODWORD(v14) = *a3;
      if (LetterType != a4 && !v17)
      {
        break;
      }

      std::string::push_back(&v88, a2[v14]);
      v18 = *a3;
      v14 = v18 + 1;
      *a3 = v18 + 1;
      v12 = strlen(a2);
    }

    while (v12 > v14);
  }

  *a3 = v14 - 1;
  (*(*a1[1] + 32))(v69);
  std::vector<NLExtendedString>::__assign_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(&v89, v69[0], v69[1], 0xAAAAAAAAAAAAAAABLL * ((v69[1] - v69[0]) >> 4));
  v68.__r_.__value_.__r.__words[0] = v69;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v68);
  v19 = v89;
  v20 = v90;
  if (v89 == v90)
  {
    if (((*a1)[33])(a1, &v88))
    {
      ((*a1)[27])(v69, a1, &v88, a2, *a5);
      v21 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v88.__r_.__value_.__r.__words[1];
      }

      *a6 += v21;
      std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](a7, v69);
      v68.__r_.__value_.__r.__words[0] = v69;
      v22 = &v68;
LABEL_106:
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](v22);
      goto LABEL_107;
    }

    v19 = v89;
    v20 = v90;
  }

  v65 = a7;
  v66 = a3;
  if (v19 != v20)
  {
    goto LABEL_67;
  }

  size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v88.__r_.__value_.__l.__size_;
  }

  if (size <= *(a1 + 31))
  {
LABEL_67:
    v45 = ((*a1)[41])(a1, a4, a2, *a3);
    v85 = 0;
    v86 = 0;
    v87 = 0;
    if (v45)
    {
      LODWORD(v69[0]) = *a3 + 1;
      ((*a1)[39])(a1, a2, a3, a3, v69, &v85);
    }

    v82 = 0;
    v83 = 0;
    v84 = 0;
    if (v89 == v90)
    {
      ((*a1)[7])(&v80, a1, &v88);
      memset(&v79, 0, sizeof(v79));
      v49 = v80;
      if (v81 != v80)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        if (0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 3))
        {
          v50 = 0;
          v51 = 0;
          do
          {
            v53 = v49;
            v52 = v49->__r_.__value_.__r.__words[0];
            if (0xAAAAAAAAAAAAAAABLL * ((v53->__r_.__value_.__l.__size_ - v52) >> 3) <= v51)
            {
              if (v45)
              {
                v54 = v85;
                if (v86 != v85)
                {
                  v55 = 0;
                  v56 = 0;
                  do
                  {
                    if (v77 == v76)
                    {
                      std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
                    }

                    std::vector<NLExtendedString>::push_back[abi:ne200100]((v77 - 3), &v54[v55]);
                    ++v56;
                    v54 = v85;
                    v55 += 48;
                  }

                  while (0xAAAAAAAAAAAAAAABLL * ((v86 - v85) >> 4) > v56);
                }
              }

              v57 = 0;
              if (v77 != v76)
              {
                if (0xAAAAAAAAAAAAAAABLL * (v77 - v76) <= 1)
                {
                  v58 = 1;
                }

                else
                {
                  v58 = 0xAAAAAAAAAAAAAAABLL * (v77 - v76);
                }

                v59 = v76 + 1;
                v60 = 1;
                do
                {
                  v61 = *(v59 - 1);
                  v62 = 0xAAAAAAAAAAAAAAABLL * ((*v59 - v61) >> 4);
                  if (v62 > v57)
                  {
                    v57 = 0xAAAAAAAAAAAAAAABLL * ((*v59 - v61) >> 4);
                  }

                  v60 *= v62;
                  v59 += 3;
                  --v58;
                }

                while (v58);
              }

              operator new[]();
            }

            v69[0] = 0;
            v69[1] = 0;
            v70 = 0;
            std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v69, *(v52 + v50), *(v52 + v50 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v52 + v50 + 8) - *(v52 + v50)) >> 4));
            memset(&v68, 0, sizeof(v68));
            if ((v69[1] - v69[0]) == 48)
            {
              std::vector<NLExtendedString>::push_back[abi:ne200100](&v68, v69[0]);
            }

            else
            {
              ((*a1)[18])(a1, v69, (v51 + *a5), *a3, a2, &v68);
            }

            std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](&v76, &v68);
            __p[0] = &v68;
            std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](__p);
            v68.__r_.__value_.__r.__words[0] = v69;
            std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v68);
            ++v51;
            v49 = v80;
            v50 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 3));
        }

        std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
      }

      std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](a7, &v79);
      v69[0] = &v79;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](v69);
      v69[0] = &v80;
      std::vector<std::vector<std::vector<NLExtendedString>>>::__destroy_vector::operator()[abi:ne200100](v69);
    }

    else
    {
      std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](&v82, &v89);
      v46 = v82;
      if (v83 != v82)
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v69[0] = 0;
          v69[1] = 0;
          v70 = 0;
          std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v69, *(v46 + v47), *(v46 + v47 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v46 + v47 + 8) - *(v46 + v47)) >> 4));
          memset(&v68, 0, sizeof(v68));
          if ((v69[1] - v69[0]) == 48)
          {
            std::vector<NLExtendedString>::push_back[abi:ne200100](&v68, v69[0]);
          }

          else
          {
            ((*a1)[18])(a1, v69, (v48 + *a5), *a3, a2, &v68);
          }

          if (v45)
          {
            std::vector<NLExtendedString>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(&v68, v68.__r_.__value_.__l.__size_, v85, v86, 0xAAAAAAAAAAAAAAABLL * ((v86 - v85) >> 4));
          }

          std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](a7, &v68);
          v80 = &v68;
          std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v80);
          v68.__r_.__value_.__r.__words[0] = v69;
          std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v68);
          ++v48;
          v46 = v82;
          v47 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3) > v48);
      }
    }

    v63 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v88.__r_.__value_.__r.__words[1];
    }

    *a6 += v63;
    v69[0] = &v82;
    std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](v69);
    v69[0] = &v85;
    v22 = v69;
    goto LABEL_106;
  }

  std::string::basic_string[abi:ne200100]<0>(&v85, "");
  ((*a1)[16])(&v68, a1, &v88);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v24 = v68.__r_.__value_.__r.__words[2];
  if (v68.__r_.__value_.__r.__words[2])
  {
    while (1)
    {
      NLCommons::split((v24 + 2), 0x20u, &v80);
      std::string::basic_string[abi:ne200100]<0>(&v79, "");
      if (v81 != v80)
      {
        break;
      }

LABEL_56:
      NLExtendedString::NLExtendedString(v69, &v79, *v66);
      v41 = v83;
      a7 = v65;
      if (v83 >= v84)
      {
        v83 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v82, v69);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(v69[0]);
        }
      }

      else
      {
        v42 = *v69;
        *(v83 + 16) = v70;
        *v41 = v42;
        v69[1] = 0;
        v70 = 0;
        v69[0] = 0;
        v43 = v72;
        *(v41 + 24) = v71;
        *(v41 + 40) = v43;
        v83 = v41 + 48;
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      v69[0] = &v80;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v69);
      v24 = *v24;
      if (!v24)
      {
        goto LABEL_63;
      }
    }

    v25 = 0;
    v26 = 0;
    while (1)
    {
      (*(*a1[1] + 32))(v69);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      ((*a1)[18])(a1, v69, (v26 + *a5), *v66, a2, &v76);
      v27 = v76;
      if (v77 != v76)
      {
        if (a4 == 1)
        {
          if (v26)
          {
            v27 = v69[0];
            if (v69[1] == v69[0])
            {
              std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
            }
          }
        }

        else if (v26 != -1 - 0x5555555555555555 * ((v81 - v80) >> 3))
        {
          NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(v76);
          v33 = v32;
          ((*a1)[35])(&v73, a1);
          v34 = *(v33 + 23);
          if (v34 >= 0)
          {
            v35 = v33;
          }

          else
          {
            v35 = *v33;
          }

          if (v34 >= 0)
          {
            v36 = *(v33 + 23);
          }

          else
          {
            v36 = *(v33 + 8);
          }

          v37 = std::string::insert(&v73, 0, v35, v36);
          v38 = *&v37->__r_.__value_.__l.__data_;
          v75 = v37->__r_.__value_.__r.__words[2];
          *__p = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          if (v75 >= 0)
          {
            v39 = __p;
          }

          else
          {
            v39 = __p[0];
          }

          if (v75 >= 0)
          {
            v40 = HIBYTE(v75);
          }

          else
          {
            v40 = __p[1];
          }

          std::string::append(&v79, v39, v40);
          if (SHIBYTE(v75) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          goto LABEL_38;
        }

        NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(v27);
        v29 = *(v28 + 23);
        if (v29 >= 0)
        {
          v30 = v28;
        }

        else
        {
          v30 = *v28;
        }

        if (v29 >= 0)
        {
          v31 = *(v28 + 23);
        }

        else
        {
          v31 = *(v28 + 8);
        }

        std::string::append(&v79, v30, v31);
      }

LABEL_38:
      __p[0] = &v76;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](__p);
      v76 = v69;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v76);
      ++v26;
      v25 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 3) <= v26)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_63:
  std::vector<std::vector<NLExtendedString>>::push_back[abi:ne200100](a7, &v82);
  v44 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v44 = v88.__r_.__value_.__r.__words[1];
  }

  *a6 += v44;
  v69[0] = &v82;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](v69);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v68);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v85);
  }

LABEL_107:
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v69[0] = &v89;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](v69);
}

void sub_22CD92604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  __p = (v63 - 192);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a21);
  if (*(v63 - 145) < 0)
  {
    operator delete(*(v63 - 168));
  }

  if (*(v63 - 121) < 0)
  {
    operator delete(*(v63 - 144));
  }

  __p = (v63 - 120);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void NLGenericTransliterator::postProcessForExaggeration(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(a1);
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

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>,BOOL (*)(NLTransliterationCandidate const*,NLTransliterationCandidate const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_22CD92B00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if ((*a3)(*(a2 - 1), *a1))
      {
        v9 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v9;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(a1, v14, a3, v15, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),NLTransliterationCandidate**,NLTransliterationCandidate**,std::__wrap_iter<NLTransliterationCandidate**>>(a5, &a5[v13], &a5[v13], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(a1, v14, a3, v15, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(a1, a2, a3);
    }
  }
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = *v8;
        v8 = v5;
        result = (*a3)(*v5, v9);
        if (result)
        {
          v10 = *v8;
          v11 = v7;
          while (1)
          {
            *(v4 + v11 + 8) = *(v4 + v11);
            if (!v11)
            {
              break;
            }

            result = (*a3)(v10, *(v4 + v11 - 8));
            v11 -= 8;
            if ((result & 1) == 0)
            {
              v12 = (v4 + v11 + 8);
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          *v12 = v10;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      result = (*a3)(*(a2 - 1), *result);
      if (result)
      {
        *a5 = *(a2 - 1);
        v10 = *v9;
      }

      else
      {
        *a5 = *v9;
        v10 = *(a2 - 1);
      }

      a5[1] = v10;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>,std::__wrap_iter<NLTransliterationCandidate**>>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),NLTransliterationCandidate**,NLTransliterationCandidate**,std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(*a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8;
      }

      v11 = (v11 + v13);
      if (result)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      v15 = 0;
      v16 = -a5;
      while (((*a4)(*a2, a1[v15 / 8]) & 1) == 0)
      {
        v15 += 8;
        if (__CFADD__(v16++, 1))
        {
          return;
        }
      }

      v18 = -v16;
      v43 = a8;
      v44 = a7;
      v42 = v10;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          v40 = a1[v15 / 8];
          a1[v15 / 8] = *a2;
          *a2 = v40;
          return;
        }

        v26 = v18 / 2;
        v27 = &a1[v18 / 2];
        v20 = a2;
        if (a2 != a3)
        {
          v41 = v18 / 2;
          v46 = *a4;
          v28 = (a3 - a2) >> 3;
          v20 = a2;
          do
          {
            v29 = &v20[8 * (v28 >> 1)];
            v31 = *v29;
            v30 = v29 + 8;
            v32 = v46(v31, v27[v15 / 8]);
            if (v32)
            {
              v28 += ~(v28 >> 1);
            }

            else
            {
              v28 >>= 1;
            }

            if (v32)
            {
              v20 = v30;
            }
          }

          while (v28);
          v26 = v41;
        }

        v19 = (v20 - a2) >> 3;
        v21 = &v27[v15 / 8];
      }

      else
      {
        v19 = v10 / 2;
        v20 = &a2[v10 / 2];
        v21 = a2;
        if (a2 - a1 != v15)
        {
          v22 = (a2 - a1 - v15) >> 3;
          v21 = &a1[v15 / 8];
          do
          {
            v23 = &v21[8 * (v22 >> 1)];
            v25 = *v23;
            v24 = (v23 + 1);
            if ((*a4)(*v20, v25))
            {
              v22 >>= 1;
            }

            else
            {
              v21 = v24;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
        }

        v26 = (v21 - a1 - v15) >> 3;
      }

      a5 = -(v26 + v16);
      v33 = a2;
      v34 = v26;
      v35 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>,std::__wrap_iter<NLTransliterationCandidate **>>(v21, v33, v20);
      v36 = v34;
      v37 = v35;
      if (v36 + v19 >= v42 - (v36 + v19) - v16)
      {
        v39 = v36;
        a7 = v44;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(v35, v20, a3, a4, a5, v42 - v19, v44, v43);
        v20 = v21;
        a8 = v43;
        a5 = v39;
        a3 = v37;
        a1 = (a1 + v15);
      }

      else
      {
        v38 = v21;
        a8 = v43;
        a7 = v44;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(&a1[v15 / 8], v38, v35, a4, v36, v19, v44, v43);
        a1 = v37;
        v19 = v42 - v19;
      }

      a2 = v20;
      v10 = v19;
      if (!v19)
      {
        return;
      }
    }

    std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(a1, a2, a3, a4, a5, v10, a7);
  }
}

uint64_t *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        result = (*a4)(*v6, v11);
        v12 = v9;
        if (result)
        {
          v10[1] = *v10;
          v12 = a3;
          if (v10 != a3)
          {
            v13 = v8;
            while (1)
            {
              v12 = (a3 + v13);
              result = (*a4)(*v6, *(a3 + v13 - 8));
              if (!result)
              {
                break;
              }

              *v12 = *(v12 - 1);
              v13 -= 8;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }
        }

        v14 = *v6++;
        *v12 = v14;
        v8 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>,std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(*a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*),std::__wrap_iter<NLTransliterationCandidate**>>(uint64_t *__dst, uint64_t *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v15 = -__src;
      v16 = __src;
      v17 = __dst;
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        v15 -= 8;
      }

      while (v17 != a2);
      while (v10 != a3)
      {
        v19 = (*a4)(*v10, *v7);
        if (v19)
        {
          v20 = v10;
        }

        else
        {
          v20 = v7;
        }

        if (v19)
        {
          v21 = 8;
        }

        else
        {
          v21 = 0;
        }

        v10 = (v10 + v21);
        if (v19)
        {
          v22 = 0;
        }

        else
        {
          v22 = 8;
        }

        v7 = (v7 + v22);
        *v11++ = *v20;
        if (v16 == v7)
        {
          return;
        }
      }

      memmove(v11, v7, -(v7 + v15));
    }
  }

  else
  {
    v12 = __src;
    if (a2 != a3)
    {
      v12 = __src;
      v13 = a2;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a3);
    }

    v23 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*)>,std::reverse_iterator<NLTransliterationCandidate**>,std::reverse_iterator<NLTransliterationCandidate**>,std::reverse_iterator<std::__wrap_iter<NLTransliterationCandidate**>>,std::reverse_iterator<std::__wrap_iter<NLTransliterationCandidate**>>,std::reverse_iterator<std::__wrap_iter<NLTransliterationCandidate**>>>(v12, v12, __src, __src, a2, a2, v11, v11, a3, a3, &v23);
  }
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>,std::__wrap_iter<NLTransliterationCandidate **>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>>(__src, a2, a3);
    }
  }

  return v4;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<BOOL (*&)(NLTransliterationCandidate const*,NLTransliterationCandidate const*)>,std::reverse_iterator<NLTransliterationCandidate**>,std::reverse_iterator<NLTransliterationCandidate**>,std::reverse_iterator<std::__wrap_iter<NLTransliterationCandidate**>>,std::reverse_iterator<std::__wrap_iter<NLTransliterationCandidate**>>,std::reverse_iterator<std::__wrap_iter<NLTransliterationCandidate**>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (***a11)(void, void))
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = (**a11)(*(v14 - 8), *(a6 - 8));
      if (v16)
      {
        v17 = a6;
      }

      else
      {
        v17 = v14;
      }

      if (v16)
      {
        a6 -= 8;
      }

      else
      {
        v14 -= 8;
      }

      *(a10 - 8) = *(v17 - 8);
      a10 -= 8;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v18 = -8;
      do
      {
        v19 = *(v14 - 8);
        v14 -= 8;
        *(a10 + v18) = v19;
        v18 -= 8;
      }

      while (v14 != a4);
    }
  }
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLTransliterationCandidate **>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t std::vector<std::vector<NLExtendedString>>::__construct_one_at_end[abi:ne200100]<std::vector<NLExtendedString> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<NLExtendedString>>::__emplace_back_slow_path<std::vector<NLExtendedString> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
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
  std::__split_buffer<std::vector<NLExtendedString>>::~__split_buffer(&v14);
  return v8;
}

void sub_22CD93954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<NLExtendedString>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<NLExtendedString>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<NLExtendedString>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<NLExtendedString>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::vector<NLTransliterationCandidate *>>::__construct_one_at_end[abi:ne200100]<std::vector<NLTransliterationCandidate *> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<NLTransliterationCandidate *>::__init_with_size[abi:ne200100]<NLTransliterationCandidate **,NLTransliterationCandidate **>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<NLTransliterationCandidate *>>::__emplace_back_slow_path<std::vector<NLTransliterationCandidate *> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<NLTransliterationCandidate *>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<NLTransliterationCandidate *>::__init_with_size[abi:ne200100]<NLTransliterationCandidate **,NLTransliterationCandidate **>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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

void sub_22CD93B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<NLTransliterationCandidate *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<NLExtendedString>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<NLLatticePath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<NLLatticePath>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<NLLatticePath>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NLExtendedString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD93D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<NLLatticePath>::emplace_back<NLLatticePath const&>(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = std::vector<NLLatticePath>::__emplace_back_slow_path<NLLatticePath const&>(a1, a2);
  }

  else
  {
    std::vector<NLLatticePath>::__construct_one_at_end[abi:ne200100]<NLLatticePath const&>(a1, a2);
    v4 = v3 + 56;
  }

  a1[1] = v4;
  return v4 - 56;
}

double std::vector<NLLatticePath>::__construct_one_at_end[abi:ne200100]<NLLatticePath const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v4 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 4));
  result = *(a2 + 6);
  *(v4 + 48) = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<NLLatticePath>::__emplace_back_slow_path<NLLatticePath const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLLatticePath>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<NLExtendedString>::__init_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v7 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 4));
  *(v7 + 48) = *(a2 + 6);
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLLatticePath>,NLLatticePath*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<NLLatticePath>::~__split_buffer(&v15);
  return v14;
}

void sub_22CD94014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<NLLatticePath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLLatticePath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLLatticePath>,NLLatticePath*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
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
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<NLLatticePath>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLLatticePath>,NLLatticePath*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLLatticePath>,NLLatticePath*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<NLLatticePath>,NLLatticePath*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<NLLatticePath>,NLLatticePath*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 56;
      std::allocator<NLLatticePath>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<NLLatticePath>::~__split_buffer(void **a1)
{
  std::__split_buffer<NLLatticePath>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<NLLatticePath>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<NLLatticePath>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLExtendedString *>,std::greater<NLExtendedString>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    while (1)
    {
      v9 = operator new(48 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_22CD94378(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6)
{
  v17 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v16 = a2 - 48;
      if (NLExtendedString::operator>(a2 - 48, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<NLExtendedString *> &,std::__wrap_iter<NLExtendedString *> &>(&v17, &v16);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, a2);
    }

    else
    {
      v12 = a4 >> 1;
      v13 = &a1[6 * (a4 >> 1)];
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, &a1[6 * (a4 >> 1)], a3, a4 >> 1, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(&a1[6 * (a4 >> 1)], a2, a3, a4 - v12, &a5[3 * v12]);
        v15 = a4;
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,NLExtendedString*,NLExtendedString*,std::__wrap_iter<NLExtendedString*>>(a5, &a5[3 * v12], &a5[3 * v12], &a5[3 * a4], a1);
        if (a5)
        {
          std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(&v15, a5);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, &a1[6 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(v13, a2, a3, v14, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, v13, a2, a3, v12, v14, a5, a6);
      }
    }
  }
}

void sub_22CD9456C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<NLExtendedString *> &,std::__wrap_iter<NLExtendedString *> &>(uint64_t **a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v11 = (*a1)[1];
  *&v11[7] = *(*a1 + 15);
  v5 = *(*a1 + 23);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v9 = *(v2 + 3);
  v10 = *(v2 + 40);
  v6 = *(v3 + 16);
  *v2 = *v3;
  v2[2] = v6;
  *(v3 + 23) = 0;
  *v3 = 0;
  LOBYTE(v6) = *(v3 + 40);
  *(v2 + 3) = *(v3 + 24);
  *(v2 + 40) = v6;
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v4;
  *(v3 + 8) = *v11;
  *(v3 + 15) = *&v11[7];
  *(v3 + 23) = v5;
  result = v9;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 48;
    if (a1 + 48 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        if (NLExtendedString::operator>(v4, v6))
        {
          v8 = *v7;
          v18 = *(v7 + 16);
          v17 = v8;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
          v19 = *(v6 + 72);
          v20 = *(v6 + 88);
          v9 = v5;
          while (1)
          {
            v10 = v9;
            v11 = a1 + v9;
            if (*(a1 + v9 + 71) < 0)
            {
              operator delete(*(v11 + 48));
            }

            *(v11 + 48) = *v11;
            *(v11 + 64) = *(v11 + 16);
            *(v11 + 23) = 0;
            *v11 = 0;
            *(v11 + 72) = *(v11 + 24);
            *(v11 + 88) = *(v11 + 40);
            if (!v10)
            {
              break;
            }

            v12 = NLExtendedString::operator>(&v17, a1 + v10 - 48);
            v9 = v10 - 48;
            if (!v12)
            {
              v13 = a1 + v10;
              goto LABEL_12;
            }
          }

          v13 = a1;
LABEL_12:
          if (*(v13 + 23) < 0)
          {
            operator delete(*v13);
          }

          v14 = a1 + v10;
          v15 = v17;
          *(v13 + 16) = v18;
          *v13 = v15;
          v16 = v19;
          *(v14 + 40) = v20;
          *(v14 + 24) = v16;
        }

        v4 = v7 + 48;
        v5 += 48;
        v6 = v7;
      }

      while (v7 + 48 != a2);
    }
  }
}

void sub_22CD947C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v11 = (a2 - 48);
      if (NLExtendedString::operator>(a2 - 48, a1))
      {
        v12 = *v11;
        *(a5 + 16) = *(a2 - 32);
        *a5 = v12;
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *v11 = 0;
        v13 = *(a2 - 24);
        *(a5 + 40) = *(a2 - 8);
        *(a5 + 24) = v13;
        v14 = *a1;
        *(a5 + 64) = *(a1 + 16);
        *(a5 + 48) = v14;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v15 = (a1 + 24);
      }

      else
      {
        v17 = *a1;
        *(a5 + 16) = *(a1 + 16);
        *a5 = v17;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v18 = *(a1 + 24);
        *(a5 + 40) = *(a1 + 40);
        *(a5 + 24) = v18;
        v19 = *v11;
        *(a5 + 64) = *(a2 - 32);
        *(a5 + 48) = v19;
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *v11 = 0;
        v15 = (a2 - 24);
      }

      result = *v15;
      *(a5 + 88) = v15[1].n128_u8[0];
      *(a5 + 72) = result;
    }

    else if (a4 == 1)
    {
      v9 = *a1;
      *(a5 + 16) = *(a1 + 16);
      *a5 = v9;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      result = *(a1 + 24);
      *(a5 + 40) = *(a1 + 40);
      *(a5 + 24) = result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, a1 + 48 * (a4 >> 1), a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1 + 48 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), a5 + 48 * (a4 >> 1), a4 - (a4 >> 1));

      result.n128_u64[0] = std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(a1, (a1 + 48 * (a4 >> 1)), a1 + 48 * (a4 >> 1), a2, a5).n128_u64[0];
    }

    else
    {

      std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(a1, a2, a5);
    }
  }

  return result;
}

void sub_22CD949F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    std::__destruct_n::__process[abi:ne200100]<NLExtendedString>(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,NLExtendedString*,NLExtendedString*,std::__wrap_iter<NLExtendedString*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      v15 = *a3;
      *(a5 + 16) = *(a3 + 16);
      *a5 = v15;
      *(a3 + 23) = 0;
      *a3 = 0;
      result = *(a3 + 24);
      *(a5 + 40) = *(a3 + 40);
      *(a5 + 24) = result;
      a3 += 48;
      a5 += 48;
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      v10 = NLExtendedString::operator>(a3, v9);
      v11 = *(a5 + 23);
      if (v10)
      {
        if (v11 < 0)
        {
          operator delete(*a5);
        }

        v12 = *a3;
        *(a5 + 16) = *(a3 + 16);
        *a5 = v12;
        *(a3 + 23) = 0;
        *a3 = 0;
        result = *(a3 + 24);
        *(a5 + 40) = *(a3 + 40);
        *(a5 + 24) = result;
        a3 += 48;
      }

      else
      {
        if (v11 < 0)
        {
          operator delete(*a5);
        }

        v14 = *v9;
        *(a5 + 16) = *(v9 + 16);
        *a5 = v14;
        *(v9 + 23) = 0;
        *v9 = 0;
        result = *(v9 + 24);
        *(a5 + 40) = *(v9 + 40);
        *(a5 + 24) = result;
        v9 += 48;
      }

      a5 += 48;
      if (v9 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v9 != a2)
    {
      if (*(a5 + 23) < 0)
      {
        operator delete(*a5);
      }

      v16 = *v9;
      *(a5 + 16) = *(v9 + 16);
      *a5 = v16;
      *(v9 + 23) = 0;
      *v9 = 0;
      result = *(v9 + 24);
      *(a5 + 40) = *(v9 + 40);
      *(a5 + 24) = result;
      v9 += 48;
      a5 += 48;
    }
  }

  return result;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v35 = a2;
  v36 = a1;
  if (a6)
  {
    v9 = a6;
    v13 = a2;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(v36, v13, a3, a4, a5, v9, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = v36;
      v16 = -a5;
      while (!NLExtendedString::operator>(v13, &v15[v14]))
      {
        v36 = &v15[v14 + 6];
        v14 += 6;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v32 = a8;
      v33 = a4;
      v31 = a3;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<NLExtendedString *> &,std::__wrap_iter<NLExtendedString *> &>(&v36, &v35).n128_u64[0];
          return result;
        }

        v21 = -v16 / 2;
        if (a3 == v13)
        {
          v26 = a3;
        }

        else
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v13) >> 4);
          do
          {
            v24 = v13 + 48 * (v23 >> 1);
            v25 = NLExtendedString::operator>(v24, &v15[6 * v21 + v14]);
            if (v25)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v25)
            {
              v13 = v24 + 48;
            }
          }

          while (v23);
          v26 = v13;
          v13 = v35;
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v13) >> 4);
        v20 = &v15[6 * v21 + v14];
        v22 = v13;
        v13 = v26;
      }

      else
      {
        v19 = v9 / 2;
        v20 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>,NLExtendedString,std::__identity>(&v15[v14], v13, v13 + 48 * (v9 / 2));
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v15 - v14 * 8) >> 4);
        v22 = v13;
        v13 += 48 * (v9 / 2);
      }

      v27 = v13;
      if (v20 != v22)
      {
        v27 = v20;
        if (v13 != v22)
        {
          v27 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<NLExtendedString *>>(v20, v22, v13);
        }
      }

      a5 = -v16 - v21;
      v28 = v9 - v19;
      if (v21 + v19 >= v9 - (v21 + v19) - v16)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(v27, v13, v31, v33, a5, v28, a7, v32);
        v13 = v20;
        a4 = v33;
        v28 = v19;
        a5 = v21;
        a8 = v32;
        a3 = v27;
      }

      else
      {
        v29 = v20;
        a4 = v33;
        v30 = v21;
        a8 = v32;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(v36, v29, v27, v33, v30, v19, a7, v32);
        v36 = v27;
        a3 = v31;
      }

      v35 = v13;
      v9 = v28;
    }

    while (v28);
  }

  return result;
}

void std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<NLExtendedString> &,std::__wrap_iter<NLExtendedString*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *a1;
    *(a3 + 16) = *(a1 + 16);
    *a3 = v6;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = *(a1 + 24);
    *(a3 + 40) = *(a1 + 40);
    *(a3 + 24) = v7;
    v22 = 1;
    v8 = a1 + 48;
    if (a1 + 48 != a2)
    {
      v9 = 0;
      v10 = a3;
      do
      {
        v11 = v8;
        v12 = (v10 + 48);
        if (NLExtendedString::operator>(v8, v10))
        {
          *v12 = *v10;
          *(v10 + 64) = *(v10 + 16);
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *v10 = 0;
          v13 = *(v10 + 24);
          *(v10 + 88) = *(v10 + 40);
          ++v22;
          v14 = a3;
          *(v10 + 72) = v13;
          if (v10 != a3)
          {
            v15 = v9;
            while (1)
            {
              v16 = a3 + v15;
              if (!NLExtendedString::operator>(v11, a3 + v15 - 48))
              {
                break;
              }

              v17 = a3 + v15;
              if (*(a3 + v15 + 23) < 0)
              {
                operator delete(*v16);
              }

              *v16 = *(a3 + v15 - 48);
              *(v16 + 16) = *(a3 + v15 - 32);
              *(v17 - 25) = 0;
              *(v16 - 48) = 0;
              *(v17 + 24) = *(v17 - 24);
              *(v17 + 40) = *(v17 - 8);
              v15 -= 48;
              if (!v15)
              {
                v14 = a3;
                goto LABEL_14;
              }
            }

            v14 = a3 + v15;
          }

LABEL_14:
          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          v20 = *v11;
          *(v14 + 16) = *(v11 + 16);
          *v14 = v20;
          *(v5 + 71) = 0;
          *v11 = 0;
          v21 = *(v5 + 72);
          *(v14 + 40) = *(v5 + 88);
          *(v14 + 24) = v21;
        }

        else
        {
          v18 = *v11;
          *(v10 + 64) = *(v11 + 16);
          *v12 = v18;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
          *v11 = 0;
          v19 = *(v5 + 72);
          *(v10 + 88) = *(v5 + 88);
          *(v10 + 72) = v19;
          ++v22;
        }

        v8 = v11 + 48;
        v9 += 48;
        v10 += 48;
        v5 = v11;
      }

      while (v11 + 48 != a2);
    }
  }
}