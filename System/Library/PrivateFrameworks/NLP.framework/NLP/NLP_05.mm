uint64_t NLDevanagariCharTokenizer::currentTokenRange(NLDevanagariCharTokenizer *this)
{
  if (*(this + 2) <= *(this + 1))
  {
    return -1;
  }

  else
  {
    return *(this + 1);
  }
}

uint64_t NLPOIEntryImplReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        String = PBReaderReadString();

        v14 = String;
        v15 = 8;
LABEL_30:
        *(a1 + v15) = v14;
        goto LABEL_33;
      }

      if (v12 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_33;
      }

      *(a1 + 36) |= 1u;
      v22 = 0;
      v16 = [a2 position] + 4;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 32) = v22;
LABEL_33:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v19 = PBReaderReadString();

      v14 = v19;
      v15 = 24;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_26;
      }

      v13 = PBReaderReadString();

      v14 = v13;
      v15 = 16;
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

void NLCompositeTransliteratorSeq2Seq::NLCompositeTransliteratorSeq2Seq(NLCompositeTransliteratorSeq2Seq *this, const __CFLocale *a2, const __CFURL *a3)
{
  *(this + 1) = 0;
  v6 = (this + 8);
  *this = 0;
  *(this + 2) = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  nlp::CFScopedPtr<__CFLocale const*>::reset(this, v8);
  Value = CFLocaleGetValue(a2, *MEMORY[0x277CBEED0]);
  MutableCopy = CFStringCreateMutableCopy(v7, 0, Value);
  v11 = MutableCopy;
  if (MutableCopy)
  {
    CFStringAppend(MutableCopy, @"_IN");
    v12 = CFLocaleCreate(v7, v11);
    nlp::CFScopedPtr<__CFLocale const*>::reset(v6, v12);
  }

  *(this + 2) = NLCompositeTransliteratorSeq2Seq::loadSeq2SeqModel(MutableCopy, a2, a3);
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_22CD6572C(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

void *NLCompositeTransliteratorSeq2Seq::loadSeq2SeqModel(NLCompositeTransliteratorSeq2Seq *this, CFLocaleRef locale, const __CFURL *a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3812000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = &unk_22CDFE4D1;
  v44 = 0;
  if (a3)
  {
    Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v8 = Mutable;
    v26[0] = Mutable;
    if (Mutable)
    {
      CFStringAppend(Mutable, Value);
      CFStringAppend(v8, @"_EMT_package");
      v37 = CFURLCreateCopyAppendingPathComponent(v6, a3, v8, 1u);
      getFileSystemRepresentationFromCFURL(v37);
    }
  }

  else
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = ___ZN32NLCompositeTransliteratorSeq2Seq16loadSeq2SeqModelEPK10__CFLocalePK7__CFURL_block_invoke;
    v33 = &unk_27873FFE0;
    v34 = &v38;
    LMEnumerateAssetDataItems();
  }

  v9 = v39[6];
  if (v9)
  {
    getUTF8StringFromCFString(v9, __p);
    if (v36 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
    if (!v12 || (v13 = objc_alloc(MEMORY[0x277D07210]), v45[0] = v12, v14 = [v13 initWithModelURLs:objc_msgSend(MEMORY[0x277CBEA60] task:"arrayWithObjects:count:" skipNonFinalToCatchup:{v45, 1), @"siri", 0}], v15 = dispatch_queue_create("callbackQueue", 0), objc_msgSend(v14, "setCallbackQueue:", v15), dispatch_release(v15), v12, !v14))
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "Failed to load Seq2Seq EMT model for: ");
      composeErrorMessageForLocale(locale, v24, v26);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      v17 = NL::CFLogger::sharedInstance(v16);
      v18 = v26;
      if (v27 < 0)
      {
        v18 = v26[0];
      }

      (*(*v17 + 16))(v17, 3, "%s", v18);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      v14 = 0;
    }

    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "Could not locate Seq2Seq EMT package for: ");
    composeErrorMessageForLocale(locale, v28, __p);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v20 = NL::CFLogger::sharedInstance(v19);
    v21 = __p;
    if (v36 < 0)
    {
      v21 = __p[0];
    }

    (*(*v20 + 16))(v20, 3, "%s", v21);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = 0;
  }

  _Block_object_dispose(&v38, 8);
  if (v44)
  {
    CFRelease(v44);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_22CD65B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN32NLCompositeTransliteratorSeq2Seq16loadSeq2SeqModelEPK10__CFLocalePK7__CFURL_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
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

void sub_22CD65D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NLCompositeTransliteratorSeq2Seq::~NLCompositeTransliteratorSeq2Seq(NLCompositeTransliteratorSeq2Seq *this)
{
  v2 = *(this + 2);
  if (v2)
  {
  }

  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 1, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(this, 0);
}

void NLCompositeTransliteratorSeq2Seq::seq2SeqCandidatesForInput(uint64_t *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  NLOSSignPostseq2SeqCandidatesForInput::NLOSSignPostseq2SeqCandidatesForInput(&v35);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1[2])
  {
    if (*(a2 + 23) < 0)
    {
      if (!a2[1])
      {
        goto LABEL_19;
      }

      v6 = *a2;
    }

    else
    {
      v6 = a2;
      if (!*(a2 + 23))
      {
        goto LABEL_19;
      }
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v8 = [MEMORY[0x277CCAB68] string];
    v9 = [v7 length];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ___ZNK32NLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v34[3] = &unk_278740008;
    v34[4] = v8;
    [v7 enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v34}];
    CFStringTrimWhitespace(v8);
    v10 = dispatch_semaphore_create(0);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy__26_0;
    v32 = __Block_byref_object_dispose__27_0;
    v33 = 0;
    v12 = a1[1];
    v11 = a1[2];
    v13 = *a1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZNK32NLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_28;
    v27[3] = &unk_278740030;
    v27[4] = v10;
    v27[5] = &v28;
    [v11 translateString:v8 from:v13 to:v12 completion:v27];
    v14 = dispatch_time(0, 60000000);
    dispatch_semaphore_wait(v10, v14);
    dispatch_release(v10);
    v15 = [v29[5] count];
    v16 = 5;
    if (v15 < 5)
    {
      v16 = v15;
    }

    if (v16)
    {
      v17 = [MEMORY[0x277CBEB18] array];
      v18 = [objc_msgSend(v29[5] objectAtIndexedSubscript:{0), "tokens"}];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v36 count:16];
      if (v19)
      {
        v20 = *v24;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [v17 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "text")}];
          }

          v19 = [v18 countByEnumeratingWithState:&v23 objects:v36 count:16];
        }

        while (v19);
      }

      [v17 componentsJoinedByString:&stru_284010170];
      operator new();
    }

    _Block_object_dispose(&v28, 8);
  }

LABEL_19:
  NLOSSignPostseq2SeqCandidatesForInput::~NLOSSignPostseq2SeqCandidatesForInput(&v35);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_22CD661C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, os_signpost_id_t a41)
{
  v43 = *v41;
  if (*v41)
  {
    *(v41 + 8) = v43;
    operator delete(v43);
  }

  NLOSSignPostseq2SeqCandidatesForInput::~NLOSSignPostseq2SeqCandidatesForInput(&a41);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK32NLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:a2];
  v3 = *(a1 + 32);

  return [v3 appendString:@" "];
}

intptr_t ___ZNK32NLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_28(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void NLOSSignPostseq2SeqCandidatesForInput::NLOSSignPostseq2SeqCandidatesForInput(NLOSSignPostseq2SeqCandidatesForInput *this)
{
  v2 = _nlpSignpostLog();
  *this = os_signpost_id_make_with_pointer(v2, this);
  v3 = _nlpSignpostLog();
  v4 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "seq2SeqCandidatesForInput", &unk_22CDFA99D, v6, 2u);
    }
  }
}

void NLOSSignPostseq2SeqCandidatesForInput::~NLOSSignPostseq2SeqCandidatesForInput(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v4, OS_SIGNPOST_INTERVAL_END, v3, "seq2SeqCandidatesForInput", &unk_22CDFA99D, v5, 2u);
    }
  }
}

void NLArabicWordAnalyzer::NLArabicWordAnalyzer(NLArabicWordAnalyzer *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_28400F2F0;
  NLQamus::NLQamus((this + 56));
  NLQamus::loadData((this + 56));
}

void sub_22CD664B4(_Unwind_Exception *a1)
{
  NLQamus::~NLQamus((v1 + 56));
  NLWordAnalyzer::~NLWordAnalyzer(v1);
  _Unwind_Resume(a1);
}

void NLWordAnalyzer::~NLWordAnalyzer(NLWordAnalyzer *this)
{
  *this = &unk_28400F3B0;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void NLArabicWordAnalyzer::~NLArabicWordAnalyzer(NLArabicWordAnalyzer *this)
{
  *this = &unk_28400F2F0;
  v2 = (this + 32);
  NLQamus::~NLQamus((this + 56));
  *this = &unk_28400F3B0;
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  NLArabicWordAnalyzer::~NLArabicWordAnalyzer(this);

  JUMPOUT(0x2318C0600);
}

void sub_22CD666D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLArabicWordAnalyzer::analyzeWord(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  NLQamus::getBw2UTFConverter((a1 + 56), &v5);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
  }

  else
  {
    v4 = *a2;
  }

  NLConvertBW2UTF::utf2bw(&v4, &v6);
}

void sub_22CD66AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a29);
  if (*(v45 - 49) < 0)
  {
    operator delete(*(v45 - 72));
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_22CD66CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_22CD66ED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::__vdeallocate(std::vector<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  if (this->__begin_)
  {
    end = this->__end_;
    v4 = this->__begin_;
    if (end != begin)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != begin);
      v4 = this->__begin_;
    }

    this->__end_ = begin;
    operator delete(v4);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD66FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  return this;
}

void sub_22CD671A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 48;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

void NLCompositeTransliteratorLexicon::NLCompositeTransliteratorLexicon(NLCompositeTransliteratorLexicon *this, const __CFLocale *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = 0;
  LatinToIDMap = NLCompositeTransliteratorLexicon::loadLatinToIDMap(this, a2);
  nlp::CFScopedPtr<_LXLexicon const*>::reset(this, LatinToIDMap);
  IDToNativeMap = NLCompositeTransliteratorLexicon::loadIDToNativeMap(v6, a2);
  nlp::CFScopedPtr<_LXLexicon const*>::reset(v4, IDToNativeMap);
}

void sub_22CD6732C(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<_LXLexicon const*>::reset(v2, 0);
  nlp::CFScopedPtr<_LXLexicon const*>::reset(v1, 0);
  _Unwind_Resume(a1);
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

uint64_t NLCompositeTransliteratorLexicon::loadLatinToIDMap(NLCompositeTransliteratorLexicon *this, CFLocaleRef locale)
{
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  v3 = *MEMORY[0x277CBECE8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
  v19 = 0;
  v20 = MutableCopy;
  if (!MutableCopy)
  {
    return 0;
  }

  v5 = MutableCopy;
  CFStringAppend(MutableCopy, @"_Latn");
  v6 = CFLocaleCreate(v3, v5);
  v19 = v6;
  if (v6)
  {
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = Mutable;
    v18 = Mutable;
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], v6);
      v9 = LXLexiconCreate();
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Could not load lexicon for: ");
        composeErrorMessageForLocale(v6, __p, v16);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = NL::CFLogger::sharedInstance(v10);
        v12 = v16;
        if (v17 < 0)
        {
          v12 = v16[0];
        }

        (*(*v11 + 16))(v11, 3, "%s", v12);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }

      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

void sub_22CD67528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset(&a22, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset((v22 - 48), 0);
  nlp::CFScopedPtr<__CFString *>::reset((v22 - 40), 0);
  _Unwind_Resume(a1);
}

uint64_t NLCompositeTransliteratorLexicon::loadIDToNativeMap(NLCompositeTransliteratorLexicon *this, const __CFLocale *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = Mutable;
  if (!Mutable)
  {
    return 0;
  }

  v4 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], a2);
  v5 = LXLexiconCreate();
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Could not load lexicon for: ");
    composeErrorMessageForLocale(a2, __p, v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = NL::CFLogger::sharedInstance(v6);
    v8 = v12;
    if (v13 < 0)
    {
      v8 = v12[0];
    }

    (*(*v7 + 16))(v7, 3, "%s", v8);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  CFRelease(v4);
  return v5;
}

void sub_22CD676C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset((v21 - 40), 0);
  _Unwind_Resume(a1);
}

uint64_t NLCompositeTransliteratorLexicon::getTokenIDForString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = *a3;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v3, 0x8000100u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  FirstTokenIDForString = LXLexiconGetFirstTokenIDForString();
  CFRelease(v5);
  return FirstTokenIDForString;
}

void sub_22CD677D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NLCompositeTransliteratorLexicon::getStringForTokenID(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = LXLexiconCopyEntryForTokenID();
  v10 = v2;
  if (v2)
  {
    v3 = v2;
    v4 = LXEntryCopyString();
    v5 = v4;
    v9 = v4;
    if (v4)
    {
      v6 = convertToCString(v4);
      std::string::basic_string[abi:ne200100]<0>(&v7, v6);
      *a1 = v7;
      a1[2] = v8;
      free(v6);
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

void sub_22CD67894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<_LXEntry const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

void NLCompositeTransliteratorLexicon::lexiconCandidatesForInput(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  NLOSSignPostlexiconCandidatesForInput::NLOSSignPostlexiconCandidatesForInput(&v13);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *a1;
  if (*a1 && a1[1])
  {
    v8 = *(a2 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (v8)
    {
      memset(&v12, 0, sizeof(v12));
      if (NLCompositeTransliteratorLexicon::getTokenIDForString(v6, v7, a2))
      {
        v9 = a1[1];
        NLCompositeTransliteratorLexicon::getStringForTokenID(&__str);
        std::string::operator=(&v12, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
        if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v12.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          operator new();
        }
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }

  NLOSSignPostlexiconCandidatesForInput::~NLOSSignPostlexiconCandidatesForInput(&v13);
}

void sub_22CD67A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, os_signpost_id_t a22)
{
  MEMORY[0x2318C0600](v23, 0x1012C40B0087DDBLL);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v25 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v25;
    operator delete(v25);
  }

  NLOSSignPostlexiconCandidatesForInput::~NLOSSignPostlexiconCandidatesForInput(&a22);
  _Unwind_Resume(a1);
}

void NLOSSignPostlexiconCandidatesForInput::NLOSSignPostlexiconCandidatesForInput(NLOSSignPostlexiconCandidatesForInput *this)
{
  v2 = _nlpSignpostLog();
  *this = os_signpost_id_make_with_pointer(v2, this);
  v3 = _nlpSignpostLog();
  v4 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "lexiconCandidatesForInput", &unk_22CDFA99D, v6, 2u);
    }
  }
}

void NLOSSignPostlexiconCandidatesForInput::~NLOSSignPostlexiconCandidatesForInput(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v4, OS_SIGNPOST_INTERVAL_END, v3, "lexiconCandidatesForInput", &unk_22CDFA99D, v5, 2u);
    }
  }
}

void nlp::CFScopedPtr<_LXEntry const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

__CFCalendar *getCurrentDateComponents@<X0>(__CFCalendar *result@<X0>, const __CFDate *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (result)
  {
    v3 = result;
    CurrentTime = getCurrentTime(a2);
    return CFCalendarDecomposeAbsoluteTime(v3, CurrentTime, "dEMywYHms", a3, a3 + 36, a3 + 4, a3 + 8, a3 + 3, a3 + 52, a3 + 24, a3 + 28, a3 + 2);
  }

  return result;
}

uint64_t updateDateComponentsWithHolidayReference(const __CFDictionary *a1, const __CFString *a2, __CFCalendar *a3, const __CFDate *a4, const __CFLocale *a5, double *a6, NL::DateComponents *a7, NL::DateComponents *a8)
{
  v8 = 0;
  v43 = a6;
  if (!a1)
  {
    return v8;
  }

  if (!a2)
  {
    return v8;
  }

  if (!a3)
  {
    return v8;
  }

  if (!a5)
  {
    return v8;
  }

  v13 = a6;
  v16 = *MEMORY[0x277CBECE8];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], a2, @"-");
  v8 = ArrayBySeparatingStrings;
  v42 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings)
  {
    return v8;
  }

  if (CFArrayGetCount(ArrayBySeparatingStrings) != 3)
  {
    goto LABEL_30;
  }

  theString = CFArrayGetValueAtIndex(v8, 0);
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 1);
  if (!CFDictionaryContainsKey(a1, ValueAtIndex))
  {
    goto LABEL_30;
  }

  Value = CFDictionaryGetValue(a1, ValueAtIndex);
  if (CFStringHasPrefix(theString, @"GENERIC"))
  {
    HolidayValuesForLocale = getHolidayValuesForLocale(Value, a5);
    if (!HolidayValuesForLocale)
    {
      goto LABEL_10;
    }
  }

  else
  {
    HolidayValuesForLocale = getHolidayValuesForLocaleAndCalendar(Value, a5, theString);
    if (!HolidayValuesForLocale)
    {
      HolidayValuesForLocale = getHolidayValuesForCalendar(Value, theString);
      if (!HolidayValuesForLocale)
      {
LABEL_10:
        HolidayValuesForLocale = getHolidayDefaultValuesForLocale(Value, a5);
        if (!HolidayValuesForLocale)
        {
          HolidayValuesForLocale = getHolidayDefaultValues(Value);
          if (!HolidayValuesForLocale)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

  cf = 0;
  v21 = MEMORY[0x2318BF5E0](a3);
  if (CFStringHasPrefix(v21, @"gregorian"))
  {
    cf = CFRetain(a3);
  }

  else
  {
    v22 = CFCalendarCreateWithIdentifier(v16, @"gregorian");
    nlp::CFScopedPtr<__CFCalendar *>::reset(&cf, v22);
  }

  v40 = 0;
  v38 = 1;
  v39 = 0;
  v37 = 0;
  CurrentTime = getCurrentTime(a4);
  at = CurrentTime;
  v35 = v13;
  if (!v13)
  {
    CFCalendarDecomposeAbsoluteTime(cf, CurrentTime, "y", &v35);
    v13 = v35;
  }

  if (updateTimeForHolidayReferenceValueWithYear(a1, HolidayValuesForLocale, theString, cf, a5, &at, v13, &v38, &v37))
  {
    CFCalendarDecomposeAbsoluteTime(cf, at, "dMh", &v40 + 4, &v40, &v39);
    CFCalendarDecomposeAbsoluteTime(a3, at, "dMy", &v40 + 4, &v40, &v43);
    v24 = v40;
    *a7 = HIDWORD(v40);
    *(a7 + 1) = v24;
    *(a7 + 2) = v43;
    v25 = v38;
    if (v38 >= 2)
    {
      v26 = *(a7 + 3);
      v28 = *a7;
      v27 = *(a7 + 1);
      *(a8 + 2) = *(a7 + 2);
      *(a8 + 3) = v26;
      *a8 = v28;
      *(a8 + 1) = v27;
      *a8 += v25;
    }

    v29 = v37;
    if (v37)
    {
      *(a7 + 6) = v39;
      v30 = *(a7 + 3);
      v31 = *a7;
      v32 = *(a7 + 1);
      *(a8 + 2) = *(a7 + 2);
      *(a8 + 3) = v30;
      *a8 = v31;
      *(a8 + 1) = v32;
      *(a8 + 6) += v29;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v8 = 1;
    goto LABEL_31;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  v8 = 0;
LABEL_31:
  if (v42)
  {
    CFRelease(v42);
  }

  return v8;
}

void sub_22CD67FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

const void *getHolidayValuesForLocale(const __CFDictionary *a1, CFLocaleRef locale)
{
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEE98]);
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  if (!CFDictionaryContainsKey(a1, Value))
  {
    return 0;
  }

  v5 = CFDictionaryGetValue(a1, v4);
  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"default.%@", v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFDictionaryContainsKey(a1, v6))
  {
    v8 = CFDictionaryGetValue(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

void sub_22CD68108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const void *getHolidayDefaultValuesForLocale(const __CFDictionary *a1, const __CFLocale *a2)
{
  Value = CFDictionaryGetValue(a1, @"default");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFLocaleGetValue(a2, *MEMORY[0x277CBEE98]);
  if (!v6)
  {
    return 0;
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", v6, v5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (CFDictionaryContainsKey(a1, v7))
  {
    v9 = CFDictionaryGetValue(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v8);
  return v9;
}

void sub_22CD681F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const void *getHolidayDefaultValues(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"default");
  if (!Value)
  {
    return 0;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"default.%@", Value);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFDictionaryContainsKey(a1, v3))
  {
    v5 = CFDictionaryGetValue(a1, v4);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

void sub_22CD682B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const void *getHolidayValuesForLocaleAndCalendar(const __CFDictionary *a1, CFLocaleRef locale, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEE98]);
  if (!Value)
  {
    return 0;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", Value, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFDictionaryContainsKey(a1, v6))
  {
    v8 = CFDictionaryGetValue(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

void sub_22CD68384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const void *getHolidayValuesForCalendar(const __CFDictionary *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"default.%@", a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFDictionaryContainsKey(a1, v3))
  {
    Value = CFDictionaryGetValue(a1, v4);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v4);
  return Value;
}

void sub_22CD68434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t updateTimeForHolidayReferenceValueWithYear(const __CFDictionary *a1, const __CFDictionary *a2, const __CFString *a3, __CFCalendar *a4, const __CFLocale *a5, double *a6, double *a7, int *a8, int *a9)
{
  ValueAtIndex = a2;
  result = CFDictionaryGetValue(a2, @"Type");
  if (!result)
  {
    return result;
  }

  v18 = result;
  if (!CFStringHasPrefix(result, @"MonthRelativeWeekDay"))
  {
    if (CFStringHasPrefix(v18, @"AbsoluteDate"))
    {
      composeHolidayAbsoluteDateWithValue(ValueAtIndex, a4, a6, a7, v24, v25, v26);
      if (!a8)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (CFStringHasPrefix(v18, @"DateList"))
    {
      v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d", a7);
      *v48 = v27;
      if (!CFDictionaryContainsKey(ValueAtIndex, v27))
      {
        goto LABEL_41;
      }

      Value = CFDictionaryGetValue(ValueAtIndex, v27);
      v29 = CFGetTypeID(Value);
      if (v29 == CFDictionaryGetTypeID())
      {
        ValueAtIndex = Value;
      }

      else
      {
        v40 = CFGetTypeID(Value);
        if (v40 == CFArrayGetTypeID())
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
        }
      }

      if (ValueAtIndex)
      {
        composeHolidayAbsoluteDateWithValue(ValueAtIndex, a4, a6, a7, v30, v31, v32);
        v41 = 1;
      }

      else
      {
LABEL_41:
        v41 = 0;
      }

      if (v27)
      {
        CFRelease(v27);
      }

      if (v41)
      {
        goto LABEL_45;
      }

      return 0;
    }

    result = CFStringHasPrefix(v18, @"SpecialDateRelativeDate");
    if (!result)
    {
      return result;
    }

    result = CFDictionaryContainsKey(ValueAtIndex, @"SpecialDate");
    if (!result)
    {
      return result;
    }

    v37 = CFDictionaryGetValue(ValueAtIndex, @"SpecialDate");
    result = CFDictionaryContainsKey(a1, v37);
    if (!result)
    {
      return result;
    }

    v48[0] = 1;
    HIDWORD(valuePtr) = 1;
    if (CFStringCompare(v37, @"easter", 0) == kCFCompareEqualTo)
    {
      v42 = MEMORY[0x2318BF5E0](a4);
      if (CFStringCompare(v42, @"julian", 0))
      {
        v43 = MEMORY[0x2318BF5E0](a4);
        if (CFStringCompare(v43, @"gregorian", 0))
        {
          return 0;
        }

        extractGregorianEasterInYear(&valuePtr + 1, v48, a7);
      }

      else
      {
        extractJulianEasterInYear(&valuePtr + 1, v48, a7);
      }

LABEL_62:
      composeHolidayRelativeDateWithValue(ValueAtIndex, a4, a6, HIDWORD(valuePtr), v48[0], a7, v44, v45);
      if (!a8)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v38 = CFDictionaryGetValue(a1, v37);
    if (CFStringHasPrefix(a3, @"GENERIC"))
    {
      HolidayValuesForLocale = getHolidayValuesForLocale(v38, a5);
      if (!HolidayValuesForLocale)
      {
        goto LABEL_35;
      }
    }

    else
    {
      HolidayValuesForLocale = getHolidayValuesForLocaleAndCalendar(v38, a5, a3);
      if (!HolidayValuesForLocale)
      {
        HolidayValuesForLocale = getHolidayValuesForCalendar(v38, a3);
        if (!HolidayValuesForLocale)
        {
LABEL_35:
          HolidayValuesForLocale = getHolidayDefaultValuesForLocale(v38, a5);
          if (!HolidayValuesForLocale)
          {
            HolidayValuesForLocale = getHolidayDefaultValues(v38);
          }
        }
      }
    }

    if (!CFDictionaryContainsKey(HolidayValuesForLocale, @"SpecialDate"))
    {
      return 0;
    }

    HolidayDefaultValues = getHolidayDefaultValues(v38);
    if (!HolidayDefaultValues)
    {
      return 0;
    }

    v47 = HolidayDefaultValues;
    if (CFDictionaryContainsKey(HolidayDefaultValues, @"SpecialDate"))
    {
      return 0;
    }

    updateTimeForHolidayReferenceValueWithYear(a1, v47, a3, a4, a5, a6, a7, a8, a9);
    CFCalendarDecomposeAbsoluteTime(a4, *a6, "dM", &valuePtr + 4, v48);
    goto LABEL_62;
  }

  if (a4)
  {
    v48[0] = 0;
    valuePtr = 0;
    length = CFCalendarGetMaximumRangeOfUnit(a4, 0x200uLL).length;
    v20 = CFDictionaryGetValue(ValueAtIndex, @"Month");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
    }

    v21 = CFDictionaryGetValue(ValueAtIndex, @"WeekDay");
    v22 = v21;
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt32Type, v48);
      if (length == v48[0])
      {
        v23 = 1;
      }

      else
      {
        v23 = v48[0] + 1;
      }

      v48[0] = v23;
    }

    v33 = CFDictionaryGetValue(ValueAtIndex, @"WeekDayNumberInMonth");
    if (v33)
    {
      CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr + 4);
      if (v22)
      {
        CFCalendarComposeAbsoluteTime(a4, a6, "My", valuePtr, a7);
        v49 = 0;
        CFCalendarDecomposeAbsoluteTime(a4, *a6, "E", &v49);
        if (v48[0] >= v49)
        {
          if (v48[0] <= v49)
          {
            goto LABEL_25;
          }

          v34 = v48[0] - v49;
        }

        else
        {
          v34 = length + v48[0] - v49;
        }

        CFCalendarAddComponents(a4, a6, 0, "d", v34);
LABEL_25:
        v35 = HIDWORD(valuePtr);
        if (valuePtr < 0)
        {
          RangeOfUnit = CFCalendarGetRangeOfUnit(a4, 0x400uLL, 8uLL, *a6);
          v35 = HIDWORD(valuePtr) + LODWORD(RangeOfUnit.length);
          HIDWORD(valuePtr) += LODWORD(RangeOfUnit.length);
        }

        CFCalendarAddComponents(a4, a6, 0, "F", (v35 - 1));
        if (!a8)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }
  }

LABEL_45:
  if (a8)
  {
LABEL_46:
    *a8 = 1;
  }

LABEL_47:
  if (a9)
  {
    *a9 = 0;
  }

  return 1;
}

void sub_22CD68958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t getDateComponentsOffsetForUnit@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (result <= 63)
  {
    if (result > 15)
    {
      if (result != 16)
      {
        if (result != 32)
        {
          return result;
        }

        a3 = (a3 + 24);
      }
    }

    else if (result == 4)
    {
      a3 = (a3 + 8);
    }

    else
    {
      if (result != 8)
      {
        return result;
      }

      a3 = (a3 + 4);
    }
  }

  else if (result <= 511)
  {
    if (result == 64)
    {
      a3 = (a3 + 28);
    }

    else
    {
      if (result != 128)
      {
        return result;
      }

      a3 += 2;
    }
  }

  else
  {
    switch(result)
    {
      case 0x200:
        a3 = (a3 + 36);
        break;
      case 0x2000:
        a3 += 3;
        break;
      case 0x4000:
        a3 = (a3 + 52);
        break;
      default:
        return result;
    }
  }

  *a3 = a2;
  return result;
}

void resolveDateComponentsToCurrentDateForUnit(__CFCalendar *a1, const __CFLocale *a2, const __CFDate *a3, NL::DateComponents *a4, uint64_t a5, int a6)
{
  getCurrentDateComponents(a1, a3, v15);
  AbsoluteTime = NL::DateComponents::getAbsoluteTime(v15, a1, a3);
  v13 = NL::DateComponents::getAbsoluteTime(a4, a1, a3);
  if ((a6 & 1) == 0)
  {
    while (v13 > AbsoluteTime)
    {
      getDateComponentsOffsetForUnit(a5, -1, v14);
      updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v14);
      v13 = NL::DateComponents::getAbsoluteTime(a4, a1, a3);
    }
  }

  if (a6)
  {
    while (v13 < AbsoluteTime)
    {
      getDateComponentsOffsetForUnit(a5, 1, v14);
      updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v14);
      v13 = NL::DateComponents::getAbsoluteTime(a4, a1, a3);
    }
  }
}

CFAbsoluteTime NL::DateComponents::getAbsoluteTime(NL::DateComponents *this, __CFCalendar *a2, const __CFDate *a3)
{
  at = 0.0;
  CurrentTime = getCurrentTime(a3);
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  CFCalendarDecomposeAbsoluteTime(a2, CurrentTime, "yMdwEHms", &v24, &v25, &v26, &v22, &v23, &v21, &v20, &v19);
  v6 = *(this + 12);
  if (v6)
  {
    v7 = *(this + 9);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = *(this + 13);
    if (!v8)
    {
      v8 = v24;
    }

    CFCalendarComposeAbsoluteTime(a2, &at, "EwYHms", v7, v6, v8, *(this + 6), *(this + 7), *(this + 8));
    return at;
  }

  v9 = *this;
  if (*this)
  {
    v10 = *(this + 6);
LABEL_9:
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v11 = *(this + 1);
    v12 = *(this + 2);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    if (!v12)
    {
      v12 = v24;
    }

    CFCalendarComposeAbsoluteTime(a2, &at, "dMyHms", v9, v11, v12, v10, *(this + 7), *(this + 8));
    return at;
  }

  if (*(this + 9))
  {
    at = CurrentTime;
    CFCalendarAddComponents(a2, &at, 0, "E", -v23);
    CFCalendarAddComponents(a2, &at, 0, "E", *(this + 9));
    v14 = *(this + 6);
    if (v14)
    {
      CFCalendarAddComponents(a2, &at, 0, "H", v14 - v21);
    }

    v15 = *(this + 7);
    if (v15)
    {
      CFCalendarAddComponents(a2, &at, 0, "m", v15 - v20);
    }

    v16 = *(this + 8);
    if (v16)
    {
      CFCalendarAddComponents(a2, &at, 0, "s", v16 - v19);
    }
  }

  else
  {
    if (!*(this + 6))
    {
      v10 = 0;
      goto LABEL_9;
    }

    v17 = v25;
    v18 = *(this + 2);
    if (*(this + 1))
    {
      v17 = *(this + 1);
    }

    if (!v18)
    {
      v18 = v24;
    }

    CFCalendarComposeAbsoluteTime(a2, &at, "dMyHms", v26, v17, v18, *(this + 6), *(this + 7), *(this + 8));
  }

  return at;
}

unint64_t updateDateComponentsWithOffsetComponents(unint64_t result, const __CFLocale *a2, const __CFDate *a3, NL::DateComponents *this, const NL::DateComponents *a5)
{
  if (result)
  {
    if (a2)
    {
      v8 = result;
      result = NL::DateComponents::isEmpty(this);
      if ((result & 1) == 0)
      {
        result = NL::DateComponents::isEmpty(a5);
        if ((result & 1) == 0)
        {
          at = NL::DateComponents::getAbsoluteTime(this, v8, a3);
          if (*(a5 + 6))
          {
            CFCalendarAddComponents(v8, &at, 0, "wY", *(a5 + 12), *(a5 + 13));
          }

          else
          {
            CFCalendarAddComponents(v8, &at, 0, "dMy", *a5, *(a5 + 1), *(a5 + 2));
            if (*(a5 + 9))
            {
              CFCalendarAddComponents(v8, &at, 0, "E", *(a5 + 9), v11);
            }
          }

          result = CFCalendarAddComponents(v8, &at, 0, "Hms", *(a5 + 6), *(a5 + 7), *(a5 + 8));
          if (*this)
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "d", this);
          }

          if (*(this + 9))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "E", this + 36);
          }

          if (*(this + 1))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "M", this + 4);
          }

          if (*(this + 2))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "y", this + 8);
          }

          if (*(this + 12))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "w", this + 48);
          }

          if (*(this + 13))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "Y", this + 52);
          }

          if (*(this + 6))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "H", this + 24);
          }

          if (*(this + 7))
          {
            result = CFCalendarDecomposeAbsoluteTime(v8, at, "m", this + 28);
          }

          v10 = *(this + 8);
          v9 = this + 32;
          if (v10)
          {
            return CFCalendarDecomposeAbsoluteTime(v8, at, "s", v9);
          }
        }
      }
    }
  }

  return result;
}

