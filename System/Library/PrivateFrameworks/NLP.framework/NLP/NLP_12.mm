void sub_22CDD40A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37)
{
  _Block_object_dispose(&a27, 8);
  nlp::CFScopedPtr<__CFAttributedString *>::reset(&a31, 0);
  _Block_object_dispose(&a32, 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&a37, 0);
  _Block_object_dispose((v37 - 200), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v37 - 160), 0);
  _Block_object_dispose((v37 - 152), 8);
  nlp::CFScopedPtr<__CFArray *>::reset((v37 - 112), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN2NL14ParseFormatter15copyParseResultENSt3__110shared_ptrINS_12ParseIntentsEEEj_block_invoke(uint64_t a1, const NL::Entity *a2)
{
  v4 = *(a1 + 64);
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v11.length = CFArrayGetCount(v6);
  v11.location = 0;
  CFArrayAppendArray(v5, v6, v11);
  *(*(*(a1 + 48) + 8) + 24) = NL::ParseFormatter::updateCurrentParsesForAttributeWithEntity(v4, *(*(*(a1 + 32) + 8) + 40), **(a1 + 72), a2);
  *(v4 + 12) = 3;
  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = *(*(*(a1 + 32) + 8) + 40);
  v12.length = CFArrayGetCount(v8);
  v12.location = 0;
  CFArrayAppendArray(v7, v8, v12);
  v9 = *(*(*(a1 + 32) + 8) + 40);

  CFArrayRemoveAllValues(v9);
}

__CFDictionary *NL::ParseFormatter::copyDefaultParseResult(const void **this, char a2)
{
  NL::ParseFormatter::reset(this);
  v4 = this[3];
  if (v4)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v4[13]);
  }

  else
  {
    Copy = &stru_284010170;
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 5, Copy);

  return NL::ParseFormatter::copyFormattedResult(this, a2);
}

void nlp::CFScopedPtr<__CFAttributedString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void NLHindiCharLanguageModeler::NLHindiCharLanguageModeler(NLHindiCharLanguageModeler *this, CFDictionaryRef theDict)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *this = &unk_28400E838;
  *(this + 2) = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D230E0], @"hi");
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  if (v4)
  {
    if (BundleWithIdentifier)
    {
      BundleWithIdentifier = CFBundleCopyResourcesDirectoryURL(BundleWithIdentifier);
      v6 = BundleWithIdentifier;
      if (BundleWithIdentifier)
      {
        CFDictionarySetValue(v4, *MEMORY[0x277D230A0], BundleWithIdentifier);
        *v2 = LMLanguageModelCreate();
        CFRelease(v6);
      }
    }
  }

  if (!*v2)
  {
    v7 = NL::CFLogger::sharedInstance(BundleWithIdentifier);
    (*(*v7 + 16))(v7, 3, "Could not locate Hindi character language model");
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

double NLHindiCharLanguageModeler::logProbability(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return -INFINITY;
  }

  LMLanguageModelJointProbability();
  return result;
}

double NLHindiCharLanguageModeler::logProbability(uint64_t a1, uint64_t *a2)
{
  stringToUTF32Characters(a2, __p);
  if (*(a1 + 8))
  {
    LMLanguageModelJointProbability();
    v4 = v3;
  }

  else
  {
    v4 = -INFINITY;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_22CDD44FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiCharLanguageModeler::~NLHindiCharLanguageModeler(NLHindiCharLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

BOOL nlp::BurstTrieAdd(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 2080))
  {
    return 0;
  }

  v25[11] = v4;
  v25[12] = v5;
  if (*(a1 + 2064))
  {
    return 0;
  }

  v8 = 0;
  v24 = 0;
  if ((a3 - 1) <= 0x3FE && a4)
  {
    v11 = 0;
    v12 = 1;
    v13 = a1;
    while (1)
    {
      v14 = v13 + 1;
      v15 = *&v13[2 * *(a2 + v11) + 1];
      if ((v15 & 3) != 1)
      {
        break;
      }

      v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      ++v11;
      ++v12;
      if (a3 == v11)
      {
        v16 = *v13;
        *v13 = a4;
        if (!v16)
        {
          goto LABEL_18;
        }

LABEL_19:
        v8 = 1;
        return v8 != 0;
      }
    }

    if ((v15 & 3) != 2)
    {
      v20 = a3 - v12;
      v21 = (a3 - v12);
      v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
      memcpy((v22 + 14), (a2 + v12), v21);
      *(v22 + 14 + v20) = 0;
      *(v22 + 12) = v20;
      *(v22 + 8) = a4;
      *v22 = 0;
      *&v14[2 * *(a2 + v11)] = v22 | 2;
      goto LABEL_18;
    }

    v25[0] = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = nlp::addListNode(a1, v25, a2, a3, v12, a4, &v24);
    v18 = v25[0];
    if (v17 >= *(a1 + 2088))
    {
      v18 = nlp::burstLevel(a1, v25[0], &v24);
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v23 = v19 | v18;
    v8 = v24;
    *&v14[2 * *(a2 + v11)] = v23;
    if (v8 == 2)
    {
LABEL_18:
      ++*(a1 + 2060);
      goto LABEL_19;
    }
  }

  return v8 != 0;
}

uint64_t nlp::TrieCompletionGetCompletion(uint64_t a1)
{
  if (a1)
  {
    return a1 + 20;
  }

  else
  {
    return 0;
  }
}

uint64_t nlp::TrieCompletionGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL nlp::BurstTrieAddWithScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2080) && (*(a1 + 2064) & 1) != 0)
  {
    result = 0;
    v17 = 0;
    if ((a3 - 1) <= 0x3FE && a4)
    {
      v16 = 0;
      std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v18, a6);
      nlp::addLevelRanked(a1, a1, a2, a3, 0, a4, &v16, &v17, a7, a5, v18);
      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v18);
      v15 = v17;
      if (v17 == 2)
      {
        ++*(a1 + 2060);
      }

      result = v15 != 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD4844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double nlp::TrieCompletionGetScore(_DWORD *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *a1;
  return result;
}

double nlp::BurstTrieCreateMutableWithOptions(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
  if (v4)
  {
    result = 0.0;
    *(v4 + 2060) = 0u;
    *(v4 + 519) = 1;
    *(v4 + 260) = 0;
    *(v4 + 2092) = 0x200000000;
    *(v4 + 516) = a2;
    *(v4 + 522) = a1;
  }

  return result;
}

char *nlp::burstTrieCreateWithBytes(char *this, const char *a2)
{
  if (this)
  {
    v2 = this;
    if (*this == 12648430 || *this == -900339842)
    {
      v4 = a2;
      this = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
      *(this + 260) = v2;
      v5 = v2[3];
      *(this + 2068) = v2[2];
      *(this + 515) = v5;
      v6 = v2[4];
      *(this + 516) = v6;
      if (*v2 == -900339842)
      {
        *(this + 516) = v6 | 1;
      }

      *(this + 522) = v2[5];
      *(this + 523) = v4;
      *(this + 524) = 2;
      *(this + 519) = 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void nlp::BurstTrieRelease(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 519) - 1;
    *(a1 + 519) = v2;
    if (!v2)
    {
      v3 = *(a1 + 260);
      if (v3)
      {
        if (*(a1 + 523))
        {
          munmap(v3, *(a1 + 2068));
        }
      }

      else if (a1[2064])
      {
        nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(a1);
      }

      else
      {
        nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(a1);
      }

      free(a1);
    }
  }
}

uint64_t nlp::BurstTrieGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 2060);
  }

  return result;
}

uint64_t nlp::BurstTrieSearch(nlp *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a6 < 0)
  {
    v11 = 0xFFFFFFFF00000003;
    v12 = 0;
    v13 = a4;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](v14, a5);
    nlp::searchWithContext(a1, a2, a3, 0, &v11);
    result = std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v14);
  }

  else
  {
    result = nlp::BurstTrieCreateCursorWithBytes(a1, a2, a3);
    if (result)
    {
      operator new();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t nlp::addLevelRanked(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v13 = a9;
  v35 = *MEMORY[0x277D85DE8];
  if (a5 >= a4)
  {
    *a8 = 2;
    if (*(a2 + 8))
    {
      *a8 = 1;
      if (*(a11 + 24))
      {
        result = std::function<float ()(void *,float,float)>::operator()(a11, a10, *(a2 + 4), a9);
        v13 = v21;
      }
    }

    *(a2 + 4) = v13;
    *(a2 + 8) = a6;
    *a7 = v13;
  }

  else
  {
    v19 = result;
    v31 = (a3 + a5);
    v20 = *(a2 + 12 + 8 * *v31);
    if ((v20 & 3) == 2)
    {
      v30 = a2 + 12;
      v32 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v33, a11);
      v22 = nlp::addListNodeRanked(v19, &v32, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v33);
      result = std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v33);
      v23 = v32;
      if (v22 >= *(v19 + 2088))
      {
        result = nlp::burstLevelRanked(v19, v32, a7, a8);
        v23 = result;
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v28 = v24 | v23;
      v27 = v31;
    }

    else
    {
      if ((v20 & 3) == 1)
      {
        std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v34, a11);
        nlp::addLevelRanked(v19, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v34);
        result = std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v34);
        goto LABEL_15;
      }

      v30 = a2 + 12;
      *a7 = a9;
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 23, 0x10200402E77EEF7uLL);
      v27 = v31;
      result = memcpy((v26 + 22), v31 + 1, v25);
      *(v26 + 22 + v25) = 0;
      *(v26 + 20) = v25;
      *(v26 + 16) = a6;
      *(v26 + 8) = v13;
      *(v26 + 12) = v13;
      *v26 = 0;
      v28 = v26 | 2;
      *a8 = 2;
    }

    *(v30 + 8 * *v27) = v28;
  }

LABEL_15:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD4E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieRemove(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  v106 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_127;
  }

  v6 = a3;
  if (a1[516])
  {
    v103 = a1;
    v91 = 0;
    v92 = 0;
    __p = 0;
    std::vector<nlp::_RankedTrieLevel *>::__init_with_size[abi:ne200100]<nlp::_RankedTrieLevel * const*,nlp::_RankedTrieLevel * const*>(&__p, &v103, v104, 1uLL);
    v19 = (a2 + 1);
    v20 = a1;
    do
    {
      v21 = v20 + 12;
      v22 = *(v19 - 1);
      v23 = *(v21 + 8 * v22);
      if ((v23 & 3) == 0)
      {
        goto LABEL_54;
      }

      if ((*(v21 + 8 * v22) & 3) == 2)
      {
        v36 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        v37 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 20);
        if (v37 + 1 == v6 && !memcmp(v19, v36 + 22, v37))
        {
          v44 = *v36;
          free(v36);
          v45 = v44 | 2;
          if (!v44)
          {
            v45 = 0;
          }

          *(v21 + 8 * v22) = v45;
        }

        else
        {
          v38 = *v36;
          if (!*v36)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v39 = v38;
            v40 = *(v38 + 20);
            if (v40 + 1 == v6 && !memcmp(v19, (v38 + 22), v40))
            {
              break;
            }

            v38 = *v39;
            v36 = v39;
            if (!*v39)
            {
              goto LABEL_54;
            }
          }

          *v36 = *v39;
          free(v39);
        }

        goto LABEL_70;
      }

      v20 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = v91;
      if (v91 >= v92)
      {
        v26 = (v91 - __p) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
        }

        v27 = (v92 - __p) >> 2;
        if (v27 <= v26 + 1)
        {
          v27 = v26 + 1;
        }

        if (v92 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(&__p, v28);
        }

        *(8 * v26) = v20;
        v25 = 8 * v26 + 8;
        v29 = (8 * v26 - (v91 - __p));
        memcpy(v29, __p, v91 - __p);
        v30 = __p;
        __p = v29;
        v91 = v25;
        v92 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v91 = v20;
        v25 = (v24 + 8);
      }

      v91 = v25;
      ++v19;
      --v6;
    }

    while (v6);
    if (!*(v20 + 8))
    {
      goto LABEL_54;
    }

    *(v20 + 8) = 0;