void resolveDateComponentsToCurrentDate(__CFCalendar *a1, const __CFLocale *a2, const __CFDate *a3, NL::DateComponents *a4, int a5)
{
  getCurrentDateComponents(a1, a3, v14);
  AbsoluteTime = NL::DateComponents::getAbsoluteTime(v14, a1, a3);
  v11 = AbsoluteTime;
  v12 = *a4;
  if (!*(a4 + 2))
  {
    v12 |= *(a4 + 1);
    if (!v12)
    {
      goto LABEL_9;
    }

    CFCalendarDecomposeAbsoluteTime(a1, AbsoluteTime, "y", a4 + 8);
    resolveDateComponentsToCurrentDateForUnit(a1, a2, a3, a4, 4, a5);
    v12 = *a4;
  }

  if (*(a4 + 1))
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  if (!v13)
  {
    CFCalendarDecomposeAbsoluteTime(a1, v11, "M", a4 + 4);
    resolveDateComponentsToCurrentDateForUnit(a1, a2, a3, a4, 4, a5);
    v12 = *a4;
  }

LABEL_9:
  if (*(a4 + 9) && !v12 && !*(a4 + 12))
  {
    updateDateComponentsForWeekdayWithWeekOffset(a1, a2, a3, a4, 0);
    resolveDateComponentsToCurrentDateForUnit(a1, a2, a3, a4, 512, a5);
  }
}

void updateDateComponentsForWeekdayWithWeekOffset(__CFCalendar *a1, const __CFLocale *a2, const __CFDate *a3, NL::DateComponents *this, int a5)
{
  if (a1 && a2 && !NL::DateComponents::isEmpty(this))
  {
    CurrentTime = getCurrentTime(a3);
    AbsoluteTime = NL::DateComponents::getAbsoluteTime(this, a1, a3);
    at = AbsoluteTime;
    CFCalendarDecomposeAbsoluteTime(a1, AbsoluteTime, "dMy", this, this + 4, this + 8);
    if (a5)
    {
      CFCalendarAddComponents(a1, &at, 0, "w", 0xFFFFFFFFLL);
      CFCalendarDecomposeAbsoluteTime(a1, at, "dMy", this, this + 4, this + 8);
      AbsoluteTime = NL::DateComponents::getAbsoluteTime(this, a1, a3);
      at = AbsoluteTime;
    }

    if (AbsoluteTime > CurrentTime)
    {
      do
      {
        CFCalendarAddComponents(a1, &at, 0, "w", 0xFFFFFFFFLL);
        CFCalendarDecomposeAbsoluteTime(a1, at, "dMy", this, this + 4, this + 8);
        at = NL::DateComponents::getAbsoluteTime(this, a1, a3);
      }

      while (at > CurrentTime);
    }
  }
}

void resolveDateComponentsToDateWithOffset(__CFCalendar *a1, const __CFLocale *a2, const __CFDate *a3, NL::DateComponents *a4, int a5, uint64_t a6, int a7)
{
  getCurrentDateComponents(a1, a3, v38);
  AbsoluteTime = NL::DateComponents::getAbsoluteTime(v38, a1, a3);
  v36 = -1;
  v37 = -1;
  v34 = -1;
  v35 = -1;
  v32 = -1;
  v33 = -1;
  v30 = -1;
  v31 = -1;
  v15 = NL::DateComponents::getAbsoluteTime(a4, a1, a3);
  at = v15;
  if (*(a4 + 8))
  {
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "s", a6);
      v15 = at;
    }

    CFCalendarDecomposeAbsoluteTime(a1, v15, "dMyHms", &v37, &v34, &v33, &v32, &v31, &v30);
    v16 = v33;
    *(a4 + 1) = v34;
    *(a4 + 2) = v16;
    *a4 = v37;
    v17 = v31;
    *(a4 + 6) = v32;
    *(a4 + 7) = v17;
    *(a4 + 8) = v30;
    goto LABEL_28;
  }

  if (*(a4 + 7))
  {
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "m", a6);
      v15 = at;
    }

    CFCalendarDecomposeAbsoluteTime(a1, v15, "dMyHm", &v37, &v34, &v33, &v32, &v31);
    v18 = v33;
    *(a4 + 1) = v34;
    *(a4 + 2) = v18;
    *a4 = v37;
    v19 = v31;
    *(a4 + 6) = v32;
    *(a4 + 7) = v19;
    goto LABEL_28;
  }

  if (*(a4 + 6))
  {
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "H", a6);
      v15 = at;
    }

    CFCalendarDecomposeAbsoluteTime(a1, v15, "dMyH", &v37, &v34, &v33, &v32);
    v20 = v33;
    *(a4 + 1) = v34;
    *(a4 + 2) = v20;
    *a4 = v37;
    *(a4 + 6) = v32;
    goto LABEL_28;
  }

  if (*(a4 + 9))
  {
    v27 = -1;
    v28 = -1;
    v26 = -1;
    CFCalendarDecomposeAbsoluteTime(a1, AbsoluteTime, "dEw", &v28, &v27, &v26);
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "w", a6);
    }

    CFCalendarDecomposeAbsoluteTime(a1, at, "dEwy", &v37, &v36, &v35, &v33);
    if (a5)
    {
      v21 = 1;
      if (at >= AbsoluteTime && v36 != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (at <= AbsoluteTime)
      {
LABEL_27:
        CFCalendarDecomposeAbsoluteTime(a1, at, "Ewy", &v36, &v35, &v33);
        v23 = v35;
        *(a4 + 9) = v36;
        v24 = v33;
        *(a4 + 12) = v23;
        *(a4 + 13) = v24;
        goto LABEL_28;
      }

      v21 = 0xFFFFFFFFLL;
    }

    CFCalendarAddComponents(a1, &at, 0, "w", at, v21);
    goto LABEL_27;
  }

  if (*a4)
  {
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "y", a6);
      v15 = at;
    }

    CFCalendarDecomposeAbsoluteTime(a1, v15, "dMy", &v37, &v34, &v33);
    v22 = v33;
    *(a4 + 1) = v34;
    *(a4 + 2) = v22;
    *a4 = v37;
  }

  else if (*(a4 + 1))
  {
    v27 = -1;
    v28 = -1;
    CFCalendarDecomposeAbsoluteTime(a1, AbsoluteTime, "My", &v28, &v27);
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "y", a6);
    }

    CFCalendarDecomposeAbsoluteTime(a1, at, "My", &v34, &v33);
    v25 = v33;
    *(a4 + 1) = v34;
    *(a4 + 2) = v25;
  }

  else if (*(a4 + 2))
  {
    if (a6)
    {
      CFCalendarAddComponents(a1, &at, 0, "y", a6);
      v15 = at;
    }

    CFCalendarDecomposeAbsoluteTime(a1, v15, "y", &v33);
    *(a4 + 2) = v33;
  }

LABEL_28:
  if (a5 && !a7 && at < AbsoluteTime)
  {
    resolveDateComponentsToDateWithOffset(a1, a2, a3, a4, a6 != 0, 1, 1);
  }
}

void NL::DateComponents::getFullFormat(NL::DateComponents *this@<X0>, __CFCalendar *a2@<X1>, const __CFDate *a3@<X2>, double *a4@<X3>, std::string *a5@<X8>)
{
  if (a2 && a4)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x4002000000;
    v53 = __Block_byref_object_copy__5;
    v54 = __Block_byref_object_dispose__5;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x4002000000;
    v46[3] = __Block_byref_object_copy__26_1;
    v46[4] = __Block_byref_object_dispose__27_1;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 0x40000000;
    v45[2] = ___ZNK2NL14DateComponents13getFullFormatEP12__CFCalendarPK8__CFDatePd_block_invoke;
    v45[3] = &unk_27873F988;
    v45[4] = &v50;
    v45[5] = v46;
    NL::DateComponents::enumerate(this, v45);
    CurrentTime = getCurrentTime(a3);
    v11 = v51;
    v12 = (v51 + 5);
    if (*(v51 + 63) < 0)
    {
      if (v51[6] != 1 || **v12 != 100)
      {
        if (v51[6] != 5 || (**v12 == 1296911716 ? (v18 = *(*v12 + 4) == 77) : (v18 = 0), !v18))
        {
          if (v51[6] == 6 && **v12 == 1296911716 && *(*v12 + 2) == 31053)
          {
            goto LABEL_51;
          }

          if (v51[6] == 10 && **v12 == 0x4545794D4D4D4D64 && *(*v12 + 4) == 17733)
          {
            goto LABEL_51;
          }

          if (v51[6] != 7)
          {
            goto LABEL_62;
          }

          v14 = *v12;
LABEL_31:
          v21 = *v14;
          v22 = *(v14 + 3);
          if (v21 == 1296911716 && v22 == 1215909197)
          {
LABEL_63:
            std::string::basic_string[abi:ne200100]<0>(v43, "EEEE");
            std::string::basic_string[abi:ne200100]<0>(__p, "");
            replaceAll((v11 + 5), v43, __p);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            v28 = v51;
            std::string::basic_string[abi:ne200100]<0>(v43, "d");
            std::string::basic_string[abi:ne200100]<0>(__p, "dEEEE");
            replaceAll((v28 + 5), v43, __p);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            v29 = v51;
            std::string::basic_string[abi:ne200100]<0>(v43, "H");
            std::string::basic_string[abi:ne200100]<0>(__p, "j");
            replaceAll((v29 + 5), v43, __p);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v43, "y");
            updateTimeForUnit(a2, a4, 4, v43, *(this + 2));
            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v43, "M");
            updateTimeForUnit(a2, a4, 8, v43, *(this + 1));
            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v43, "d");
            updateTimeForUnit(a2, a4, 16, v43, *this);
            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(v43, "H");
            updateTimeForUnit(a2, a4, 32, v43, *(this + 6));
            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            goto LABEL_87;
          }

LABEL_62:
          v27 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "dMMMMyHEEEE");
          v11 = v51;
          if (!v27)
          {
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "MMMM"))
            {
              CFCalendarComposeAbsoluteTime(a2, a4, "M", *(this + 1));
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "MMMMy"))
            {
              CFCalendarComposeAbsoluteTime(a2, a4, "My", *(this + 1), *(this + 2));
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "y"))
            {
              CFCalendarComposeAbsoluteTime(a2, a4, "y", *(this + 2));
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "EEEE"))
            {
              *a4 = CurrentTime;
              v43[0] = 0;
              CFCalendarDecomposeAbsoluteTime(a2, CurrentTime, "E", v43);
              CFCalendarAddComponents(a2, a4, 0, "E", -v43[0]);
              CFCalendarAddComponents(a2, a4, 0, "E", *(this + 9));
            }

            else
            {
              v31 = v51;
              std::string::basic_string[abi:ne200100]<0>(v43, "H");
              if (startswith(v31 + 40, v43))
              {
                v32 = v51;
                std::string::basic_string[abi:ne200100]<0>(__p, "EEEE");
                if (endswith(v32 + 5, __p))
                {
                  v33 = 1;
                }

                else
                {
                  v34 = v51;
                  std::string::basic_string[abi:ne200100]<0>(v39, "EEEEwY");
                  v33 = endswith(v34 + 5, v39);
                  if (v40 < 0)
                  {
                    operator delete(v39[0]);
                  }
                }

                if (v42 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v33 = 0;
              }

              if (v44 < 0)
              {
                operator delete(v43[0]);
              }

              if (v33)
              {
                *a4 = CurrentTime;
                v43[0] = 0;
                __p[0] = 0;
                v38 = 0;
                v39[0] = 0;
                CFCalendarDecomposeAbsoluteTime(a2, CurrentTime, "EHwy", v43, __p, v39, &v38);
                CFCalendarAddComponents(a2, a4, 0, "EH", -v43[0], -__p[0]);
                if (*(this + 12))
                {
                  CFCalendarAddComponents(a2, a4, 0, "w", -v39[0]);
                  CFCalendarAddComponents(a2, a4, 0, "w", *(this + 12));
                }

                v35 = *(this + 13);
                if (v35)
                {
                  CFCalendarAddComponents(a2, a4, 0, "y", v35 - v38);
                }

                CFCalendarAddComponents(a2, a4, 0, "EHms", *(this + 9), *(this + 6), *(this + 7), *(this + 8));
                MEMORY[0x2318C02F0](v51 + 5, "EEEEjm");
              }

              else
              {
                v36 = v51;
                std::string::basic_string[abi:ne200100]<0>(v43, "H");
                v37 = startswith(v36 + 40, v43);
                if (v44 < 0)
                {
                  operator delete(v43[0]);
                }

                if (v37)
                {
                  CFCalendarComposeAbsoluteTime(a2, a4, "Hms", *(this + 6), *(this + 7), *(this + 8));
                  MEMORY[0x2318C02F0](v51 + 5, "jm");
                }

                else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "wY"))
                {
                  MEMORY[0x2318C02F0](v51 + 5, "dMMMMy");
                  CFCalendarComposeAbsoluteTime(a2, a4, "wY", *(this + 12), *(this + 13));
                }

                else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51 + 5, "EEEEwY"))
                {
                  MEMORY[0x2318C02F0](v51 + 5, "dMMMMyEEEE");
                  CFCalendarComposeAbsoluteTime(a2, a4, "EwY", *(this + 9), *(this + 12), *(this + 13));
                }
              }
            }

            goto LABEL_87;
          }

          goto LABEL_63;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v13 = *(v51 + 63);
      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v15 = *(v51 + 22);
          v16 = *v12 == 1296911716;
          v17 = 31053;
          goto LABEL_46;
        }

        v14 = (v51 + 5);
        if (v13 != 7)
        {
          if (v13 != 10)
          {
            goto LABEL_62;
          }

          v15 = *(v51 + 24);
          v16 = *v12 == 0x4545794D4D4D4D64;
          v17 = 17733;
LABEL_46:
          if (!v16 || v15 != v17)
          {
            goto LABEL_62;
          }

LABEL_51:
          std::string::basic_string[abi:ne200100]<0>(v43, "EEEE");
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          replaceAll((v11 + 5), v43, __p);
          if (v42 < 0)
          {
            operator delete(__p[0]);
          }

          if (v44 < 0)
          {
            operator delete(v43[0]);
          }

          v26 = v51;
          std::string::basic_string[abi:ne200100]<0>(v43, "d");
          std::string::basic_string[abi:ne200100]<0>(__p, "dEEEE");
          replaceAll((v26 + 5), v43, __p);
          if (v42 < 0)
          {
            operator delete(__p[0]);
          }

          if (v44 < 0)
          {
            operator delete(v43[0]);
          }

          CFCalendarComposeAbsoluteTime(a2, a4, "dMy", *this, *(this + 1), *(this + 2));
          goto LABEL_87;
        }

        goto LABEL_31;
      }

      if (v13 != 1)
      {
        if (v13 != 5)
        {
          goto LABEL_62;
        }

        if (*v12 != 1296911716 || *(v51 + 44) != 77)
        {
          goto LABEL_62;
        }

LABEL_44:
        CFCalendarComposeAbsoluteTime(a2, a4, "dM", *this, *(this + 1));
LABEL_87:
        if (*(v51 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(a5, v51[5], v51[6]);
        }

        else
        {
          v30 = *(v51 + 5);
          a5->__r_.__value_.__r.__words[2] = v51[7];
          *&a5->__r_.__value_.__l.__data_ = v30;
        }

        _Block_object_dispose(v46, 8);
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        _Block_object_dispose(&v50, 8);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v55);
        }

        return;
      }

      if (*v12 != 100)
      {
        goto LABEL_62;
      }
    }

    CFCalendarComposeAbsoluteTime(a2, a4, "d", *this);
    goto LABEL_87;
  }

  std::string::basic_string[abi:ne200100]<0>(a5, 0);
}

void sub_22CD6A170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Block_object_dispose(&a38, 8);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Block_object_dispose((v44 - 144), 8);
  if (*(v44 - 81) < 0)
  {
    operator delete(*(v44 - 104));
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 __Block_byref_object_copy__26_1(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__27_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void NL::DateComponents::enumerate(unsigned int *a1, uint64_t a2)
{
  if (*a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "d");
    (*(a2 + 16))(a2, v22, *a1);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  if (a1[1])
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "MMMM");
    (*(a2 + 16))(a2, v20, a1[1]);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  if (a1[2])
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "y");
    (*(a2 + 16))(a2, v18, a1[2]);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (a1[6])
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "H");
    (*(a2 + 16))(a2, v16, a1[6]);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (a1[7])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "m");
    (*(a2 + 16))(a2, __p, a1[7]);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a1[8])
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "s");
    (*(a2 + 16))(a2, v12, a1[8]);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  if (a1[9])
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "EEEE");
    (*(a2 + 16))(a2, v10, a1[9]);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (a1[12])
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "w");
    (*(a2 + 16))(a2, v8, a1[12]);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  if (a1[11])
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "W");
    (*(a2 + 16))(a2, v6, a1[11]);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }
  }

  if (a1[13])
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "Y");
    (*(a2 + 16))(a2, v4, a1[13]);
    if (v5 < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_22CD6A598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK2NL14DateComponents13getFullFormatEP12__CFCalendarPK8__CFDatePd_block_invoke(uint64_t a1, const std::string::value_type *a2, int a3)
{
  v5 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  std::string::append((*(*(a1 + 32) + 8) + 40), a2, v6);
  v7 = *(*(a1 + 40) + 8);
  v9 = v7[6];
  v8 = v7[7];
  if (v9 >= v8)
  {
    v11 = v7[5];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>((v7 + 5), v17);
    }

    v18 = (v9 - v11) >> 2;
    v19 = (4 * v13);
    v20 = (4 * v13 - 4 * v18);
    *v19 = a3;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = v7[5];
    v7[5] = v20;
    v7[6] = v10;
    v7[7] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a3;
    v10 = v9 + 4;
  }

  v7[6] = v10;
}

uint64_t updateTimeForUnit(__CFCalendar *a1, CFAbsoluteTime *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 63)
  {
    if (a3 > 511)
    {
      if (a3 != 512)
      {
        if (a3 != 0x2000 && a3 != 0x4000)
        {
          return resetTimeForUnit(a1, a2, a4, a5);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "w");
        resetTimeForUnit(a1, a2, __p, 1);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "H");
        resetTimeForUnit(a1, a2, __p, 0);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "m");
        resetTimeForUnit(a1, a2, __p, 0);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "s");
        resetTimeForUnit(a1, a2, __p, 0);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "E");
      resetTimeForUnit(a1, a2, __p, 1);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "H");
      resetTimeForUnit(a1, a2, __p, 0);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "m");
      resetTimeForUnit(a1, a2, __p, 0);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_45;
    }

    if (a3 != 64)
    {
      if (a3 != 128)
      {
        return resetTimeForUnit(a1, a2, a4, a5);
      }

      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a3 > 15)
  {
    if (a3 == 16)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "d");
      resetTimeForUnit(a1, a2, __p, 1);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (a3 != 32)
    {
      return resetTimeForUnit(a1, a2, a4, a5);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "H");
    resetTimeForUnit(a1, a2, __p, 0);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_43:
    std::string::basic_string[abi:ne200100]<0>(__p, "m");
    resetTimeForUnit(a1, a2, __p, 0);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_45;
  }

  if (a3 != 4 && a3 != 8)
  {
    return resetTimeForUnit(a1, a2, a4, a5);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "M");
  resetTimeForUnit(a1, a2, __p, 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "d");
  resetTimeForUnit(a1, a2, __p, 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "H");
  resetTimeForUnit(a1, a2, __p, 0);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "m");
  resetTimeForUnit(a1, a2, __p, 0);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_45:
  std::string::basic_string[abi:ne200100]<0>(__p, "s");
  resetTimeForUnit(a1, a2, __p, 0);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return resetTimeForUnit(a1, a2, a4, a5);
}

void sub_22CD6AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::DateComponents::getShortFormat(NL::DateComponents *this@<X0>, __CFCalendar *a2@<X1>, const __CFDate *a3@<X2>, double *a4@<X3>, std::string *a5@<X8>)
{
  if (a2 && a4)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x4002000000;
    v34 = __Block_byref_object_copy__5;
    v35 = __Block_byref_object_dispose__5;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 0x40000000;
    v30[2] = ___ZNK2NL14DateComponents14getShortFormatEP12__CFCalendarPK8__CFDatePd_block_invoke;
    v30[3] = &unk_278740058;
    v30[4] = &v31;
    NL::DateComponents::enumerate(this, v30);
    getCurrentDateComponents(a2, a3, v29);
    *a4 = NL::DateComponents::getAbsoluteTime(v29, a2, a3);
    v10 = v32 + 5;
    v11 = *(v32 + 63);
    if (*(v32 + 63) < 0)
    {
      if (v32[6] == 1 && **v10 == 100)
      {
        goto LABEL_42;
      }

      if (v32[6] == 1 && **v10 == 77)
      {
        goto LABEL_55;
      }

      if (v32[6] != 1 || **v10 != 121)
      {
        if (v32[6] != 2)
        {
          goto LABEL_33;
        }

        if (**v10 == 19812)
        {
          goto LABEL_30;
        }

        if ((v11 & 0x80) != 0)
        {
LABEL_33:
          if (v32[6] != 2)
          {
            goto LABEL_36;
          }

          v12 = *v10;
          goto LABEL_35;
        }

        v12 = v32 + 5;
        if (v11 == 2)
        {
LABEL_35:
          if (*v12 != 31053)
          {
            goto LABEL_36;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "y");
          updateTimeForUnit(a2, a4, 4, __p, *(this + 2));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_55:
          std::string::basic_string[abi:ne200100]<0>(__p, "M");
          updateTimeForUnit(a2, a4, 8, __p, *(this + 1));
          goto LABEL_43;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_36;
        }

        v12 = v32 + 5;
        if (*v10 == 19812)
        {
LABEL_30:
          std::string::basic_string[abi:ne200100]<0>(__p, "M");
          updateTimeForUnit(a2, a4, 8, __p, *(this + 1));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_42;
        }

        goto LABEL_35;
      }

      v13 = *v10;
      if (v13 == 77)
      {
        goto LABEL_55;
      }

      if (v13 != 121)
      {
        if (v13 == 100)
        {
LABEL_42:
          std::string::basic_string[abi:ne200100]<0>(__p, "d");
          updateTimeForUnit(a2, a4, 16, __p, *this);
          goto LABEL_43;
        }

LABEL_36:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, "dMy") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "dMyE"))
        {
          MEMORY[0x2318C02F0](v32 + 5, "dMy");
          std::string::basic_string[abi:ne200100]<0>(__p, "y");
          updateTimeForUnit(a2, a4, 4, __p, *(this + 2));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "M");
          updateTimeForUnit(a2, a4, 8, __p, *(this + 1));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_42;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "E"))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "E");
          updateTimeForUnit(a2, a4, 512, __p, *(this + 9));
          goto LABEL_43;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "HE"))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "E");
          updateTimeForUnit(a2, a4, 512, __p, *(this + 9));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "H");
          updateTimeForUnit(a2, a4, 32, __p, *(this + 6));
          goto LABEL_43;
        }

        v15 = v32;
        std::string::basic_string[abi:ne200100]<0>(__p, "H");
        if (startswith(v15 + 40, __p))
        {
          v16 = 1;
        }

        else
        {
          v17 = v32;
          std::string::basic_string[abi:ne200100]<0>(v25, "m");
          if (startswith(v17 + 40, v25))
          {
            v16 = 1;
          }

          else
          {
            v18 = v32;
            std::string::basic_string[abi:ne200100]<0>(v23, "s");
            v16 = startswith(v18 + 40, v23);
            if (v24 < 0)
            {
              operator delete(v23[0]);
            }
          }

          if (v26 < 0)
          {
            operator delete(v25[0]);
          }
        }

        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        v19 = v32;
        if (v16)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "s");
          v20 = endswith(v19 + 5, __p);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          if (v20)
          {
            v21 = "Hms";
          }

          else
          {
            v21 = "Hma";
          }

          MEMORY[0x2318C02F0](v32 + 5, v21);
          std::string::basic_string[abi:ne200100]<0>(__p, "h");
          updateTimeForUnit(a2, a4, 32, __p, *(this + 6));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "m");
          updateTimeForUnit(a2, a4, 64, __p, *(this + 7));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "s");
          updateTimeForUnit(a2, a4, 128, __p, *(this + 8));
          goto LABEL_43;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "dMyH");
        if (startswith(v19 + 40, __p))
        {
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_87:
          MEMORY[0x2318C02F0](v32 + 5, "dMyjm");
          std::string::basic_string[abi:ne200100]<0>(__p, "y");
          updateTimeForUnit(a2, a4, 4, __p, *(this + 2));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "M");
          updateTimeForUnit(a2, a4, 8, __p, *(this + 1));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "d");
          updateTimeForUnit(a2, a4, 16, __p, *this);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "H");
          updateTimeForUnit(a2, a4, 32, __p, *(this + 6));
          goto LABEL_43;
        }

        v22 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "dMyHE");
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (v22)
        {
          goto LABEL_87;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "w"))
        {
          MEMORY[0x2318C02F0](v32 + 5, "dMy");
          std::string::basic_string[abi:ne200100]<0>(__p, "w");
          updateTimeForUnit(a2, a4, 0x2000, __p, *(this + 12));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "wY"))
        {
          MEMORY[0x2318C02F0](v32 + 5, "dMy");
          std::string::basic_string[abi:ne200100]<0>(__p, "Y");
          updateTimeForUnit(a2, a4, 0x4000, __p, *(this + 13));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "w");
          updateTimeForUnit(a2, a4, 0x2000, __p, *(this + 12));
        }

        else
        {
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32 + 5, "EwY"))
          {
LABEL_45:
            if (*(v32 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(a5, v32[5], v32[6]);
            }

            else
            {
              v14 = *(v32 + 5);
              a5->__r_.__value_.__r.__words[2] = v32[7];
              *&a5->__r_.__value_.__l.__data_ = v14;
            }

            _Block_object_dispose(&v31, 8);
            if (SHIBYTE(v38) < 0)
            {
              operator delete(v36);
            }

            return;
          }

          MEMORY[0x2318C02F0](v32 + 5, "dMy");
          std::string::basic_string[abi:ne200100]<0>(__p, "Y");
          updateTimeForUnit(a2, a4, 0x4000, __p, *(this + 13));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "w");
          updateTimeForUnit(a2, a4, 0x2000, __p, *(this + 12));
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "E");
          updateTimeForUnit(a2, a4, 512, __p, *(this + 9));
        }

LABEL_43:
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_45;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "y");
    updateTimeForUnit(a2, a4, 4, __p, *(this + 2));
    goto LABEL_43;
  }

  std::string::basic_string[abi:ne200100]<0>(a5, 0);
}

void sub_22CD6B600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v26 - 128), 8);
  if (*(v26 - 65) < 0)
  {
    operator delete(*(v26 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZNK2NL14DateComponents14getShortFormatEP12__CFCalendarPK8__CFDatePd_block_invoke(uint64_t a1, std::string::value_type *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  std::string::push_back((*(*(a1 + 32) + 8) + 40), *a2);
}

void NL::DatePeriod::setCalendarWithIdentifier(const void **this, const __CFString *a2)
{
  nlp::CFScopedPtr<__CFCalendar *>::reset(this + 1, 0);
  if (a2)
  {
    v4 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], a2);

    nlp::CFScopedPtr<__CFCalendar *>::reset(this + 1, v4);
  }
}

void NL::DatePeriod::setDisplayKey(const void **this, const __CFString *a2)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFString const*>::reset(this, v4);
  }
}

void NL::DatePeriod::setCurrentDate(const void **this, const __CFDate *a2)
{
  nlp::CFScopedPtr<__CFDate const*>::reset(this + 28, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFDate const*>::reset(this + 28, v4);
  }
}

void NL::DatePeriod::setLocale(const void **this, const __CFLocale *a2)
{
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 2, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFLocale const*>::reset(this + 2, v4);
  }
}

BOOL NL::DatePeriod::updateAmbiguousDateComponents(NL::DatePeriod *this, NL::DateComponents *a2, NL::DateComponents *a3)
{
  result = NL::DateComponents::isTime(a2);
  if (result)
  {
    v6 = *(a2 + 6);
    if (v6)
    {
      if (v6 <= 8)
      {
        *(a2 + 6) = v6 + 12;
      }

      result = NL::DateComponents::isTime(a3);
      if (result)
      {
        v7 = *(a3 + 6);
        if (v7)
        {
          if (v7 <= 8)
          {
            *(a3 + 6) = v7 + 12;
          }
        }
      }
    }
  }

  return result;
}

double NL::DatePeriod::resolveDateComponents(NL::DatePeriod *this, NL::DateComponents *a2, NL::DateComponents *a3, int a4, int a5)
{
  v7 = *(this + 44);
  v27 = *(this + 28);
  v28 = v7;
  v8 = *(this + 76);
  v29 = *(this + 60);
  v30 = v8;
  v9 = *(this + 108);
  v23 = *(this + 92);
  v24 = v9;
  v10 = *(this + 140);
  v25 = *(this + 124);
  v26 = v10;
  if (*(this + 6) > 0x28u)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    NL::DatePeriod::updateAmbiguousDateComponents(this, &v27, &v23);
  }

  if (NL::DateComponents::isEmpty(&v23))
  {
    if (a4 != 7)
    {
      if (a4 == 5)
      {
        v13 = *(this + 1);
        v14 = *(this + 2);
        v15 = *(this + 28);
        v16 = &v27;
        v17 = 1;
        goto LABEL_15;
      }

      if (a4 == 4)
      {
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = *(this + 1);
        v14 = *(this + 2);
        v15 = *(this + 28);
        v16 = &v23;
        v17 = -1;
LABEL_15:
        updateDateComponentsWithOffset(v13, v14, v15, v16, v17);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_12:
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_16;
  }

  if ((a4 - 5) < 2)
  {
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_16;
  }

  if (a4 == 7 || a4 == 4)
  {
    goto LABEL_12;
  }

LABEL_16:
  v18 = v28;
  *a2 = v27;
  *(a2 + 1) = v18;
  v19 = v30;
  *(a2 + 2) = v29;
  *(a2 + 3) = v19;
  v20 = v24;
  *a3 = v23;
  *(a3 + 1) = v20;
  result = *&v25;
  v22 = v26;
  *(a3 + 2) = v25;
  *(a3 + 3) = v22;
  return result;
}

unint64_t updateDateComponentsWithOffset(__CFCalendar *a1, const __CFLocale *a2, const __CFDate *a3, NL::DateComponents *a4, int a5)
{
  memset(v6, 0, sizeof(v6));
  if (*(a4 + 8))
  {
    memset(v6, 0, 32);
    LODWORD(v6[2]) = a5;
    memset(&v6[2] + 4, 0, 24);
LABEL_3:
    HIDWORD(v6[3]) = 0;
    return updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v6);
  }

  if (*(a4 + 7))
  {
    memset(v6, 0, 28);
    HIDWORD(v6[1]) = a5;
    memset(&v6[2], 0, 32);
    return updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v6);
  }

  if (*(a4 + 6))
  {
    memset(v6, 0, 24);
    DWORD2(v6[1]) = a5;
LABEL_9:
    *(&v6[1] + 12) = 0uLL;
    *(&v6[2] + 12) = 0uLL;
    goto LABEL_3;
  }

  if (*(a4 + 9))
  {
    memset(v6, 0, 36);
    DWORD1(v6[2]) = a5;
    memset(&v6[2] + 8, 0, 24);
    return updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v6);
  }

  if (*a4)
  {
    LODWORD(v6[0]) = a5;
    *(v6 + 4) = 0uLL;
    *(&v6[1] + 4) = 0uLL;
    *(&v6[2] + 4) = 0uLL;
    v6[3] = 0uLL;
    return updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v6);
  }

  if (*(a4 + 1))
  {
    DWORD1(v6[0]) = a5;
    *(v6 + 8) = 0uLL;
    *(&v6[1] + 8) = 0uLL;
    *(&v6[2] + 8) = 0uLL;
    *(&v6[3] + 1) = 0;
    return updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v6);
  }

  if (*(a4 + 2))
  {
    DWORD2(v6[0]) = a5;
    *(v6 + 12) = 0uLL;
    goto LABEL_9;
  }

  if (*(a4 + 12))
  {
    memset(v6, 0, 48);
    LODWORD(v6[3]) = a5;
    *(&v6[3] + 4) = 0;
    goto LABEL_3;
  }

  if (*(a4 + 13))
  {
    memset(v6, 0, 52);
    DWORD1(v6[3]) = a5;
  }

  return updateDateComponentsWithOffsetComponents(a1, a2, a3, a4, v6);
}

double NL::DatePeriod::resolveDateComponentsAsRange(NL::DatePeriod *this, NL::DateComponents *a2, NL::DateComponents *a3, int a4)
{
  v8 = *(this + 44);
  v22 = *(this + 28);
  v23 = v8;
  v9 = *(this + 76);
  v24 = *(this + 60);
  v25 = v9;
  v10 = *(this + 108);
  v18 = *(this + 92);
  v19 = v10;
  v11 = *(this + 140);
  v20 = *(this + 124);
  v21 = v11;
  if (!NL::DateComponents::isEmpty(&v18))
  {
    if (a4 != 7)
    {
      if (a4 == 6)
      {
        v12 = &v18;
        goto LABEL_14;
      }

      if (a4 != 4)
      {
LABEL_15:
        updateDateComponentsWithOffset(*(this + 1), *(this + 2), *(this + 28), &v18, 1);
        goto LABEL_16;
      }
    }

    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
    v12 = &v22;
LABEL_14:
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    goto LABEL_15;
  }

  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  updateDateComponentsWithOffset(*(this + 1), *(this + 2), *(this + 28), &v18, 1);
  if (a4 <= 5)
  {
    if (a4 == 4)
    {
      v18 = v22;
      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
    }

    else if (a4 == 5)
    {
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    goto LABEL_16;
  }

  if (a4 == 6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_16;
  }

  if (a4 == 7)
  {
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_15;
  }

LABEL_16:
  v13 = v23;
  *a2 = v22;
  *(a2 + 1) = v13;
  v14 = v25;
  *(a2 + 2) = v24;
  *(a2 + 3) = v14;
  v15 = v19;
  *a3 = v18;
  *(a3 + 1) = v15;
  result = *&v20;
  v17 = v21;
  *(a3 + 2) = v20;
  *(a3 + 3) = v17;
  return result;
}

void *NL::DateConverter::DateConverter(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void NL::DateConverter::datePeriodForValues(CFStringRef theString@<X1>, const __CFDictionary *a2@<X2>, void *a3@<X8>)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a2)
    {
      if (Length)
      {
        operator new();
      }
    }
  }

  *a3 = 0;
}

uint64_t NL::DateConverter::updatePeriodForCalendarTime(const __CFDictionary ***this, const __CFLocale *a2, CFDictionaryRef theDict, const __CFString *a4, NL::DatePeriod *a5)
{
  Value = 0;
  if (a2)
  {
    if (theDict)
    {
      if (a4)
      {
        Value = CFDictionaryGetValue(theDict, @"CalendarSystem");
        if (Value)
        {
          v11 = copyCurrentCalendar(a2);
          v37[1] = v11;
          if (v11)
          {
            v12 = v11;
            v13 = MEMORY[0x2318BF5E0]();
            if (!CFStringHasPrefix(Value, @"generic") && CFStringFind(Value, v13, 0).location == -1)
            {
              Value = 0;
LABEL_46:
              CFRelease(v12);
              return Value;
            }

            v37[0] = 0;
            v14 = CFLocaleGetValue(a2, *MEMORY[0x277CBEED0]);
            v28 = v13;
            v15 = CFLocaleGetValue(a2, *MEMORY[0x277CBEE98]);
            v16 = CFLocaleGetValue(a2, *MEMORY[0x277CBEED8]);
            if (!NL::ParserContext::regionValidForLanguage(*this, v14, v16, v15))
            {
              v15 = NL::ParserContext::canonicalRegionForLanguage(*this, v14, v16);
            }

            if (v14)
            {
              v17 = v16 == 0;
            }

            else
            {
              v17 = 1;
            }

            v18 = !v17;
            if (!v17 && v15)
            {
              v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@_%@_%@", a4, Value, v14, v16, v15);
              goto LABEL_23;
            }

            if (v14 && v15)
            {
              v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@_%@", a4, Value, v14, v15);
LABEL_23:
              v37[0] = v19;
              if (!v19)
              {
                goto LABEL_43;
              }

LABEL_32:
              v21 = CFDictionaryGetValue(theDict, v19);
              if (v21)
              {
                v35 = 0u;
                v36 = 0u;
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                v22 = this[1];
                if (v22)
                {
                  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                Value = updateDateComponentsWithValues(&v33, a2, v21, 0);
                if (v22)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                }

                if (Value)
                {
                  v23 = v34;
                  *(a5 + 28) = v33;
                  *(a5 + 44) = v23;
                  v24 = v36;
                  *(a5 + 60) = v35;
                  *(a5 + 76) = v24;
                  v25 = v30;
                  *(a5 + 92) = v29;
                  *(a5 + 108) = v25;
                  v26 = v32;
                  *(a5 + 124) = v31;
                  *(a5 + 140) = v26;
                  if (NL::DateComponents::isTime(&v33) && NL::DateComponents::isEmpty(&v29) && !CFDictionaryContainsKey(v21, @"a"))
                  {
                    *(a5 + 240) = 1;
                  }

                  NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
                  *(a5 + 6) = 39;
                  NL::DatePeriod::setCalendarWithIdentifier(a5, v28);
                }

                goto LABEL_44;
              }

LABEL_43:
              Value = 0;
LABEL_44:
              if (v37[0])
              {
                CFRelease(v37[0]);
              }

              goto LABEL_46;
            }

            if (v18)
            {
              v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@_%@", a4, Value, v14, v16);
            }

            else
            {
              if (!v14)
              {
                goto LABEL_31;
              }

              v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@", a4, Value, v14);
            }

            nlp::CFScopedPtr<__CFString const*>::reset(v37, v20);
LABEL_31:
            v19 = v37[0];
            if (!v37[0])
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          }

          return 0;
        }
      }
    }
  }

  return Value;
}

void sub_22CD6C634(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v2 - 104), 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset((v2 - 96), 0);
  _Unwind_Resume(a1);
}

uint64_t NL::DateConverter::updatePeriodForCalendarDate(const __CFDictionary ***this, const __CFLocale *a2, CFDictionaryRef theDict, const __CFString *a4, NL::DatePeriod *a5)
{
  Value = 0;
  if (a2)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"CalendarSystem");
      if (Value)
      {
        v11 = copyCurrentCalendar(a2);
        v37[1] = v11;
        if (v11)
        {
          v12 = v11;
          v13 = MEMORY[0x2318BF5E0]();
          if (!CFStringHasPrefix(Value, @"generic") && CFStringFind(Value, v13, 0).location == -1)
          {
            Value = 0;
LABEL_45:
            CFRelease(v12);
            return Value;
          }

          v37[0] = 0;
          v14 = CFLocaleGetValue(a2, *MEMORY[0x277CBEED0]);
          v28 = v13;
          v15 = CFLocaleGetValue(a2, *MEMORY[0x277CBEE98]);
          v16 = CFLocaleGetValue(a2, *MEMORY[0x277CBEED8]);
          if (!NL::ParserContext::regionValidForLanguage(*this, v14, v16, v15))
          {
            v15 = NL::ParserContext::canonicalRegionForLanguage(*this, v14, v16);
          }

          if (v14)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          if (!v17 && v15)
          {
            v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@_%@_%@", a4, Value, v14, v16, v15);
            goto LABEL_22;
          }

          if (v14 && v15)
          {
            v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@_%@", a4, Value, v14, v15);
LABEL_22:
            v37[0] = v19;
            if (!v19)
            {
              goto LABEL_42;
            }

LABEL_31:
            v21 = CFDictionaryGetValue(theDict, v19);
            if (v21)
            {
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v22 = this[1];
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              Value = updateDateComponentsWithValues(&v33, a2, v21, 0);
              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

              if (Value)
              {
                v23 = v34;
                *(a5 + 28) = v33;
                *(a5 + 44) = v23;
                v24 = v36;
                *(a5 + 60) = v35;
                *(a5 + 76) = v24;
                v25 = v30;
                *(a5 + 92) = v29;
                *(a5 + 108) = v25;
                v26 = v32;
                *(a5 + 124) = v31;
                *(a5 + 140) = v26;
                if (NL::DateComponents::isTime(&v33) && NL::DateComponents::isEmpty(&v29) && !CFDictionaryContainsKey(v21, @"a"))
                {
                  *(a5 + 240) = 1;
                }

                NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
                *(a5 + 6) = 38;
                NL::DatePeriod::setCalendarWithIdentifier(a5, v28);
              }

              goto LABEL_43;
            }

LABEL_42:
            Value = 0;
LABEL_43:
            if (v37[0])
            {
              CFRelease(v37[0]);
            }

            goto LABEL_45;
          }

          if (v18)
          {
            v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@_%@", a4, Value, v14, v16);
          }

          else
          {
            if (!v14)
            {
              goto LABEL_30;
            }

            v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@_%@_%@", a4, Value, v14);
          }

          nlp::CFScopedPtr<__CFString const*>::reset(v37, v20);
LABEL_30:
          v19 = v37[0];
          if (!v37[0])
          {
            goto LABEL_42;
          }

          goto LABEL_31;
        }

        return 0;
      }
    }
  }

  return Value;
}

void sub_22CD6C9F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v2 - 104), 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset((v2 - 96), 0);
  _Unwind_Resume(a1);
}