LABEL_70:
    v51 = (v91 - __p) >> 3;
    if (v51 < 2)
    {
      goto LABEL_121;
    }

    v96 = 0;
    v52 = v51 - 1;
    LOBYTE(v53) = 0;
    v54 = a1[522];
    while (1)
    {
      v55 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>(a1, *(__p + v52));
      v96 = 0;
      v103 = &unk_28400DDC0;
      v104[0] = &v96;
      v105 = &v103;
      nlp::BurstTrieTraverseFromCursor(v55, 0, &v103, -1);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v103);
      if (v55)
      {
        free(v55);
      }

      if (v96 >= v54)
      {
        break;
      }

      v53 = 1;
      if (!--v52)
      {
        goto LABEL_101;
      }
    }

    if ((v53 & 1) == 0)
    {
LABEL_121:
      v41 = 1;
      goto LABEL_122;
    }

    v53 = v52 + 1;
LABEL_101:
    v93 = 0;
    v94 = 0;
    v95 = 0;
    std::vector<std::tuple<std::string,unsigned int,float>>::reserve(&v93, v54);
    v72 = *(__p + v53);
    v73 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>(a1, v72);
    v100 = &unk_28400DE18;
    v101 = &v93;
    v102 = &v100;
    nlp::BurstTrieTraverseFromCursor(v73, 0, &v100, -1);
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v100);
    if (v54 <= (v94 - v93) >> 5)
    {
      __assert_rtn("reverseBurst", "BurstTrie.cpp", 965, "items.size() < sizeThreshold");
    }

    if (v73)
    {
      free(v73);
    }

    nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(v72);
    a1[515] -= (v94 - v93) >> 5;
    v75 = __p;
    *(*(__p + v52) + 8 * *(a2 + v52) + 12) = 0;
    if (a3 + 1 < ((v91 - v75) >> 3))
    {
      __assert_rtn("reverseBurst", "BurstTrie.cpp", 974, "levels.size() <= keyLen + 1");
    }

    v76 = nlp::sharedBuffer(v74);
    v77 = v76;
    v78 = 0;
    if (v53 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v53;
    }

    do
    {
      v76[v78] = *(a2 + v78);
      ++v78;
    }

    while (v79 != v78);
    v80 = v93;
    v81 = v94;
    if (v93 == v94)
    {
LABEL_120:
      v97 = &v93;
      std::vector<std::tuple<std::string,unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v97);
      goto LABEL_121;
    }

    v82 = a1[516];
    while (1)
    {
      v83 = *(v80 + 23);
      if ((v83 & 0x8000000000000000) != 0)
      {
        v84 = *v80;
        v83 = *(v80 + 8);
      }

      else
      {
        v84 = v80;
      }

      v85 = *(v80 + 24);
      v86 = *(v80 + 28);
      memcpy((v77 + v53), v84, v83);
      v87 = *(v80 + 23);
      if (v87 < 0)
      {
        v87 = *(v80 + 8);
        if (v82)
        {
LABEL_118:
          v99 = 0;
          nlp::BurstTrieAddWithScore(a1, v77, (v87 + v53), v85, 0, v98, v86);
          std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v98);
          goto LABEL_119;
        }
      }

      else if (v82)
      {
        goto LABEL_118;
      }

      nlp::BurstTrieAdd(a1, v77, v87 + v53, v85);
LABEL_119:
      v80 += 32;
      if (v80 == v81)
      {
        goto LABEL_120;
      }
    }
  }

  v103 = a1;
  v91 = 0;
  v92 = 0;
  __p = 0;
  std::vector<nlp::_TrieLevel *>::__init_with_size[abi:ne200100]<nlp::_TrieLevel * const*,nlp::_TrieLevel * const*>(&__p, &v103, v104, 1uLL);
  v7 = (a2 + 1);
  v8 = a1;
  do
  {
    v9 = v8 + 1;
    v10 = *(v7 - 1);
    v11 = *&v9[2 * v10];
    if ((v11 & 3) == 0)
    {
      goto LABEL_54;
    }

    if ((*&v9[2 * v10] & 3) == 2)
    {
      v31 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      v32 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 12);
      if (v32 + 1 == v6 && !memcmp(v7, v31 + 14, v32))
      {
        v42 = *v31;
        free(v31);
        v43 = v42 | 2;
        if (!v42)
        {
          v43 = 0;
        }

        *&v9[2 * v10] = v43;
        goto LABEL_62;
      }

      v33 = *v31;
      if (!*v31)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v34 = v33;
        v35 = *(v33 + 12);
        if (v35 + 1 == v6 && !memcmp(v7, (v33 + 14), v35))
        {
          break;
        }

        v33 = *v34;
        v31 = v34;
        if (!*v34)
        {
          goto LABEL_54;
        }
      }

      *v31 = *v34;
      free(v34);
LABEL_62:
      v46 = (v91 - __p) >> 3;
      if (v46 < 2)
      {
        goto LABEL_121;
      }

      v96 = 0;
      v47 = v46 - 1;
      LOBYTE(v48) = 0;
      v49 = a1[522];
      while (1)
      {
        v50 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_TrieLevel *>(a1, *(__p + v47));
        v96 = 0;
        v103 = &unk_28400DE70;
        v104[0] = &v96;
        v105 = &v103;
        nlp::BurstTrieTraverseFromCursor(v50, 0, &v103, -1);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v103);
        if (v50)
        {
          free(v50);
        }

        if (v96 >= v49)
        {
          break;
        }

        v48 = 1;
        if (!--v47)
        {
          goto LABEL_79;
        }
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_121;
      }

      v48 = v47 + 1;
LABEL_79:
      v93 = 0;
      v94 = 0;
      v95 = 0;
      std::vector<std::tuple<std::string,unsigned int,float>>::reserve(&v93, v49);
      v56 = *(__p + v48);
      v57 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_TrieLevel *>(a1, v56);
      v100 = &unk_28400DEC8;
      v101 = &v93;
      v102 = &v100;
      nlp::BurstTrieTraverseFromCursor(v57, 0, &v100, -1);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v100);
      if (v49 <= (v94 - v93) >> 5)
      {
        __assert_rtn("reverseBurst", "BurstTrie.cpp", 965, "items.size() < sizeThreshold");
      }

      if (v57)
      {
        free(v57);
      }

      nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(v56);
      a1[515] -= (v94 - v93) >> 5;
      v59 = __p;
      *(*(__p + v47) + 8 * *(a2 + v47) + 4) = 0;
      if (a3 + 1 < ((v91 - v59) >> 3))
      {
        __assert_rtn("reverseBurst", "BurstTrie.cpp", 974, "levels.size() <= keyLen + 1");
      }

      v60 = nlp::sharedBuffer(v58);
      v61 = v60;
      v62 = 0;
      if (v48 <= 1)
      {
        v63 = 1;
      }

      else
      {
        v63 = v48;
      }

      do
      {
        v60[v62] = *(a2 + v62);
        ++v62;
      }

      while (v63 != v62);
      v64 = v93;
      v65 = v94;
      if (v93 != v94)
      {
        v66 = a1[516];
        while (1)
        {
          v67 = *(v64 + 23);
          if ((v67 & 0x8000000000000000) != 0)
          {
            v68 = *v64;
            v67 = *(v64 + 8);
          }

          else
          {
            v68 = v64;
          }

          v69 = *(v64 + 24);
          v70 = *(v64 + 28);
          memcpy((v61 + v48), v68, v67);
          v71 = *(v64 + 23);
          if (v71 < 0)
          {
            v71 = *(v64 + 8);
            if (v66)
            {
LABEL_96:
              v99 = 0;
              nlp::BurstTrieAddWithScore(a1, v61, (v71 + v48), v69, 0, v98, v70);
              std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v98);
              goto LABEL_97;
            }
          }

          else if (v66)
          {
            goto LABEL_96;
          }

          nlp::BurstTrieAdd(a1, v61, v71 + v48, v69);
LABEL_97:
          v64 += 32;
          if (v64 == v65)
          {
            goto LABEL_120;
          }
        }
      }

      goto LABEL_120;
    }

    v8 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = v91;
    if (v91 >= v92)
    {
      v14 = (v91 - __p) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
      }

      v15 = (v92 - __p) >> 2;
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      if (v92 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(&__p, v16);
      }

      *(8 * v14) = v8;
      v13 = 8 * v14 + 8;
      v17 = (8 * v14 - (v91 - __p));
      memcpy(v17, __p, v91 - __p);
      v18 = __p;
      __p = v17;
      v91 = v13;
      v92 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v91 = v8;
      v13 = (v12 + 8);
    }

    v91 = v13;
    ++v7;
    --v6;
  }

  while (v6);
  if (*v8)
  {
    *v8 = 0;
    goto LABEL_62;
  }

LABEL_54:
  v41 = 0;