uint64_t NL::DateConverter::updatePeriodForFormattedDate(NL::DateConverter *this, const __CFLocale *a2, CFDictionaryRef theDict, NL::DatePeriod *a4)
{
  updated = 0;
  if (a2 && theDict)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = *(this + 1);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    updated = updateDateComponentsWithValues(&v17, a2, theDict, 0);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (updated)
    {
      v8 = v18;
      *(a4 + 28) = v17;
      *(a4 + 44) = v8;
      v9 = v20;
      *(a4 + 60) = v19;
      *(a4 + 76) = v9;
      v10 = v14;
      *(a4 + 92) = v13;
      *(a4 + 108) = v10;
      v11 = v16;
      *(a4 + 124) = v15;
      *(a4 + 140) = v11;
      if (NL::DateComponents::isTime(&v17) && NL::DateComponents::isEmpty(&v13) && !CFDictionaryContainsKey(theDict, @"a"))
      {
        *(a4 + 240) = 1;
      }

      NL::DatePeriod::setDisplayKey(a4, @"FORMATTED");
      *(a4 + 6) = 38;
      NL::DatePeriod::setCalendarWithIdentifier(a4, @"gregorian");
    }
  }

  return updated;
}

void sub_22CD6CB6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::DateConverter::updatePeriodForHolidayCompoundDate(uint64_t **this, const __CFLocale *a2, CFDictionaryRef theDict, NL::DatePeriod *a4)
{
  result = 0;
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (theDict)
    {
      result = CFDictionaryContainsKey(theDict, @"HolidayDate");
      if (result)
      {
        Count = CFDictionaryGetCount(theDict);
        v21[1] = v21;
        MEMORY[0x28223BE20]();
        v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v10 >= 0x200)
        {
          v12 = 512;
        }

        else
        {
          v12 = v10;
        }

        bzero(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        CFDictionaryGetKeysAndValues(theDict, v11, 0);
        if (Count >= 1)
        {
          do
          {
            v13 = *v11;
            if (!CFStringHasPrefix(*v11, @"HolidayDate"))
            {
              if (CFStringHasPrefix(v13, @"Relative"))
              {
                NL::DateConverter::updatePeriodForRelativeDate(this, v13, a2, a4);
              }

              else if (CFStringHasSuffix(v13, @"Date"))
              {
                Value = CFDictionaryGetValue(theDict, v13);
                if (Value && (NL::DateConverter::updatePeriodForValueDate(this, v13, a2, Value, a4) & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                v24 = 0u;
                v25 = 0u;
                v22 = 0u;
                v23 = 0u;
                v15 = this[1];
                if (v15)
                {
                  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                updated = updateDateComponentsWithValues(&v22, a2, theDict, 0);
                if (v15)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                }

                if ((updated & 1) == 0)
                {
LABEL_26:
                  result = 0;
                  goto LABEL_25;
                }

                v17 = v23;
                *(a4 + 28) = v22;
                *(a4 + 44) = v17;
                v18 = v25;
                *(a4 + 60) = v24;
                *(a4 + 76) = v18;
                *(a4 + 92) = 0u;
                *(a4 + 108) = 0u;
                *(a4 + 124) = 0u;
                *(a4 + 140) = 0u;
              }
            }

            ++v11;
            --Count;
          }

          while (Count);
        }

        v19 = CFDictionaryGetValue(theDict, @"HolidayDate");
        result = NL::DateConverter::updatePeriodForHolidayDate(this, a2, v19, a4);
        if (result)
        {
          NL::DatePeriod::setDisplayKey(a4, @"HOLIDAY");
          result = 1;
        }
      }
    }
  }

LABEL_25:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CD6CDF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::DateConverter::updatePeriodForHolidayRelativeDate(const __CFDate ***this, const __CFLocale *a2, CFDictionaryRef theDict, const __CFString *a4, NL::DatePeriod *a5)
{
  updated = 0;
  if (!theDict || !a2 || !a4)
  {
    return updated;
  }

  if (!CFDictionaryContainsKey(theDict, @"HolidayDate"))
  {
    return 0;
  }

  v11 = copyCurrentCalendar(a2);
  v16 = v11;
  getCurrentDateComponents(v11, **this, &v15);
  if (!CFStringHasSuffix(a4, @"ThisDate"))
  {
    if (CFStringHasSuffix(a4, @"LastDate"))
    {
      v12 = DWORD2(v15) - 1;
      goto LABEL_10;
    }

    if (!CFStringHasSuffix(a4, @"EveryDate"))
    {
      if (CFStringHasSuffix(a4, @"NextDate"))
      {
        v12 = DWORD2(v15) + 1;
      }

      else
      {
        CFStringHasSuffix(a4, @"AnyDate");
        v12 = 0;
      }

      goto LABEL_10;
    }
  }

  v12 = DWORD2(v15);
LABEL_10:
  *(a5 + 28) = 0;
  *(a5 + 9) = v12;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 22) = 0;
  Value = CFDictionaryGetValue(theDict, @"HolidayDate");
  updated = NL::DateConverter::updatePeriodForHolidayDate(this, a2, Value, a5);
  if (updated)
  {
    NL::DatePeriod::setDisplayKey(a5, @"HOLIDAY");
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return updated;
}

void sub_22CD6CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::DateConverter::updatePeriodForHolidayDate(const __CFDate ***this, const __CFLocale *a2, const __CFDictionary *a3, NL::DatePeriod *a4)
{
  updated = 0;
  if (a2 && a3)
  {
    v7 = (*this)[3];
    if (v7 && CFDictionaryGetCount(v7) && (Value = CFDictionaryGetValue(a3, @"Identifier"), v11 = CFDictionaryGetValue(a3, @"CalendarSystem"), v11 | Value) && (v12 = v11, v13 = copyCurrentCalendar(a2), (v36 = v13) != 0))
    {
      v14 = v13;
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v12);
      v35 = MutableCopy;
      CFStringUppercase(MutableCopy, 0);
      CFStringAppendFormat(MutableCopy, 0, @"-%@-HOLIDAY", Value);
      v16 = *(a4 + 44);
      v31 = *(a4 + 28);
      v32 = v16;
      v17 = *(a4 + 76);
      v33 = *(a4 + 60);
      v34 = v17;
      v18 = *(a4 + 108);
      v27 = *(a4 + 92);
      v28 = v18;
      v19 = *(a4 + 140);
      v29 = *(a4 + 124);
      v30 = v19;
      if (NL::DateComponents::isEmpty(&v31))
      {
        getCurrentDateComponents(v14, **this, &v26);
        v20 = DWORD2(v26);
        DWORD2(v31) = DWORD2(v26);
      }

      else
      {
        v20 = DWORD2(v31);
      }

      updated = updateDateComponentsWithHolidayReference((*this)[3], MutableCopy, v14, **this, (*this)[1], v20, &v31, &v27);
      if (updated)
      {
        NL::DatePeriod::setDisplayKey(a4, MutableCopy);
        *(a4 + 6) = 40;
        NL::DatePeriod::setCalendarWithIdentifier(a4, @"gregorian");
        v22 = v32;
        *(a4 + 28) = v31;
        *(a4 + 44) = v22;
        v23 = v34;
        *(a4 + 60) = v33;
        *(a4 + 76) = v23;
        v24 = v28;
        *(a4 + 92) = v27;
        *(a4 + 108) = v24;
        v25 = v30;
        *(a4 + 124) = v29;
        *(a4 + 140) = v25;
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      CFRelease(v14);
    }

    else
    {
      return 0;
    }
  }

  return updated;
}

void sub_22CD6D19C(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString *>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

BOOL NL::DateConverter::updatePeriodForValueCompoundDate(NL::DateConverter *this, const __CFLocale *a2, CFDictionaryRef theDict, NL::DatePeriod *a4)
{
  result = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (a2 && theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v20[1] = v20;
    MEMORY[0x28223BE20]();
    v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v10 >= 0x200)
    {
      v12 = 512;
    }

    else
    {
      v12 = v10;
    }

    bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    CFDictionaryGetKeysAndValues(theDict, v11, 0);
    if (Count >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *v11;
        if (!CFStringHasSuffix(*v11, @"Date"))
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v15 = *(this + 1);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          updateDateComponentsWithValues(&v21, a2, theDict, 0);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          v16 = v22;
          *(a4 + 28) = v21;
          *(a4 + 44) = v16;
          v17 = v24;
          *(a4 + 60) = v23;
          *(a4 + 76) = v17;
          *(a4 + 92) = 0u;
          *(a4 + 108) = 0u;
          *(a4 + 124) = 0u;
          v14 = v13;
          *(a4 + 140) = 0u;
        }

        ++v11;
        v13 = v14;
        --Count;
      }

      while (Count);
      if (v14)
      {
        if (CFStringHasPrefix(v14, @"Relative"))
        {
          result = NL::DateConverter::updatePeriodForRelativeDate(this, v14, a2, a4);
          if (!result)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        Value = CFDictionaryGetValue(theDict, v14);
        if (NL::DateConverter::updatePeriodForValueDate(this, v14, a2, Value, a4))
        {
LABEL_20:
          NL::DatePeriod::setDisplayKey(a4, @"FORMATTED");
          *(a4 + 6) = 38;
          result = 1;
          goto LABEL_22;
        }
      }
    }

    result = 0;
  }

LABEL_22:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CD6D3F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL NL::DateConverter::updatePeriodForRelativeCompoundDate(NL::DateConverter *this, CFStringRef theString, const __CFLocale *a3, const __CFDictionary *a4, NL::DatePeriod *a5)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (!a3 || !Length)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = *(this + 1);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updateDateComponentsWithValues(&v15, a3, a4, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = v16;
  *(a5 + 28) = v15;
  *(a5 + 44) = v12;
  v13 = v18;
  *(a5 + 60) = v17;
  *(a5 + 76) = v13;
  *(a5 + 92) = 0u;
  *(a5 + 108) = 0u;
  *(a5 + 124) = 0u;
  *(a5 + 140) = 0u;

  return NL::DateConverter::updatePeriodForRelativeDate(this, theString, a3, a5);
}

void sub_22CD6D51C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NL::DateConverter::updatePeriodForOrdinalNumDate(uint64_t **this, const __CFString *a2, const __CFLocale *a3, const __CFDictionary *a4, NL::DatePeriod *a5)
{
  v5 = 0;
  if (a2 && a3 && a4)
  {
    v76 = 0;
    v75 = 0;
    v73 = 0;
    v74 = 0;
    v11 = *(a5 + 44);
    v69 = *(a5 + 28);
    v70 = v11;
    v12 = *(a5 + 76);
    v71 = *(a5 + 60);
    v72 = v12;
    v13 = *(a5 + 108);
    v66 = *(a5 + 92);
    v67 = v13;
    v14 = *(a5 + 32);
    v68 = *(a5 + 31);
    v65 = *(a5 + 148);
    v64 = *(a5 + 132);
    v63 = -1;
    v61 = -1;
    v62 = -1;
    v59 = -1;
    v60 = -1;
    v57 = -1;
    v58 = -1;
    v15 = copyCurrentCalendar(a3);
    *&at[1] = v15;
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x2318BF5E0]();
      v54 = v14;
      CurrentTime = getCurrentTime(**this);
      at[0] = CurrentTime;
      v19 = *(*this + 66);
      v20 = intValueForNumberInValues(a3, a4);
      CFCalendarDecomposeAbsoluteTime(v16, CurrentTime, "yMdEwHms", &v63 + 4, &v63, &v62, &v61, &v60, &v59, &v58, &v57);
      if (CFStringHasSuffix(a2, @"EveryNumIsoDayPerMonthDate"))
      {
        v21 = this[1];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        updated = updateDateComponentsWithValues(&v69, a3, a4, 1);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if (updated)
        {
          v53 = v17;
          v5 = 0;
          if (v20 > 5 || (DWORD1(v71) & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          if (v20 == 2)
          {
            v23 = @"2_ORDINAL_ANY:FORMATTED";
          }

          else
          {
            if (v20 != 3)
            {
              v55 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_ORDINAL_ANY:FORMATTED", v20);
              NL::DatePeriod::setDisplayKey(a5, v55);
              nlp::CFScopedPtr<__CFString const*>::reset(&v55, 0);
              goto LABEL_40;
            }

            v23 = @"3_ORDINAL_ANY:FORMATTED";
          }

          NL::DatePeriod::setDisplayKey(a5, v23);
LABEL_40:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v37 = 0;
          v34 = 0;
          v36 = 0;
          *(a5 + 6) = 47;
          DWORD2(v71) = v20;
          v35 = v20;
LABEL_41:
          LODWORD(v20) = 0;
LABEL_42:
          v38 = v70;
          *(a5 + 28) = v69;
          *(a5 + 44) = v38;
          v39 = v72;
          *(a5 + 60) = v71;
          *(a5 + 76) = v39;
          v40 = v66;
          *(a5 + 108) = v67;
          *(a5 + 39) = v36;
          *(a5 + 40) = v34;
          *(a5 + 41) = v31;
          *(a5 + 21) = v75;
          *(a5 + 44) = v76;
          *(a5 + 45) = v32;
          *(a5 + 46) = v33;
          *(a5 + 47) = v37;
          *(a5 + 48) = 0;
          *(a5 + 49) = v35;
          *(a5 + 50) = 0;
          *(a5 + 51) = v20;
          *(a5 + 54) = v74;
          *(a5 + 26) = v73;
          v41 = v68;
          *(a5 + 92) = v40;
          *(a5 + 31) = v41;
          *(a5 + 32) = v54;
          *(a5 + 148) = v65;
          *(a5 + 132) = v64;
          NL::DatePeriod::setCalendarWithIdentifier(a5, v53);
          v5 = 1;
          goto LABEL_43;
        }

LABEL_36:
        v5 = 0;
LABEL_43:
        CFRelease(v16);
        return v5;
      }

      if (!CFStringHasSuffix(a2, @"EveryNumFormattedDate"))
      {
        if ((v20 & 0x80000000) == 0)
        {
          CFCalendarDecomposeAbsoluteTime(v16, CurrentTime, "yMdEHms", &v63 + 4, &v63, &v62, &v61, &v59, &v58, &v57);
          *(&v69 + 4) = v63;
          LODWORD(v69) = v62;
          v53 = v17;
          if (CFStringFind(a2, @"Second", 0).location == -1)
          {
            if (CFStringFind(a2, @"Minute", 0).location == -1)
            {
              if (CFStringFind(a2, @"Hour", 0).location == -1)
              {
                if (CFStringFind(a2, @"Day", 0).location == -1)
                {
                  if (CFStringFind(a2, @"Weekend", 0).location != -1)
                  {
                    *(a5 + 6) = 48;
                    v48 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_WEEKENDS", v20);
                    NL::DatePeriod::setDisplayKey(a5, v48);
                    v49 = 7;
                    if (v61 != 7)
                    {
                      CFCalendarAddComponents(v16, at, 0, "d", (7 - v61));
                      CFCalendarDecomposeAbsoluteTime(v16, at[0], "yEw", &v63 + 4, &v61, &v60);
                      v49 = v61;
                    }

                    v31 = 0;
                    v32 = 0;
                    v33 = 0;
                    v37 = 0;
                    v34 = 0;
                    v35 = 0;
                    v36 = 0;
                    *&v72 = __PAIR64__(HIDWORD(v63), v60);
                    DWORD1(v71) = v49;
                    *(&v69 + 4) = 0;
                    LODWORD(v69) = 0;
                    v54 = 1;
                    goto LABEL_42;
                  }

                  if (CFStringFind(a2, @"Week", 0).location != -1)
                  {
                    *(a5 + 6) = 49;
                    v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_WEEKS", v20);
                    NL::DatePeriod::setDisplayKey(a5, v50);
                    v31 = 0;
                    v32 = 0;
                    v33 = 0;
                    v37 = 0;
                    v34 = 0;
                    v35 = 0;
                    v36 = 0;
                    *(&v69 + 4) = 0;
                    DWORD1(v71) = v61;
                    *&v72 = __PAIR64__(HIDWORD(v63), v60);
                    LODWORD(v69) = 0;
                    goto LABEL_42;
                  }

                  if (CFStringFind(a2, @"Month", 0).location == -1)
                  {
                    if (CFStringFind(a2, @"Year", 0).location == -1)
                    {
                      v31 = 0;
                      v32 = 0;
                      v33 = 0;
                      v37 = 0;
                      v34 = 0;
                      v35 = 0;
                      v36 = 0;
                    }

                    else
                    {
                      *(a5 + 6) = 51;
                      v52 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_YEARS", v20);
                      NL::DatePeriod::setDisplayKey(a5, v52);
                      v32 = 0;
                      v33 = 0;
                      v37 = 0;
                      v34 = 0;
                      v35 = 0;
                      v36 = 0;
                      v31 = v20;
                    }
                  }

                  else
                  {
                    *(a5 + 6) = 50;
                    v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_MONTHS", v20);
                    NL::DatePeriod::setDisplayKey(a5, v51);
                    v31 = 0;
                    v32 = 0;
                    v33 = 0;
                    v37 = 0;
                    v35 = 0;
                    v36 = 0;
                    v34 = v20;
                  }
                }

                else
                {
                  *(a5 + 6) = 46;
                  v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_DAYS", v20);
                  NL::DatePeriod::setDisplayKey(a5, v47);
                  v31 = 0;
                  v32 = 0;
                  v33 = 0;
                  v37 = 0;
                  v34 = 0;
                  v35 = 0;
                  v36 = v20;
                }
              }

              else
              {
                *(a5 + 6) = 45;
                v44 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_HOURS", v20);
                NL::DatePeriod::setDisplayKey(a5, v44);
                v31 = 0;
                v33 = 0;
                v37 = 0;
                v34 = 0;
                v35 = 0;
                v36 = 0;
                DWORD2(v70) = v59;
                v32 = v20;
              }
            }

            else
            {
              *(a5 + 6) = 44;
              v43 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_MINUTES", v20);
              NL::DatePeriod::setDisplayKey(a5, v43);
              v31 = 0;
              v32 = 0;
              v37 = 0;
              v34 = 0;
              v35 = 0;
              v36 = 0;
              *(&v70 + 1) = __PAIR64__(v58, v59);
              v33 = v20;
            }
          }

          else
          {
            *(a5 + 6) = 43;
            v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_SECONDS", v20);
            NL::DatePeriod::setDisplayKey(a5, v30);
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(&v70 + 1) = __PAIR64__(v58, v59);
            LODWORD(v71) = v57;
            v37 = v20;
          }

          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (!CFDictionaryContainsKey(a4, @"FormattedDate") && !CFDictionaryContainsKey(a4, @"FormattedAmbiguousDate"))
      {
        goto LABEL_36;
      }

      Value = CFDictionaryGetValue(a4, @"FormattedDate");
      if (!Value)
      {
        Value = CFDictionaryGetValue(a4, @"FormattedAmbiguousDate");
      }

      v25 = this[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = updateDateComponentsWithValues(&v69, a3, Value, 0);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_36;
      }

      v53 = v17;
      v5 = 0;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v27 = DWORD1(v71);
      if ((DWORD1(v71) & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v55 = 0;
      if (v19)
      {
        v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_ORDINAL_ANY:FORMATTED", v20);
        nlp::CFScopedPtr<__CFString const*>::reset(&v55, v28);
        if (v20 == 2)
        {
          v29 = @"2_EVERY_ORDINAL_ANY:FORMATTED";
        }

        else
        {
          if (v20 != 3)
          {
            goto LABEL_52;
          }

          v29 = @"3_EVERY_ORDINAL_ANY:FORMATTED";
        }
      }

      else
      {
        v29 = @"FORMATTED";
      }

      nlp::CFScopedPtr<__CFString const*>::reset(&v55, v29);
LABEL_52:
      NL::DatePeriod::setDisplayKey(a5, v55);
      if (v71)
      {
        v45 = 0;
        v31 = 0;
        v33 = 0;
        v34 = 0;
        v36 = 0;
        v46 = 43;
        v37 = v20;
      }

      else if (HIDWORD(v70))
      {
        v45 = 0;
        v31 = 0;
        v37 = 0;
        v34 = 0;
        v36 = 0;
        v46 = 44;
        v33 = v20;
      }

      else if (DWORD2(v70))
      {
        v45 = 0;
        v33 = 0;
        v37 = 0;
        v34 = 0;
        v36 = 0;
        v46 = 45;
        v31 = v20;
      }

      else if (v69)
      {
        v45 = 0;
        v31 = 0;
        v33 = 0;
        v37 = 0;
        v34 = 0;
        v46 = 46;
        v36 = v20;
      }

      else
      {
        if (v27)
        {
          v45 = 0;
          v31 = 0;
          v33 = 0;
          v37 = 0;
          v34 = 0;
          v36 = 0;
          v46 = 47;
          goto LABEL_63;
        }

        if (!DWORD1(v69))
        {
          v31 = 0;
          if (!DWORD2(v69))
          {
            v32 = 0;
            v33 = 0;
            v37 = 0;
            v34 = 0;
            v36 = 0;
            LODWORD(v20) = 0;
            goto LABEL_64;
          }

          v46 = 51;
          v45 = v20;
          v33 = 0;
          v37 = 0;
          v34 = 0;
          v36 = 0;
          LODWORD(v20) = 0;
LABEL_63:
          v32 = v31;
          *(a5 + 6) = v46;
          v31 = v45;
LABEL_64:
          nlp::CFScopedPtr<__CFString const*>::reset(&v55, 0);
          v35 = 0;
          goto LABEL_42;
        }

        v45 = 0;
        v31 = 0;
        v33 = 0;
        v37 = 0;
        v36 = 0;
        v46 = 50;
        v34 = v20;
      }

      LODWORD(v20) = 0;
      goto LABEL_63;
    }

    return 0;
  }

  return v5;
}

void sub_22CD6DF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::DateConverter::updatePeriodForOrdinalDate(NL::DateConverter *this, const __CFString *a2, const __CFLocale *a3, CFDictionaryRef theDict, NL::DatePeriod *a5)
{
  result = 0;
  if (a2 && a3)
  {
    v11 = *(*this + 66);
    if (CFDictionaryContainsKey(theDict, @"FormattedDate") || CFDictionaryContainsKey(theDict, @"FormattedAmbiguousDate"))
    {
      Value = CFDictionaryGetValue(theDict, @"FormattedDate");
      if (!Value)
      {
        Value = CFDictionaryGetValue(theDict, @"FormattedAmbiguousDate");
      }

      result = NL::DateConverter::updatePeriodForFormattedDate(this, a3, Value, a5);
      if (result)
      {
        v33 = *(a5 + 8);
        v34 = *(a5 + 9);
        v52 = *(a5 + 40);
        v53 = *(a5 + 7);
        v13 = *(a5 + 16);
        v31 = *(a5 + 7);
        v32 = *(a5 + 19);
        v50 = *(a5 + 10);
        v51 = *(a5 + 22);
        v48 = *(a5 + 124);
        v49 = *(a5 + 140);
        v46 = *(a5 + 92);
        v47 = *(a5 + 108);
        v29 = *(a5 + 156);
        v30 = *(a5 + 68);
        v14 = *(a5 + 51);
        v45 = *(a5 + 50);
        v15 = *(a5 + 41);
        v43 = *(a5 + 168);
        v44 = *(a5 + 184);
        v41 = *(a5 + 26);
        v42 = *(a5 + 54);
        HasPrefix = CFStringHasPrefix(a2, @"EveryTwo");
        v17 = HasPrefix;
        if (HasPrefix)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        if (v11)
        {
          v19 = @"VAL_1-N_EVERY_ORDINAL_ANY:FORMATTED";
          if (HasPrefix)
          {
            CFRelease(@"VAL_1-N_EVERY_ORDINAL_ANY:FORMATTED");
            v19 = @"2_EVERY_ORDINAL_ANY:FORMATTED";
          }
        }

        else
        {
          v19 = @"FORMATTED";
        }

        if (v34)
        {
          if (v17)
          {
            v20 = 51;
          }

          else
          {
            v20 = 52;
          }
        }

        else
        {
          if (!v33)
          {
            if (v32)
            {
              if (v17)
              {
                v20 = 49;
              }

              else
              {
                v20 = 52;
              }

              v14 = v18;
            }

            else
            {
              if (v13)
              {
                v14 = v18;
              }

              if (v17)
              {
                v28 = v13 == 0;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                v20 = 52;
              }

              else
              {
                v20 = 47;
              }
            }

            goto LABEL_24;
          }

          if (v17)
          {
            v20 = 50;
          }

          else
          {
            v20 = 52;
          }
        }

        v15 = v18;
LABEL_24:
        *(a5 + 6) = v20;
        NL::DatePeriod::setDisplayKey(a5, v19);
        *(a5 + 7) = v31;
        *(a5 + 8) = v33;
        *(a5 + 9) = v34;
        *(a5 + 40) = v52;
        *(a5 + 7) = v53;
        *(a5 + 16) = v13;
        *(a5 + 68) = v30;
        *(a5 + 19) = v32;
        *(a5 + 10) = v50;
        *(a5 + 22) = v51;
        *(a5 + 140) = v49;
        *(a5 + 124) = v48;
        *(a5 + 108) = v47;
        *(a5 + 92) = v46;
        *(a5 + 156) = v29;
        *(a5 + 41) = v15;
        *(a5 + 50) = v45;
        *(a5 + 168) = v43;
        *(a5 + 184) = v44;
        *(a5 + 51) = v14;
        *(a5 + 26) = v41;
        *(a5 + 54) = v42;
        CFRelease(v19);
        return 1;
      }
    }

    else if (CFDictionaryContainsKey(theDict, @"FormattedTime") || (result = CFDictionaryContainsKey(theDict, @"FormattedAmbiguousTime"), result))
    {
      v21 = CFDictionaryGetValue(theDict, @"FormattedTime");
      if (!v21)
      {
        v21 = CFDictionaryGetValue(theDict, @"FormattedAmbiguousTime");
      }

      result = NL::DateConverter::updatePeriodForFormattedDate(this, a3, v21, a5);
      if (result)
      {
        v22 = *(a5 + 23);
        v40 = *(a5 + 28);
        v23 = *(a5 + 13);
        v24 = *(a5 + 14);
        v25 = *(a5 + 15);
        *v39 = *(a5 + 4);
        *&v39[12] = *(a5 + 76);
        v37 = *(a5 + 6);
        v38 = *(a5 + 14);
        v26 = *(a5 + 30);
        v27 = *(a5 + 31);
        *&v36[12] = *(a5 + 140);
        v35 = *(a5 + 44);
        *v36 = *(a5 + 8);
        if (v35 | v23)
        {
          *(a5 + 6) = 45;
          v22 = 1;
        }

        else if (v24)
        {
          *(a5 + 6) = 44;
          v26 = 60;
        }

        else if (v25)
        {
          *(a5 + 6) = 43;
          v27 = 60;
        }

        else
        {
          *(a5 + 6) = 52;
        }

        NL::DatePeriod::setDisplayKey(a5, @"EVERY_FORMATTED_TIME");
        *(a5 + 28) = v40;
        *(a5 + 44) = v35;
        *(a5 + 13) = v23;
        *(a5 + 14) = v24;
        *(a5 + 15) = v25;
        *(a5 + 4) = *v39;
        *(a5 + 76) = *&v39[12];
        *(a5 + 92) = 0u;
        *(a5 + 108) = 0u;
        *(a5 + 124) = 0u;
        *(a5 + 140) = 0u;
        *(a5 + 39) = v22;
        *(a5 + 10) = v37;
        *(a5 + 22) = v38;
        *(a5 + 46) = v26;
        *(a5 + 47) = v27;
        *(a5 + 204) = *&v36[12];
        result = 1;
        *(a5 + 12) = *v36;
      }
    }
  }

  return result;
}

uint64_t NL::DateConverter::updatePeriodForValueDate(const __CFDate ***this, const __CFString *a2, const __CFLocale *a3, const __CFDictionary *a4, NL::DatePeriod *a5)
{
  v5 = 0;
  if (!a2 || !a3 || !a4)
  {
    return v5;
  }

  v11 = copyCurrentCalendar(a3);
  v116 = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = MEMORY[0x2318BF5E0]();
  getCurrentDateComponents(v12, **this, v115);
  at = NL::DateComponents::getAbsoluteTime(v115, v12, **this);
  v14 = *(a5 + 44);
  v110 = *(a5 + 28);
  v111 = v14;
  v15 = *(a5 + 76);
  v112 = *(a5 + 60);
  v113 = v15;
  v16 = *(a5 + 172);
  v106 = *(a5 + 156);
  v107 = v16;
  v17 = *(a5 + 204);
  v108 = *(a5 + 188);
  v109 = v17;
  v94 = *(a5 + 92);
  v18 = *(a5 + 25);
  v19 = *(a5 + 29);
  v105 = *(a5 + 28);
  v20 = *(a5 + 13);
  v21 = *(a5 + 31);
  v92 = *(a5 + 30);
  v93 = v19;
  v22 = *(a5 + 32);
  v103 = *(a5 + 132);
  v104 = v20;
  v91 = *(a5 + 35);
  v89 = v22;
  v90 = *(a5 + 36);
  v102 = *(a5 + 148);
  v100 = -1;
  memset(v101, 255, sizeof(v101));
  v98 = -1;
  v99 = -1;
  v97 = -1;
  CFCalendarDecomposeAbsoluteTime(v12, at, "yMdEwHm", &v101[8], &v101[4], v101, &v100, &v99, &v98, &v97);
  v87 = v21;
  v88 = v13;
  v23 = intValueForNumberInValues(a3, a4);
  v24 = *(*this + 66);
  if (CFStringHasPrefix(a2, @"ThisFormattedDate"))
  {
    v96 = @"FORMATTED";
    NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
    *(a5 + 6) = 38;
    if (CFDictionaryContainsKey(a4, @"FormattedDate") || CFDictionaryContainsKey(a4, @"FormattedAmbiguousDate"))
    {
      Value = CFDictionaryGetValue(a4, @"FormattedDate");
      if (!Value)
      {
        Value = CFDictionaryGetValue(a4, @"FormattedAmbiguousDate");
      }

      v26 = this[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      updated = updateDateComponentsWithValues(&v110, a3, Value, 0);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (updated)
      {
        resolveDateComponentsToDateWithOffset(v12, a3, **this, &v110, v24, 0, 0);
        CFRelease(@"FORMATTED");
LABEL_41:
        v5 = 1;
LABEL_42:
        v34 = v111;
        *(a5 + 28) = v110;
        *(a5 + 44) = v34;
        v35 = v113;
        *(a5 + 60) = v112;
        *(a5 + 76) = v35;
        v36 = v108;
        *(a5 + 204) = v109;
        *(a5 + 188) = v36;
        v37 = v106;
        *(a5 + 172) = v107;
        *(a5 + 92) = v94;
        *(a5 + 25) = v18;
        *(a5 + 13) = v104;
        *(a5 + 28) = v105;
        *(a5 + 29) = v93;
        *(a5 + 30) = v92;
        *(a5 + 31) = v87;
        *(a5 + 32) = v89;
        *(a5 + 132) = v103;
        *(a5 + 35) = v91;
        *(a5 + 36) = v90;
        *(a5 + 148) = v102;
        *(a5 + 156) = v37;
        NL::DatePeriod::setCalendarWithIdentifier(a5, v88);
        goto LABEL_102;
      }
    }

LABEL_28:
    CFRelease(@"FORMATTED");
LABEL_101:
    v5 = 0;
    goto LABEL_102;
  }

  if (CFStringHasPrefix(a2, @"LastFormattedDate"))
  {
    v96 = @"FORMATTED";
    NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
    *(a5 + 6) = 38;
    if (CFDictionaryContainsKey(a4, @"FormattedDate") || CFDictionaryContainsKey(a4, @"FormattedAmbiguousDate"))
    {
      v28 = CFDictionaryGetValue(a4, @"FormattedDate");
      if (!v28)
      {
        v28 = CFDictionaryGetValue(a4, @"FormattedAmbiguousDate");
      }

      v29 = this[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = updateDateComponentsWithValues(&v110, a3, v28, 0);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v30)
      {
        resolveDateComponentsToDateWithOffset(v12, a3, **this, &v110, v24, -1, 0);
        CFRelease(@"FORMATTED");
        goto LABEL_41;
      }
    }

    goto LABEL_28;
  }

  if (CFStringHasPrefix(a2, @"NextFormattedDate"))
  {
    v96 = @"FORMATTED";
    NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
    *(a5 + 6) = 38;
    if (CFDictionaryContainsKey(a4, @"FormattedDate") || CFDictionaryContainsKey(a4, @"FormattedAmbiguousDate"))
    {
      v31 = CFDictionaryGetValue(a4, @"FormattedDate");
      if (!v31)
      {
        v31 = CFDictionaryGetValue(a4, @"FormattedAmbiguousDate");
      }

      v32 = this[1];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = updateDateComponentsWithValues(&v110, a3, v31, 0);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v33)
      {
        resolveDateComponentsToDateWithOffset(v12, a3, **this, &v110, v24, 1, 0);
LABEL_40:
        nlp::CFScopedPtr<__CFString const*>::reset(&v96, 0);
        goto LABEL_41;
      }
    }

LABEL_100:
    nlp::CFScopedPtr<__CFString const*>::reset(&v96, 0);
    goto LABEL_101;
  }

  if (CFStringHasPrefix(a2, @"NextNum") && CFStringHasSuffix(a2, @"RangeDate"))
  {
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    if (CFStringFind(a2, @"Minute", 0).location != -1)
    {
      *(a5 + 6) = 27;
      v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_NEXT_MINUTES", v23);
      NL::DatePeriod::setDisplayKey(a5, v38);
      *&v110 = *v101;
      DWORD2(v110) = *&v101[8];
      *(&v111 + 1) = __PAIR64__(v97, v98);
      CFCalendarAddComponents(v12, &at, 0, "m", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMdEwHm", &v101[8], &v101[4], v101, &v100, &v99, &v98, &v97);
      v94 = *v101;
      v18 = *&v101[8];
      v92 = v97;
      v93 = v98;
      goto LABEL_41;
    }

    if (CFStringFind(a2, @"Hour", 0).location != -1)
    {
      *(a5 + 6) = 28;
      v42 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_NEXT_HOURS", v23);
      NL::DatePeriod::setDisplayKey(a5, v42);
      *&v110 = *v101;
      DWORD2(v110) = *&v101[8];
      DWORD2(v111) = v98;
      CFCalendarAddComponents(v12, &at, 0, "h", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMdEwHm", &v101[8], &v101[4], v101, &v100, &v99, &v98, &v97);
      v94 = *v101;
      v18 = *&v101[8];
      v5 = 1;
      v93 = v98;
      goto LABEL_42;
    }

    if (CFStringFind(a2, @"Day", 0).location != -1)
    {
      *(a5 + 6) = 29;
      v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_NEXT_DAYS", v23);
      NL::DatePeriod::setDisplayKey(a5, v45);
      LODWORD(v110) = *v101;
      *(&v110 + 4) = *&v101[4];
      CFCalendarAddComponents(v12, &at, 0, "d", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
      LODWORD(v94) = *v101;
      goto LABEL_74;
    }

    if (CFStringFind(a2, @"Week", 0).location == -1)
    {
      if (CFStringFind(a2, @"Month", 0).location == -1)
      {
        if (CFStringFind(a2, @"Year", 0).location == -1)
        {
          goto LABEL_41;
        }

        *(a5 + 6) = 33;
        v52 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_NEXT_YEARS", v23);
        NL::DatePeriod::setDisplayKey(a5, v52);
        LODWORD(v110) = *v101;
        *(&v110 + 4) = *&v101[4];
        CFCalendarAddComponents(v12, &at, 0, "y", v23);
        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
LABEL_75:
        v5 = 1;
        v18 = *&v101[8];
        goto LABEL_42;
      }

      *(a5 + 6) = 32;
      v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_NEXT_MONTHS", v23);
      NL::DatePeriod::setDisplayKey(a5, v49);
      LODWORD(v110) = *v101;
      *(&v110 + 4) = *&v101[4];
      CFCalendarAddComponents(v12, &at, 0, "M", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
LABEL_74:
      HIDWORD(v94) = *&v101[4];
      goto LABEL_75;
    }

    *(a5 + 6) = 31;
    v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_NEXT_WEEKS", v23);
    NL::DatePeriod::setDisplayKey(a5, v47);
    LODWORD(v110) = *v101;
    *(&v110 + 4) = *&v101[4];
    CFCalendarAddComponents(v12, &at, 0, "w", v23);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yw", &v101[8], &v99);
LABEL_88:
    v5 = 1;
    v90 = *&v101[8];
    v91 = v99;
    goto LABEL_42;
  }

  if (CFStringHasPrefix(a2, @"NextNum") && CFStringHasSuffix(a2, @"Date"))
  {
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    if (CFStringFind(a2, @"Minute", 0).location != -1)
    {
      *(a5 + 6) = 16;
      v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_MINUTES", v23);
      NL::DatePeriod::setDisplayKey(a5, v39);
      CFCalendarAddComponents(v12, &at, 0, "m", v23);
      v95 = 0;
      LODWORD(v96) = 0;
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMdHm", &v101[8], &v101[4], v101, &v96, &v95);
LABEL_68:
      *&v110 = *v101;
      DWORD2(v110) = *&v101[8];
      *(&v111 + 1) = __PAIR64__(v95, v96);
      goto LABEL_41;
    }

    if (CFStringFind(a2, @"Hour", 0).location != -1)
    {
      *(a5 + 6) = 17;
      v43 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_HOURS", v23);
      NL::DatePeriod::setDisplayKey(a5, v43);
      CFCalendarAddComponents(v12, &at, 0, "h", v23);
      v95 = 0;
      LODWORD(v96) = 0;
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMdHm", &v101[8], &v101[4], v101, &v96, &v95);
      goto LABEL_68;
    }

    if (CFStringFind(a2, @"Day", 0).location != -1)
    {
      v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_DAYS", v23);
      NL::DatePeriod::setDisplayKey(a5, v46);
      *(a5 + 6) = 18;
      CFCalendarAddComponents(v12, &at, 0, "d", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
LABEL_57:
      *&v110 = *v101;
LABEL_58:
      v41 = *&v101[8];
LABEL_59:
      DWORD2(v110) = v41;
      goto LABEL_41;
    }

    if (CFStringFind(a2, @"Weekend", 0).location != -1)
    {
      v48 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_WEEKENDS", v23);
      NL::DatePeriod::setDisplayKey(a5, v48);
      *(a5 + 6) = 19;
      if (v100 <= 6)
      {
        CFCalendarAddComponents(v12, &at, 0, "d", (7 - v100));
      }

      CFCalendarAddComponents(v12, &at, 0, "w", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yEw", &v101[8], &v100, &v99);
      *&v110 = 0;
      DWORD2(v110) = 0;
      DWORD1(v112) = v100;
      *&v113 = __PAIR64__(*&v101[8], v99);
      CFCalendarAddComponents(v12, &at, 0, "d", 1);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yEw", &v101[8], &v100, &v99);
      v89 = v100;
      goto LABEL_88;
    }

    if (CFStringFind(a2, @"Week", 0).location != -1)
    {
      v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_WEEKS", v23);
      NL::DatePeriod::setDisplayKey(a5, v50);
      *(a5 + 6) = 20;
      CFCalendarAddComponents(v12, &at, 0, "w", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "wyMd", &v99, &v101[8], &v101[4], v101);
      *&v113 = __PAIR64__(*&v101[8], v99);
      goto LABEL_41;
    }

    if (CFStringFind(a2, @"Month", 0).location == -1)
    {
      if (CFStringFind(a2, @"Year", 0).location == -1)
      {
        goto LABEL_41;
      }

      v54 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_YEARS", v23);
      NL::DatePeriod::setDisplayKey(a5, v54);
      *(a5 + 6) = 22;
      CFCalendarAddComponents(v12, &at, 0, "y", v23);
      CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
      goto LABEL_58;
    }

    v53 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_MONTHS", v23);
    NL::DatePeriod::setDisplayKey(a5, v53);
    *(a5 + 6) = 21;
    CFCalendarAddComponents(v12, &at, 0, "M", v23);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
LABEL_109:
    *(&v110 + 4) = *&v101[4];
    goto LABEL_41;
  }

  v86 = -v23;
  if (CFStringHasPrefix(a2, @"NumDaysRange"))
  {
    *(a5 + 6) = 34;
    v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_LAST_DAYS", v23);
    NL::DatePeriod::setDisplayKey(a5, v40);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    v94 = *v101;
    v18 = *&v101[8];
    CFCalendarAddComponents(v12, &at, 0, "d", v86);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
    goto LABEL_57;
  }

  if (CFStringHasPrefix(a2, @"NumDays"))
  {
    v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_DAYS_AGO", v23);
    NL::DatePeriod::setDisplayKey(a5, v96);
    *(a5 + 6) = 23;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_100;
    }

    CFCalendarAddComponents(v12, &at, 0, "d", v86);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
    *&v110 = *v101;
LABEL_63:
    DWORD2(v110) = *&v101[8];
    goto LABEL_40;
  }

  if (CFStringHasPrefix(a2, @"NumWeeksRange"))
  {
    v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_LAST_WEEKS", v23);
    NL::DatePeriod::setDisplayKey(a5, v96);
    *(a5 + 6) = 35;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_100;
    }

    v94 = *v101;
    v18 = *&v101[8];
    v95 = 0;
    CFCalendarDecomposeAbsoluteTime(v12, at, "w", &v95);
    v44 = v95 - v23 + 1;
LABEL_81:
    *&v113 = __PAIR64__(*&v101[8], v44);
    goto LABEL_40;
  }

  if (CFStringHasPrefix(a2, @"NumWeeks"))
  {
    v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_WEEKS_AGO", v23);
    NL::DatePeriod::setDisplayKey(a5, v96);
    *(a5 + 6) = 24;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_100;
    }

    v95 = 0;
    CFCalendarDecomposeAbsoluteTime(v12, at, "w", &v95);
    v44 = v95 - v23;
    goto LABEL_81;
  }

  if (CFStringHasPrefix(a2, @"NumMonthsRange"))
  {
    v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_LAST_MONTHS", v23);
    NL::DatePeriod::setDisplayKey(a5, v96);
    *(a5 + 6) = 36;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_100;
    }

    v94 = *v101;
    v18 = *&v101[8];
    CFCalendarAddComponents(v12, &at, 0, "dM", (1 - *v101), v86);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
LABEL_99:
    *(&v110 + 4) = *&v101[4];
    goto LABEL_40;
  }

  if (CFStringHasPrefix(a2, @"NumMonths"))
  {
    v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_MONTHS_AGO", v23);
    NL::DatePeriod::setDisplayKey(a5, v96);
    *(a5 + 6) = 25;
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_100;
    }

    CFCalendarAddComponents(v12, &at, 0, "dM", (1 - *v101), v86);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
    goto LABEL_99;
  }

  if (!CFStringHasPrefix(a2, @"NumYearsRange"))
  {
    if (CFStringHasPrefix(a2, @"NumYears"))
    {
      v5 = 0;
      if (*&v101[8] >= v23 && (v23 & 0x80000000) == 0 && *&v101[8] - v23 >= *&v101[8] - 1970)
      {
        v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_YEARS_AGO", v23);
        NL::DatePeriod::setDisplayKey(a5, v96);
        *(a5 + 6) = 26;
        CFCalendarAddComponents(v12, &at, 0, "dM", (1 - *v101), (1 - *&v101[4]));
        CFCalendarAddComponents(v12, &at, 0, "y", v86);
        if (SDWORD1(v110) >= 2)
        {
          CFCalendarAddComponents(v12, &at, 0, "M", (DWORD1(v110) - 1));
        }

        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
        goto LABEL_63;
      }

      goto LABEL_102;
    }

    if (CFStringHasPrefix(a2, @"IsoDay"))
    {
      NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
      *(a5 + 6) = 38;
      v55 = this[1];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v56 = updateDateComponentsWithValues(&v110, a3, a4, 0);
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v56)
      {
        MaximumRangeOfUnit = CFCalendarGetMaximumRangeOfUnit(v12, 0x200uLL);
        length = MaximumRangeOfUnit.length;
        if (v24)
        {
          if (SDWORD1(v112) <= v100)
          {
            if (DWORD1(v112) != v100)
            {
              if (SDWORD1(v112) >= v100)
              {
                length = 0;
              }

              else
              {
                length = MaximumRangeOfUnit.length - v100 + SDWORD1(v112);
              }
            }
          }

          else
          {
            length = DWORD1(v112) - v100;
          }

          CFCalendarAddComponents(v12, &at, 0, "d", length);
        }

        else
        {
          CFCalendarAddComponents(v12, &at, 0, "d", (1 - v100));
          CFCalendarAddComponents(v12, &at, 0, "d", (DWORD1(v112) - 1));
          if (SDWORD1(v112) > v100)
          {
            CFCalendarAddComponents(v12, &at, 0, "d", -MaximumRangeOfUnit.length);
          }
        }

        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
        goto LABEL_57;
      }

      goto LABEL_213;
    }

    if (CFStringHasPrefix(a2, @"LastIsoDay"))
    {
      NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
      *(a5 + 6) = 38;
      v59 = this[1];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = updateDateComponentsWithValues(&v110, a3, a4, 0);
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v60)
      {
        v61 = CFCalendarGetMaximumRangeOfUnit(v12, 0x200uLL);
        CFCalendarAddComponents(v12, &at, 0, "d", SDWORD1(v112) - (v61.length + v100));
        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
        goto LABEL_57;
      }

      goto LABEL_213;
    }

    if (CFStringHasPrefix(a2, @"NextIsoDay"))
    {
      NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
      *(a5 + 6) = 38;
      v62 = this[1];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = updateDateComponentsWithValues(&v110, a3, a4, 0);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (v63)
      {
        v64 = CFCalendarGetMaximumRangeOfUnit(v12, 0x200uLL);
        v65 = v100 % v64.length;
        v66 = (v64.length - v65) % v64.length;
        if (v65 <= SDWORD1(v112))
        {
          v67 = 0;
        }

        else
        {
          v67 = v64.length;
        }

        CFCalendarAddComponents(v12, &at, 0, "d", v66 + SDWORD1(v112) + v67);
        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
        goto LABEL_57;
      }

      goto LABEL_213;
    }

    if (CFStringHasPrefix(a2, @"BeforeLastIsoDay"))
    {
      NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
      *(a5 + 6) = 38;
      v68 = this[1];
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v69 = updateDateComponentsWithValues(&v110, a3, a4, 0);
      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      if (v69)
      {
        v70 = CFCalendarGetMaximumRangeOfUnit(v12, 0x200uLL);
        CFCalendarAddComponents(v12, &at, 0, "d", SDWORD1(v112) - (v100 + 2 * v70.length));
        CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
        goto LABEL_57;
      }

      goto LABEL_213;
    }

    if (CFStringHasPrefix(a2, @"NextIsoMonth"))
    {
      NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
      *(a5 + 6) = 38;
      v71 = this[1];
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v72 = updateDateComponentsWithValues(&v110, a3, a4, 0);
      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      }

      if (v72)
      {
        v41 = *&v101[8] + 1;
        goto LABEL_59;
      }

      goto LABEL_213;
    }

    if (!CFStringHasPrefix(a2, @"IsoMonth"))
    {
      if (CFStringHasPrefix(a2, @"LastIsoMonth"))
      {
        NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
        *(a5 + 6) = 38;
        CFCalendarDecomposeAbsoluteTime(v12, at, "yMdE", &v101[8], &v101[4], v101, &v100);
        v76 = this[1];
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v77 = updateDateComponentsWithValues(&v110, a3, a4, 0);
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        if (v77)
        {
          CFCalendarAddComponents(v12, &at, 0, "dMy", (1 - *v101), (1 - *&v101[4]), 0xFFFFFFFFLL);
          CFCalendarAddComponents(v12, &at, 0, "M", (DWORD1(v110) - 1));
          CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
          goto LABEL_109;
        }
      }

      else if (CFStringHasPrefix(a2, @"BeforeLastIsoMonth"))
      {
        NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
        *(a5 + 6) = 38;
        v78 = this[1];
        if (v78)
        {
          atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v79 = updateDateComponentsWithValues(&v110, a3, a4, 0);
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        if (v79)
        {
          CFCalendarAddComponents(v12, &at, 0, "dMy", (1 - *v101), (1 - *&v101[4]), 4294967294);
          CFCalendarAddComponents(v12, &at, 0, "M", (DWORD1(v110) - 1));
          CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
          goto LABEL_109;
        }
      }

      else if (CFStringHasPrefix(a2, @"CompoundDay"))
      {
        NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
        *(a5 + 6) = 38;
        v80 = this[1];
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81 = updateDateComponentsWithValues(&v110, a3, a4, 0);
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        if (v81)
        {
          v82 = CFCalendarGetMaximumRangeOfUnit(v12, 0x200uLL);
          CFCalendarAddComponents(v12, &at, 0, "d", SDWORD1(v112) - (v100 + v82.length * (SDWORD2(v113) - 1)));
          CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
          *&v110 = *v101;
          DWORD2(v110) = *&v101[8];
          DWORD1(v112) = -1;
          goto LABEL_41;
        }
      }

      else
      {
        if (!CFStringHasPrefix(a2, @"CompoundMonth"))
        {
          goto LABEL_41;
        }

        NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
        *(a5 + 6) = 38;
        v83 = this[1];
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v84 = updateDateComponentsWithValues(&v110, a3, a4, 0);
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        if (v84)
        {
          v85 = CFCalendarGetMaximumRangeOfUnit(v12, 8uLL);
          CFCalendarAddComponents(v12, &at, 0, "dM", (1 - *v101), SDWORD1(v110) - (*&v101[4] + v85.length * (SHIDWORD(v113) - 1)));
          CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
          goto LABEL_109;
        }
      }

LABEL_213:
      v5 = 0;
      goto LABEL_42;
    }

    NL::DatePeriod::setDisplayKey(a5, @"FORMATTED");
    *(a5 + 6) = 38;
    v73 = this[1];
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v74 = updateDateComponentsWithValues(&v110, a3, a4, 0);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    if ((v74 & 1) == 0)
    {
      goto LABEL_213;
    }

    CFCalendarAddComponents(v12, &at, 0, "dM", (1 - *v101), (1 - *&v101[4]));
    CFCalendarAddComponents(v12, &at, 0, "M", (DWORD1(v110) - 1));
    if (*(*this + 66) == 1)
    {
      if (SDWORD1(v110) < *&v101[4])
      {
        v75 = 1;
LABEL_190:
        CFCalendarAddComponents(v12, &at, 0, "y", v75);
      }
    }

    else if (SDWORD1(v110) > *&v101[4])
    {
      v75 = 0xFFFFFFFFLL;
      goto LABEL_190;
    }

    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
    goto LABEL_109;
  }

  v5 = 0;
  if (*&v101[8] >= v23 && (v23 & 0x80000000) == 0 && *&v101[8] - v23 >= *&v101[8] - 1970)
  {
    v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_LAST_YEARS", v23);
    NL::DatePeriod::setDisplayKey(a5, v96);
    *(a5 + 6) = 37;
    v18 = *&v101[8];
    v94 = *v101;
    CFCalendarAddComponents(v12, &at, 0, "dMy", (1 - *v101), (1 - *&v101[4]), v86);
    CFCalendarDecomposeAbsoluteTime(v12, at, "yMd", &v101[8], &v101[4], v101);
    goto LABEL_63;
  }

LABEL_102:
  if (v116)
  {
    CFRelease(v116);
  }

  return v5;
}

uint64_t NL::DateConverter::updatePeriodForAppContext(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 44);
  v26 = *(a3 + 28);
  v27 = v6;
  v7 = *(a3 + 76);
  v28 = *(a3 + 60);
  v29 = v7;
  v8 = *(a3 + 108);
  v22 = *(a3 + 92);
  v23 = v8;
  v9 = *(a3 + 140);
  v24 = *(a3 + 124);
  v25 = v9;
  getCurrentDateComponents(*(a3 + 8), *(a3 + 224), v21);
  if ((a2 & 0xFFFFFFFB) != 0)
  {
    if (!NL::DateComponents::isEmpty(&v26))
    {
      resolveDateComponentsToCurrentDate(*(a3 + 8), *(a3 + 16), *(a3 + 224), &v26, *(*a1 + 66));
    }

    if (!NL::DateComponents::isEmpty(&v22))
    {
      resolveDateComponentsToCurrentDate(*(a3 + 8), *(a3 + 16), *(a3 + 224), &v22, *(*a1 + 66));
    }
  }

  v10 = *(*a1 + 66);
  AbsoluteTime = NL::DateComponents::getAbsoluteTime(&v26, *(a3 + 8), *(a3 + 224));
  v12 = NL::DateComponents::getAbsoluteTime(v21, *(a3 + 8), *(a3 + 224));
  v13 = *(a3 + 24);
  if (v10)
  {
    if (AbsoluteTime < v12 && v13 == 40 && !CFStringsAreEqual(*a3, @"HOLIDAY"))
    {
      while (1)
      {
        v14 = NL::DateComponents::getAbsoluteTime(&v26, *(a3 + 8), *(a3 + 224));
        if (v14 >= NL::DateComponents::getAbsoluteTime(v21, *(a3 + 8), *(a3 + 224)))
        {
          break;
        }

        if ((updateDateComponentsWithHolidayReference(*(*a1 + 24), *a3, *(a3 + 8), *(a3 + 224), *(a3 + 16), (DWORD2(v26) + 1), &v26, &v22) & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  else if (AbsoluteTime > v12 && v13 == 40 && !CFStringsAreEqual(*a3, @"HOLIDAY"))
  {
    while (1)
    {
      v15 = NL::DateComponents::getAbsoluteTime(&v26, *(a3 + 8), *(a3 + 224));
      if (v15 <= NL::DateComponents::getAbsoluteTime(v21, *(a3 + 8), *(a3 + 224)))
      {
        break;
      }

      if ((updateDateComponentsWithHolidayReference(*(*a1 + 24), *a3, *(a3 + 8), *(a3 + 224), *(a3 + 16), (DWORD2(v26) - 1), &v26, &v22) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v16 = v27;
  *(a3 + 28) = v26;
  *(a3 + 44) = v16;
  v17 = v29;
  *(a3 + 60) = v28;
  *(a3 + 76) = v17;
  v18 = v23;
  *(a3 + 92) = v22;
  *(a3 + 108) = v18;
  v19 = v25;
  *(a3 + 124) = v24;
  *(a3 + 140) = v19;
  return 1;
}

const void ***std::unique_ptr<NL::DatePeriod>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    NL::DatePeriod::~DatePeriod(v2);
    MEMORY[0x2318C0600]();
  }

  return a1;
}

void NL::DateConverter::datePeriodForRelativeDate(CFStringRef theString@<X1>, void *a2@<X8>)
{
  if (theString && CFStringGetLength(theString))
  {
    operator new();
  }

  *a2 = 0;
}

BOOL NL::DateConverter::updatePeriodForRelativeDate(uint64_t **this, const __CFString *a2, const __CFLocale *a3, NL::DatePeriod *a4)
{
  v4 = 0;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v8 = *(a4 + 44);
  v84 = *(a4 + 28);
  v85 = v8;
  v9 = *(a4 + 76);
  v86 = *(a4 + 60);
  v87 = v9;
  v10 = *(a4 + 108);
  v80 = *(a4 + 92);
  v81 = v10;
  v11 = *(a4 + 140);
  v82 = *(a4 + 124);
  v83 = v11;
  v59 = *(a4 + 40);
  v60 = *(a4 + 39);
  v12 = *(a4 + 41);
  v14 = a4 + 168;
  v13 = *(a4 + 21);
  v15 = *(a4 + 45);
  v79 = *(a4 + 44);
  v78 = v13;
  v63 = v15;
  v64 = *(a4 + 46);
  v65 = *(a4 + 47);
  v17 = a4 + 192;
  v16 = *(a4 + 24);
  v61 = v12;
  v62 = *(a4 + 51);
  v77 = *(a4 + 50);
  v76 = v16;
  v19 = a4 + 208;
  v18 = *(a4 + 26);
  v75 = *(a4 + 54);
  v74 = v18;
  v72 = -1;
  memset(v73, 255, sizeof(v73));
  v70 = -1;
  v71 = -1;
  v68 = -1;
  v69 = -1;
  v20 = copyCurrentCalendar(a3);
  cf = v20;
  v4 = v20 != 0;
  if (!v20)
  {
    return v4;
  }

  v21 = v20;
  v58 = MEMORY[0x2318BF5E0]();
  at = getCurrentTime(**this);
  v22 = *(*this + 66);
  CFCalendarDecomposeAbsoluteTime(v21, at, "yMdEwHms", &v73[8], &v73[4], v73, &v72, &v71, &v70, &v69, &v68);
  if (CFStringHasPrefix(a2, @"RelativeNow"))
  {
    *(a4 + 6) = 39;
    NL::DatePeriod::setDisplayKey(a4, @"FORMATTED");
    *&v84 = *v73;
    DWORD2(v84) = *&v73[8];
    DWORD2(v85) = v70;
    v24 = v68;
    v23 = v69;
LABEL_6:
    HIDWORD(v85) = v23;
    LODWORD(v86) = v24;
    goto LABEL_7;
  }

  if (!CFStringHasPrefix(a2, @"RelativeEvery"))
  {
    if (CFStringHasPrefix(a2, @"RelativeNext"))
    {
      if (CFStringHasPrefix(a2, @"RelativeNextTwo"))
      {
        v31 = 2;
      }

      else
      {
        if (!CFStringHasPrefix(a2, @"RelativeNextThree"))
        {
          v57 = 1;
          v34 = 11;
          v35 = 13;
          v55 = 14;
          v56 = 12;
          v36 = 15;
          goto LABEL_31;
        }

        v31 = 3;
      }

      v57 = v31;
      v34 = 18;
      v35 = 19;
      v55 = 21;
      v56 = 20;
      v36 = 22;
LABEL_31:
      v54 = v36;
      if (CFStringFind(a2, @"Minute", 0).location != -1)
      {
        *(a4 + 6) = 16;
        v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_MINUTES", v57);
        NL::DatePeriod::setDisplayKey(a4, v37);
        CFCalendarAddComponents(v21, &at, 0, "m", v57);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMdHms", &v73[8], &v73[4], v73, &v70, &v69, &v68);
        *&v84 = *v73;
        DWORD2(v84) = *&v73[8];
        *(&v85 + 1) = __PAIR64__(v69, v70);
        goto LABEL_7;
      }

      if (CFStringFind(a2, @"Hour", 0).location != -1)
      {
        *(a4 + 6) = 17;
        v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_HOURS", v57);
        NL::DatePeriod::setDisplayKey(a4, v38);
        CFCalendarAddComponents(v21, &at, 0, "h", v57);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMdHms", &v73[8], &v73[4], v73, &v70, &v69, &v68);
        *&v84 = *v73;
        DWORD2(v84) = *&v73[8];
        DWORD2(v85) = v70;
        goto LABEL_7;
      }

      if (CFStringFind(a2, @"Day", 0).location != -1)
      {
        *(a4 + 6) = v34;
        v41 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_DAYS", v57);
        NL::DatePeriod::setDisplayKey(a4, v41);
        CFCalendarAddComponents(v21, &at, 0, "d", v57);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
LABEL_98:
        *&v84 = *v73;
        goto LABEL_99;
      }

      if (CFStringFind(a2, @"Weekend", 0).location != -1)
      {
        *(a4 + 6) = v35;
        v44 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_WEEKENDS", v57);
        NL::DatePeriod::setDisplayKey(a4, v44);
        if (v72 <= 6)
        {
          CFCalendarAddComponents(v21, &at, 0, "d", (7 - v72));
        }

        CFCalendarAddComponents(v21, &at, 0, "w", v57);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yEw", &v73[8], &v72, &v71);
        DWORD1(v86) = v72;
        *&v87 = __PAIR64__(*&v73[8], v71);
        CFCalendarAddComponents(v21, &at, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yEw", &v73[8], &v72, &v71);
        goto LABEL_70;
      }

      if (CFStringFind(a2, @"Week", 0).location != -1)
      {
        *(a4 + 6) = v56;
        v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_WEEKS", v57);
        NL::DatePeriod::setDisplayKey(a4, v45);
        CFCalendarAddComponents(v21, &at, 0, "w", v57);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yw", &v73[8], &v71);
        goto LABEL_82;
      }

      if (CFStringFind(a2, @"Month", 0).location != -1)
      {
        *(a4 + 6) = v55;
        v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_MONTHS", v57);
        NL::DatePeriod::setDisplayKey(a4, v47);
        CFCalendarAddComponents(v21, &at, 0, "dM", (1 - *v73), v57);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_106;
      }

      if (CFStringFind(a2, @"Year", 0).location == -1)
      {
        goto LABEL_7;
      }

      *(a4 + 6) = v54;
      v50 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_YEARS", v57);
      NL::DatePeriod::setDisplayKey(a4, v50);
      CFCalendarAddComponents(v21, &at, 0, "dMy", (1 - *v73), (1 - *&v73[4]), v57);
      CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
LABEL_99:
      DWORD2(v84) = *&v73[8];
      goto LABEL_7;
    }

    if (CFStringHasPrefix(a2, @"RelativeLast"))
    {
      if (CFStringFind(a2, @"Weekend", 0).location != -1)
      {
        NL::DatePeriod::setDisplayKey(a4, @"LAST_WEEKEND");
        *(a4 + 6) = 7;
        CFCalendarAddComponents(v21, &at, 0, "E", -v72);
        if (v72 <= 2)
        {
          CFCalendarAddComponents(v21, &at, 0, "d", 7);
        }

LABEL_27:
        CFCalendarDecomposeAbsoluteTime(v21, at, "yEw", &v73[8], &v72, &v71);
        DWORD1(v86) = v72;
        *&v87 = __PAIR64__(*&v73[8], v71);
        CFCalendarAddComponents(v21, &at, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yEw", &v73[8], &v72, &v71);
LABEL_70:
        DWORD1(v82) = v72;
        *&v83 = __PAIR64__(*&v73[8], v71);
        goto LABEL_7;
      }

      if (CFStringFind(a2, @"Week", 0).location != -1)
      {
        NL::DatePeriod::setDisplayKey(a4, @"LAST_WEEK");
        *(a4 + 6) = 8;
        v40 = v71 - 1;
LABEL_83:
        *&v87 = __PAIR64__(*&v73[8], v40);
        goto LABEL_7;
      }

      if (CFStringFind(a2, @"Month", 0).location == -1)
      {
        if (CFStringFind(a2, @"Year", 0).location == -1)
        {
          goto LABEL_7;
        }

        NL::DatePeriod::setDisplayKey(a4, @"LAST_YEAR");
        *(a4 + 6) = 10;
        CFCalendarAddComponents(v21, &at, 0, "dMy", (1 - *v73), (1 - *&v73[4]), 0xFFFFFFFFLL);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_99;
      }

      NL::DatePeriod::setDisplayKey(a4, @"LAST_MONTH");
      *(a4 + 6) = 9;
      CFCalendarAddComponents(v21, &at, 0, "dM", (1 - *v73), 0xFFFFFFFFLL);
      CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
      goto LABEL_106;
    }

    if (CFStringHasPrefix(a2, @"RelativeThis"))
    {
      if (CFStringFind(a2, @"Weekend", 0).location != -1)
      {
        NL::DatePeriod::setDisplayKey(a4, @"THIS_WEEKEND");
        *(a4 + 6) = 2;
        if (v72 <= 6)
        {
          CFCalendarAddComponents(v21, &at, 0, "d", (7 - v72));
        }

        goto LABEL_27;
      }

      if (CFStringFind(a2, @"Week", 0).location != -1)
      {
        NL::DatePeriod::setDisplayKey(a4, @"THIS_WEEK");
        *(a4 + 6) = 3;
LABEL_82:
        v40 = v71;
        goto LABEL_83;
      }

      if (CFStringFind(a2, @"Month", 0).location == -1)
      {
        if (CFStringFind(a2, @"Year", 0).location == -1)
        {
          goto LABEL_7;
        }

        NL::DatePeriod::setDisplayKey(a4, @"THIS_YEAR");
        *(a4 + 6) = 5;
        CFCalendarAddComponents(v21, &at, 0, "dM", (1 - *v73), (1 - *&v73[4]));
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_99;
      }

      NL::DatePeriod::setDisplayKey(a4, @"THIS_MONTH");
      *(a4 + 6) = 4;
      CFCalendarAddComponents(v21, &at, 0, "d", (1 - *v73));
      CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
LABEL_106:
      *(&v84 + 4) = *&v73[4];
      goto LABEL_7;
    }

    if (!CFStringHasPrefix(a2, @"RelativeEnd"))
    {
      if (CFStringHasSuffix(a2, @"TodayDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"TODAY");
        *(a4 + 6) = 1;
        *&v84 = *v73;
        DWORD2(v84) = *&v73[8];
        if (!NL::DateComponents::isEmpty(&v80))
        {
          *&v80 = *v73;
          DWORD2(v80) = *&v73[8];
        }

        goto LABEL_7;
      }

      if (CFStringHasSuffix(a2, @"YesterdayDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"YESTERDAY");
        *(a4 + 6) = 6;
        CFCalendarAddComponents(v21, &at, 0, "d", 0xFFFFFFFFLL);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_98;
      }

      if (CFStringHasSuffix(a2, @"TomorrowDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"TOMORROW");
        *(a4 + 6) = 11;
        CFCalendarAddComponents(v21, &at, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_98;
      }

      if (CFStringHasSuffix(a2, @"TwoDaysDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_2-N_DAYS_AGO");
        *(a4 + 6) = 23;
        CFCalendarAddComponents(v21, &at, 0, "d", 4294967294);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_98;
      }

      if (CFStringHasSuffix(a2, @"ThreeDaysDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_3-N_DAYS_AGO");
        *(a4 + 6) = 23;
        CFCalendarAddComponents(v21, &at, 0, "d", 4294967293);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_98;
      }

      if (CFStringHasSuffix(a2, @"TwoWeeksDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_2-N_WEEKS_AGO");
        *(a4 + 6) = 24;
        v40 = v71 - 2;
        goto LABEL_83;
      }

      if (CFStringHasSuffix(a2, @"ThreeWeeksDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_3-N_WEEKS_AGO");
        *(a4 + 6) = 24;
        v40 = v71 - 3;
        goto LABEL_83;
      }

      if (CFStringHasSuffix(a2, @"TwoMonthsDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_2-N_MONTHS_AGO");
        *(a4 + 6) = 25;
        CFCalendarAddComponents(v21, &at, 0, "dM", (1 - *v73), 4294967294);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_106;
      }

      if (CFStringHasSuffix(a2, @"ThreeMonthsDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_3-N_MONTHS_AGO");
        *(a4 + 6) = 25;
        CFCalendarAddComponents(v21, &at, 0, "dM", (1 - *v73), 4294967293);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
        goto LABEL_106;
      }

      if (CFStringHasSuffix(a2, @"TwoYearsDate"))
      {
        NL::DatePeriod::setDisplayKey(a4, @"VAL_2-N_YEARS_AGO");
        *(a4 + 6) = 26;
        CFCalendarAddComponents(v21, &at, 0, "dMy", (1 - *v73), (1 - *&v73[4]), 4294967294);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
      }

      else
      {
        if (!CFStringHasSuffix(a2, @"ThreeYearsDate"))
        {
          goto LABEL_7;
        }

        NL::DatePeriod::setDisplayKey(a4, @"VAL_3-N_YEARS_AGO");
        *(a4 + 6) = 26;
        CFCalendarAddComponents(v21, &at, 0, "dMy", (1 - *v73), (1 - *&v73[4]), 4294967293);
        CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
      }

      goto LABEL_99;
    }

    if (!CFStringHasSuffix(a2, @"IsoMonthDate"))
    {
      goto LABEL_7;
    }

    NL::DatePeriod::setDisplayKey(a4, @"FORMATTED");
    *(a4 + 6) = 38;
    v42 = **this;
    if (v22)
    {
      if (at <= NL::DateComponents::getAbsoluteTime(&v84, v21, v42) || (!DWORD2(v85) || SDWORD2(v85) >= v70) && (!DWORD1(v86) || SDWORD1(v86) >= v72) && (!v84 || v84 >= *v73) && (!DWORD1(v84) || SDWORD1(v84) >= *&v73[4]))
      {
        goto LABEL_97;
      }

      v43 = 1;
    }

    else
    {
      if (at >= NL::DateComponents::getAbsoluteTime(&v84, v21, v42) && (!DWORD2(v85) || SDWORD2(v85) < v70) && (!DWORD1(v86) || SDWORD1(v86) < v72) && (!v84 || v84 < *v73) && (!DWORD1(v84) || SDWORD1(v84) < *&v73[4]))
      {
        goto LABEL_97;
      }

      v43 = 0xFFFFFFFFLL;
    }

    CFCalendarAddComponents(v21, &at, 0, "y", v43);
LABEL_97:
    CFCalendarAddComponents(v21, &at, 0, "dM", -*v73, (1 - *&v73[4]));
    CFCalendarAddComponents(v21, &at, 0, "dM", 0xFFFFFFFFLL, DWORD1(v84));
    CFCalendarDecomposeAbsoluteTime(v21, at, "yMd", &v73[8], &v73[4], v73);
    goto LABEL_98;
  }

  if (CFStringHasPrefix(a2, @"RelativeEveryTwo"))
  {
    v30 = 2;
  }

  else if (CFStringHasPrefix(a2, @"RelativeEveryThree"))
  {
    v30 = 3;
  }

  else
  {
    v30 = 1;
  }

  CFCalendarDecomposeAbsoluteTime(v21, at, "yMdHms", &v73[8], &v73[4], v73, &v70, &v69, &v68);
  if (CFStringFind(a2, @"Second", 0).location != -1)
  {
    *(a4 + 6) = 43;
    v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_SECONDS", v30);
    NL::DatePeriod::setDisplayKey(a4, v32);
    *&v84 = *v73;
    DWORD2(v84) = *&v73[8];
    DWORD2(v85) = v70;
    v24 = v68;
    v23 = v69;
    v65 = v30;
    goto LABEL_6;
  }

  if (CFStringFind(a2, @"Minute", 0).location == -1)
  {
    if (CFStringFind(a2, @"Hour", 0).location == -1)
    {
      if (CFStringFind(a2, @"IsoDay", 0).location == -1)
      {
        if (CFStringFind(a2, @"IsoMonth", 0).location == -1)
        {
          if (CFStringFind(a2, @"Day", 0).location == -1)
          {
            if (CFStringFind(a2, @"Weekend", 0).location == -1)
            {
              if (CFStringFind(a2, @"Week", 0).location == -1)
              {
                if (CFStringFind(a2, @"Month", 0).location == -1)
                {
                  if (CFStringFind(a2, @"Year", 0).location != -1)
                  {
                    *(a4 + 6) = 51;
                    v53 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_YEARS", v30);
                    NL::DatePeriod::setDisplayKey(a4, v53);
                    LODWORD(v84) = *v73;
                    *(&v84 + 4) = *&v73[4];
                    v61 = v30;
                  }
                }

                else
                {
                  *(a4 + 6) = 50;
                  v52 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_MONTHS", v30);
                  NL::DatePeriod::setDisplayKey(a4, v52);
                  LODWORD(v84) = *v73;
                  *(&v84 + 4) = *&v73[4];
                  v59 = v30;
                }

                goto LABEL_7;
              }

              *(a4 + 6) = 49;
              v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_WEEKS", v30);
              NL::DatePeriod::setDisplayKey(a4, v51);
              DWORD1(v86) = v72;
              *&v87 = __PAIR64__(*&v73[8], v71);
            }

            else
            {
              *(a4 + 6) = 48;
              v48 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_WEEKENDS", v30);
              NL::DatePeriod::setDisplayKey(a4, v48);
              v49 = 7;
              if (v72 != 7)
              {
                CFCalendarAddComponents(v21, &at, 0, "d", (7 - v72));
                CFCalendarDecomposeAbsoluteTime(v21, at, "yEw", &v73[8], &v72, &v71);
                v49 = v72;
              }

              DWORD1(v86) = v49;
              *&v87 = __PAIR64__(*&v73[8], v71);
              DWORD1(v82) = 1;
            }

            v62 = v30;
          }

          else
          {
            *(a4 + 6) = 46;
            v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_DAYS", v30);
            NL::DatePeriod::setDisplayKey(a4, v46);
            LODWORD(v84) = *v73;
            *(&v84 + 4) = *&v73[4];
            v60 = v30;
          }
        }

        else
        {
          *(a4 + 6) = 52;
          NL::DatePeriod::setDisplayKey(a4, @"VAL_1-N_EVERY_ORDINAL_ANY:FORMATTED");
          v61 = v30;
        }
      }

      else
      {
        *(a4 + 6) = 52;
        NL::DatePeriod::setDisplayKey(a4, @"VAL_1-N_EVERY_ORDINAL_ANY:FORMATTED");
        v62 = v30;
      }
    }

    else
    {
      *(a4 + 6) = 45;
      v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_HOURS", v30);
      NL::DatePeriod::setDisplayKey(a4, v39);
      *&v84 = *v73;
      DWORD2(v84) = *&v73[8];
      DWORD2(v85) = v70;
      v63 = v30;
    }
  }

  else
  {
    *(a4 + 6) = 44;
    v33 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"VAL_%d-N_EVERY_MINUTES", v30);
    NL::DatePeriod::setDisplayKey(a4, v33);
    *&v84 = *v73;
    DWORD2(v84) = *&v73[8];
    *(&v85 + 1) = __PAIR64__(v69, v70);
    v64 = v30;
  }

LABEL_7:
  v25 = v85;
  *(a4 + 28) = v84;
  *(a4 + 44) = v25;
  v26 = v87;
  *(a4 + 60) = v86;
  *(a4 + 76) = v26;
  v27 = v81;
  *(a4 + 92) = v80;
  *(a4 + 108) = v27;
  v28 = v83;
  *(a4 + 124) = v82;
  *(a4 + 140) = v28;
  *(a4 + 39) = v60;
  *(a4 + 40) = v59;
  *(a4 + 41) = v61;
  *(v14 + 2) = v79;
  *v14 = v78;
  *(a4 + 45) = v63;
  *(a4 + 46) = v64;
  *(a4 + 47) = v65;
  *(v17 + 2) = v77;
  *v17 = v76;
  *(a4 + 51) = v62;
  *v19 = v74;
  *(v19 + 2) = v75;
  NL::DatePeriod::setCalendarWithIdentifier(a4, v58);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_22CD72174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, const void *a28)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a26, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(&a28, 0);
  _Unwind_Resume(a1);
}

uint64_t updateDateComponentsWithValues(SInt32 *a1, uint64_t a2, CFDictionaryRef theDict, int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!theDict)
  {
    result = 0;
    goto LABEL_92;
  }

  LODWORD(v4) = a4;
  Count = CFDictionaryGetCount(theDict);
  MEMORY[0x28223BE20]();
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v9 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = v9;
  }

  bzero(&v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  CFDictionaryGetKeysAndValues(theDict, v10, 0);
  if (Count < 1)
  {
LABEL_77:
    if (a1[10] || a1[11] || a1[12])
    {
      a1[13] = a1[2];
      a1[2] = 0;
    }

    v25 = a1[4];
    if (!v25)
    {
      goto LABEL_91;
    }

    v26 = a1[6];
    if (*(a1 + 3))
    {
      if (!v26 || v25 != 2 && v25 < 5)
      {
        goto LABEL_91;
      }

      v27 = v26 % 12 + 12;
    }

    else
    {
      if (v25 >= 8)
      {
LABEL_91:
        result = 1;
        goto LABEL_92;
      }

      v27 = dword_22CDDEB08[v25 - 1];
    }

    a1[6] = v27;
    goto LABEL_91;
  }

  v31 = v29;
  v30 = 1;
  v32 = v4;
  v33 = a2;
  do
  {
    v12 = *v10;
    if (!CFStringHasSuffix(*v10, @"Date") && !CFStringHasPrefix(v12, @"NUMBERS"))
    {
      if (CFStringHasPrefix(v12, @"SPELLED"))
      {
        if ((v4 & 1) == 0)
        {
          Value = CFDictionaryGetValue(theDict, v12);
          v14 = intFromSpelledNumber(Value, a2);
          if (v14 < 0)
          {
            goto LABEL_93;
          }

          a1[2] = v14;
        }
      }

      else
      {
        HasPrefix = CFStringHasPrefix(v12, @"Num");
        v16 = CFDictionaryGetValue(theDict, v12);
        v4 = v16;
        if (HasPrefix)
        {
          if (CFDictionaryContainsKey(v16, @"NUMBERS"))
          {
            v17 = CFDictionaryGetValue(v4, @"NUMBERS");
            IntValue = intFromSpelledNumber(v17, v33);
            if (IntValue < 0)
            {
LABEL_93:
              result = 0;
              goto LABEL_92;
            }
          }

          else if (CFDictionaryContainsKey(v4, @"DIGITS"))
          {
            v19 = CFDictionaryGetValue(v4, @"DIGITS");
            IntValue = CFStringGetIntValue(v19);
          }

          else
          {
            IntValue = -1;
          }

          if (CFStringHasPrefix(v12, @"NumWeeks"))
          {
            a1[14] = IntValue;
          }

          if (CFStringHasPrefix(v12, @"NumYears"))
          {
            a1[15] = IntValue;
          }

          goto LABEL_29;
        }

        if (CFStringHasPrefix(v12, @"d") || CFStringHasPrefix(v12, @"DAY_ORDINAL"))
        {
          *a1 = CFStringGetIntValue(v4);
          a2 = v33;
          LOBYTE(v4) = v32;
          goto LABEL_9;
        }

        if (CFStringHasPrefix(v12, @"E"))
        {
          a1[9] = CFStringGetIntValue(v4);
          goto LABEL_29;
        }

        if (CFStringHasPrefix(v12, @"M"))
        {
          a1[1] = CFStringGetIntValue(v4);
          goto LABEL_29;
        }

        if (!CFStringHasPrefix(v12, @"y") && !CFStringHasPrefix(v12, @"Y"))
        {
          if (CFStringHasPrefix(v12, @"F"))
          {
            a1[10] = CFStringGetIntValue(v4);
          }

          else if (CFStringHasPrefix(v12, @"w"))
          {
            a1[12] = CFStringGetIntValue(v4);
          }

          else if (CFStringHasPrefix(v12, @"W"))
          {
            a1[11] = CFStringGetIntValue(v4);
          }

          else if (CFStringHasPrefix(v12, @"G"))
          {
            a1[5] = CFStringGetIntValue(v4);
          }

          else if (CFStringHasPrefix(v12, @"q") || CFStringHasPrefix(v12, @"Q"))
          {
            a1[3] = CFStringGetIntValue(v4);
          }

          else if (CFStringHasPrefix(v12, @"h") || CFStringHasPrefix(v12, @"H"))
          {
            a1[6] = CFStringGetIntValue(v4);
          }

          else if (CFStringHasPrefix(v12, @"m"))
          {
            a1[7] = CFStringGetIntValue(v4);
          }

          else
          {
            if (!CFStringHasPrefix(v12, @"s"))
            {
              result = CFStringHasPrefix(v12, @"a");
              if (!result)
              {
                goto LABEL_92;
              }

              if (CFStringHasPrefix(v4, @"am"))
              {
                v24 = 1;
              }

              else if (CFStringHasPrefix(v4, @"pm"))
              {
                v24 = 2;
              }

              else if (CFStringHasPrefix(v4, @"morning"))
              {
                v24 = 3;
              }

              else if (CFStringHasPrefix(v4, @"noon"))
              {
                v24 = 4;
              }

              else if (CFStringHasPrefix(v4, @"afternoon"))
              {
                v24 = 5;
              }

              else if (CFStringHasPrefix(v4, @"evening"))
              {
                v24 = 6;
              }

              else
              {
                if (!CFStringHasPrefix(v4, @"night"))
                {
                  goto LABEL_29;
                }

                v24 = 7;
              }

              a1[4] = v24;
              goto LABEL_29;
            }

            a1[8] = CFStringGetIntValue(v4);
          }

LABEL_29:
          a2 = v33;
          LOBYTE(v4) = v32;
          goto LABEL_9;
        }

        v20 = CFStringGetIntValue(v4);
        v30 = (v20 < 2101) & v30;
        a1[2] = v20;
        if (CFStringCompare(v12, @"yy", 0))
        {
          goto LABEL_29;
        }

        v21 = a1[2];
        a2 = v33;
        LOBYTE(v4) = v32;
        if (v21 > 69)
        {
          v22 = v21 + 1000;
        }

        else
        {
          v22 = v21 + 2000;
        }

        a1[2] = v22;
      }
    }

LABEL_9:
    ++v10;
    --Count;
  }

  while (Count);
  if (v30)
  {
    goto LABEL_77;
  }

  result = 0;
LABEL_92:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t intValueForNumberInValues(const __CFLocale *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"SPELLED");
  if (Value)
  {
    result = intFromSpelledNumber(Value, a1);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v6 = CFDictionaryGetValue(theDict, @"NUMBERS");
  }

  else
  {
    v6 = CFDictionaryGetValue(theDict, @"DIGITS");
    if (!v6)
    {
      v6 = CFDictionaryGetValue(theDict, @"NON_YEAR_DIGITS");
      if (!v6)
      {
        v6 = CFDictionaryGetValue(theDict, @"NON_MONTH_DIGITS");
        if (!v6)
        {
          v6 = CFDictionaryGetValue(theDict, @"NON_DAY_DIGITS");
          if (!v6)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return CFStringGetIntValue(v6);
}

void NL::DateConverter::mergeRange(NL::DateConverter *this@<X0>, const NL::DatePeriod *a2@<X1>, const NL::DatePeriod *a3@<X3>, int a4@<W2>, int a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v16 = *(a2 + 28);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    NL::DatePeriod::resolveDateComponents(a2, &v50, &v38, a4, *(a2 + 240));
    if (NL::DateComponents::isEmpty(&v50))
    {
      v50 = v38;
      v51 = v39;
      v52 = v40;
      v53 = v41;
    }

    NL::DatePeriod::resolveDateComponents(a3, &v46, &v38, a5, *(a3 + 240));
    if (NL::DateComponents::isEmpty(&v46) || !NL::DateComponents::isEmpty(&v38))
    {
      v46 = v38;
      v47 = v39;
      v48 = v40;
      v49 = v41;
    }

    if (!a6 || (!v50 || v46) && (!DWORD1(v50) || DWORD1(v46)) && (!DWORD2(v50) || DWORD2(v46)) && (!DWORD1(v52) || DWORD1(v48)))
    {
      getCurrentDateComponents(v9, v16, v37);
      v18 = *(a2 + 172);
      v42 = *(a2 + 156);
      v43 = v18;
      v19 = *(a2 + 204);
      v44 = *(a2 + 188);
      v45 = v19;
      if (DWORD1(v48) && !v46 && NL::DateComponents::isEmpty((a3 + 156)))
      {
        resolveDateComponentsToCurrentDate(v9, v8, v16, &v46, *(*this + 66));
      }

      if (DWORD1(v52) && !v50 && NL::DateComponents::isEmpty((a2 + 156)) && (*(*this + 66) & 1) == 0)
      {
        resolveDateComponentsToCurrentDate(v9, v8, v16, &v50, 0);
        while (1)
        {
          AbsoluteTime = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
          if (AbsoluteTime <= NL::DateComponents::getAbsoluteTime(&v46, v9, v16))
          {
            break;
          }

          updateDateComponentsForWeekdayWithWeekOffset(v9, v8, v16, &v50, -1);
        }
      }

      if (DWORD1(v46) && !DWORD2(v46) && NL::DateComponents::isEmpty((a3 + 156)))
      {
        resolveDateComponentsToCurrentDate(v9, v8, v16, &v46, *(*this + 66));
      }

      if (DWORD1(v50) && !DWORD2(v50) && NL::DateComponents::isEmpty((a2 + 156)))
      {
        resolveDateComponentsToCurrentDate(v9, v8, v16, &v50, *(*this + 66));
        memset(v36, 0, sizeof(v36));
        v20 = *(*this + 66);
        v21 = *(*this + 66) ? 1 : -1;
        DWORD2(v36[0]) = v21;
        v22 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
        if (v22 > NL::DateComponents::getAbsoluteTime(&v46, v9, v16) != v20)
        {
          do
          {
            updateDateComponentsWithOffsetComponents(v9, v8, v16, &v50, v36);
            v23 = *(*this + 66);
            v24 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
          }

          while ((((v24 > NL::DateComponents::getAbsoluteTime(&v46, v9, v16)) ^ v23) & 1) != 0);
        }
      }

      if (!NL::DateComponents::isEmpty((a2 + 156)) && !NL::DateComponents::isEmpty((a3 + 156)))
      {
        goto LABEL_78;
      }

      if (NL::DateComponents::isTime(&v46))
      {
        NL::DateComponents::merge(&v50, &v46);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        if (*(*this + 66))
        {
LABEL_45:
          v25 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
          if (v25 < NL::DateComponents::getAbsoluteTime(v37, v9, v16) && *(a2 + 6) == 40 && !CFStringsAreEqual(*a2, @"HOLIDAY"))
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            do
            {
              v26 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
            }

            while (v26 > NL::DateComponents::getAbsoluteTime(&v46, v9, v16) && (updateDateComponentsWithHolidayReference(*(*this + 24), *a2, v9, v16, v8, (DWORD2(v50) - 1), &v50, &v38) & 1) != 0);
          }

          goto LABEL_78;
        }

        v28 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
        if (v28 <= NL::DateComponents::getAbsoluteTime(v37, v9, v16))
        {
          if ((*(*this + 66) & 1) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_45;
        }

        if (*(a3 + 6) == 40 && !CFStringsAreEqual(*a3, @"HOLIDAY"))
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          while (1)
          {
            v29 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
            if (v29 <= NL::DateComponents::getAbsoluteTime(v37, v9, v16) || !updateDateComponentsWithHolidayReference(*(*this + 24), *a2, v9, v16, v8, (DWORD2(v50) - 1), &v50, &v38))
            {
              break;
            }

            if (!NL::DateComponents::isEmpty(&v38))
            {
              v50 = v38;
              v51 = v39;
              v52 = v40;
              v53 = v41;
            }
          }
        }

LABEL_78:
        operator new();
      }

      if (*(*this + 66))
      {
        v27 = 1;
      }

      else
      {
        v30 = NL::DateComponents::getAbsoluteTime(&v46, v9, v16);
        v27 = 1;
        if (v30 > NL::DateComponents::getAbsoluteTime(v37, v9, v16) && *(a3 + 6) == 40 && !CFStringsAreEqual(*a3, @"HOLIDAY"))
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          while (1)
          {
            v34 = NL::DateComponents::getAbsoluteTime(&v46, v9, v16);
            if (v34 <= NL::DateComponents::getAbsoluteTime(v37, v9, v16))
            {
              break;
            }

            updated = updateDateComponentsWithHolidayReference(*(*this + 24), *a3, v9, v16, v8, (DWORD2(v46) - 1), &v46, &v38);
            v27 = updated;
            if (!updated)
            {
              break;
            }

            if (!NL::DateComponents::isEmpty(&v38))
            {
              v46 = v38;
              v47 = v39;
              v48 = v40;
              v49 = v41;
            }
          }
        }
      }

      v31 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
      if (v31 > NL::DateComponents::getAbsoluteTime(&v46, v9, v16))
      {
        if (*(a2 + 6) != 40 || CFStringsAreEqual(*a2, @"HOLIDAY"))
        {
          goto LABEL_6;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        while (1)
        {
          v32 = NL::DateComponents::getAbsoluteTime(&v50, v9, v16);
          if (v32 <= NL::DateComponents::getAbsoluteTime(&v46, v9, v16))
          {
            break;
          }

          if ((updateDateComponentsWithHolidayReference(*(*this + 24), *a2, v9, v16, v8, (DWORD2(v50) - 1), &v50, &v38) & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      if (v27)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_6:
  *a7 = 0;
}

void sub_22CD73178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  std::unique_ptr<NL::DatePeriod>::~unique_ptr[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

int *NL::DateComponents::merge(int *result, int *a2)
{
  v2 = *a2;
  v3 = result[1];
  if (*result)
  {
    v2 = *result;
  }

  *result = v2;
  v4 = a2[1];
  if (v3)
  {
    v4 = v3;
  }

  result[1] = v4;
  v5 = a2[2];
  v6 = result[3];
  if (result[2])
  {
    v5 = result[2];
  }

  result[2] = v5;
  v7 = a2[3];
  if (v6)
  {
    v7 = v6;
  }

  result[3] = v7;
  v8 = result[4];
  if (!v8)
  {
    v8 = a2[4];
  }

  result[4] = v8;
  v9 = a2[6];
  v10 = result[7];
  if (result[6])
  {
    v9 = result[6];
  }

  result[6] = v9;
  v11 = a2[7];
  if (v10)
  {
    v11 = v10;
  }

  result[7] = v11;
  v12 = a2[8];
  v13 = result[9];
  if (result[8])
  {
    v12 = result[8];
  }

  result[8] = v12;
  v14 = a2[9];
  if (v13)
  {
    v14 = v13;
  }

  result[9] = v14;
  v15 = a2[10];
  v16 = result[11];
  if (result[10])
  {
    v15 = result[10];
  }

  result[10] = v15;
  v17 = a2[11];
  if (v16)
  {
    v17 = v16;
  }

  result[11] = v17;
  v18 = a2[12];
  v19 = result[13];
  if (result[12])
  {
    v18 = result[12];
  }

  result[12] = v18;
  v20 = a2[13];
  if (v19)
  {
    v20 = v19;
  }

  result[13] = v20;
  return result;
}

const __CFDictionary *composeHolidayAbsoluteDateWithValue(const __CFDictionary *result, const __CFDictionary *a2, CFAbsoluteTime *a3, double *a4, int a5, int *a6, int *a7)
{
  if (a2)
  {
    v10 = result;
    valuePtr = 0;
    Value = CFDictionaryGetValue(result, @"Day");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
    }

    v12 = CFDictionaryGetValue(v10, @"Month");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v13 = valuePtr;
    }

    else
    {
      v13 = 0;
    }

    return CFCalendarComposeAbsoluteTime(a2, a3, "dMy", HIDWORD(valuePtr), v13, a4);
  }

  return result;
}

_DWORD *extractJulianEasterInYear(_DWORD *result, int *a2, int a3)
{
  if (a3 <= 0)
  {
    v3 = -(-a3 & 3);
  }

  else
  {
    v3 = a3 & 3;
  }

  v4 = 4 * (a3 % 7) + 2 * v3 + 34;
  v5 = v4 - 7 * ((v4 - (19 * (a3 % 19) + 15 - 30 * ((((34953 * (19 * (a3 % 19) + 15)) >> 16) >> 4) + ((((34953 * (19 * (a3 % 19) + 15)) >> 16) & 0x8000) >> 15)))) / 7) + 114;
  v6 = 9 * (v4 - 7 * ((v4 - (19 * (a3 % 19) + 15 - 30 * ((((34953 * (19 * (a3 % 19) + 15)) >> 16) >> 4) + ((((34953 * (19 * (a3 % 19) + 15)) >> 16) & 0x8000) >> 15)))) / 7) + 114);
  v7 = (((v5 - BYTE1(v6)) >> 1) + (v6 >> 8)) >> 4;
  v8 = (v5 - 31 * v7);
  if (result)
  {
    *result = (v8 + 13) % extractJulianEasterInYear(int *,int *,int)::lastDayOfMonthLeapYear[v7 - 1] + 1;
  }

  if (a2)
  {
    *a2 = (v8 + 13) / extractJulianEasterInYear(int *,int *,int)::lastDayOfMonthLeapYear[v7 - 1] + v7;
  }

  return result;
}

_DWORD *extractGregorianEasterInYear(_DWORD *result, unsigned int *a2, int a3)
{
  v3 = a3 % 19;
  v4 = a3 / 100;
  v5 = a3 % 100;
  v6 = (a3 / 100) & 3;
  if (a3 / -100 >= 0)
  {
    v6 = -((a3 / -100) & 3);
  }

  v7 = ((1431655765 * (v4 + (v4 + 8) / -25 + 1)) >> 32) - (v4 + (v4 + 8) / -25 + 1);
  v8 = (v4 + a3 / -400 + 19 * v3 + (v7 >> 1) + (v7 >> 31) + 15) % 30;
  v9 = v5 + ((v5 >> 13) & 3);
  v10 = (2 * (v6 + (v9 >> 2)) + ((v9 & 0xFC) - v5 + 32) - v8) % 7;
  v11 = (37201 * (v3 + 11 * v8 + 22 * v10)) >> 16;
  v12 = HIBYTE(v11) + ((v11 & 0x8000) >> 15);
  if (result)
  {
    v13 = 9 * (v10 + v8 - 7 * v12 + 114);
    *result = (v10 + v8 - 7 * v12 + 114 - 31 * ((((v10 + v8 - 7 * v12 + 114 - BYTE1(v13)) >> 1) + (v13 >> 8)) >> 4) + 1);
  }

  if (a2)
  {
    *a2 = (((v10 + v8 - 7 * v12 + 114 - ((9 * (v10 + v8 - 7 * v12 + 114)) >> 8)) >> 1) + ((9 * (v10 + v8 - 7 * v12 + 114)) >> 8)) >> 4;
  }

  return result;
}

const __CFDictionary *composeHolidayRelativeDateWithValue(const __CFDictionary *result, __CFCalendar *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  if (result && a2)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(result, @"RelativeDays");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    CFCalendarComposeAbsoluteTime(a2, a3, "dMy", a4, a5, a6);
    return CFCalendarAddComponents(a2, a3, 0, "d", valuePtr);
  }

  return result;
}

uint64_t resetTimeForUnit(__CFCalendar *a1, CFAbsoluteTime *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  v11 = 0;
  CFCalendarDecomposeAbsoluteTime(a1, v8, v9, &v11);
  if (*(a3 + 23) >= 0)
  {
    return CFCalendarAddComponents(a1, a2, 0, a3, a4 - v11);
  }

  else
  {
    return CFCalendarAddComponents(a1, a2, 0, *a3, a4 - v11);
  }
}

NL::DatePeriod *NL::DatePeriod::DatePeriod(NL::DatePeriod *this)
{
  *(this + 28) = 0;
  *(this + 29) = 0;
  v2 = (this + 232);
  *(this + 204) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 240) = 0;
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x277CBECE8], 0x333uLL);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v2, ISO8601Formatter);
  return this;
}

void sub_22CD73870(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v3, 0);
  nlp::CFScopedPtr<__CFDate const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v1 + 2, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(v1 + 1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFDateFormatter *>::reset(const void **a1, const void *a2)
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

void NL::DatePeriod::~DatePeriod(const void **this)
{
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 29, 0);
  nlp::CFScopedPtr<__CFDate const*>::reset(this + 28, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(this + 1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this, 0);
}

void loadPlistFromFile(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  CFStringFromString = createCFStringFromString(a1);
  getPathForResource(CFStringFromString, &v48);
  v3 = std::string::compare(&v48, "");
  if (!v3)
  {
    v10 = NL::CFLogger::sharedInstance(v3);
    (*(*v10 + 16))(v10, 3, "Could not find the mappings from resource bundle");
    if (CFStringFromString)
    {
      CFRelease(CFStringFromString);
    }

    goto LABEL_54;
  }

  v4 = *MEMORY[0x277CBECE8];
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v48;
  }

  else
  {
    v5 = v48.__r_.__value_.__r.__words[0];
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
  v7 = CFURLCreateWithFileSystemPath(v4, v6, kCFURLPOSIXPathStyle, 0);
  v8 = v7;
  resourceData = 0;
  errorCode = 0;
  if (!v7)
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = CFURLCreateDataAndPropertiesFromResource(v4, v7, &resourceData, 0, 0, &errorCode);
  v9 = v7 != 0;
  if (v6)
  {
LABEL_11:
    CFRelease(v6);
  }

LABEL_12:
  if (v8)
  {
    CFRelease(v8);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (resourceData)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    error = 0;
    plist = CFPropertyListCreateWithData(v4, resourceData, 0, 0, &error);
    if (resourceData)
    {
      CFRelease(resourceData);
    }

    if (plist && CFPropertyListIsValid(plist, kCFPropertyListXMLFormat_v1_0))
    {
      Count = CFDictionaryGetCount(plist);
      std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count);
      CFDictionaryGetKeysAndValues(plist, keys, 0);
      v13 = keys;
      v28 = v44;
      if (keys != v44)
      {
        do
        {
          v14 = *v13;
          Value = CFDictionaryGetValue(plist, *v13);
          getUTF8StringFromCFString(v14, v41);
          v16 = CFDictionaryGetCount(Value);
          std::vector<__CFString const*>::vector[abi:ne200100](&v39, v16);
          v30 = v13;
          CFDictionaryGetKeysAndValues(Value, v39, 0);
          v18 = v39;
          v17 = v40;
          if (v39 != v40)
          {
            do
            {
              v19 = *v18;
              getUTF8StringFromCFString(*v18, v37);
              v20 = CFDictionaryGetValue(Value, v19);
              v21 = CFArrayGetCount(v20);
              v34 = 0;
              v35 = 0;
              v36 = 0;
              if (v21 >= 1)
              {
                for (i = 0; i != v21; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                  getUTF8StringFromCFString(ValueAtIndex, __p);
                  std::vector<std::string>::push_back[abi:ne200100](&v34, __p);
                  if (v33 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              v49 = v41;
              v24 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v41);
              v49 = v37;
              v25 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v24 + 5, v37) + 5);
              if (v25 != &v34)
              {
                std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v25, v34, v35, 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3));
              }

              __p[0] = &v34;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
              if (v38 < 0)
              {
                operator delete(v37[0]);
              }

              ++v18;
            }

            while (v18 != v17);
            v18 = v39;
          }

          if (v18)
          {
            v40 = v18;
            operator delete(v18);
          }

          if (v42 < 0)
          {
            operator delete(v41[0]);
          }

          v13 = v30 + 1;
        }

        while (v30 + 1 != v28);
        v13 = keys;
      }

      if (v13)
      {
        v44 = v13;
        operator delete(v13);
      }

LABEL_53:
      CFRelease(plist);
      goto LABEL_54;
    }

    CFShow(error);
    if (LogHandleForNLMessageIntentDomainDetector(void)::onceToken != -1)
    {
      loadPlistFromFile();
    }

    v27 = LogHandleForNLMessageIntentDomainDetector(void)::logHandle;
    if (os_log_type_enabled(LogHandleForNLMessageIntentDomainDetector(void)::logHandle, OS_LOG_TYPE_FAULT))
    {
      loadPlistFromFile(v27);
    }

    if (plist)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (resourceData)
    {
      CFRelease(resourceData);
    }

    v26 = NL::CFLogger::sharedInstance(v7);
    (*(*v26 + 16))(v26, 3, "Could not load the mappings from resource bundle %d", errorCode);
  }

LABEL_54:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }
}

void NLMessageIntentDomainDetector::NLMessageIntentDomainDetector(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 1065353216;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[4].__r_.__value_.__l.__data_) = 1065353216;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  LODWORD(this[5].__r_.__value_.__r.__words[2]) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(__p, "photosharing-keywords.plist");
  loadPlistFromFile(__p, v6);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__move_assign(&this[4].__r_.__value_.__l.__size_, v6);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::~__hash_table(v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CD740A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::~__hash_table(v15);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void NLMessageIntentDomainDetector::getLemmatizedTextWithSurfaceform(const char *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v5 = *MEMORY[0x277CBECE8];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, *MEMORY[0x277D00390]);
  v8 = NLTaggerCreate();
  CFRelease(Mutable);
  NLTaggerSetString();
  CFStringGetLength(v6);
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v9 = CFStringCreateWithCString(v5, a1, 0x8000100u);
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v5, v9);
  v11 = CFLocaleCreate(v5, CanonicalLocaleIdentifierFromString);
  NLTaggerSetLocaleForRange();
  if (v9)
  {
    CFRelease(v9);
  }

  if (CanonicalLocaleIdentifierFromString)
  {
    CFRelease(CanonicalLocaleIdentifierFromString);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x4002000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  memset(v23, 0, sizeof(v23));
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  memset(v17, 0, sizeof(v17));
  NLTaggerEnumerateTokens();
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:ne200100]<std::vector<std::string>&,std::vector<std::string>&,0>(a3, v19 + 5, v13 + 5);
  _Block_object_dispose(&v12, 8);
  v24 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  _Block_object_dispose(&v18, 8);
  v12 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_22CD74380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  *(v27 - 72) = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v27 - 72));
  _Block_object_dispose(&a26, 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(void *a1, uint64_t a2)
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

void ___ZN29NLMessageIntentDomainDetector32getLemmatizedTextWithSurfaceformERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], *(a1 + 48), *a2);
  getUTF8StringFromCFString(v3, v12);
  v4 = *(a1 + 56);
  v5 = *MEMORY[0x277D00390];
  v6 = NLTaggerCopyTagForCurrentToken();
  v7 = v6;
  if (v6)
  {
    getUTF8StringFromCFString(v6, &v8);
  }

  else
  {
    getUTF8StringFromCFString(v3, &v8);
  }

  *__p = v8;
  v11 = v9;
  std::vector<std::string>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, __p);
  std::vector<std::string>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 40, v12);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_22CD7450C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLMessageIntentDomainDetector::hasPhotoSharingKeywords(std::string *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, *a2, *(a2 + 8));
  }

  else
  {
    v135 = *a2;
  }

  memset(&v134, 0, sizeof(v134));
  memset(&v133, 0, sizeof(v133));
  *(v137 + 7) = 0;
  v137[0] = 0;
  *v99 = a3;
  if (!std::string::compare(this, "zh-Hans"))
  {
    std::string::basic_string[abi:ne200100]<0>(&v120, " ");
    std::string::basic_string[abi:ne200100]<0>(&v105, "");
    replaceAll(&v135, &v120, &v105);
    if (SHIBYTE(v105.__pregex_) < 0)
    {
      operator delete(v105.__begin_.__i_);
    }

    if (SHIBYTE(v120.__pregex_) < 0)
    {
      operator delete(v120.__begin_.__i_);
    }
  }

  else
  {
    NLMessageIntentDomainDetector::getLemmatizedTextWithSurfaceform(this, a2, &v120);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v134, v120.__begin_.__i_, v120.__end_.__i_, 0xAAAAAAAAAAAAAAABLL * ((v120.__end_.__i_ - v120.__begin_.__i_) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v133, *&v120.__flags_, v120.__match_.__matches_.__begin_, 0xAAAAAAAAAAAAAAABLL * ((v120.__match_.__matches_.__begin_ - *&v120.__flags_) >> 3));
    std::string::basic_string[abi:ne200100]<0>(__p, " ");
    join(&v134, __p, &v105);
    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
    }

    *&v135.__r_.__value_.__l.__data_ = *&v105.__begin_.__i_;
    v135.__r_.__value_.__r.__words[2] = v105.__pregex_;
    HIBYTE(v105.__pregex_) = 0;
    LOBYTE(v105.__begin_.__i_) = 0;
    if (SHIBYTE(__p[0].__end_cap_.__value_) < 0)
    {
      operator delete(__p[0].__begin_);
    }

    v105.__begin_.__i_ = &v120.__flags_;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105.__begin_.__i_ = &v120;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
  }

  v131 = 0uLL;
  end = 0;
  v129 = 0uLL;
  v130 = 0;
  std::regex_traits<char>::regex_traits(&v125);
  v128 = 0;
  v127 = 0u;
  v126 = 0u;
  std::regex_traits<char>::regex_traits(&v121);
  v124 = 0;
  v123 = 0u;
  v122 = 0u;
  if (NLMessageIntentDomainDetector::regExEvaluated(this))
  {
    memset(&v105, 0, 24);
    memset(__p, 0, 24);
    v136.__first_ = this;
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[4].__r_.__value_.__l.__size_, &this->__r_.__value_.__l.__data_);
    std::string::basic_string[abi:ne200100]<0>(&v120, "nouns");
    v136.__first_ = &v120;
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 5, &v120.__begin_.__i_);
    v8 = v7[5];
    v9 = v7[6];
    if (SHIBYTE(v120.__pregex_) < 0)
    {
      operator delete(v120.__begin_.__i_);
    }

    v10 = MEMORY[0x277D82828];
    if (v8 != v9)
    {
      v136.__first_ = this;
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[4].__r_.__value_.__l.__size_, &this->__r_.__value_.__l.__data_);
      std::string::basic_string[abi:ne200100]<0>(&v120, "nouns");
      v136.__first_ = &v120;
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v11 + 5, &v120.__begin_.__i_);
      if (SHIBYTE(v120.__pregex_) < 0)
      {
        operator delete(v120.__begin_.__i_);
      }

      v13 = v12[5];
      v14 = v12[6];
      while (v13 != v14)
      {
        if (v13[23] < 0)
        {
          std::string::__init_copy_ctor_external(&v120, *v13, *(v13 + 1));
        }

        else
        {
          v15 = *v13;
          v120.__pregex_ = *(v13 + 2);
          *&v120.__begin_.__i_ = v15;
        }

        std::vector<std::string>::push_back[abi:ne200100](&v105, &v120);
        if (SHIBYTE(v120.__pregex_) < 0)
        {
          operator delete(v120.__begin_.__i_);
        }

        v13 += 24;
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v120);
      i = v105.__end_.__i_;
      v17 = v105.__begin_.__i_;
      v18 = v105.__end_.__i_ - 24;
      v136.__first_ = &v120;
      v136.__begin_ = "|";
      if (v105.__end_.__i_ - 24 != v105.__begin_.__i_)
      {
        do
        {
          std::ostream_iterator<std::string,char,std::char_traits<char>>::operator=[abi:ne200100](&v136, v17);
          v17 += 24;
        }

        while (v17 != v18);
        i = v105.__end_.__i_;
      }

      v21 = *(i - 3);
      v19 = i - 24;
      v20 = v21;
      v22 = v19[23];
      if (v22 >= 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      if (v22 >= 0)
      {
        v24 = *(v19 + 23);
      }

      else
      {
        v24 = *(v19 + 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, v23, v24);
      std::stringbuf::str();
      if (SHIBYTE(end) < 0)
      {
        operator delete(v131);
      }

      v131 = *&v136.__first_;
      end = v136.__end_;
      v120.__begin_.__i_ = *v10;
      *(&v120.__begin_.__i_ + *(v120.__begin_.__i_ - 3)) = *(v10 + 24);
      v120.__end_.__i_ = (MEMORY[0x277D82878] + 16);
      if (SHIBYTE(v120.__match_.__prefix_.second.__i_) < 0)
      {
        operator delete(*&v120.__match_.__unmatched_.matched);
      }

      v120.__end_.__i_ = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(&v120.__pregex_);
      std::ostream::~ostream();
      MEMORY[0x2318C0570](&v120.__match_.__suffix_.second);
    }

    v136.__first_ = this;
    v25 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[4].__r_.__value_.__l.__size_, &this->__r_.__value_.__l.__data_);
    std::string::basic_string[abi:ne200100]<0>(&v120, "verbs");
    v136.__first_ = &v120;
    v26 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v25 + 5, &v120.__begin_.__i_);
    v27 = v26[5];
    v28 = v26[6];
    if (SHIBYTE(v120.__pregex_) < 0)
    {
      operator delete(v120.__begin_.__i_);
    }

    if (v27 != v28)
    {
      v136.__first_ = this;
      v29 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[4].__r_.__value_.__l.__size_, &this->__r_.__value_.__l.__data_);
      std::string::basic_string[abi:ne200100]<0>(&v120, "verbs");
      v136.__first_ = &v120;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v29 + 5, &v120.__begin_.__i_);
      if (SHIBYTE(v120.__pregex_) < 0)
      {
        operator delete(v120.__begin_.__i_);
      }

      v31 = v30[5];
      v32 = v30[6];
      while (v31 != v32)
      {
        if (v31[23] < 0)
        {
          std::string::__init_copy_ctor_external(&v120, *v31, *(v31 + 1));
        }

        else
        {
          v33 = *v31;
          v120.__pregex_ = *(v31 + 2);
          *&v120.__begin_.__i_ = v33;
        }

        std::vector<std::string>::push_back[abi:ne200100](__p, &v120);
        if (SHIBYTE(v120.__pregex_) < 0)
        {
          operator delete(v120.__begin_.__i_);
        }

        v31 += 24;
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v120);
      v34 = __p[0].__end_;
      begin = __p[0].__begin_;
      v36 = __p[0].__end_ - 1;
      v136.__first_ = &v120;
      v136.__begin_ = "|";
      if (&__p[0].__end_[-1] != __p[0].__begin_)
      {
        do
        {
          std::ostream_iterator<std::string,char,std::char_traits<char>>::operator=[abi:ne200100](&v136, begin++);
        }

        while (begin != v36);
        v34 = __p[0].__end_;
      }

      v39 = v34[-1].first.__i_;
      v37 = v34 - 1;
      v38 = v39;
      v40 = *(&v37->matched + 7);
      if (v40 >= 0)
      {
        v41 = v37;
      }

      else
      {
        v41 = v38;
      }

      if (v40 >= 0)
      {
        v42 = *(&v37->matched + 7);
      }

      else
      {
        v42 = v37->second.__i_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, v41, v42);
      std::stringbuf::str();
      if (SHIBYTE(v130) < 0)
      {
        operator delete(v129);
      }

      v129 = *&v136.__first_;
      v130 = v136.__end_;
      v120.__begin_.__i_ = *v10;
      *(&v120.__begin_.__i_ + *(v120.__begin_.__i_ - 3)) = *(v10 + 24);
      v120.__end_.__i_ = (MEMORY[0x277D82878] + 16);
      if (SHIBYTE(v120.__match_.__prefix_.second.__i_) < 0)
      {
        operator delete(*&v120.__match_.__unmatched_.matched);
      }

      v120.__end_.__i_ = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(&v120.__pregex_);
      std::ostream::~ostream();
      MEMORY[0x2318C0570](&v120.__match_.__suffix_.second);
    }

    if (std::string::compare(this, "zh-Hans"))
    {
      std::operator+<char>();
      v43 = std::string::append(&v136, ")\\b");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v120.__pregex_ = v43->__r_.__value_.__r.__words[2];
      *&v120.__begin_.__i_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      pregex_high = HIBYTE(v120.__pregex_);
      if (SHIBYTE(v120.__pregex_) >= 0)
      {
        v46 = &v120;
      }

      else
      {
        v46 = v120.__begin_.__i_;
      }

      if (SHIBYTE(v120.__pregex_) < 0)
      {
        pregex_high = v120.__end_.__i_;
      }

      std::basic_regex<char,std::regex_traits<char>>::assign[abi:ne200100]<std::__wrap_iter<char const*>,0>(&v125, v46, &pregex_high[v46], 1);
    }

    std::operator+<char>();
    v47 = std::string::append(&v136, ")");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v120.__pregex_ = v47->__r_.__value_.__r.__words[2];
    *&v120.__begin_.__i_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    v49 = HIBYTE(v120.__pregex_);
    if (SHIBYTE(v120.__pregex_) >= 0)
    {
      v50 = &v120;
    }

    else
    {
      v50 = v120.__begin_.__i_;
    }

    if (SHIBYTE(v120.__pregex_) < 0)
    {
      v49 = v120.__end_.__i_;
    }

    std::basic_regex<char,std::regex_traits<char>>::assign[abi:ne200100]<std::__wrap_iter<char const*>,0>(&v125, v50, &v49[v50], 1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v118, "");
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  memset(__p, 0, 41);
  v105.__begin_.__i_ = this;
  v51 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[4].__r_.__value_.__l.__size_, &this->__r_.__value_.__l.__data_);
  std::string::basic_string[abi:ne200100]<0>(&v120, "nouns");
  v105.__begin_.__i_ = &v120;
  v52 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v51 + 5, &v120.__begin_.__i_);
  v53 = v52[5];
  v54 = v52[6];
  if (SHIBYTE(v120.__pregex_) < 0)
  {
    operator delete(v120.__begin_.__i_);
  }

  if (v53 == v54)
  {
    v67 = 0;
    v68 = 0;
    goto LABEL_162;
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  if (!std::string::compare(this, "zh-Hans"))
  {
    v69 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
    v70 = *&v135.__r_.__value_.__l.__data_;
    v105.__begin_.__i_ = this;
    v71 = std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this[1].__r_.__value_.__r.__words, &this->__r_.__value_.__l.__data_);
    if ((v69 & 0x80u) == 0)
    {
      v72.__i_ = &v135;
    }

    else
    {
      v72.__i_ = v70;
    }

    if ((v69 & 0x80u) == 0)
    {
      v73 = v69;
    }

    else
    {
      v73 = *(&v70 + 1);
    }

    v74.__i_ = &v72.__i_[v73];
    std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v120, v72, v74, (v71 + 5), match_default);
    for (j = 0; ; j = 1)
    {
      memset(&v105.__match_.__prefix_, 0, 17);
      memset(&v105.__match_.__suffix_, 0, 17);
      v105.__match_.__ready_ = 0;
      v105.__match_.__position_start_.__i_ = 0;
      memset(&v105.__match_, 0, 41);
      memset(&v105, 0, 28);
      v75 = std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v120, &v105);
      if (v105.__match_.__matches_.__begin_)
      {
        v105.__match_.__matches_.__end_ = v105.__match_.__matches_.__begin_;
        operator delete(v105.__match_.__matches_.__begin_);
      }

      if (v75)
      {
        break;
      }

      memset(&v105, 0, 24);
      std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v105, v120.__match_.__matches_.__begin_, v120.__match_.__matches_.__end_, 0xAAAAAAAAAAAAAAABLL * ((v120.__match_.__matches_.__end_ - v120.__match_.__matches_.__begin_) >> 3));
      v105.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = *&v120.__match_.__prefix_.second.__i_;
      *&v105.__match_.__unmatched_.matched = v120.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
      *&v105.__match_.__prefix_.second.__i_ = *&v120.__match_.__suffix_.matched;
      v105.__match_.__suffix_.first.__i_ = v120.__match_.__position_start_.__i_;
      *&v105.__flags_ = v120.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
      *&v105.__match_.__matches_.__end_ = *&v120.__match_.__unmatched_.matched;
      std::match_results<std::__wrap_iter<char const*>>::str[abi:ne200100](&v105, 0, v103);
      v76 = v107;
      if (v107 >= v108)
      {
        v78 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 3);
        v79 = v78 + 1;
        if (v78 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v108 - v106) >> 3) > v79)
        {
          v79 = 0x5555555555555556 * ((v108 - v106) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v108 - v106) >> 3) >= 0x555555555555555)
        {
          v80 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v80 = v79;
        }

        v136.__end_cap_.__value_ = &v106;
        if (v80)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v106, v80);
        }

        v81 = 8 * ((v107 - v106) >> 3);
        v82 = *v103;
        *(v81 + 16) = v104;
        *v81 = v82;
        v103[1] = 0;
        v104 = 0;
        v103[0] = 0;
        v83 = 24 * v78 + 24;
        v84 = (24 * v78 - (v107 - v106));
        memcpy((v81 - (v107 - v106)), v106, v107 - v106);
        v85 = v106;
        v86 = v108;
        v106 = v84;
        v107 = v83;
        v108 = 0;
        v136.__end_ = v85;
        v136.__end_cap_.__value_ = v86;
        v136.__first_ = v85;
        v136.__begin_ = v85;
        std::__split_buffer<std::string>::~__split_buffer(&v136);
        v107 = v83;
        if (SHIBYTE(v104) < 0)
        {
          operator delete(v103[0]);
        }
      }

      else
      {
        v77 = *v103;
        *(v107 + 2) = v104;
        *v76 = v77;
        v107 = v76 + 24;
      }

      if (v105.__begin_.__i_)
      {
        v105.__end_.__i_ = v105.__begin_.__i_;
        operator delete(v105.__begin_.__i_);
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++[abi:ne200100](&v120, v100);
      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }
    }

    if (v120.__match_.__matches_.__begin_)
    {
      v120.__match_.__matches_.__end_ = v120.__match_.__matches_.__begin_;
      operator delete(v120.__match_.__matches_.__begin_);
    }
  }

  else
  {
    v55 = v134.__begin_;
    if (v134.__end_ == v134.__begin_)
    {
      j = 0;
    }

    else
    {
      v56 = 0;
      v57 = 0;
      j = 0;
      do
      {
        v59 = &v55[v56];
        if (SHIBYTE(v59->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v105, v59->__r_.__value_.__l.__data_, v59->__r_.__value_.__l.__size_);
        }

        else
        {
          v60 = *&v59->__r_.__value_.__l.__data_;
          v105.__pregex_ = v59->__r_.__value_.__r.__words[2];
          *&v105.__begin_.__i_ = v60;
        }

        v136.__first_ = this;
        v61 = std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this[1].__r_.__value_.__r.__words, &this->__r_.__value_.__l.__data_);
        memset(&v120.__match_.__matches_.__end_cap_, 0, 17);
        memset(&v120.__match_.__unmatched_.matched, 0, 17);
        v120.__match_.__prefix_.matched = 0;
        v120.__match_.__suffix_.first.__i_ = 0;
        memset(&v120, 0, 41);
        v62 = HIBYTE(v105.__pregex_);
        if (SHIBYTE(v105.__pregex_) >= 0)
        {
          v63 = &v105;
        }

        else
        {
          v63 = v105.__begin_.__i_;
        }

        if (SHIBYTE(v105.__pregex_) < 0)
        {
          v62 = v105.__end_.__i_;
        }

        v64 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>((v61 + 5), v63, &v62[v63], &v120, 0);
        v65 = HIBYTE(v105.__pregex_);
        if (SHIBYTE(v105.__pregex_) >= 0)
        {
          v66 = &v105;
        }

        else
        {
          v66 = v105.__begin_.__i_;
        }

        if (SHIBYTE(v105.__pregex_) < 0)
        {
          v65 = v105.__end_.__i_;
        }

        std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v66, &v65[v66], &v120, 0);
        if (v120.__begin_.__i_)
        {
          v120.__end_.__i_ = v120.__begin_.__i_;
          operator delete(v120.__begin_.__i_);
        }

        if (v64)
        {
          std::vector<std::string>::push_back[abi:ne200100](&v106, &v133.__begin_[v56]);
          j = 1;
        }

        if (SHIBYTE(v105.__pregex_) < 0)
        {
          operator delete(v105.__begin_.__i_);
        }

        ++v57;
        v55 = v134.__begin_;
        ++v56;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v134.__end_ - v134.__begin_) >> 3) > v57);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v105, ",");
  join(&v106, &v105, &v120);
  v137[0] = v120.__end_.__i_;
  v68 = v120.__begin_.__i_;
  *(v137 + 7) = *(&v120.__end_.__i_ + 7);
  v67 = HIBYTE(v120.__pregex_);
  HIBYTE(v120.__pregex_) = 0;
  LOBYTE(v120.__begin_.__i_) = 0;
  if ((SHIBYTE(v105.__pregex_) & 0x80000000) == 0)
  {
    if (j)
    {
      goto LABEL_141;
    }

LABEL_161:
    v120.__begin_.__i_ = &v106;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
    goto LABEL_162;
  }

  operator delete(v105.__begin_.__i_);
  if ((j & 1) == 0)
  {
    goto LABEL_161;
  }