LABEL_122:
  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    --a1[515];
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_127:
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD5798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a18 = &a14;
  std::vector<std::tuple<std::string,unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieContains(nlp *a1, const void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = 0xFFFFFFFF00000000;
    v11 = 0;
    v12 = 0;
    v13[3] = 0;
    nlp::searchWithContext(a1, a2, a3, 1, &v10);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v7 = 0;
    }

    else
    {
      if (a4)
      {
        *a4 = HIDWORD(v10);
      }

      if (a5)
      {
        *a5 = v11;
      }

      v7 = 1;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

nlp *nlp::searchWithContext(nlp *result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (a3 <= 0x3FF)
  {
    v9 = result;
    v10 = nlp::sharedBuffer(result);
    memcpy(v10, a2, a3);
    *(v10 + a3) = 0;
    v11 = *(v9 + 2080);
    v12 = *(v9 + 2064);
    if (v11)
    {
      v13 = *(v11 + 4) & 0xFFFFFFFC;
      if (v12)
      {
        v14 = v19;
        v19[0] = &unk_28400DFD0;
        v19[1] = nlp::containsKey;
        v19[3] = v19;
        nlp::searchDiskLevelRanked(v9, v13 + v11, v10, a3, 0, a4, a5, v19);
      }

      else
      {
        v14 = v18;
        v18[0] = &unk_28400DFD0;
        v18[1] = nlp::containsKey;
        v18[3] = v18;
        nlp::searchDiskLevel(v9, v13 + v11, v10, a3, 0, a4, a5, v18);
      }
    }

    else if (v12)
    {
      v14 = v17;
      v17[0] = &unk_28400DFD0;
      v17[1] = nlp::containsKey;
      v17[3] = v17;
      nlp::searchLevelRanked(v9, v10, a3, 0, a4, a5, v17);
    }

    else
    {
      v14 = v16;
      v16[0] = &unk_28400DFD0;
      v16[1] = nlp::containsKey;
      v16[3] = v16;
      nlp::searchLevel(v9, v10, a3, 0, a4, a5, v16);
    }

    result = std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v14);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD5B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *nlp::BurstTrieCreateCursorWithBytes(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
  if (!nlp::BurstTrieSetCursorWithBytes(a1, v6, a2, a3) && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

nlp *nlp::BurstTrieTraverseFromCursor(nlp *result, uint64_t a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v7 = result;
    result = nlp::sharedBuffer(result);
    v8 = result;
    v17 = 0;
    v9 = *(v7 + 7);
    if (!v9)
    {
      v14 = *v7;
      v15 = *(v7 + 2);
      v16 = *(v7 + 6);
      v12 = *(v7 + 4);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v18, a3);
      nlp::traverseFromMapCursor(v12, &v14, v8, 0, &v17, a4, a2, v18);
      v11 = v18;
      goto LABEL_6;
    }

    if (v9 == 1)
    {
      v14 = *v7;
      v15 = *(v7 + 2);
      v10 = *(v7 + 4);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v19, a3);
      nlp::traverseFromCompactMapCursor(v10, &v14, v8, 0x1000u, 0, &v17, a2, v19);
      v11 = v19;
LABEL_6:
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD5D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v11 = a5;
  v10 = a7;
  v9 = a6;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t nlp::traverseFromCompactMapCursor(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  v67 = *MEMORY[0x277D85DE8];
  v14 = *a2 & 3;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, a8);
      v16 = *(v13 + 2064);
      v17 = ((*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080));
      if (v16)
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v63);
        v27 = *v17 - 8;
        if (*v17 != 8)
        {
          v28 = 0;
          do
          {
            v29 = v17 + v28 + 8;
            v30 = *(v29 + 8);
            v31 = *(a2 + 12);
            if (v30 >= v31)
            {
              v32 = v30 - v31;
              memcpy((a3 + a5), (v29 + v31 + 10), v30 - v31);
              *(a3 + v32 + a5) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v66, a7, a3, *(v29 + 8), *(v29 + 4), a6, *v29);
              LODWORD(v30) = *(v29 + 8);
            }

            v28 += v30 + 10;
          }

          while (v28 < v27);
          goto LABEL_36;
        }
      }

      else if ((v16 & 4) != 0)
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v63);
        v33 = *v17 - 4;
        v34 = *(a2 + 8);
        if (v34 < v33)
        {
          v35 = v17 + 1;
          do
          {
            v36 = v35 + v34;
            v37 = *(v36 + 2);
            v38 = *(a2 + 12);
            if (v37 >= v38)
            {
              v40 = v37 - v38;
              memcpy((a3 + a5 + v36[6]), &v36[v38 + 7], v37 - v38);
              *(a3 + v40 + a5 + v36[6]) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v66, a7, a3, *(v36 + 2), *v36, a6, 0.0);
              v39 = *(v36 + 2) + *(a2 + 8);
            }

            else
            {
              v39 = v34 + v37;
            }

            v34 = v39 + 7;
            *(a2 + 8) = v34;
          }

          while (v34 < v33);
          goto LABEL_36;
        }
      }

      else
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v63);
        v19 = *v17 - 4;
        v20 = *(a2 + 8);
        if (v20 < v19)
        {
          do
          {
            v21 = v17 + v20 + 4;
            v22 = *(v21 + 4);
            v23 = *(a2 + 12);
            if (v22 >= v23)
            {
              v25 = v22 - v23;
              memcpy((a3 + a5), (v21 + v23 + 6), v22 - v23);
              *(a3 + v25 + a5) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v66, a7, a3, *(v21 + 4), *v21, a6, *v21);
              v24 = *(v21 + 4) + *(a2 + 8);
            }

            else
            {
              v24 = v20 + v22;
            }

            v20 = v24 + 6;
            *(a2 + 8) = v20;
          }

          while (v20 < v19);
LABEL_36:
          v18 = v66;
        }
      }

      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v18);
      v15 = v63;
      goto LABEL_63;
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v64, a8);
    v26 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080);
    if ((*(v13 + 2064) & 1) == 0)
    {
      if (*(v26 + 32))
      {
        *(a3 + a5) = 0;
        std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v64, a7, a3, a5, *(v26 + 32), a6, 0.0);
        if (a5 >= a4 || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }

LABEL_39:
        v41 = 0;
        v42 = a4 - 1;
        while (1)
        {
          *(a3 + a5) = v41;
          v43 = *(v26 + 8 * (v41 >> 6));
          if ((v43 & (1 << v41)) != 0)
          {
            if (v41 >= 0x40)
            {
              v44 = 0;
              v45 = v41 >> 6;
              v46 = v26;
              do
              {
                v47 = *v46++;
                v48 = vcnt_s8(v47);
                v48.i16[0] = vaddlv_u8(v48);
                v44 += v48.i32[0];
                --v45;
              }

              while (v45);
            }

            else
            {
              v44 = 0;
            }

            v49 = vcnt_s8((v43 & ((1 << v41) - 1)));
            v49.i16[0] = vaddlv_u8(v49);
            *a2 = *(v26 + 36 + 4 * (v44 + v49.i32[0]));
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v64);
            nlp::traverseFromCompactMapCursor(v13, a2, a3, v42, a5 + 1, a6, a7, v66);
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v66);
            if (v41 > 0xFE || (*a6 & 1) != 0)
            {
              goto LABEL_62;
            }
          }

          else if (v41 > 0xFE)
          {
            goto LABEL_62;
          }

          ++v41;
        }
      }

      if (a5 < a4)
      {
        goto LABEL_39;
      }

LABEL_62:
      v15 = v64;
      goto LABEL_63;
    }

    if (*(v26 + 40))
    {
      *(a3 + a5) = 0;
      std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v64, a7, a3, a5, *(v26 + 40), a6, *(v26 + 36));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_62;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_62;
    }

    v50 = 0;
    v51 = a4 - 1;
    while (1)
    {
      *(a3 + a5) = v50;
      v52 = *(v26 + 8 * (v50 >> 6));
      if ((v52 & (1 << v50)) != 0)
      {
        if (v50 >= 0x40)
        {
          v53 = 0;
          v54 = v50 >> 6;
          v55 = v26;
          do
          {
            v56 = *v55++;
            v57 = vcnt_s8(v56);
            v57.i16[0] = vaddlv_u8(v57);
            v53 += v57.i32[0];
            --v54;
          }

          while (v54);
        }

        else
        {
          v53 = 0;
        }

        v58 = vcnt_s8((v52 & ((1 << v50) - 1)));
        v58.i16[0] = vaddlv_u8(v58);
        v59 = *(v26 + 44 + 4 * (v53 + v58.i32[0]));
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = v59;
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v64);
        nlp::traverseFromCompactMapCursor(v13, a2, a3, v51, a5 + 1, a6, a7, v66);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v66);
        if (v50 > 0xFE || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 > 0xFE)
      {
        goto LABEL_62;
      }

      ++v50;
    }
  }

  if (v14)
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, a8);
    v15 = v65;
    nlp::traverseFromCompactMapCursorMappedLevel(v13, a2, a3, a4, a5, a6, a7, v65);
    goto LABEL_63;
  }

  if (*a2 == *(*(result + 2080) + 4))
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, a8);
    v15 = v62;
    nlp::traverseFromCompactMapCursorMappedLevel(v13, a2, a3, a4, a5, a6, a7, v62);
LABEL_63:
    result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v15);
  }

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD63A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::traverseFromCompactMapCursorMappedLevel(uint64_t result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v27 = *MEMORY[0x277D85DE8];
  v13 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
  v14 = *(v13 + 1024);
  if (*(result + 2064))
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(a8, a7, a3, 0, *(v13 + 1024), a6, *(v13 + 1032));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v18 = 0;
    do
    {
      *(a3 + a5) = v18;
      v19 = *(v13 + 4 * v18);
      if (v18)
      {
        v20 = a5 + 1;
      }

      else
      {
        v20 = a5;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v19;
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v26, a8);
      nlp::traverseFromCompactMapCursor(v12, a2, a3, a4 - (v18 != 0), v20, a6, a7, v26);
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v26);
      if (*a6)
      {
        break;
      }

      v17 = v18++ == 255;
    }

    while (!v17);
  }

  else
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(a8, a7, a3, 0, *(v13 + 1024), a6, 0.0);
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v15 = 0;
    do
    {
      *(a3 + a5) = v15;
      *a2 = *(v13 + 4 * v15);
      a2[1] = 0;
      *(a2 + 4) = 0;
      if (v15)
      {
        v16 = a5 + 1;
      }

      else
      {
        v16 = a5;
      }

      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v25, a8);
      nlp::traverseFromCompactMapCursor(v12, a2, a3, a4 - (v15 != 0), v16, a6, a7, v25);
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v25);
      if (*a6)
      {
        break;
      }

      v17 = v15++ == 255;
    }

    while (!v17);
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD6640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieSetCursorWithBytes(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a1 || !a2 || !nlp::burstTrieSetCursor(a1, a2))
  {
    return 0;
  }

  return nlp::BurstTrieCursorAdvanceWithBytes(a2, a3, a4);
}

uint64_t nlp::burstTrieSetCursor(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *(a2 + 32) = a1;
  v2 = *(a1 + 2080);
  if (v2)
  {
    if (*v2 == -900339842 || *v2 == 12648430 && v2[7] == 2)
    {
      result = 1;
      *(a2 + 28) = 1;
      v4 = v2[1];
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      return result;
    }

    return 0;
  }

  *(a2 + 28) = 0;
  *(a2 + 8) = a1 | 1;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t nlp::BurstTrieCursorAdvanceWithBytes(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 28);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = *result;
        v6 = *(result + 8);
        v7 = *(result + 16);
        v8 = *(result + 20);
        result = nlp::advanceCompactMapCursor(*(result + 32), result, a2, a3);
        if (!result)
        {
          *v3 = v5;
          *(v3 + 8) = v6;
          *(v3 + 16) = v7;
          *(v3 + 20) = v8;
          return result;
        }

        return 1;
      }

      return 0;
    }

    else
    {
      v10 = *result;
      v9 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 24);
      result = nlp::advanceMapCursor(*(result + 32), result, a2, a3);
      if (result)
      {
        return 1;
      }

      *v3 = v10;
      *(v3 + 8) = v9;
      *(v3 + 16) = v11;
      *(v3 + 24) = v12;
    }
  }

  return result;
}

uint64_t nlp::advanceCompactMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *a2;
  v9 = *a2 & 3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (v8 == *(*(a1 + 2080) + 4))
      {
        v10 = nlp::advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
        return v10 & 1;
      }