LABEL_141:
  memset(&v105.__match_.__matches_.__end_cap_, 0, 17);
  memset(&v105.__match_.__unmatched_.matched, 0, 17);
  v105.__match_.__prefix_.matched = 0;
  v105.__match_.__suffix_.first.__i_ = 0;
  memset(&v105, 0, 41);
  v136.__first_ = this;
  v87 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[4].__r_.__value_.__l.__size_, &this->__r_.__value_.__l.__data_);
  std::string::basic_string[abi:ne200100]<0>(&v120, "verbs");
  v136.__first_ = &v120;
  v88 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v87 + 5, &v120.__begin_.__i_);
  v89 = v88[5];
  v90 = v88[6];
  if (SHIBYTE(v120.__pregex_) < 0)
  {
    operator delete(v120.__begin_.__i_);
  }

  if (v89 == v90)
  {
    if (v105.__begin_.__i_)
    {
      v105.__end_.__i_ = v105.__begin_.__i_;
      operator delete(v105.__begin_.__i_);
    }

    v120.__begin_.__i_ = &v106;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
    goto LABEL_166;
  }

  v136.__first_ = this;
  v91 = std::__hash_table<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::basic_regex<char,std::regex_traits<char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[2].__r_.__value_.__r.__words[2], &this->__r_.__value_.__l.__data_);
  memset(&v120.__match_.__matches_.__end_cap_, 0, 17);
  memset(&v120.__match_.__unmatched_.matched, 0, 17);
  v120.__match_.__prefix_.matched = 0;
  v120.__match_.__suffix_.first.__i_ = 0;
  memset(&v120, 0, 41);
  size = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = &v135;
  }

  else
  {
    v93 = v135.__r_.__value_.__r.__words[0];
  }

  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v135.__r_.__value_.__l.__size_;
  }

  v94 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>((v91 + 5), v93, v93 + size, &v120, 0);
  v95 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &v135;
  }

  else
  {
    v96 = v135.__r_.__value_.__r.__words[0];
  }

  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v135.__r_.__value_.__l.__size_;
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v105, v96, (v96 + v95), &v120, 0);
  if (v120.__begin_.__i_)
  {
    v120.__end_.__i_ = v120.__begin_.__i_;
    operator delete(v120.__begin_.__i_);
  }

  if (v105.__begin_.__i_)
  {
    v105.__end_.__i_ = v105.__begin_.__i_;
    operator delete(v105.__begin_.__i_);
  }

  v120.__begin_.__i_ = &v106;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
  if ((v94 & 1) == 0)
  {
LABEL_162:
    std::string::basic_string[abi:ne200100]<0>(*v99, "");
    goto LABEL_167;
  }