LABEL_23:
      v10 = 0;
      return v10 & 1;
    }

    v20 = nlp::advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
    goto LABEL_70;
  }

  if (v9 != 2)
  {
    v21 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
    if (*(a1 + 2064))
    {
      if (a4)
      {
        v27 = *a3;
        v28 = v27 >> 6;
        v29 = v21[v27 >> 6];
        v30 = 1 << v27;
        if (((1 << v27) & *&v29) != 0)
        {
          if (v27 >= 0x40)
          {
            v31 = 0;
            v57 = v21;
            do
            {
              v58 = *v57++;
              v59 = vcnt_s8(v58);
              v59.i16[0] = vaddlv_u8(v59);
              v31 += v59.i32[0];
              --v28;
            }

            while (v28);
          }

          else
          {
            v31 = 0;
          }

          v60 = vcnt_s8(((v30 - 1) & *&v29));
          v60.i16[0] = vaddlv_u8(v60);
          v56 = v21[5].u32[v31 + v60.i32[0] + 1];
          goto LABEL_69;
        }

        goto LABEL_43;
      }

      *(a2 + 16) = v21[5].i32[0];
      *(a2 + 20) = v21[4].i32[1];
    }

    else
    {
      if (a4)
      {
        v22 = *a3;
        v23 = v22 >> 6;
        v24 = v21[v22 >> 6];
        v25 = 1 << v22;
        if (((1 << v22) & *&v24) != 0)
        {
          if (v22 >= 0x40)
          {
            v26 = 0;
            v52 = v21;
            do
            {
              v53 = *v52++;
              v54 = vcnt_s8(v53);
              v54.i16[0] = vaddlv_u8(v54);
              v26 += v54.i32[0];
              --v23;
            }

            while (v23);
          }

          else
          {
            v26 = 0;
          }

          v55 = vcnt_s8(((v25 - 1) & *&v24));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v21[4].u32[v26 + v55.i32[0] + 1];
LABEL_69:
          nlp::updateCompactMapCursorPointer(a1, a2, v56);
          v20 = nlp::advanceCompactMapCursor(a1, a2, a3 + 1, a4 - 1);
          goto LABEL_70;
        }

LABEL_43:
        v20 = 0;
LABEL_70:
        v61 = v20 == 0;
LABEL_71:
        v10 = !v61;
        return v10 & 1;
      }

      *(a2 + 16) = v21[4].i32[0];
    }

    v20 = 1;
    goto LABEL_70;
  }

  v11 = *(a1 + 2064);
  v12 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
  v13 = *v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13 - 4;
    if (v13 == 4)
    {
      goto LABEL_23;
    }

    if ((v11 & 4) != 0)
    {
      if (a4)
      {
        v44 = *(a2 + 8);
        if (v44 >= v14)
        {
          goto LABEL_23;
        }

        v45 = 0;
        v46 = v12 + 1;
        while (1)
        {
          v47 = v46 + v44;
          v48 = v47[6];
          LODWORD(v49) = v48;
          if (v48 < a4)
          {
            if (v48 <= *(v47 + 2))
            {
              v49 = *(v47 + 2);
            }

            else
            {
              v49 = v47[6];
            }

            v50 = v47[6];
            while (v49 != v50)
            {
              if (v47[(v50 + *(a2 + 12)) + 7] != a3[v45 + v50])
              {
                LODWORD(v49) = v50;
                break;
              }

              if (a4 == ++v50)
              {
                LODWORD(v49) = a4;
                break;
              }
            }
          }

          v45 += v49;
          v51 = *(v47 + 2);
          if (v45 == a4)
          {
            break;
          }

          v10 = 0;
          v44 += v51 + 7;
          *(a2 + 8) = v44;
          if (v44 >= v14)
          {
            return v10 & 1;
          }
        }

        v64 = *(a2 + 12) + a4;
        *(a2 + 16) = 0;
        if (v51 + v48 == v64)
        {
          *(a2 + 16) = *v47;
        }

        goto LABEL_87;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4) | v63[10])
      {
LABEL_78:
        *(a2 + 16) = 0;
        goto LABEL_88;
      }
    }

    else
    {
      if (a4)
      {
        v15 = *(a2 + 8);
        if (v15 >= v14)
        {
          goto LABEL_23;
        }

        v16 = v12 + 1;
        v17 = *(a2 + 12);
        while (1)
        {
          v18 = v16 + v15;
          v19 = *(v18 + 2);
          if (v19 >= v17 && !memcmp(&v18[v17 + 6], a3, a4))
          {
            break;
          }

          v10 = 0;
          v15 += v19 + 6;
          *(a2 + 8) = v15;
          if (v15 >= v14)
          {
            return v10 & 1;
          }
        }

        *(a2 + 16) = 0;
        if (v19 - v17 == a4)
        {
          *(a2 + 16) = *v18;
        }

        v64 = v17 + a4;
LABEL_87:
        *(a2 + 12) = v64;
        goto LABEL_88;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4))
      {
        goto LABEL_78;
      }
    }

    *(a2 + 16) = 0;
    *(a2 + 16) = *(v63 + 1);
    goto LABEL_88;
  }

  if (v13 == 4)
  {
    goto LABEL_23;
  }

  v32 = *(a2 + 8);
  v33 = *(a2 + 12);
  v34 = *(a2 + 16);
  v35 = *(a2 + 20);
  v36 = v13 - 8;
  if (v13 == 8)
  {
    v38 = 0;
LABEL_76:
    *(a2 + 8) = v32;
    *(a2 + 12) = v33;
    *(a2 + 16) = v34;
    *(a2 + 20) = v35;
    v61 = v38 == 0;
    goto LABEL_71;
  }

  v37 = 0;
  v38 = 0;
  v39 = *(a2 + 12);
  v40 = v12 + 2;
  v41 = v33 + a4;
  while (1)
  {
    while (1)
    {
      v42 = v40 + v37;
      v43 = *(v42 + 4);
      if (v41 <= v43)
      {
        break;
      }

      v37 += v43 + 10;
      if (v37 >= v36)
      {
        goto LABEL_76;
      }
    }

    v66 = v38;
    v67 = v34;
    v68 = v33;
    v69 = v32;
    v65 = v39;
    if (!memcmp(&v42[v39 + 10], a3, a4))
    {
      break;
    }

    v33 = v68;
    v32 = v69;
    v38 = v66;
    v34 = v67;
LABEL_41:
    v37 += v43 + 10;
    v39 = v65;
    if (v37 >= v36)
    {
      goto LABEL_76;
    }
  }

  if (v41 != v43)
  {
    v34 = v67;
    v33 = v68;
    if (!v66)
    {
      v34 = 0;
      v33 = v68 + a4;
    }

    v32 = v69;
    if (!v66)
    {
      v32 = v37;
      v35 = 0.0;
    }

    v38 = 1;
    goto LABEL_41;
  }

  *(a2 + 16) = 0;
  *(a2 + 16) = *(v42 + 1);
  *(a2 + 20) = *v42;
  *(a2 + 8) = v37;
  *(a2 + 12) = v41;
LABEL_88:
  v10 = 1;
  return v10 & 1;
}

uint64_t nlp::advanceMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *(a2 + 8);
  if ((v8 & 3) == 2)
  {
    v11 = nlp::advanceMapCursorTrieList(a1, a2, a3, a4) != 0;
  }

  else
  {
    if ((v8 & 3) == 1)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(a1 + 2064))
      {
        if (a4)
        {
          v10 = 3;
          goto LABEL_10;
        }

        *(a2 + 20) = v9[2];
        *(a2 + 24) = v9[1];
      }

      else
      {
        if (a4)
        {
          v10 = 1;
LABEL_10:
          nlp::updateMapCursorPointer(a1, a2, *&v9[2 * *a3 + v10]);
          v11 = nlp::advanceMapCursor(a1, a2, a3 + 1, a4 - 1);
          return v11 & 1;
        }

        *(a2 + 20) = *v9;
      }

      v11 = 1;
      return v11 & 1;
    }

    v11 = 0;
  }

  return v11 & 1;
}

void *nlp::sharedBuffer(nlp *this)
{
  {
    v3 = 0;
    pthread_key_create(&v3, MEMORY[0x277D86138]);
    nlp::sharedBuffer(void)::key = v3;
  }

  v1 = pthread_getspecific(nlp::sharedBuffer(void)::key);
  if (!v1)
  {
    v1 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    pthread_setspecific(nlp::sharedBuffer(void)::key, v1);
  }

  return v1;
}

uint64_t nlp::traverseFromMapCursor(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x277D85DE8];
  LODWORD(v14) = *(result + 2064);
  v15 = *(a2 + 8) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_55;
    }

    if (v14)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v60, a8);
      v36 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
      if (!v36)
      {
        goto LABEL_41;
      }

      __dst = (v36 + 22);
      v37 = *(a2 + 16);
      do
      {
        v38 = *(v36 + 20);
        if (v38 >= v37)
        {
          v39 = v38 - v37;
          if (a6 < 0 || v39 <= a6)
          {
            if (v37)
            {
              v40 = (v36 + 22);
              v41 = __dst;
              v42 = v37;
              while (1)
              {
                v44 = *v40++;
                v43 = v44;
                v45 = *v41++;
                if (v43 != v45)
                {
                  break;
                }

                if (!--v42)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
LABEL_37:
              v46 = v39 + a4;
              memcpy((a3 + a4), (v36 + v37 + 22), v39);
              *(a3 + v46) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v60, a7, a3, v46, *(v36 + 16), a5, *(v36 + 12));
            }
          }
        }

        v36 = *v36;
      }

      while (v36);
    }

    else
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v59, a8);
      v18 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v19 = *(a2 + 16);
      if (v19 > *(v18 + 12))
      {
        __assert_rtn("traverseFromMapCursorTrieList", "BurstTrie.cpp", 1957, "cursor.prfxlen <= head->restlen");
      }

      if (v18)
      {
        v56 = (v18 + 14);
        v20 = *(a2 + 16);
        v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v57 = v14;
        while (1)
        {
          v22 = *(v21 + 12);
          if (v21 != v18)
          {
            if (v22 <= v20)
            {
              goto LABEL_39;
            }

            if (v19)
            {
              break;
            }
          }

LABEL_19:
          v29 = v22 - v19;
          if (a6 < 0 || v29 <= a6)
          {
            v14 = v20;
            v30 = v18;
            v31 = v29 + a4;
            v32 = v19;
            memcpy((a3 + a4), (v21 + v19 + 14), v29);
            *(a3 + v31) = 0;
            v33 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, v59);
            std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v33, a7, a3, v31, *(v21 + 8), a5, 0.0);
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v63);
            v18 = v30;
            v20 = v14;
            LOBYTE(v14) = v57;
            v19 = v32;
          }

          v21 = *v21;
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        v23 = (v21 + 14);
        v24 = v56;
        v25 = v19;
        while (1)
        {
          v27 = *v23++;
          v26 = v27;
          v28 = *v24++;
          if (v26 != v28)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_19;
          }
        }
      }
    }

LABEL_39:
    if ((v14 & 1) == 0)
    {
      v47 = v59;
LABEL_54:
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v47);
      goto LABEL_55;
    }

LABEL_41:
    v47 = v60;
    goto LABEL_54;
  }

  if (v15)
  {
    v16 = result;
    if ((v14 & 1) == 0)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v61, a8);
      v17 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      if (*v17)
      {
        std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v61, a7, a3, a4, *v17, a5, *(a2 + 24));
        if (!a6 || (*a5 & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (!a6)
      {
LABEL_47:
        v47 = v61;
        goto LABEL_54;
      }

      v48 = 0;
      v49 = v17 + 1;
      v50 = (a6 - 1);
      do
      {
        *(a3 + a4) = v48;
        nlp::updateMapCursorPointer(v16, a2, *&v49[2 * v48]);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, v61);
        nlp::traverseFromMapCursor(v16, a2, a3, a4 + 1, a5, v50, a7, v63);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v63);
        if (*a5)
        {
          break;
        }

        v51 = v48++ == 255;
      }

      while (!v51);
      goto LABEL_47;
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, a8);
    v34 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 8);
    if (v35)
    {
      std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v62, a7, a3, a4, v35, a5, *(a2 + 24));
      if (!a6 || (*a5 & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else if (!a6)
    {
LABEL_53:
      v47 = v62;
      goto LABEL_54;
    }

    v52 = 0;
    v53 = v34 + 12;
    v54 = (a6 - 1);
    do
    {
      *(a3 + a4) = v52;
      nlp::updateMapCursorPointer(v16, a2, *(v53 + 8 * v52));
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, v62);
      nlp::traverseFromMapCursor(v16, a2, a3, a4 + 1, a5, v54, a7, v63);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v63);
      if (*a5)
      {
        break;
      }

      v51 = v52++ == 255;
    }

    while (!v51);
    goto LABEL_53;
  }