LABEL_166:
  v97 = v137[0];
  **v99 = v68;
  *(*v99 + 8) = v97;
  *(*v99 + 15) = *(v137 + 7);
  *(*v99 + 23) = v67;
  v137[0] = 0;
  *(v137 + 7) = 0;
  v67 = 0;
  v68 = 0;
LABEL_167:
  if (__p[0].__begin_)
  {
    __p[0].__end_ = __p[0].__begin_;
    operator delete(__p[0].__begin_);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (*(&v123 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v123 + 1));
  }

  std::locale::~locale(&v121.__loc_);
  if (*(&v127 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v127 + 1));
  }

  std::locale::~locale(&v125.__loc_);
  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129);
  }

  if (SHIBYTE(end) < 0)
  {
    operator delete(v131);
    if ((v67 & 0x80) == 0)
    {
      goto LABEL_179;
    }
  }

  else if ((v67 & 0x80) == 0)
  {
    goto LABEL_179;
  }

  operator delete(v68);
LABEL_179:
  v120.__begin_.__i_ = &v133;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
  v120.__begin_.__i_ = &v134;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v98 = *MEMORY[0x277D85DE8];
}

void sub_22CD75830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (*(v71 - 137) < 0)
  {
    operator delete(*(v71 - 160));
  }

  __p = &a53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x300]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x340]);
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  __p = (v71 - 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v71 - 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v71 - 169) < 0)
  {
    operator delete(*(v71 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_22CD75CE4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2318C0570](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x2318C0570](a1 + 112);
  return a1;
}

void *std::match_results<std::__wrap_iter<char const*>>::str[abi:ne200100]@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= a2)
  {
    v3 = (result + 3);
  }

  else
  {
    v3 = *result + 24 * a2;
  }

  if (*(v3 + 16) == 1)
  {
    return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a3, *v3, *(v3 + 8), *(v3 + 8) - *v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++[abi:ne200100]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(a2 + 32, *(a1 + 32), *(a1 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3));
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  return std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(a1);
}