LABEL_55:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CDD72D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 12;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

uint64_t nlp::addListNode(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, int *a7)
{
  v12 = a1;
  v13 = *a2;
  v14 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v15 = (a3 + a5);
  if (v13)
  {
    v31 = v12;
    v32 = a7;
    v16 = 0;
    v17 = 1;
LABEL_3:
    v18 = &v14[v16];
    LODWORD(v19) = v16++;
    do
    {
      v20 = *(v13 + 6);
      if (v20 + a5 == a4 && !memcmp(v15, v13 + 14, v20))
      {
        v17 = 0;
        *(v13 + 2) = a6;
        *v18 = v13;
        v13 = *v13;
        if (v13)
        {
          goto LABEL_3;
        }

        v19 = (v19 + 1);
        goto LABEL_14;
      }

      *v18++ = v13;
      v13 = *v13;
      v19 = (v19 + 1);
      ++v16;
    }

    while (v13);
    if (v17)
    {
      v12 = v31;
      a7 = v32;
      goto LABEL_13;
    }

LABEL_14:
    v23 = 1;
    v12 = v31;
    a7 = v32;
  }

  else
  {
    LODWORD(v19) = 0;
LABEL_13:
    v21 = a4 - a5;
    v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
    memcpy(v22 + 14, v15, v21);
    v22[v21 + 14] = 0;
    *(v22 + 6) = v21;
    *v22 = 0;
    v14[v19] = v22;
    v23 = 2;
    v19 = (v19 + 1);
    *(v22 + 2) = a6;
  }

  qsort(v14, v19, 8uLL, nlp::nodeStringCompare);
  v24 = *v14;
  v25 = *v14;
  if (v19 >= 2)
  {
    v26 = v14 + 1;
    v27 = v19 - 1;
    v28 = *v14;
    do
    {
      v29 = *v26++;
      v25 = v29;
      *v28 = v29;
      v28 = v29;
      --v27;
    }

    while (v27);
  }

  *v25 = 0;
  *a2 = v24;
  free(v14);
  *a7 = v23;
  if (v19 > *(v12 + 2088))
  {
    nlp::addListNode();
  }

  return v19;
}

int *nlp::burstLevel(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  v7 = v6;
  if (a2)
  {
    v8 = (v6 + 1);
    do
    {
      v9 = *(a2 + 6);
      v10 = a2[2];
      if (*(a2 + 6))
      {
        v11 = *&v8[8 * *(a2 + 14)];
        if (v11)
        {
          v21 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          v12 = nlp::addListNode(a1, &v21, a2 + 14, v9, 1u, v10, a3);
          v13 = v21;
          if (v12 >= *(a1 + 2088))
          {
            v13 = nlp::burstLevel(a1, v21, a3);
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v17 = v14 | v13;
          v18 = *(a2 + 14);
        }

        else
        {
          v15 = (v9 - 1);
          v16 = malloc_type_calloc(1uLL, v15 + 15, 0x1020040D0C9BDDAuLL);
          memcpy((v16 + 14), a2 + 15, v15);
          *(v16 + 14 + v15) = 0;
          *(v16 + 12) = v15;
          *(v16 + 8) = v10;
          *v16 = 0;
          v17 = v16 | 2;
          v18 = *(a2 + 14);
        }

        *&v8[8 * v18] = v17;
      }

      else
      {
        *v7 = v10;
      }

      v19 = *a2;
      free(a2);
      a2 = v19;
    }

    while (v19);
  }

  return v7;
}

uint64_t nlp::nodeStringCompare(nlp *this, const void *a2, const void *a3)
{
  v3 = *(*this + 12);
  v4 = *(*a2 + 12);
  v5 = v3 - v4;
  if (v3 >= v4)
  {
    v6 = *(*a2 + 12);
  }

  else
  {
    v6 = *(*this + 12);
  }

  LODWORD(result) = memcmp((*this + 14), (*a2 + 14), v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t nlp::addListNodeRanked(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  v18 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v19 = (a3 + a5);
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    do
    {
      v23 = v20;
      v24 = *(v17 + 10);
      if (v24 + a5 == a4 && !memcmp(v19, v17 + 22, v24))
      {
        *(v17 + 4) = a6;
        v25 = *(v17 + 3);
        if (*(a11 + 24))
        {
          std::function<float ()(void *,float,float)>::operator()(a11, a10, v25, a9);
        }

        else
        {
          v26 = v25 + a9;
        }

        *(v17 + 3) = v26;
        v21 = 1;
      }

      if (*(v17 + 2) > v22)
      {
        v22 = *(v17 + 2);
      }

      ++v20;
      v18[v23] = v17;
      v17 = *v17;
    }

    while (v17);
    if (v21)
    {
      v27 = 1;
      v28 = v23 + 1;
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v22 = 0.0;
  }

  if (v22 < a9)
  {
    v22 = a9;
  }

  v29 = a4 - a5;
  v30 = malloc_type_calloc(1uLL, v29 + 23, 0x10200402E77EEF7uLL);
  memcpy(v30 + 22, v19, v29);
  v30[v29 + 22] = 0;
  *(v30 + 10) = v29;
  *(v30 + 4) = a6;
  *(v30 + 2) = v22;
  *(v30 + 3) = a9;
  v28 = (v20 + 1);
  v27 = 2;
  *v30 = 0;
  v18[v20] = v30;
LABEL_18:
  qsort(v18, v28, 8uLL, nlp::nodeScoreCompare);
  v31 = *v18;
  *a7 = v22;
  v32 = v31;
  if (v28 >= 2)
  {
    v33 = (v28 - 1);
    v34 = v18 + 1;
    v35 = v31;
    do
    {
      v36 = *v34++;
      v32 = v36;
      *v35 = v36;
      *(v36 + 8) = *a7;
      v35 = v36;
      --v33;
    }

    while (v33);
  }

  *v32 = 0;
  *a2 = v31;
  free(v18);
  *a8 = v27;
  if (v28 > *(a1 + 2088))
  {
    nlp::addListNodeRanked();
  }

  return v28;
}

float *nlp::burstLevelRanked(uint64_t a1, unsigned __int16 *a2, float *a3, int *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = malloc_type_calloc(1uLL, 0x80CuLL, 0x10000408B9410F9uLL);
  v9 = v8;
  *a3 = 0.0;
  if (a2)
  {
    v10 = v8 + 12;
    do
    {
      v25 = 0.0;
      v11 = a2[10];
      v12 = *(a2 + 4);
      v13 = *(a2 + 3);
      v28 = 0;
      if (v11)
      {
        v14 = *&v10[8 * *(a2 + 22)];
        if (v14)
        {
          v26 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          v30 = 0;
          v15 = nlp::addListNodeRanked(a1, &v26, (a2 + 11), v11, 1u, v12, &v25, a4, v13, 0, v29);
          std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v29);
          v16 = v26;
          if (v15 >= *(a1 + 2088))
          {
            v16 = nlp::burstLevelRanked(a1, v26, &v25, a4);
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          *&v10[8 * *(a2 + 22)] = v17 | v16;
          v13 = v25;
        }

        else
        {
          v18 = (v11 - 1);
          v19 = malloc_type_calloc(1uLL, v18 + 23, 0x10200402E77EEF7uLL);
          memcpy((v19 + 22), a2 + 23, v18);
          *(v19 + 22 + v18) = 0;
          *(v19 + 20) = v18;
          *(v19 + 16) = v12;
          *(v19 + 8) = v13;
          *(v19 + 12) = v13;
          *v19 = 0;
          *&v10[8 * *(a2 + 22)] = v19 | 2;
        }
      }

      else
      {
        v9[1] = v13;
        *(v9 + 2) = v12;
      }

      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v27);
      v20 = *a3;
      if (v13 > *a3)
      {
        v20 = v13;
      }

      *a3 = v20;
      v21 = *a2;
      free(a2);
      a2 = v21;
    }

    while (v21);
    v22 = *a3;
  }

  else
  {
    v22 = 0.0;
  }

  *v9 = v22;
  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_22CDD7C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<float ()(void *,float,float)>::operator()(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t nlp::nodeScoreCompare(nlp *this, const void *a2, const void *a3)
{
  v3 = *(*this + 12);
  v4 = *(*a2 + 12);
  if (v3 == v4)
  {
    v5 = *(*this + 16);
    v6 = *(*a2 + 16);
    v7 = v5 == v6;
    if (v5 > v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else if (v3 <= v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t nlp::searchDiskLevelRanked(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v42 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v19 = *(a2 + 1032);
      v34 = a6;
      v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v20[4] = a4;
      *(v20 + a4 + 20) = 0;
      LOBYTE(v10) = v34;
      memcpy(v20 + 5, a3, a4);
      v20[2] = v18;
      *v20 = v19;
      v20[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v20, 1, &v35);
      v21 = v20[3]-- == 1;
      if (v21)
      {
        free(v20);
      }

      v17 = v35;
      if (v35)
      {
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      goto LABEL_30;
    }

    v25 = 0;
    while (1)
    {
      v26 = *(a2 + 4 * v25);
      a3[a5] = v25;
      if ((v26 & 3u) > 1uLL)
      {
        v29 = *(a1 + 2080);
        if ((v26 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
          v35 = nlp::searchDiskPageRanked(((v26 & 0xFFFFFFFC) + v29), a3, a4 + 1, a5 + 1, 0, a7, v36);
          v28 = v36;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
          v35 = nlp::searchCompactDiskLevelRanked(a1, ((v26 & 0xFFFFFFFC) + v29), a3, (a4 + 1), a5 + 1, 0, a7, v37);
          v28 = v37;
        }
      }

      else
      {
        if ((v26 & 3) == 0)
        {
          goto LABEL_23;
        }

        v27 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
        v35 = nlp::searchDiskLevelRanked(a1, (v26 & 0xFFFFFFFC) + v27, a3, (a4 + 1), a5 + 1, 0, a7, v38);
        v28 = v38;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v28);
LABEL_23:
      v17 = v35;
      if ((v35 & 1) == 0)
      {
        v21 = v25++ == 255;
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    if ((v16 & 3) == 2)
    {
      v22 = *(a1 + 2080);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
      v23 = v39;
      v24 = nlp::searchDiskPageRanked(((v16 & 0xFFFFFFFC) + v22), a3, a4, a5 + 1, v10, a7, v39);
    }

    else
    {
      v31 = *(a1 + 2080);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v40, a8);
      v23 = v40;
      v24 = nlp::searchCompactDiskLevelRanked(a1, ((v16 & 0xFFFFFFFC) + v31), a3, a4, a5 + 1, v10, a7, v40);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v30 = *(a1 + 2080);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v41, a8);
    v23 = v41;
    v24 = nlp::searchDiskLevelRanked(a1, (v16 & 0xFFFFFFFC) + v30, a3, a4, a5 + 1, v10, a7, v41);
LABEL_29:
    v17 = v24;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v23);
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v32 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t nlp::containsKey(uint64_t result, _DWORD *a2, int a3, _BYTE *a4)
{
  if (result)
  {
    if (*result == 1)
    {
LABEL_5:
      *(result + 4) = a2[2];
      *(result + 8) = *a2;
LABEL_6:
      *a4 = 1;
      return result;
    }

    if (!*result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    v5 = 0;
    if (*(result + 48))
    {
      result = std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(result + 24, *(result + 16), a2, &v5);
      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t nlp::searchDiskLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v32 = a6;
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      LOBYTE(v10) = v32;
      memcpy(v19 + 5, a3, a4);
      v19[2] = v18;
      *v19 = 0;
      v19[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v19, 1, &v33);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v17 = v33;
      if (v33)
      {
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      goto LABEL_30;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(a2 + 4 * v24);
      a3[a5] = v24;
      if ((v25 & 3u) > 1uLL)
      {
        v28 = *(a1 + 2080);
        if ((v25 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v34, a8);
          v33 = nlp::searchDiskPage(a1, ((v25 & 0xFFFFFFFC) + v28), a3, a4 + 1, a5 + 1, 0, a7, v34);
          v27 = v34;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v35, a8);
          v33 = nlp::searchCompactDiskLevel(a1, ((v25 & 0xFFFFFFFC) + v28), a3, (a4 + 1), a5 + 1, 0, a7, v35);
          v27 = v35;
        }
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_23;
        }

        v26 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
        v33 = nlp::searchDiskLevel(a1, (v25 & 0xFFFFFFFC) + v26, a3, (a4 + 1), a5 + 1, 0, a7, v36);
        v27 = v36;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v27);
LABEL_23:
      v17 = v33;
      if ((v33 & 1) == 0)
      {
        v20 = v24++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    v21 = *(a1 + 2080);
    if ((v16 & 3) == 2)
    {
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
      v22 = v37;
      v23 = nlp::searchDiskPage(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v37);
    }

    else
    {
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
      v22 = v38;
      v23 = nlp::searchCompactDiskLevel(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v38);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v29 = *(a1 + 2080);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
    v22 = v39;
    v23 = nlp::searchDiskLevel(a1, (v16 & 0xFFFFFFFC) + v29, a3, a4, a5 + 1, v10, a7, v39);
LABEL_29:
    v17 = v23;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v22);
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t nlp::searchLevelRanked(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0;
  if (a4 >= a3)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(a1 + 4);
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      memcpy(v19 + 5, a2, a4);
      v19[2] = v17;
      *v19 = v18;
      v19[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v19, 1, &v29);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v21 = v29;
      if (v29)
      {
        v21 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v21 = 0;
    }

    if (a5)
    {
      goto LABEL_26;
    }

    v22 = 0;
    v23 = a1 + 12;
    while (1)
    {
      v24 = *(v23 + 8 * v22);
      a2[a4] = v22;
      if ((v24 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
        v25 = v30;
        v26 = nlp::searchListRanked((v24 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v30);
      }

      else
      {
        if ((v24 & 3) != 1)
        {
          goto LABEL_19;
        }

        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
        v25 = v31;
        v26 = nlp::searchLevelRanked(v24 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v31);
      }

      v29 = v26;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v25);
LABEL_19:
      v21 = v29;
      if ((v29 & 1) == 0)
      {
        v20 = v22++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v14 = *(a1 + 8 * a2[a4] + 12);
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v32, a7);
    v15 = v32;
    v16 = nlp::searchListRanked((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v32);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v21 = 0;
      goto LABEL_26;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v33, a7);
    v15 = v33;
    v16 = nlp::searchLevelRanked(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v33);
  }

  v21 = v16;
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_22CDD8788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchLevel(int *a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (a4 >= a3)
  {
    v17 = *a1;
    if (*a1)
    {
      v18 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v18[4] = a4;
      *(v18 + a4 + 20) = 0;
      memcpy(v18 + 5, a2, a4);
      v18[2] = v17;
      *v18 = 0;
      v18[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v18, 1, &v28);
      v19 = v18[3]-- == 1;
      if (v19)
      {
        free(v18);
      }

      v20 = v28;
      if (v28)
      {
        v20 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
    }

    if (a5)
    {
      goto LABEL_26;
    }

    v21 = 0;
    v22 = a1 + 1;
    while (1)
    {
      v23 = *&v22[2 * v21];
      a2[a4] = v21;
      if ((v23 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v29, a7);
        v24 = v29;
        v25 = nlp::searchList((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v29);
      }

      else
      {
        if ((v23 & 3) != 1)
        {
          goto LABEL_19;
        }

        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
        v24 = v30;
        v25 = nlp::searchLevel(v23 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v30);
      }

      v28 = v25;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v24);
LABEL_19:
      v20 = v28;
      if ((v28 & 1) == 0)
      {
        v19 = v21++ == 255;
        if (!v19)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v14 = *&a1[2 * a2[a4] + 1];
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
    v15 = v31;
    v16 = nlp::searchList((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v31);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v20 = 0;
      goto LABEL_26;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v32, a7);
    v15 = v32;
    v16 = nlp::searchLevel(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v32);
  }

  v20 = v16;
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
LABEL_26:
  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_22CDD8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchCompactDiskLevelRanked(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v36 = a2;
        do
        {
          v37 = *v36++;
          v38 = vcnt_s8(v37);
          v38.i16[0] = vaddlv_u8(v38);
          v18 += v38.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v39 = vcnt_s8(((v17 - 1) & *&v16));
      v39.i16[0] = vaddlv_u8(v39);
      v40 = a2[5].i32[v18 + v39.i32[0] + 1];
      if ((v40 & 3u) > 1)
      {
        if ((v40 & 3) == 2)
        {
          v41 = *(a1 + 2080);
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
          v42 = v54;
          v43 = nlp::searchDiskPageRanked(((v40 & 0xFFFFFFFC) + v41), a3, a4, a5 + 1, a6, a7, v54);
        }

        else
        {
          v45 = *(a1 + 2080);
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v55, a8);
          v42 = v55;
          v43 = nlp::searchCompactDiskLevelRanked(a1, (v40 & 0xFFFFFFFC) + v45, a3, a4, a5 + 1, a6, a7, v55);
        }
      }

      else
      {
        if ((v40 & 3) == 0)
        {
          goto LABEL_36;
        }

        v44 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v56, a8);
        v42 = v56;
        v43 = nlp::searchDiskLevelRanked(a1, (v40 & 0xFFFFFFFC) + v44, a3, a4, a5 + 1, a6, a7, v56);
      }

      v23 = v43;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v42);
      goto LABEL_42;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_42;
  }

  v19 = a2[5].i32[0];
  if (!v19)
  {
    v23 = 0;
LABEL_12:
    if (a6)
    {
      goto LABEL_42;
    }

    v24 = 0;
    while (1)
    {
      if (v24 >> 6 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24 >> 6;
      }

      v26 = a2[v24 >> 6];
      if ((*&v26 & (1 << v24)) == 0)
      {
        goto LABEL_29;
      }

      if (v24 >= 0x40)
      {
        v27 = 0;
        v28 = a2;
        do
        {
          v29 = *v28++;
          v30 = vcnt_s8(v29);
          v30.i16[0] = vaddlv_u8(v30);
          v27 += v30.i32[0];
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = 0;
      }

      v31 = vcnt_s8((*&v26 & ((1 << v24) - 1)));
      v31.i16[0] = vaddlv_u8(v31);
      v32 = a2[5].i32[v27 + v31.i32[0] + 1];
      a3[a5] = v24;
      if ((v32 & 3u) > 1)
      {
        v35 = *(a1 + 2080);
        if ((v32 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
          v50 = nlp::searchDiskPageRanked((v35 + (v32 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v51);
          v34 = v51;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v50 = nlp::searchCompactDiskLevelRanked(a1, v35 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v52);
          v34 = v52;
        }
      }

      else
      {
        if ((v32 & 3) == 0)
        {
          goto LABEL_29;
        }

        v33 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
        v50 = nlp::searchDiskLevelRanked(a1, v33 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v53);
        v34 = v53;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v34);
LABEL_29:
      v23 = v50;
      if ((v50 & 1) == 0 && ++v24 != 256)
      {
        continue;
      }

      goto LABEL_42;
    }
  }

  v20 = a2[4].i32[1];
  v21 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v21[4] = a4;
  *(v21 + a4 + 20) = 0;
  memcpy(v21 + 5, a3, a4);
  v21[2] = v19;
  *v21 = v20;
  v21[3] = 1;
  std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v21, 1, &v50);
  if (v21[3]-- == 1)
  {
    free(v21);
  }

  v23 = v50;
  if ((v50 & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = 1;
LABEL_42:
  v46 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t nlp::searchDiskPageRanked(unsigned int *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v35 = 0;
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = 0;
  v11 = a3 - a4;
  v12 = &a2[a4];
  __n = (a3 - a4);
  v13 = a1 + 2;
  v27 = v12;
  __dst = &a2[a3];
  v26 = a3;
  while (1)
  {
    v14 = v13 + v10;
    v15 = *(v14 + 4);
    if (v11 > v15 || memcmp(v14 + 10, v12, __n))
    {
      goto LABEL_14;
    }

    v16 = a5;
    if (v11 == v15)
    {
      v16 = 0;
    }

    if (v16)
    {
      goto LABEL_14;
    }

    v17 = (v15 + v8);
    v18 = (v17 - v9);
    v19 = v26;
    if (v18 >= 1)
    {
      memcpy(__dst, &v14[v15 - v18 + 10], v18);
      v19 = v17;
      v9 = v17;
    }

    a2[v19] = 0;
    v20 = *(v14 + 1);
    v21 = *v14;
    v22 = malloc_type_malloc(v19 + 21, 0x1000040A86A77D5uLL);
    v22[4] = v9;
    *(v22 + v19 + 20) = 0;
    memcpy(v22 + 5, a2, v19);
    *v22 = v21;
    v22[2] = v20;
    v22[3] = 1;
    std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v22, v11 == v15, &v35);
    v23 = v22[3] - 1;
    v22[3] = v23;
    if (!v23)
    {
      free(v22);
    }

    v9 = a3;
    v8 = a4;
    v12 = v27;
    if (v35)
    {
      return 1;
    }

    LODWORD(v15) = *(v14 + 4);
LABEL_14:
    v10 += v15 + 10;
    if (v10 >= v7)
    {
      return 0;
    }
  }
}

uint64_t std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28400DFD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t nlp::searchCompactDiskLevel(uint64_t a1, int8x8_t *a2, char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v35 = a2;
        do
        {
          v36 = *v35++;
          v37 = vcnt_s8(v36);
          v37.i16[0] = vaddlv_u8(v37);
          v18 += v37.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v38 = vcnt_s8(((v17 - 1) & *&v16));
      v38.i16[0] = vaddlv_u8(v38);
      v39 = a2[4].i32[v18 + v38.i32[0] + 1];
      if ((v39 & 3u) > 1)
      {
        v40 = *(a1 + 2080);
        if ((v39 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v41 = v52;
          v42 = nlp::searchDiskPage(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v52);
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
          v41 = v53;
          v42 = nlp::searchCompactDiskLevel(a1, (v39 & 0xFFFFFFFC) + v40, a3, a4, a5 + 1, a6, a7, v53);
        }
      }

      else
      {
        if ((v39 & 3) == 0)
        {
          goto LABEL_36;
        }

        v43 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
        v41 = v54;
        v42 = nlp::searchDiskLevel(a1, (v39 & 0xFFFFFFFC) + v43, a3, a4, a5 + 1, a6, a7, v54);
      }

      v22 = v42;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v41);
      goto LABEL_42;
    }

LABEL_36:
    v22 = 0;
    goto LABEL_42;
  }

  v19 = a2[4].i32[0];
  if (!v19)
  {
    v22 = 0;
LABEL_12:
    if (a6)
    {
      goto LABEL_42;
    }

    v23 = 0;
    while (1)
    {
      if (v23 >> 6 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 >> 6;
      }

      v25 = a2[v23 >> 6];
      if ((*&v25 & (1 << v23)) == 0)
      {
        goto LABEL_29;
      }

      if (v23 >= 0x40)
      {
        v26 = 0;
        v27 = a2;
        do
        {
          v28 = *v27++;
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v26 += v29.i32[0];
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0;
      }

      v30 = vcnt_s8((*&v25 & ((1 << v23) - 1)));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = a2[4].i32[v26 + v30.i32[0] + 1];
      a3[a5] = v23;
      if ((v31 & 3u) > 1)
      {
        v34 = *(a1 + 2080);
        if ((v31 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v49, a8);
          v48 = nlp::searchDiskPage(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v49);
          v33 = v49;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v50, a8);
          v48 = nlp::searchCompactDiskLevel(a1, v34 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v50);
          v33 = v50;
        }
      }

      else
      {
        if ((v31 & 3) == 0)
        {
          goto LABEL_29;
        }

        v32 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
        v48 = nlp::searchDiskLevel(a1, v32 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v51);
        v33 = v51;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v33);
LABEL_29:
      v22 = v48;
      if ((v48 & 1) == 0 && ++v23 != 256)
      {
        continue;
      }

      goto LABEL_42;
    }
  }

  v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v20[4] = a4;
  *(v20 + a4 + 20) = 0;
  memcpy(v20 + 5, a3, a4);
  v20[2] = v19;
  *v20 = 0;
  v20[3] = 1;
  std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v20, 1, &v48);
  if (v20[3]-- == 1)
  {
    free(v20);
  }

  v22 = v48;
  if ((v48 & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = 1;
LABEL_42:
  v44 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t nlp::searchDiskPage(uint64_t a1, unsigned int *a2, char *a3, unsigned int a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v66 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v10 = a4 - a5;
  v11 = *a2;
  if ((*(a1 + 2064) & 4) != 0)
  {
    memset(__s1, 0, sizeof(__s1));
    if (v11)
    {
      v26 = 0;
      v27 = 0;
      v28 = a2 + 1;
      v53 = a5 - a4;
      __s2 = &a3[a5];
      v51 = &a3[a4];
      v54 = a2 + 1;
      do
      {
        v29 = v27;
        v27 = v28 + v26;
        v30 = v27[6];
        if (v29)
        {
          v31 = v29[6];
          if (v30 > v31)
          {
            memcpy(__s1 + v31, v29 + 7, v30 - v31);
          }
        }

        v32 = *(v27 + 2);
        v33 = v32 + v30;
        if ((v32 + v30) >= v10)
        {
          if (v9 == v8 || (v30 >= v10 ? (v34 = v10) : (v34 = v30), !memcmp(__s1, __s2, v34)))
          {
            v35 = v10 - v30;
            if (v10 - v30 < 0 || (v32 >= v35 ? (v36 = v35) : (v36 = v32), !memcmp(v27 + 7, &__s2[v30], v36)))
            {
              v37 = a6;
              if (v10 == v33)
              {
                v37 = 0;
              }

              if ((v37 & 1) == 0)
              {
                v38 = v9;
                v39 = v30 + v8;
                v40 = v30 + v8 - v38;
                if (v40 < 1)
                {
                  v39 = v38;
                }

                else
                {
                  memcpy(v51, __s1 + v30 - v40, v40);
                  v32 = *(v27 + 2);
                  LODWORD(v30) = v27[6];
                }

                v41 = v53 + v32 + v30;
                if (v41 < 1)
                {
                  v43 = a3;
                }

                else
                {
                  v42 = v41 - (v40 & ~(v40 >> 31));
                  v43 = a3;
                  memcpy(&a3[v39], &v27[v32 - v42 + 7], v42);
                  v39 += v42;
                }

                v43[v39] = 0;
                v44 = *v27;
                v45 = malloc_type_malloc(v39 + 21, 0x1000040A86A77D5uLL);
                v45[4] = v39;
                *(v45 + v39 + 20) = 0;
                memcpy(v45 + 5, v43, v39);
                *v45 = 0;
                v45[2] = v44;
                v45[3] = 1;
                std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v45, v10 == v33, &v64);
                v46 = v45[3] - 1;
                v45[3] = v46;
                if (!v46)
                {
                  free(v45);
                }

                v9 = a4;
                v28 = v54;
                if (v64)
                {
LABEL_50:
                  result = 1;
                  goto LABEL_49;
                }

                v32 = *(v27 + 2);
                v8 = a5;
              }
            }
          }
        }

        v26 += v32 + 7;
      }

      while (v26 < v11);
    }
  }

  else if (v11)
  {
    v12 = 0;
    v13 = &a3[a5];
    v14 = v10;
    v15 = a2 + 1;
    v16 = a6;
    __dst = &a3[a4];
    v50 = a4;
    v55 = v13;
    do
    {
      v17 = v15 + v12;
      v18 = *(v17 + 2);
      if (v10 <= v18 && !memcmp(v17 + 6, v13, v14))
      {
        v19 = v10 == v18 ? 0 : v16;
        if ((v19 & 1) == 0)
        {
          v20 = a4;
          v21 = v18 + a5 - a4;
          v22 = v50;
          if (v21 >= 1)
          {
            memcpy(__dst, &v17[v18 - v21 + 6], v21);
            v22 = (v18 + a5);
            v20 = v18 + a5;
          }

          a3[v22] = 0;
          v23 = *v17;
          v24 = malloc_type_malloc(v22 + 21, 0x1000040A86A77D5uLL);
          v24[4] = v20;
          *(v24 + v22 + 20) = 0;
          memcpy(v24 + 5, a3, v22);
          *v24 = 0;
          v24[2] = v23;
          v24[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v24, v10 == v18, &v64);
          v25 = v24[3] - 1;
          v24[3] = v25;
          if (!v25)
          {
            free(v24);
          }

          v14 = v10;
          v13 = v55;
          v16 = a6;
          if (v64)
          {
            goto LABEL_50;
          }

          LODWORD(v18) = *(v17 + 2);
        }
      }

      v12 += v18 + 6;
    }

    while (v12 < v11);
  }

  result = 0;
LABEL_49:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t nlp::searchListRanked(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v33 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v27 = a3;
    while (1)
    {
      v14 = *(v9 + 10);
      if (v12 <= v14 && !memcmp(v9 + 22, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v27;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 22, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 4);
          v22 = *(v9 + 3);
          v23 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v23[4] = v19;
          *(v23 + v18 + 20) = 0;
          memcpy(v23 + 5, a2, v18);
          *v23 = v22;
          v23[2] = v21;
          v23[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v23, v20, &v33);
          v24 = v23[3] - 1;
          v23[3] = v24;
          if (!v24)
          {
            free(v23);
          }

          v10 = v33;
          v7 = a4;
          v13 = a5;
          if (v33)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t nlp::searchList(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v32 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v26 = a3;
    while (1)
    {
      v14 = *(v9 + 6);
      if (v12 <= v14 && !memcmp(v9 + 14, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v26;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 14, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 2);
          v22 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v22[4] = v19;
          *(v22 + v18 + 20) = 0;
          memcpy(v22 + 5, a2, v18);
          *v22 = 0;
          v22[2] = v21;
          v22[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v22, v20, &v32);
          v23 = v22[3] - 1;
          v22[3] = v23;
          if (!v23)
          {
            free(v22);
          }

          v10 = v32;
          v7 = a4;
          v13 = a5;
          if (v32)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t nlp::advanceCompactMapCursorMappedLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v8 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080);
  if (*(a1 + 2064))
  {
    if (!a4)
    {
      *(a2 + 16) = *(v8 + 1024);
      *(a2 + 20) = *(v8 + 1032);
      return 1;
    }
  }

  else if (!a4)
  {
    *(a2 + 16) = *(v8 + 1024);
    return 1;
  }

  nlp::updateCompactMapCursorPointer(a1, a2, *(v8 + 4 * *a3));

  return nlp::advanceCompactMapCursor(a1, a2, a3 + 1, (a4 - 1));
}

uint64_t nlp::updateCompactMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    if ((a3 & 3u) <= 1uLL)
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 16) = 0;
LABEL_18:
        *a2 = a3;
        *(a2 + 8) = 0;
        return result;
      }

      v6 = *(result + 2064);
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
      *(a2 + 16) = *(v7 + 1024);
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 1032);
LABEL_17:
      *(a2 + 20) = v8;
      goto LABEL_18;
    }

    if ((a3 & 3) == 2)
    {
      v3 = *(result + 2064);
      if ((v3 & 4) != 0)
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      }

      else
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
        if (v3)
        {
          *(a2 + 16) = v4[1];
          v8 = *v4;
          goto LABEL_17;
        }

        v5 = *v4;
      }
    }

    else
    {
      v9 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      if (*(result + 2064))
      {
        *(a2 + 16) = v9[10];
        v8 = v9[9];
        goto LABEL_17;
      }

      v5 = v9[8];
    }

    *(a2 + 16) = v5;
    goto LABEL_18;
  }

  return result;
}

uint64_t nlp::advanceMapCursorTrieList(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  if ((*(a1 + 2064) & 1) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(a2 + 16);
    if (v9 > *(v8 + 12))
    {
      nlp::advanceMapCursorTrieList();
    }

    if (!v8)
    {
      LOBYTE(v10) = 0;
      goto LABEL_46;
    }

    v10 = v8;
    while (1)
    {
      v11 = *(v10 + 12);
      if (v10 != v8)
      {
        if (v9 >= v11)
        {
          goto LABEL_18;
        }

        if (v9)
        {
          v12 = (v10 + 14);
          v13 = *(a2 + 16);
          v14 = (v8 + 14);
          do
          {
            v16 = *v12++;
            v15 = v16;
            v17 = *v14++;
            if (v15 != v17)
            {
              goto LABEL_18;
            }
          }

          while (--v13);
        }
      }

      if (v9 >= v11 || a4 == 0)
      {
        LODWORD(v19) = 0;
        LODWORD(v20) = *(a2 + 16);
      }

      else
      {
        v19 = 0;
        v20 = *(a2 + 16);
        do
        {
          if (*(v10 + 14 + v20) != a3[v19])
          {
            break;
          }

          ++v20;
          ++v19;
          if (v20 >= v11)
          {
            break;
          }
        }

        while (v19 < a4);
      }

      if (v19 == a4)
      {
        *(a2 + 8) = v10 | 2;
        if (v20 == v11)
        {
          *(a2 + 16) = v11;
          *(a2 + 20) = *(v10 + 8);
        }

        else
        {
          *(a2 + 16) = v9 + a4;
        }

        LOBYTE(v10) = 1;
        goto LABEL_46;
      }

LABEL_18:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_46;
      }
    }
  }

  v36[1] = v36;
  v36[0] = *a2;
  v21 = *(a2 + 16);
  v39 = *(a2 + 20);
  v40 = v7;
  v22 = *(a2 + 24);
  MEMORY[0x28223BE20]();
  v23 = v36 - ((v21 + 15) & 0x1FFFFFFF0);
  v24 = *(a2 + 16);
  memcpy(v23, (v25 + 22), v24);
  v26 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (v26)
  {
    v38 = 0;
    v27 = v24 + a4;
    v37 = a4;
    do
    {
      v28 = *(v26 + 20);
      if (v27 <= v28 && !memcmp((v26 + 22), v23, v24) && !memcmp((v26 + 22 + v24), a3, v37))
      {
        if (v27 == v28)
        {
          *(a2 + 8) = v26 | 2;
          v35 = *(v26 + 16);
          *(a2 + 24) = *(v26 + 12);
          *(a2 + 16) = v27;
          *(a2 + 20) = v35;
          LOBYTE(v10) = 1;
          goto LABEL_46;
        }

        v29 = v39;
        if (!v38)
        {
          v29 = 0;
          LODWORD(v21) = v21 + a4;
        }

        v30 = v40;
        if (!v38)
        {
          v30 = v26 | 2;
        }

        v40 = v30;
        if (!v38)
        {
          v22 = 0.0;
        }

        v38 = 1;
        v39 = v29;
      }

      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    v38 = 0;
  }

  v31 = v40;
  *a2 = v36[0];
  *(a2 + 8) = v31;
  LOBYTE(v10) = v38;
  v32 = v39;
  *(a2 + 16) = v21;
  *(a2 + 20) = v32;
  *(a2 + 24) = v22;
LABEL_46:
  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t nlp::updateMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != a3)
  {
    if ((a3 & 3u) > 1uLL)
    {
      if ((a3 & 3) != 2)
      {
        goto LABEL_15;
      }

      v3 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v3[4];
        *(a2 + 24) = v3[3];
        *a2 = a3;
        goto LABEL_15;
      }

      if (*(v3 + 6))
      {
        v4 = 0;
      }

      else
      {
        v4 = v3[2];
      }
    }

    else
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 20) = 0;
LABEL_15:
        *(a2 + 8) = a3;
        *(a2 + 16) = 0;
        return result;
      }

      v5 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v5[2];
        *(a2 + 24) = v5[1];
        goto LABEL_15;
      }

      v4 = *v5;
    }

    *(a2 + 20) = v4;
    goto LABEL_15;
  }

  return result;
}

uint64_t std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::vector<nlp::_RankedTrieLevel *>::__init_with_size[abi:ne200100]<nlp::_RankedTrieLevel * const*,nlp::_RankedTrieLevel * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NLTransliterationCandidate *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CDDA5A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 2080))
    {
      nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>();
    }

    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    if (nlp::burstTrieSetCursor(a1, v2))
    {
      v2[1] = a2 | 1;
      *(v2 + 5) = *(a2 + 8);
      *(v2 + 6) = *(a2 + 4);
    }

    else if (v2)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void *std::vector<std::tuple<std::string,unsigned int,float>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,float>>>(result, a2);
    }

    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1},std::allocator<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28400DDC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1},std::allocator<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<std::string,unsigned int,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<std::string,unsigned int,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::string,unsigned int,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2},std::allocator<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28400DE18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2},std::allocator<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, void **a3, unsigned int *a4, int *a5, int *a6)
{
  v6 = *a5;
  v7 = *a6;
  v8 = *(a1 + 8);
  std::string::basic_string[abi:ne200100](__p, *a3, *a4);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v9 >= v10)
  {
    v12 = (v9 - *v8) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - *v8;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v26[4] = v8;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,float>>>(v8, v15);
    }

    v16 = 32 * v12;
    v17 = *__p;
    *(v16 + 16) = v25;
    *v16 = v17;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(v16 + 24) = v6;
    *(v16 + 28) = v7;
    v18 = 32 * v12 + 32;
    v19 = *(v8 + 8) - *v8;
    v20 = (32 * v12 - v19);
    memcpy(v20, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    v26[0] = v21;
    v26[1] = v21;
    *(v8 + 8) = v18;
    v26[2] = v21;
    v22 = *(v8 + 16);
    *(v8 + 16) = 0;
    v26[3] = v22;
    std::__split_buffer<std::tuple<std::string,unsigned int,float>>::~__split_buffer(v26);
    v23 = SHIBYTE(v25);
    *(v8 + 8) = v18;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v9 + 16) = v25;
    *v9 = v11;
    *(v9 + 24) = v6;
    *(v9 + 28) = v7;
    *(v8 + 8) = v9 + 32;
  }
}

void sub_22CDDAAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2},std::allocator<void nlp::reverseBurst<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(nlp::_BurstTrie *,std::vector<nlp::_RankedTrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void std::vector<std::tuple<std::string,unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::string,unsigned int,float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::string,unsigned int,float>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<nlp::_TrieLevel *>::__init_with_size[abi:ne200100]<nlp::_TrieLevel * const*,nlp::_TrieLevel * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NLTransliterationCandidate *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22CDDACD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_TrieLevel *>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 2080))
    {
      nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>();
    }

    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    if (nlp::burstTrieSetCursor(a1, v2))
    {
      v2[1] = a2 | 1;
      *(v2 + 5) = *a2;
    }

    else if (v2)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1},std::allocator<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28400DE70;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1},std::allocator<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#1}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2},std::allocator<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28400DEC8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2},std::allocator<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, void **a3, unsigned int *a4, int *a5, int *a6)
{
  v6 = *a5;
  v7 = *a6;
  v8 = *(a1 + 8);
  std::string::basic_string[abi:ne200100](__p, *a3, *a4);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v9 >= v10)
  {
    v12 = (v9 - *v8) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - *v8;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v26[4] = v8;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<std::string,unsigned int,float>>>(v8, v15);
    }

    v16 = 32 * v12;
    v17 = *__p;
    *(v16 + 16) = v25;
    *v16 = v17;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(v16 + 24) = v6;
    *(v16 + 28) = v7;
    v18 = 32 * v12 + 32;
    v19 = *(v8 + 8) - *v8;
    v20 = (32 * v12 - v19);
    memcpy(v20, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    v26[0] = v21;
    v26[1] = v21;
    *(v8 + 8) = v18;
    v26[2] = v21;
    v22 = *(v8 + 16);
    *(v8 + 16) = 0;
    v26[3] = v22;
    std::__split_buffer<std::tuple<std::string,unsigned int,float>>::~__split_buffer(v26);
    v23 = SHIBYTE(v25);
    *(v8 + 8) = v18;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v9 + 16) = v25;
    *v9 = v11;
    *(v9 + 24) = v6;
    *(v9 + 28) = v7;
    *(v8 + 8) = v9 + 32;
  }
}