void sub_22CD75F20(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void NLMessageIntentDomainDetector::getCandidateIntentTypes(std::string *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  v9 = &v23;
  std::string::basic_string[abi:ne200100](&v23, v8 + 1);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v23.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 32;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v23, v12, v13);
  v15 = v14->__r_.__value_.__r.__words[0];
  v16 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  CFStringFromString = createCFStringFromString(&v27);
  NLMessageIntentDomainDetector::hasPhotoSharingKeywords(a1, a2, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(v24, 0, sizeof(v24));
    v25 = 1065353216;
    getUTF8StringFromCFString(kNLMessageIntentAttributeKeywordsKey, &v23);
    v28 = &v23;
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24, &v23.__r_.__value_.__l.__data_);
    std::string::operator=((v19 + 5), &__str);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    std::unordered_map<std::string,std::string>::unordered_map(v22, v24);
    NLMessageIntentTypeWithMetadata::NLMessageIntentTypeWithMetadata(&v23, 1, v22);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v22);
    v20 = a4[1];
    if (v20 >= a4[2])
    {
      v21 = std::vector<NLMessageIntentTypeWithMetadata>::__emplace_back_slow_path<NLMessageIntentTypeWithMetadata const&>(a4, &v23);
    }

    else
    {
      *v20 = v23.__r_.__value_.__l.__data_;
      std::unordered_map<std::string,std::string>::unordered_map((v20 + 2), &v23.__r_.__value_.__l.__size_);
      v21 = (v20 + 12);
    }

    a4[1] = v21;
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v23.__r_.__value_.__l.__size_);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v24);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v15);
LABEL_35:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_22CD761E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a16);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a24);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::vector<NLMessageIntentTypeWithMetadata>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  _Unwind_Resume(a1);
}

os_log_t ___ZL41LogHandleForNLMessageIntentDomainDetectorv_block_invoke()
{
  result = os_log_create("com.apple.NLP", "NLMessageIntentDomainDetector");
  LogHandleForNLMessageIntentDomainDetector(void)::logHandle = result;
  return result;
}

void *std::pair<std::vector<std::string>,std::vector<std::string>>::pair[abi:ne200100]<std::vector<std::string>&,std::vector<std::string>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_22CD76358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CD763D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}