void sub_22CDDB07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2},std::allocator<void nlp::reverseBurst<nlp::_TrieLevel *,nlp::_ListNode *>(nlp::_BurstTrie *,std::vector<nlp::_TrieLevel *> const&,unsigned char const*,unsigned int)::{lambda(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)#2}>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28400DF20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, unsigned int *a5, int *a6, uint64_t *a7)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a6;
  v10 = *a7;
  v11 = (*(a1 + 16) + *a4);
  operator new[]();
}

uint64_t std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

const __CFString *nlp::getUTF8StringFromCFString@<X0>(const __CFString *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v4);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22CD0B000, v0, OS_LOG_TYPE_ERROR, "LM distribution modulating factor is not of number type: %@, using default value: %f", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22CD0B000, v0, OS_LOG_TYPE_ERROR, "LM distribution modulating factor is not in range [0, 1]: %@, using default value: %f", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 2048;
  v9 = NLTransliterationCandidate::getTotalScore(void)const::lmDistributionModulatingFactor;
  _os_log_error_impl(&dword_22CD0B000, log, OS_LOG_TYPE_ERROR, "Failed to create dictionary with contents of url %@:%@, using default value: %f", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void NLHindiWordLanguageModeler::loadLanguageModel(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315138;
  v5 = v1;
  _os_log_debug_impl(&dword_22CD0B000, v2, OS_LOG_TYPE_DEBUG, "Creating language model for locale: %s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315138;
  v5 = v1;
  _os_log_debug_impl(&dword_22CD0B000, v2, OS_LOG_TYPE_DEBUG, "Successfully created language model for locale: %s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315138;
  v5 = v1;
  _os_log_error_impl(&dword_22CD0B000, v2, OS_LOG_TYPE_ERROR, "Failed to create language model for locale: %s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void NL::ParseBuilder::merge(char a1, std::__shared_weak_count **a2, void *a3, std::__shared_weak_count *a4)
{
  if ((a1 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Block_object_dispose(a2, 8);
  v6 = a2[6];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Block_object_dispose(a3, 8);
  v7 = a3[6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void loadPlistFromFile(os_log_t log)
{
  *v1 = 0;
  _os_log_fault_impl(&dword_22CD0B000, log, OS_LOG_TYPE_FAULT, "Can not fetch the language and keywords from the given plist!", v1, 2u);
}

{
  *v1 = 0;
  _os_log_fault_impl(&dword_22CD0B000, log, OS_LOG_TYPE_FAULT, "can not load the property list from disk!", v1, 2u);
}

void loadAlternteKeywordsPlistFromFile(os_log_t log)
{
  *v1 = 0;
  _os_log_fault_impl(&dword_22CD0B000, log, OS_LOG_TYPE_FAULT, "Could not load the mappings from resource bundle", v1, 2u);
}

{
  *v1 = 0;
  _os_log_fault_impl(&dword_22CD0B000, log, OS_LOG_TYPE_FAULT, "Could not extract the alternative keywords for each language in the given plist", v1, 2u);
}

uint64_t _CSSimpleQueryHasResultsForQuery()
{
  dlerror();
  v0 = abort_report_np();
  return __lookslikeProperName_block_invoke_2_cold_3(v0);
}

void NL::SearchRules::SearchRules(void **a1, void **a2, void **a3, void *a4)
{
  v7 = *a1;
  if (v7)
  {
    a4[20] = v7;
    operator delete(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    a4[17] = v8;
    operator delete(v8);
  }

  v9 = *a3;
  if (*a3)
  {
    a4[14] = v9;

    operator delete(v9);
  }
}

void NLTextStructuredEvent::NLTextStructuredEvent(void **a1, std::__shared_weak_count **a2, uint64_t a3)
{
  v4 = *a1;
  if (v4)
  {
    *(a3 + 64) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue()
{
  {
    nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue(void)::attributes = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  }
}

{
  {
    nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue(void)::queue = dispatch_queue_create("com.apple.NLPUtils.SingletonResourceManager", nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getQueue(void)::attributes);
  }
}

void nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getCache()
{
  {
    nlp::SingletonResourceManager<std::string,NL::ReadOnlyFile<char>>::getCache(void)::cache = 0u;
    unk_27D9EE508 = 0u;
    dword_27D9EE518 = 1065353216;
  }
}

void SearchParser::SearchParser(void *a1, NL::ParseBuilder **a2, NL::ParserResources **a3)
{
  v6 = a1[10];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::unique_ptr<NL::ParseBuilder>::reset[abi:ne200100](a2, 0);
  v7 = a1[7];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::unique_ptr<NL::ParserResources>::reset[abi:ne200100](a3, 0);
  v8 = a1[4];
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t SearchParser::init(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return MEMORY[0x2318C0600](a2, 0x20C4074B9A93DLL);
}

void NLCompositeTransliterator::getTransliterationCandidates(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315394;
  *(buf + 4) = "Candidates";
  *(buf + 6) = 2080;
  *(buf + 14) = v4;
  _os_log_debug_impl(&dword_22CD0B000, log, OS_LOG_TYPE_DEBUG, "%s:\n %s", buf, 0x16u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void NL::SearchGrammar::SearchGrammar(NL::SearchRules **a1, uint64_t a2)
{
  std::unique_ptr<NL::SearchRules>::reset[abi:ne200100](a1, 0);
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void NLPCreateStringWithValidatedFormat(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22CD0B000, log, OS_LOG_TYPE_ERROR, "Failed to create string with format %@:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void NL::ParseFormatter::copyFormattedResult(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22CD0B000, a2, OS_LOG_TYPE_DEBUG, "query: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFCalendarGetMaximumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit)
{
  v2 = MEMORY[0x28210F320](calendar, unit);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x28210F330](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x28210FE18](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7928]();
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}