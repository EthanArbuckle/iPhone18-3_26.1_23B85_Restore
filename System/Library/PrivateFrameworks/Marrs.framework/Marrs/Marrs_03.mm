void sub_2227E2970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v69 - 153) < 0)
  {
    operator delete(*(v69 - 176));
  }

  if (*(v69 - 121) < 0)
  {
    operator delete(*(v69 - 144));
    if ((v67 & 1) == 0)
    {
LABEL_8:
      if (v66)
      {
        operator delete(v66);
      }

      v71 = STACK[0x258];
      if (STACK[0x258])
      {
        STACK[0x260] = v71;
        operator delete(v71);
      }

      v72 = STACK[0x270];
      if (STACK[0x270])
      {
        STACK[0x278] = v72;
        operator delete(v72);
      }

      v73 = STACK[0x288];
      if (STACK[0x288])
      {
        STACK[0x290] = v73;
        operator delete(v73);
      }

      v74 = STACK[0x2A0];
      if (STACK[0x2A0])
      {
        STACK[0x2A8] = v74;
        operator delete(v74);
      }

      v75 = *(v69 - 224);
      if (v75)
      {
        *(v69 - 216) = v75;
        operator delete(v75);
      }

      v76 = *(v69 - 200);
      if (v76)
      {
        *(v69 - 192) = v76;
        operator delete(v76);
      }

      if (v68)
      {
        operator delete(v68);
      }

      if (a14)
      {
        operator delete(a14);
      }

      if (a23)
      {
        operator delete(a23);
      }

      if (a13)
      {
        operator delete(a13);
      }

      *(v69 - 144) = &STACK[0x2B8];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v69 - 144));
      RepetitionPredictorResult::~RepetitionPredictorResult(&STACK[0x2D0]);
      if (a28)
      {
        operator delete(a28);
      }

      RepetitionPredictorResult::~RepetitionPredictorResult(&a65);
      *(v69 - 144) = &STACK[0x210];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v69 - 144));
      *(v69 - 144) = &STACK[0x228];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v69 - 144));
      RepetitionPredictorInput::~RepetitionPredictorInput(&a29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v65);
  goto LABEL_8;
}

void RepetitionPredictorResult::~RepetitionPredictorResult(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void RepetitionPredictorResult::RepetitionPredictorResult(RepetitionPredictorResult *this)
{
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *this = 1065353216;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  MEMORY[0x223DC1FB0](this + 48, "");
  *(this + 72) = 0;
}

void sub_2227E2CC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void MDConfig::~MDConfig(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
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

void std::vector<MDMentionOverride>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MDMentionOverride>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MDMentionOverride>,MDMentionOverride*,MDMentionOverride*,MDMentionOverride*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      v8 = (v4 + 1);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        v4[3] = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v4 += 4;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MDMentionOverride>,MDMentionOverride*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MDMentionOverride>,MDMentionOverride*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MDMentionOverride>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<MDMentionOverride>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t std::__split_buffer<MDMentionOverride>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void MRRuleConfig::~MRRuleConfig(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
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

void MRModelConfig::~MRModelConfig(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v2);
  }

  return a1;
}

void VisTextMatchKeywords::~VisTextMatchKeywords(char **this)
{
  std::__tree<std::string>::destroy(this[7]);
  std::__tree<std::string>::destroy(this[4]);
  std::__tree<std::string>::destroy(this[1]);
}

uint64_t std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::string>::destroy(v2);
  }

  return a1;
}

void marrs::mrr::mr::VerbalKeywordEntry::~VerbalKeywordEntry(char **this)
{
  std::__tree<std::string>::destroy(this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v2);
  }

  return a1;
}

uint64_t **std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *>(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = (a1 + 32);
    do
    {
      if (v5 != a3)
      {
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a3, *v5, v6 - 3);
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a3 + 3, v5[3], v6);
      }

      v5 += 6;
      a3 += 6;
      v6 += 6;
    }

    while (v5 != a2);
  }

  return a3;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (this != v5)
      {
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&this[1], v5[1].__r_.__value_.__l.__data_, p_size);
      }

      LODWORD(this[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
      v5 = (v5 + 56);
      this = (this + 56);
      p_size += 7;
    }

    while (v5 != a2);
  }

  return this;
}

void TypedJson<CcqrConfig>::fromJson(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v73 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v70 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v70 fileExistsAtPath:v73] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(v74, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, v75, v74, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/TypedJson.mm", 618);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v73];
  v72 = v4;
  v5 = [v4 objectForKeyedSubscript:@"preprocessing"];
  v6 = [v5 objectForKeyedSubscript:@"useRewritten"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"useRewritten"];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"useNonSignificantNonWhitespace"];

  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:@"useNonSignificantNonWhitespace"];
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 objectForKeyedSubscript:@"useWhitespace"];

  if (v12)
  {
    v13 = [v5 objectForKeyedSubscript:@"useWhitespace"];
    v68 = [v13 BOOLValue];
  }

  else
  {
    v68 = 0;
  }

  v14 = [v5 objectForKeyedSubscript:@"useSiriResponse"];

  if (v14)
  {
    v15 = [v5 objectForKeyedSubscript:@"useSiriResponse"];
    v66 = [v15 BOOLValue];
  }

  else
  {
    v66 = 1;
  }

  v16 = [v5 objectForKeyedSubscript:@"contextSize"];

  if (v16)
  {
    v17 = [v5 objectForKeyedSubscript:@"contextSize"];
    v65 = [v17 intValue];
  }

  else
  {
    v65 = 2;
  }

  v18 = [v5 objectForKeyedSubscript:@"maxCharNum"];

  if (v18)
  {
    v19 = [v5 objectForKeyedSubscript:@"maxCharNum"];
    v64 = [v19 intValue];
  }

  else
  {
    v64 = 34;
  }

  v20 = [v5 objectForKeyedSubscript:@"charPaddingIndex"];

  if (v20)
  {
    v21 = [v5 objectForKeyedSubscript:@"charPaddingIndex"];
    v63 = [v21 unsignedIntValue];
  }

  else
  {
    v63 = 56;
  }

  v22 = [v5 objectForKeyedSubscript:@"maxTokenNum"];

  if (v22)
  {
    v23 = [v5 objectForKeyedSubscript:@"maxTokenNum"];
    v62 = [v23 unsignedIntValue];
  }

  else
  {
    v62 = 200;
  }

  v69 = [v4 objectForKeyedSubscript:@"embeddingModule"];
  v24 = [v69 objectForKeyedSubscript:@"modelPrecision"];
  v61 = [v24 intValue];
  v25 = [v69 objectForKeyedSubscript:@"tokenEmbeddingDimension"];
  v60 = [v25 intValue];

  v71 = [v4 objectForKeyedSubscript:@"aneEmbeddingModule"];
  v26 = [v71 objectForKeyedSubscript:@"modelPrecision"];
  v59 = [v26 intValue];
  v27 = [v71 objectForKeyedSubscript:@"aneEmbeddingDimension"];
  v58 = [v27 intValue];

  v67 = [v4 objectForKeyedSubscript:@"encoderModule"];
  v28 = [v67 objectForKeyedSubscript:@"modelPrecision"];
  v56 = v11;
  v57 = v8;
  v55 = [v28 intValue];

  v29 = [v4 objectForKeyedSubscript:@"decoderModule"];
  v30 = [v29 objectForKeyedSubscript:@"modelPrecision"];
  v54 = [v30 intValue];
  v31 = [v29 objectForKeyedSubscript:@"numDecoderSteps"];
  v32 = [v31 unsignedIntValue];

  v33 = [v4 objectForKeyedSubscript:@"scoringModule"];
  v34 = [v33 objectForKeyedSubscript:@"cbrDecisionThreshold"];
  [v34 floatValue];
  v36 = v35;
  v37 = [v33 objectForKeyedSubscript:@"aerDecisionThreshold"];
  [v37 floatValue];
  v39 = v38;

  v40 = [v4 objectForKeyedSubscript:@"parityTest"];
  v41 = [v40 objectForKeyedSubscript:@"ignoreClassifier"];
  v42 = [v41 BOOLValue];

  v43 = [v72 objectForKeyedSubscript:@"asrConfig"];
  v44 = [v43 objectForKeyedSubscript:@"curConfMin"];
  [v44 floatValue];
  v46 = v45;
  v47 = [v43 objectForKeyedSubscript:@"prevConfMax"];
  [v47 floatValue];
  v49 = v48;

  if (!v5 || !v33 || !v29)
  {
    v53 = __cxa_allocate_exception(0x30uLL);
    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(v74, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(v53, v75, v74, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/TypedJson.mm", 679);
  }

  *a1 = v57;
  v50 = 0.0;
  if (v43)
  {
    v50 = v46;
  }

  *(a1 + 1) = v56;
  v51 = 1000.0;
  *(a1 + 2) = v68;
  if (v43)
  {
    v51 = v49;
  }

  *(a1 + 3) = v66;
  *(a1 + 4) = v65;
  *(a1 + 8) = v64;
  *(a1 + 12) = 0;
  *(a1 + 16) = v63;
  *(a1 + 24) = v62;
  *(a1 + 32) = v61;
  *(a1 + 36) = v60;
  *(a1 + 40) = v59;
  *(a1 + 44) = v58;
  *(a1 + 48) = v55;
  *(a1 + 56) = v54;
  *(a1 + 64) = v32;
  *(a1 + 72) = v36;
  *(a1 + 76) = v39;
  *(a1 + 80) = v42;
  *(a1 + 84) = v50;
  *(a1 + 88) = v51;
}

void sub_2227E3F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, id a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
    if ((v31 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v33);
  goto LABEL_8;
}

void marrs::qr::inference_engine::LSTMEncoderModule::setUtteranceTokensEmbeddings(marrs::qr::inference_engine::LSTMEncoderModule *this, marrs::inference_engine::InferenceTensor *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "embedded_seq");
  marrs::inference_engine::EspressoModule::setInput(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2227E419C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2227E420C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BaseException::BaseException(uint64_t a1, __int128 *a2, uint64_t a3, char *a4, int a5)
{
  v45 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835DF710;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v10;
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v12 = os_log_create("com.apple.siri", v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v32;
    _os_log_error_impl(&dword_2227A9000, v12, OS_LOG_TYPE_ERROR, "%s", &__str, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, a4);
  v13 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    v13 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
      goto LABEL_12;
    }
  }

  else
  {
    v42 = __str;
  }

  size = v13;
  p_str = &__str;
LABEL_12:
  v16 = p_str + size;
  while (size)
  {
    v18 = *--v16;
    v17 = v18;
    if (v18 != 92)
    {
      --size;
      if (v17 != 47)
      {
        continue;
      }
    }

    v19 = v16 - p_str;
    if (v19 != -1)
    {
      std::string::basic_string(&v43, &__str, v19 + 1, 0xFFFFFFFFFFFFFFFFLL, &v34);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      v42 = v43;
      LOBYTE(v13) = *(&__str.__r_.__value_.__s + 23);
    }

    break;
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v35 = MEMORY[0x277D85DD0];
  v36 = 1174405120;
  v37 = ___ZN13BaseExceptionC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_PKci_block_invoke;
  v38 = &__block_descriptor_tmp_263;
  v39 = a2;
  v20 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v42;
  }

  v41 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v33, "com.apple.siri.marrs");
  v21 = std::string::append(&v33, ".");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = *(a3 + 23);
  if (v23 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v23 >= 0)
  {
    v25 = *(a3 + 23);
  }

  else
  {
    v25 = *(a3 + 8);
  }

  v26 = std::string::append(&v34, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v43, ".exception");
  v29 = *&v28->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  analytics_send_event_lazy();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_43:
    operator delete(v42.__r_.__value_.__l.__data_);
    goto LABEL_41;
  }

  if (v20 < 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2227E45B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  operator delete(__p);
  if (*(v39 + 47) < 0)
  {
    operator delete(*(v39 + 24));
  }

  std::exception::~exception(v39);
  _Unwind_Resume(a1);
}

void *___ZN13BaseExceptionC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_PKci_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4[23] < 0)
    {
      v4 = *v4;
    }

    xpc_dictionary_set_string(v2, "errorMessage", v4);
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    xpc_dictionary_set_string(v3, "fileName", v5);
    std::to_string(&v8, *(a1 + 64));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_string(v3, "line", v6);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return v3;
}

void sub_2227E475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

BOOL marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::validate(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this, const QRRequest *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = &unk_2835DF300;
  v14 = 0;
  var1 = a2->var1.var1;
  var0 = a2->var1.var0;
  if ((0x6DB6DB6DB6DB6DB7 * ((var1 - var0) >> 4)) <= 1)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(buf, "Number of TurnInputs less than two");
    std::string::basic_string[abi:ne200100]<0>(v12, "QueryRewrite");
    IOContentError::IOContentError(exception, buf, v12, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/RepetitionDetection/src/CorrectionsRepetitionPredictorPlugin.cpp", 162);
  }

  v5 = marrs::qr::orchestration::InputCheckerUtil::utteranceCheckerHelper(var0, var1, 1);
  v6 = v5;
  if (v5)
  {
    if ((marrs::qr::orchestration::AsrConfidenceChecker::verify(v5, a2) & 1) == 0)
    {
      v7 = __cxa_allocate_exception(0x30uLL);
      std::string::basic_string[abi:ne200100]<0>(buf, "Invalid ASR confidence score in turn inputs");
      std::string::basic_string[abi:ne200100]<0>(v12, "QueryRewrite");
      IOContentError::IOContentError(v7, buf, v12, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/RepetitionDetection/src/CorrectionsRepetitionPredictorPlugin.cpp", 173);
    }
  }

  else
  {
    v8 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "validate";
      _os_log_debug_impl(&dword_2227A9000, v8, OS_LOG_TYPE_DEBUG, "%s Received empty ASR utterance in TurnInputs, skipping RD.", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2227E4A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
    if ((v20 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v19);
  goto LABEL_8;
}

void marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::predict(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this@<X0>, const QRRequest *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::once != -1)
  {
    dispatch_once(&marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::once, &__block_literal_global);
  }

  v6 = marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::rdLogContext;
  v7 = os_signpost_id_generate(marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::rdLogContext);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Predict", "", buf, 2u);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 4;
  if ((*(*this + 24))(this, a2))
  {
    var0 = a2->var1.var0->var0.var0;
    var1 = var0[1].var1.var0.var1.var1;
    v9 = *(&var0[1].var1.var0.var1 + 2);
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
  }

  v18 = 0u;
  v17 = 0u;
  v19 = 4;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__vdeallocate(a3);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v15 = 0;
  v16 = 0;
  *buf = 0;
  *(a3 + 24) = v17;
  *(a3 + 40) = v18;
  *(a3 + 56) = v19;
  *v21 = buf;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](v21);
  std::string::basic_string[abi:ne200100]<0>(&v20, "com.apple.siri.marrs");
  v11 = std::string::append(&v20, ".QueryRewrite.RepetitionDetector.Outcome");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v22 = v11->__r_.__value_.__r.__words[2];
  *v21 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  *buf = MEMORY[0x277D85DD0];
  v15 = 0x40000000;
  v16 = ___ZNK5marrs2qr13orchestration36CorrectionsRepetitionPredictorPlugin24doCoreAnalyticsForOutputERKNS1_10QRResponseE_block_invoke;
  *&v17 = &__block_descriptor_tmp_28;
  *(&v17 + 1) = this;
  *&v18 = a3;
  analytics_send_event_lazy();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(*v21);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v6, OS_SIGNPOST_INTERVAL_END, v7, "Predict", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2227E5904(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, os_signpost_id_t spid, uint64_t a13, NSObject *log, unint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *buf, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (*(v73 - 121) < 0)
  {
    operator delete(*(v73 - 144));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
    if ((v71 & 1) == 0)
    {
LABEL_9:
      RepetitionPredictorResult::~RepetitionPredictorResult(&buf);
      RepetitionPredictorResult::~RepetitionPredictorResult(&STACK[0x320]);
      RepetitionPredictorResult::~RepetitionPredictorResult((v73 - 224));
      *(v73 - 224) = &STACK[0x370];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v73 - 224));
      *(v73 - 224) = &STACK[0x388];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v73 - 224));
      RepetitionPredictorInput::~RepetitionPredictorInput(&a18);
      RepetitionPredictorInput::~RepetitionPredictorInput(&a71);
      __cxa_begin_catch(a1);
      if (a15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, log, OS_SIGNPOST_INTERVAL_END, spid, "Predict", " enableTelemetry=YES ", &buf, 2u);
      }

      std::current_exception();
      v75.__ptr_ = &a17;
      std::rethrow_exception(v75);
      sub_2227E5CB4(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, spid, a13, log, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
    }
  }

  else if (!v71)
  {
    goto LABEL_9;
  }

  __cxa_free_exception(v72);
  goto LABEL_9;
}

void sub_2227E5CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::exception_ptr a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  std::exception_ptr::~exception_ptr(&a17);
  __cxa_end_catch();
  a53 = a13;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Unwind_Resume(a1);
}

void sub_2227E5CDC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2227E5CE4);
  }

  __clang_call_terminate(a1);
}

xpc_object_t ___ZNK5marrs2qr13orchestration36CorrectionsRepetitionPredictorPlugin24doCoreAnalyticsForOutputERKNS1_10QRResponseE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v4 = *(*(a1 + 40) + 24);
  if (v4 >= 4)
  {
    v5 = "NOT_AVAILABLE";
  }

  else
  {
    v5 = (&off_2784B5088)[v4];
  }

  MEMORY[0x223DC1FB0](__p, v5);
  if (v3)
  {
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    xpc_dictionary_set_string(v3, "repetitionType", v6);
    v7 = (v2 + 216);
    if (*(v2 + 239) < 0)
    {
      v7 = *v7;
    }

    xpc_dictionary_set_string(v3, "locale", v7);
    v8 = (v2 + 312);
    if (*(v2 + 335) < 0)
    {
      v8 = *v8;
    }

    xpc_dictionary_set_string(v3, "assetVersion", v8);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2227E5DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v13);
        }

        *(4 * v10) = *v5;
        v6 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2227E5F8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void *___ZNK5marrs2qr13orchestration36CorrectionsRepetitionPredictorPlugin23doCoreAnalyticsForInputERKNS1_9QRRequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_double(v3, "turn1MinConfidence", *(a1 + 40));
    xpc_dictionary_set_double(v4, "turn1MaxConfidence", *(a1 + 48));
    v5 = (v2 + 216);
    if (*(v2 + 239) < 0)
    {
      v5 = *v5;
    }

    xpc_dictionary_set_string(v4, "locale", v5);
    v6 = (v2 + 312);
    if (*(v2 + 335) < 0)
    {
      v6 = *v6;
    }

    xpc_dictionary_set_string(v4, "assetVersion", v6);
  }

  return v4;
}

void marrs::mrr::mr::ModelBasedMR::resolveMentionsInUtterance(void *a1@<X1>, void *a2@<X2>, uint64_t **a3@<X3>, uint64_t *a4@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v7, OS_LOG_TYPE_INFO, "executing model based MR request", buf, 2u);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a1 != a1[1])
  {
    v8 = a2[5];
    v9 = a2[6];
    if (v8 != v9)
    {
      v10 = a2[5];
      while ((*(*v10 + 72) - *(*v10 + 76)) < 0xB)
      {
        v10 += 8;
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      v59 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = 10;
        v22 = "Model based mention resolver does not support mentions with more than %d tokens";
        v23 = v59;
        v24 = 8;
        goto LABEL_95;
      }

      goto LABEL_96;
    }

LABEL_8:
    v65 = 0uLL;
    v66 = 0;
    v11 = *a3;
    v12 = a3[1];
    if (*a3 != v12)
    {
      do
      {
        v13 = *v11;
        if ((*(*v11 + 72) - *(*v11 + 76)) < 0xB)
        {
          v16 = *v11;
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
        }

        v14 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v13 + 32);
          if (*(v15 + 23) < 0)
          {
            v15 = *v15;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          *&buf[12] = 1024;
          *&buf[14] = 10;
          _os_log_impl(&dword_2227A9000, v14, OS_LOG_TYPE_DEBUG, "contextualSpans span - (%s) was discarded since it's longer than supported length of %d", buf, 0x12u);
        }

        ++v11;
      }

      while (v11 != v12);
      v8 = a2[5];
      v9 = a2[6];
    }

    if (v8 != v9)
    {
      v17 = a2[8];
      v18 = a2[19];
      *v67 = 0;
      v68 = 0;
      v69 = 0;
      marrs::mrr::mr::ModelBasedMR::resolveMentionsInUtterance();
    }

    v19 = v65;
    if (v65 != *(&v65 + 1))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v68 = 0;
      v69 = 0;
      *v67 = &v68;
      do
      {
        if ((~*(*v19 + 80) & 3) == 0)
        {
          v20 = *(*v19 + 72);
          operator new();
        }

        v19 += 8;
      }

      while (v19 != *(&v65 + 1));
      v25 = *v67;
      if (*v67 != &v68)
      {
        v26 = 0;
        do
        {
          if (v26 >= v64)
          {
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v62) >> 3);
            v28 = v27 + 1;
            if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v64 - v62) >> 3) > v28)
            {
              v28 = 0x5555555555555556 * ((v64 - v62) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v64 - v62) >> 3) >= 0x555555555555555)
            {
              v29 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v29 = v28;
            }

            v72 = &v62;
            if (v29)
            {
              if (v29 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v30 = 24 * v27;
            *buf = 0;
            *&buf[8] = v30;
            *&buf[16] = 24 * v27;
            v71 = 0;
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *v30 = 0;
            std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(24 * v27, *(v25 + 5), *(v25 + 6), 0x2E8BA2E8BA2E8BA3 * ((*(v25 + 6) - *(v25 + 5)) >> 3));
            v26 = (*&buf[16] + 24);
            v31 = (*&buf[8] - (v63 - v62));
            memcpy(v31, v62, v63 - v62);
            v32 = v62;
            v33 = v64;
            v62 = v31;
            v63 = v26;
            v64 = v71;
            *&buf[16] = v32;
            v71 = v33;
            *buf = v32;
            *&buf[8] = v32;
            std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(buf);
          }

          else
          {
            *v26 = 0;
            *(v26 + 1) = 0;
            *(v26 + 2) = 0;
            std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(v26, *(v25 + 5), *(v25 + 6), 0x2E8BA2E8BA2E8BA3 * ((*(v25 + 6) - *(v25 + 5)) >> 3));
            v26 += 24;
          }

          v63 = v26;
          v34 = *(v25 + 1);
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = *(v25 + 2);
              v48 = *v35 == v25;
              v25 = v35;
            }

            while (!v48);
          }

          v25 = v35;
        }

        while (v35 != &v68);
      }

      std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(v68);
      v36 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v63 - v62) >> 3);
        _os_log_impl(&dword_2227A9000, v36, OS_LOG_TYPE_INFO, "CSM Span Group size: %lu", buf, 0xCu);
      }

      v37 = v62;
      v38 = v63;
      if (v62 != v63)
      {
        while (1)
        {
          if (*(v37 + 1) == *v37)
          {
            goto LABEL_90;
          }

          memset(buf, 0, sizeof(buf));
          v39 = *v37;
LABEL_52:
          if (v39 != *(v37 + 1))
          {
            break;
          }

          v54 = MRRLoggerForCategory(2);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *v67 = 0;
            _os_log_impl(&dword_2227A9000, v54, OS_LOG_TYPE_INFO, "CSM span resolved to SDA. Skipping model run", v67, 2u);
          }

          v56 = *&buf[8];
          v57 = *buf;
          if (*buf == *&buf[8])
          {
            marrs::mrr::mr::addCSMSpansToMatchingResult();
          }

          v58 = a4[1];
          do
          {
            if (v58 >= a4[2])
            {
              v58 = std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(a4, v57);
            }

            else
            {
              std::vector<marrs::mrr::mr::MRMatchingResult>::__construct_one_at_end[abi:ne200100]<marrs::mrr::mr::MRMatchingResult const&>(a4, v57);
              v58 += 344;
            }

            a4[1] = v58;
            v57 += 344;
          }

          while (v57 != v56);
          *v67 = buf;
          std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](v67);
LABEL_90:
          v37 += 24;
          if (v37 == v38)
          {
            goto LABEL_91;
          }
        }

        v40 = *(v39 + 64);
        v41 = *(v40 + 56);
        v42 = *(v40 + 64);
        while (1)
        {
          if (v41 == v42)
          {
            v39 += 88;
            goto LABEL_52;
          }

          v43 = *(*v41 + 16);
          if (v43)
          {
            v44 = *(v43 + 8);
            if (v44)
            {
              v45 = *(v44 + 23);
              if (v45 < 0)
              {
                if (v44[1] != 14)
                {
                  goto LABEL_66;
                }

                v44 = *v44;
              }

              else if (v45 != 14)
              {
                goto LABEL_66;
              }

              v46 = *v44;
              v47 = *(v44 + 6);
              v48 = v46 == 0x686374614D6D7363 && v47 == 0x656372756F536863;
              if (v48)
              {
                v49 = *(*v41 + 32);
                if (v49)
                {
                  v50 = *(v49 + 23);
                  if (v50 < 0)
                  {
                    if (v49[1] != 13)
                    {
                      goto LABEL_66;
                    }

                    v49 = *v49;
                  }

                  else if (v50 != 13)
                  {
                    goto LABEL_66;
                  }

                  v51 = *v49;
                  v52 = *(v49 + 5);
                  if (v51 == 0x45746E65696C6173 && v52 == 0x797469746E45746ELL)
                  {
                    *v67 = 0;
                    v68 = 0;
                    v69 = 0;
                    v55 = *v37;
                    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
                  }
                }
              }
            }
          }

LABEL_66:
          v41 += 8;
        }
      }

LABEL_91:
      *buf = &v62;
      std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    *buf = &v65;
    std::vector<std::unique_ptr<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_96;
  }

  v21 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v22 = "No of MRREntities is zero, not running visual MR";
    v23 = v21;
    v24 = 2;
LABEL_95:
    _os_log_impl(&dword_2227A9000, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
  }

LABEL_96:
  v60 = *MEMORY[0x277D85DE8];
}

void sub_2227E6B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void marrs::mrr::mr::ModelBasedMR::resolveMentionsInUtterance()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v5[3], 0, 24);
  v0 = MRRLoggerForCategory(3);
  v1 = os_signpost_id_generate(v0);
  v2 = MRRLoggerForCategory(3);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = v2;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "MRModelPreprocessing", "", buf, 2u);
    }
  }

  v4 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v4, OS_LOG_TYPE_INFO, "BEGIN MRModelPreprocessing", buf, 2u);
  }

  *buf = 0;
  memset(v5, 0, 24);
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(v5, buf, &buf[4], 1uLL);
}

void sub_2227ECD5C()
{
  if (v0 < 0)
  {
    JUMPOUT(0x2227EDEECLL);
  }

  JUMPOUT(0x2227EDEF0);
}

void sub_2227ED5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  STACK[0x4B0] = &STACK[0x480];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  *(v56 - 208) = &STACK[0x450];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100]((v56 - 208));
  *(v56 - 208) = a44;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100]((v56 - 208));
  *(v56 - 208) = &STACK[0x3C0];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v56 - 208));
  if (a56)
  {
    operator delete(a56);
  }

  JUMPOUT(0x2227EDE40);
}

void sub_2227ED618(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      operator delete(v2);
    }

    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    v3 = STACK[0x4B0];
    if (STACK[0x4B0])
    {
      STACK[0x4B8] = v3;
      operator delete(v3);
    }

    STACK[0x4B0] = &STACK[0x450];
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
    JUMPOUT(0x2227ED898);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35)
{
  if (a2)
  {
    if (v35)
    {
      operator delete(v35);
      JUMPOUT(0x2227ED86CLL);
    }

    JUMPOUT(0x2227ED898);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED640(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x428] = v2;
    JUMPOUT(0x2227ED64CLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED6B4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227ED6BCLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED6D4(uint64_t a1, int a2)
{
  if (a2)
  {
    *(v2 - 208) = &STACK[0x260];
    std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100]((v2 - 208));
    std::pair<std::vector<marrs::mrr::mr::MRREntity>,std::vector<marrs::mrr::mr::MRREntity>>::~pair(&STACK[0x4B0]);
    JUMPOUT(0x2227ED6F4);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED714(uint64_t a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    std::__tree<std::string>::destroy(STACK[0x4B8]);
    if (STACK[0x450])
    {
      operator delete(STACK[0x450]);
    }

    JUMPOUT(0x2227EDB60);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED744(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 185) < 0)
    {
      operator delete(*(v2 - 208));
    }

    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    std::__tree<std::string>::destroy(STACK[0x4B8]);
    if (STACK[0x450])
    {
      operator delete(STACK[0x450]);
    }

    JUMPOUT(0x2227EDB60);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED774()
{
  if (STACK[0x4B0])
  {
    operator delete(STACK[0x4B0]);
  }

  STACK[0x4B0] = v0 - 208;
  JUMPOUT(0x2227ED934);
}

void sub_2227ED794()
{
  if (STACK[0x4B0])
  {
    JUMPOUT(0x2227ED7A0);
  }

  JUMPOUT(0x2227ED7A4);
}

void sub_2227ED7CC()
{
  if (STACK[0x4B0])
  {
    JUMPOUT(0x2227ED7D8);
  }

  JUMPOUT(0x2227ED7DCLL);
}

void sub_2227ED7F4(uint64_t a1, int a2)
{
  if (a2)
  {
    std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(&STACK[0x4B0]);
    JUMPOUT(0x2227EDA48);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED808(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x458] = v2;
    JUMPOUT(0x2227EDA48);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED824(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53)
{
  if (a2)
  {
    if (v53)
    {
      operator delete(v53);
    }

    JUMPOUT(0x2227EDCE8);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED844(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227ED84CLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED874(uint64_t a1, int a2)
{
  if (a2)
  {
    if (STACK[0x260])
    {
      operator delete(STACK[0x260]);
    }

    JUMPOUT(0x2227EDCE8);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED8A8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227ED8B4);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED8FC()
{
  STACK[0x4B0] = &STACK[0x480];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(*(v0 - 200));
  JUMPOUT(0x2227ED918);
}

void sub_2227ED95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (v71)
  {
    operator delete(v71);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x330]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x360]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x390]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x3C0]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x3F0]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x420]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x480]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x450]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor((v72 - 208));
  STACK[0x450] = &a59;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a21)
  {
    operator delete(a21);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a19)
  {
    operator delete(a19);
  }

  STACK[0x450] = &a63;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a53)
  {
    operator delete(a53);
  }

  STACK[0x450] = &a67;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  STACK[0x450] = &a71;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a35)
  {
    operator delete(a35);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a29)
  {
    JUMPOUT(0x2227EDEECLL);
  }

  JUMPOUT(0x2227EDEF0);
}

void sub_2227ED99C()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227ED990);
}

void sub_2227ED9B0()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227EDC60);
}

void sub_2227ED9C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (STACK[0x480])
    {
      operator delete(STACK[0x480]);
    }

    JUMPOUT(0x2227EDAA8);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED9DC()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227EDE38);
}

void sub_2227ED9F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      operator delete(v2);
    }

    JUMPOUT(0x2227EDA48);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDA08()
{
  if (v0)
  {
    JUMPOUT(0x2227ED950);
  }

  JUMPOUT(0x2227EDE40);
}

void sub_2227EDA1C()
{
  STACK[0x360] = &STACK[0x4B0];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  JUMPOUT(0x2227EDC4CLL);
}

void sub_2227EDA24()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227ED938);
}

void sub_2227EDA38()
{
  STACK[0x3F0] = &STACK[0x4B0];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3F0]);
  JUMPOUT(0x2227EDC94);
}

void sub_2227EDA40(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x480] = v2 - 208;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x480]);
    JUMPOUT(0x2227EDA58);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDA88(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_signpost_id_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a2)
  {
    v45 = STACK[0x260];
    if (STACK[0x260])
    {
      STACK[0x268] = v45;
      operator delete(v45);
    }

    STACK[0x4B0] = &STACK[0x420];
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
    __cxa_begin_catch(a1);
    v46 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      LOWORD(STACK[0x260]) = 0;
      _os_log_impl(&dword_2227A9000, v46, OS_LOG_TYPE_INFO, "[VisualMR] Error computing features, returning empty", &STACK[0x260], 2u);
    }

    v47 = MRRLoggerForCategory(3);
    if (a39 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = v47;
      if (os_signpost_enabled(v47))
      {
        LOWORD(STACK[0x260]) = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v48, OS_SIGNPOST_INTERVAL_END, a34, "MRModelPreprocessing", " enableTelemetry=YES ", &STACK[0x260], 2u);
      }
    }

    v49 = MRRLoggerForCategory(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      LOWORD(STACK[0x260]) = 0;
      _os_log_impl(&dword_2227A9000, v49, OS_LOG_TYPE_INFO, "END MRModelPreprocessing", &STACK[0x260], 2u);
    }

    *a44 = *&STACK[0x240];
    *(a44 + 16) = STACK[0x250];
    STACK[0x250] = 0;
    STACK[0x248] = 0;
    STACK[0x240] = 0;
    __cxa_end_catch();
    JUMPOUT(0x2227EC8F0);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDADC(void *a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 185) < 0)
    {
      operator delete(*(v2 - 208));
    }

    std::__tree<std::string>::destroy(STACK[0x268]);
    if (STACK[0x420])
    {
      operator delete(STACK[0x420]);
    }

    STACK[0x4B0] = &STACK[0x480];
    std::vector<std::vector<marrs::mrr::mr::SurroundingText>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
    __cxa_begin_catch(a1);
    if (a2 == 3)
    {
      v5 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(STACK[0x4B0]) = 0;
        _os_log_impl(&dword_2227A9000, v5, OS_LOG_TYPE_INFO, "IO Error in computing surrounding text features, disabling for this request", &STACK[0x4B0], 2u);
      }
    }

    else
    {
      v6 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(STACK[0x4B0]) = 0;
        _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_INFO, "Unknown error in computing surrounding text features, disabling for this request", &STACK[0x4B0], 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2227E9498);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDCB0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227EDCBCLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDE10(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    operator delete(v71);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x450]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor((v72 - 208));
  STACK[0x450] = &a59;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a21)
  {
    operator delete(a21);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a19)
  {
    operator delete(a19);
  }

  STACK[0x450] = &a63;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a53)
  {
    operator delete(a53);
  }

  STACK[0x450] = &a67;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  STACK[0x450] = &a71;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a35)
  {
    operator delete(a35);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a29)
  {
    JUMPOUT(0x2227EDEECLL);
  }

  JUMPOUT(0x2227EDEF0);
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__vdeallocate(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v1; std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(i))
    {
      i -= 344;
    }

    *(a1 + 8) = v1;
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(i))
    {
      i -= 344;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 88;
      v7 = v4 - 88;
      v8 = v4 - 88;
      do
      {
        v9 = *v8;
        v8 -= 88;
        (*v9)(v7);
        v6 -= 88;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void marrs::mrr::mr::addCSMSpansToMatchingResult()
{
  v1 = 3;
  memset(__p, 0, sizeof(__p));
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(__p, &v1, &v2, 1uLL);
}

void sub_2227EE3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__construct_one_at_end[abi:ne200100]<marrs::mrr::mr::MRMatchingResult const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  MEMORY[0x223DC1930](v4);
  *(v4 + 88) = *(a2 + 88);
  std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v4 + 96), (a2 + 96));
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  *(v4 + 336) = 0;
  result = std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(v4 + 320, *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
  *(a1 + 8) = v4 + 344;
  return result;
}

void sub_2227EE478(_Unwind_Exception *a1)
{
  if (*(v2 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v2 + 96));
  }

  MEMORY[0x223DC1950](v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x82FA0BE82FA0BE83 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xBE82FA0BE82FA0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5F417D05F417D06 * ((a1[2] - *a1) >> 3);
  }

  if (0x82FA0BE82FA0BE83 * ((a1[2] - *a1) >> 3) >= 0x5F417D05F417D0)
  {
    v6 = 0xBE82FA0BE82FA0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v6);
  }

  v7 = 344 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  MEMORY[0x223DC1930](v7, a2);
  *(v7 + 88) = *(a2 + 88);
  std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v7 + 96), (a2 + 96));
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 336) = 0;
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(v7 + 320, *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
  *&v16 = v16 + 344;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(&v14);
  return v13;
}

void sub_2227EE60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v4 + 96));
  }

  MEMORY[0x223DC1950](v4);
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(unint64_t a1)
{
  if (a1 < 0xBE82FA0BE82FA1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

marrs::mrr::mr::MRREntity *std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100](marrs::mrr::mr::MRREntity *this, const marrs::mrr::mr::MRREntity *a2)
{
  *this = 0;
  *(this + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    marrs::mrr::mr::MRREntity::MRREntity(this, a2);
    *(this + 216) = 1;
  }

  return this;
}

void sub_2227EE6E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227EE768(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = v6 + v7;
      v10 = MEMORY[0x223DC1920](a4 + v7, v6 + v7);
      v11 = *(v6 + v7 + 88);
      *(v10 + 96) = 0;
      v12 = v10 + 96;
      *(v12 - 8) = v11;
      *(v12 + 216) = 0;
      if (*(v6 + v7 + 312) == 1)
      {
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(v12, v9 + 96);
      }

      v8[40] = 0;
      v8[41] = 0;
      v8[42] = 0;
      *(v8 + 20) = *(v9 + 320);
      v8[42] = *(v9 + 336);
      *(v9 + 320) = 0;
      *(v9 + 328) = 0;
      *(v9 + 336) = 0;
      v7 += 344;
    }

    while (v6 + v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(v6);
      v6 += 344;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 344;
    std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(v3 - 344);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  if (*(a1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((a1 + 96));
  }

  JUMPOUT(0x223DC1950);
}

__n128 std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  v7 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v7;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 1;
  return result;
}

void std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void sub_2227EEA7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marrs::mrr::mr::MRMatchingResult::MRMatchingResult(uint64_t a1, float a2, uint64_t a3, uint64_t *a4)
{
  v7 = MEMORY[0x223DC1930]();
  *(v7 + 96) = 0;
  *(v7 + 88) = a2;
  *(v7 + 312) = 0;
  *(v7 + 328) = 0;
  *(v7 + 336) = 0;
  *(v7 + 320) = 0;
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(v7 + 320, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_2227EEB04(_Unwind_Exception *a1)
{
  if (*(v1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity(v2);
  }

  MEMORY[0x223DC1950](v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v22 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(v5);
  }

  v6 = 88 * v2;
  MEMORY[0x223DC1930](v6, a2);
  v21 = (v6 + 88);
  v7 = *a1;
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      v12 = MEMORY[0x223DC1920](v11, v10);
      v10 += 11;
      v11 = v12 + 88;
    }

    while (v10 != v8);
    v13 = v7;
    v14 = v7;
    do
    {
      v15 = *v14;
      v14 += 11;
      (*v15)(v7);
      v13 += 11;
      v7 = v14;
    }

    while (v14 != v8);
  }

  v16 = *a1;
  *a1 = v9;
  v17 = a1[2];
  v19 = v21;
  *(a1 + 1) = v21;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v20[0] = v16;
  v20[1] = v16;
  std::__split_buffer<sirinluinternal::MatchingSpan>::~__split_buffer(v20);
  return v19;
}

void std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<sirinluinternal::MatchingSpan>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<marrs::mrr::mr::MRResultType>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(void *result, char *__src, char *a3)
{
  v3 = __src;
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if (v5 == *result)
  {
    if (v5)
    {
      result[1] = v6;
      operator delete(v6);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](v4, 1uLL);
  }

  v7 = result[1];
  if (v7 == v6)
  {
    if (__src == a3)
    {
      v10 = *result;
    }

    else
    {
      v10 = result[1];
      do
      {
        v11 = *v3;
        v3 += 4;
        *v10 = v11;
        v10 += 4;
      }

      while (v3 != a3);
    }

    v9 = &v7[v10 - v6];
  }

  else
  {
    v8 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v8);
    }

    v9 = &v6[v8];
  }

  v4[1] = v9;
  return result;
}

uint64_t std::map<marrs::mrr::mr::EntityType,char const*>::at(int a1)
{
  v1 = qword_280AC2C58;
  if (!qword_280AC2C58)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(v1 + 32);
      if (v2 <= a1)
      {
        break;
      }

      v1 = *v1;
      if (!v1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a1)
    {
      return v1 + 40;
    }

    v1 = *(v1 + 8);
    if (!v1)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::vector<marrs::mrr::mr::SurroundingText>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(a1, a2);
  }

  else
  {
    std::vector<marrs::mrr::mr::MRMatchingResult>::__construct_one_at_end[abi:ne200100]<marrs::mrr::mr::MRMatchingResult const&>(a1, a2);
    result = v3 + 344;
  }

  a1[1] = result;
  return result;
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__insert_with_size[abi:ne200100]<std::__wrap_iter<marrs::mrr::mr::MRMatchingResult*>,std::__wrap_iter<marrs::mrr::mr::MRMatchingResult*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x82FA0BE82FA0BE83 * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0x82FA0BE82FA0BE83 * ((v10 - a2) >> 3)) >= a5)
      {
        v17 = 344 * a5;
        std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(a1, a2, a1[1], a2 + 344 * a5);
        v16 = v17 + a3;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(a1, v15 + a3, a4, a1[1]);
        if (v15 < 1)
        {
          return;
        }

        std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(a1, a2, v10, a2 + 344 * a5);
        v16 = v15 + a3;
      }

      std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *>(a3, v16, a2);
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x7D05F417D05F417DLL * ((v10 - *a1) >> 3);
      if (v12 > 0xBE82FA0BE82FA0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0x82FA0BE82FA0BE83 * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x5F417D05F417D0)
      {
        v14 = 0xBE82FA0BE82FA0;
      }

      else
      {
        v14 = v12;
      }

      v26 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v14);
      }

      v18 = 0;
      v19 = 8 * ((a2 - v11) >> 3);
      v23[0] = 0;
      v23[1] = v19;
      v24 = v19;
      v25 = 0;
      v20 = 344 * a5;
      v21 = v19 + 344 * a5;
      do
      {
        v22 = v19 + v18;
        MEMORY[0x223DC1930](v19 + v18, a3 + v18);
        *(v22 + 88) = *(a3 + v18 + 88);
        std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v19 + v18 + 96), (a3 + v18 + 96));
        *(v22 + 320) = 0;
        *(v22 + 328) = 0;
        *(v22 + 336) = 0;
        std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(v19 + v18 + 320, *(a3 + v18 + 320), *(a3 + v18 + 328), (*(a3 + v18 + 328) - *(a3 + v18 + 320)) >> 2);
        v18 += 344;
      }

      while (v20 != v18);
      v24 = v21;
      std::vector<marrs::mrr::mr::MRMatchingResult>::__swap_out_circular_buffer(a1, v23, a2);
      std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(v23);
    }
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      MEMORY[0x223DC1930](a4 + v7, a2 + v7);
      *(v8 + 88) = *(a2 + v7 + 88);
      std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((a4 + v7 + 96), (a2 + v7 + 96));
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(a4 + v7 + 320, *(a2 + v7 + 320), *(a2 + v7 + 328), (*(a2 + v7 + 328) - *(a2 + v7 + 320)) >> 2);
      v7 += 344;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2227EF410(_Unwind_Exception *a1)
{
  MEMORY[0x223DC1950](v2);
  while (v2 != v1)
  {
    v2 -= 344;
    std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(v2);
  }

  _Unwind_Resume(a1);
}

__n128 std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = (v7 + v10);
      v12 = (v6 + v10);
      v13 = MEMORY[0x223DC1920](v6 + v10, v7 + v10);
      v14 = *(v7 + v10 + 88);
      *(v13 + 96) = 0;
      v15 = v13 + 96;
      *(v15 - 8) = v14;
      *(v15 + 216) = 0;
      if (*(v7 + v10 + 312) == 1)
      {
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(v15, &v11[6]);
      }

      v10 += 344;
      v12[20].n128_u64[0] = 0;
      v12[20].n128_u64[1] = 0;
      v12[21].n128_u64[0] = 0;
      result = v11[20];
      v12[20] = result;
      v12[21].n128_u64[0] = v11[21].n128_u64[0];
      v11[20].n128_u64[0] = 0;
      v11[20].n128_u64[1] = 0;
      v11[21].n128_u64[0] = 0;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  if (v6 != a4)
  {
    v17 = 0;
    v18 = a4 - v6;
    do
    {
      v19 = v7 + v17;
      v20 = v6 + v17;
      sirinluinternal::MatchingSpan::operator=();
      *(v6 + v17 - 256) = *(v7 + v17 - 256);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v6 + v17 - 248, v7 + v17 - 248);
      v22 = (v6 + v17 - 24);
      v21 = *v22;
      if (*v22)
      {
        *(v20 - 16) = v21;
        operator delete(v21);
        *v22 = 0;
        *(v20 - 16) = 0;
        *(v20 - 8) = 0;
      }

      v23 = (v19 - 24);
      result = *(v19 - 24);
      *v22 = result;
      *(v20 - 8) = *(v19 - 8);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      v17 -= 344;
    }

    while (v18 != v17);
  }

  return result;
}

void std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sirinluinternal::MatchingSpan::operator=();
      *(a3 + 88) = *(v5 + 88);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<marrs::mrr::mr::MRREntity,false> const&>((a3 + 96), (v5 + 96));
      if (a3 != v5)
      {
        std::vector<marrs::mrr::mr::MRResultType>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((a3 + 320), *(v5 + 320), *(v5 + 328), (*(v5 + 328) - *(v5 + 320)) >> 2);
      }

      v5 += 344;
      a3 += 344;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<marrs::mrr::mr::MRREntity,false> const&>(marrs::mrr::mr::MRREntity *this, marrs::mrr::mr::MRREntity *a2)
{
  if (*(this + 216) == *(a2 + 216))
  {
    if (*(this + 216))
    {
      *this = *a2;
      std::string::operator=((this + 8), (a2 + 8));
      std::string::operator=((this + 32), (a2 + 32));
      std::string::operator=((this + 56), (a2 + 56));
      v4 = *(a2 + 92);
      *(this + 5) = *(a2 + 5);
      *(this + 92) = v4;
      if (this == a2)
      {
        std::string::operator=((this + 136), (a2 + 136));
        *(this + 40) = *(a2 + 40);

        std::string::operator=(this + 7, a2 + 7);
      }

      else
      {
        v5 = *(this + 14);
        v7 = *(a2 + 14);
        v6 = *(a2 + 15);
        v8 = v6 - v7;
        if (*(this + 16) - v5 < v6 - v7)
        {
          v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
          std::vector<marrs::mrr::mr::SurroundingText>::__vdeallocate(this + 112);
          if (v9 <= 0x666666666666666)
          {
            v10 = 0x999999999999999ALL * ((*(this + 16) - *(this + 14)) >> 3);
            if (v10 <= v9)
            {
              v10 = v9;
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 16) - *(this + 14)) >> 3) >= 0x333333333333333)
            {
              v11 = 0x666666666666666;
            }

            else
            {
              v11 = v10;
            }

            std::vector<marrs::mrr::mr::SurroundingText>::__vallocate[abi:ne200100](this + 112, v11);
          }

          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v12 = *(this + 15);
        if (v12 - v5 >= v8)
        {
          if (v7 != v6)
          {
            do
            {
              std::string::operator=(v5, v7);
              *(v5 + 24) = *(v7 + 24);
              v7 += 40;
              v5 += 40;
            }

            while (v7 != v6);
            v12 = *(this + 15);
          }

          while (v12 != v5)
          {
            v14 = v12[-1].__r_.__value_.__s.__data_[7];
            v12 = (v12 - 40);
            if (v14 < 0)
            {
              operator delete(v12->__r_.__value_.__l.__data_);
            }
          }

          *(this + 15) = v5;
        }

        else
        {
          v13 = (v12 + v7 - v5);
          if (v12 != v5)
          {
            do
            {
              std::string::operator=(v5, v7);
              *(v5 + 24) = *(v7 + 24);
              v7 += 40;
              v5 += 40;
            }

            while (v7 != v13);
            v12 = *(this + 15);
          }

          *(this + 15) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::SurroundingText>,marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*>(this + 112, v13, v6, v12);
        }

        std::string::operator=((this + 136), (a2 + 136));
        *(this + 40) = *(a2 + 40);
        std::string::operator=(this + 7, a2 + 7);
        v15 = *(a2 + 24);
        v16 = *(a2 + 25);

        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 8, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
      }
    }
  }

  else if (*(this + 216))
  {
    marrs::mrr::mr::MRREntity::~MRREntity(this);
    *(this + 216) = 0;
  }

  else
  {
    marrs::mrr::mr::MRREntity::MRREntity(this, a2);
    *(this + 216) = 1;
  }
}

void *std::vector<marrs::mrr::mr::MRResultType>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void std::vector<marrs::mrr::mr::SurroundingText>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<marrs::mrr::mr::SurroundingText>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

double std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == *(a2 + 216))
  {
    if (*(a1 + 216))
    {

      marrs::mrr::mr::MRREntity::operator=(a1, a2);
    }
  }

  else if (*(a1 + 216))
  {
    marrs::mrr::mr::MRREntity::~MRREntity(a1);
    *(v4 + 216) = 0;
  }

  else
  {

    *&result = std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t marrs::mrr::mr::MRREntity::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = v8;
  std::vector<marrs::mrr::mr::SurroundingText>::__vdeallocate(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v9 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v9;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v10 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v10;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 192));
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return a1;
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xBE82FA0BE82FA1)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2227EFD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::__emplace_unique_key_args<marrs::mrr::mr::EntityType,std::piecewise_construct_t const&,std::tuple<marrs::mrr::mr::EntityType const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::allocator<marrs::mrr::mr::MRMatchingResult>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,sirinluinternal::MatchingSpan const&,float &,marrs::mrr::mr::MRREntity const&,std::vector<marrs::mrr::mr::MRResultType> &>(uint64_t a1, uint64_t a2, marrs::mrr::mr::MRREntity *a3, uint64_t *a4, float a5)
{
  marrs::mrr::mr::MRREntity::MRREntity(&v9, a3);
  marrs::mrr::mr::MRMatchingResult::MRMatchingResult(a1, a5, a2, &v9, a4);
  v22 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  v22 = &v16;
  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&,float &,marrs::mrr::mr::MRREntity const&,std::vector<marrs::mrr::mr::MRResultType> &>(uint64_t *a1, uint64_t a2, float *a3, marrs::mrr::mr::MRREntity *a4, uint64_t *a5)
{
  v5 = 0x82FA0BE82FA0BE83 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0xBE82FA0BE82FA0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x5F417D05F417D06 * ((a1[2] - *a1) >> 3);
  }

  if (0x82FA0BE82FA0BE83 * ((a1[2] - *a1) >> 3) >= 0x5F417D05F417D0)
  {
    v8 = 0xBE82FA0BE82FA0;
  }

  else
  {
    v8 = v6;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v8);
  }

  v15 = 0;
  v16 = 344 * v5;
  v17 = 344 * v5;
  std::allocator<marrs::mrr::mr::MRMatchingResult>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,sirinluinternal::MatchingSpan const&,float &,marrs::mrr::mr::MRREntity const&,std::vector<marrs::mrr::mr::MRResultType> &>(344 * v5, a2, a4, a5, *a3);
  *&v17 = 344 * v5 + 344;
  v9 = a1[1];
  v10 = 344 * v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(&v15);
  return v14;
}

void sub_2227F00B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::mr::MRMatchingResult::MRMatchingResult(uint64_t a1, float a2, uint64_t a3, const marrs::mrr::mr::MRREntity *a4, uint64_t *a5)
{
  v9 = MEMORY[0x223DC1930]();
  *(v9 + 88) = a2;
  marrs::mrr::mr::MRREntity::MRREntity((v9 + 96), a4);
  *(a1 + 312) = 1;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(a1 + 320, *a5, a5[1], (a5[1] - *a5) >> 2);
  return a1;
}

void sub_2227F0140(_Unwind_Exception *a1)
{
  if (*(v1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v1 + 96));
  }

  MEMORY[0x223DC1950](v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::pair<std::string,std::string>>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::__tree<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 80);
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a2 + 80);
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__split_buffer<std::unique_ptr<sirinluinternal::MatchingSpan>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,2ul>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void marrs::mrr::md::preprocessing::getIndexesOfTopMentions(uint64_t *a1, uint64_t *a2, int a3, float a4)
{
  v8 = std::vector<unsigned long>::vector[abi:ne200100](a1, (a2[1] - *a2) >> 2);
  v9 = *v8;
  v10 = v8[1];
  v11 = *v8;
  if (*v8 != v10)
  {
    v12 = 0;
    v13 = (v10 - v9 - 8) >> 3;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v16 = xmmword_2228320F0;
    v17 = vdupq_n_s64(2uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v14, v16));
      if (v18.i8[0])
      {
        v9[v12] = v12;
      }

      if (v18.i8[4])
      {
        v9[v12 + 1] = v12 + 1;
      }

      v12 += 2;
      v16 = vaddq_s64(v16, v17);
    }

    while (v15 != v12);
    v19 = *a2;
    v11 = v9;
    while (*(v19 + (*v11 << 32 >> 30)) > a4)
    {
      if (++v11 == v10)
      {
        goto LABEL_20;
      }
    }

    if (v11 != v10)
    {
      for (i = v11 + 1; i != v10; ++i)
      {
        if (*(v19 + (*i << 32 >> 30)) > a4)
        {
          *v11++ = *i;
        }
      }
    }
  }

  if (v11 != v10)
  {
    v10 = v11;
    a1[1] = v11;
  }

LABEL_20:
  v37 = a2;
  if (v10 - v9 < 129)
  {
    v24 = 0;
LABEL_26:
    std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v9, v10, &v37, v10 - v9, 0, v24);
  }

  else
  {
    v21 = MEMORY[0x277D826F0];
    v22 = v10 - v9;
    while (1)
    {
      v23 = operator new(8 * v22, v21);
      if (v23)
      {
        break;
      }

      v24 = v22 >> 1;
      v25 = v22 > 1;
      v22 >>= 1;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    v26 = v23;
    std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v9, v10, &v37, v10 - v9, v23, v22);
    operator delete(v26);
  }

  v27 = *a1;
  v28 = a1[1];
  v29 = v28 - *a1;
  if ((v29 >> 3) > a3)
  {
    v30 = a3;
    v31 = v29 >> 3;
    if (a3 <= (v29 >> 3))
    {
      if (a3 >= v31)
      {
        return;
      }

      v36 = v27 + 8 * a3;
    }

    else
    {
      v32 = a3 - v31;
      v33 = a1[2];
      if (v32 > (v33 - v28) >> 3)
      {
        if ((a3 & 0x80000000) == 0)
        {
          v34 = v33 - v27;
          if (v34 >> 2 > a3)
          {
            v30 = v34 >> 2;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v30;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v35);
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      bzero(a1[1], 8 * v32);
      v36 = v28 + 8 * v32;
    }

    a1[1] = v36;
  }
}

void sub_2227F0658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) > *(**a3 + 4 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(result, v24, a3, v25, a5);
        v26 = &v22[8 * v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[8 * a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * *v29);
          v32 = *(*v28 + 4 * *v22);
          if (v31 <= v32)
          {
            v30 = *v22;
          }

          v22 += 8 * (v31 <= v32);
          v29 += v31 > v32;
          *v8++ = v30;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8++ = v34;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22;
          v22 += 8;
          *v8++ = v33;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 > *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 8) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 8);
              v19 -= 8;
              if (v18 <= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 8);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 <= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 <= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 4 * *v26);
        v29 = *(*v25 + 4 * *v7);
        if (v28 <= v29)
        {
          v27 = *v7;
        }

        v26 += v28 > v29;
        v7 += v28 <= v29;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v31 = *v26++;
            *v5++ = v31;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v30 = *v7++;
        *v5++ = v30;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 4 * *v14) <= *(v16 + 4 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 4 * *v14) <= *(v16 + 4 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    v11 = result;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = **a4;
      while (1)
      {
        v13 = *v11;
        if (*(v12 + 4 * *a2) > *(v12 + 4 * *v11))
        {
          break;
        }

        ++v11;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 >= v8)
      {
        if (a5 == 1)
        {
          *v11 = *a2;
          *a2 = v13;
          return result;
        }

        v22 = a5 / 2;
        v16 = &v11[a5 / 2];
        v15 = a2;
        if (a2 != a3)
        {
          v23 = a3 - a2;
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[v23 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v23 += ~(v23 >> 1);
            if (*(v12 + 4 * v27) > *(v12 + 4 * *v16))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[v8 / 2];
        v16 = a2;
        if (a2 != v11)
        {
          v17 = a2 - v11;
          v16 = v11;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (*(v12 + 4 * *v15) > *(v12 + 4 * v21))
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

        v22 = v16 - v11;
      }

      v28 = v15;
      v29 = a2 - v16;
      if (a2 != v16)
      {
        v28 = v16;
        v30 = v15 - a2;
        if (v15 != a2)
        {
          if (v16 + 1 == a2)
          {
            v78 = *v16;
            v80 = v22;
            v31 = v15 - a2;
            v82 = a7;
            v32 = a3;
            v33 = a4;
            v34 = a8;
            v35 = v14;
            memmove(v16, a2, v15 - a2);
            v14 = v35;
            v22 = v80;
            a7 = v82;
            a8 = v34;
            a4 = v33;
            a3 = v32;
            v28 = (v16 + v31);
            *v28 = v78;
          }

          else if (a2 + 1 == v15)
          {
            v36 = *(v15 - 1);
            v28 = v16 + 1;
            if (v15 - 1 != v16)
            {
              v81 = v22;
              v83 = a7;
              v37 = a3;
              v38 = a4;
              v39 = a8;
              v40 = v14;
              v79 = *(v15 - 1);
              memmove(v16 + 1, v16, (v15 - 1) - v16);
              v14 = v40;
              v36 = v79;
              v22 = v81;
              a8 = v39;
              a4 = v38;
              a3 = v37;
              a7 = v83;
            }

            *v16 = v36;
          }

          else
          {
            v41 = v29 >> 3;
            if (v29 >> 3 == v30 >> 3)
            {
              v42 = v16 + 1;
              v43 = a2 + 1;
              do
              {
                v44 = *(v42 - 1);
                *(v42 - 1) = *(v43 - 1);
                *(v43 - 1) = v44;
                if (v42 == a2)
                {
                  break;
                }

                ++v42;
              }

              while (v43++ != v15);
              v28 = a2;
            }

            else
            {
              v46 = v30 >> 3;
              v47 = v29 >> 3;
              do
              {
                v48 = v47;
                v47 = v46;
                v46 = v48 % v46;
              }

              while (v46);
              v49 = &v16[v47];
              do
              {
                v51 = *--v49;
                v50 = v51;
                v52 = (v49 + v29);
                v53 = v49;
                do
                {
                  v54 = v52;
                  *v53 = *v52;
                  v55 = &v52[v41];
                  v56 = __OFSUB__(v41, v15 - v52);
                  v58 = v41 - (v15 - v52);
                  v57 = (v58 < 0) ^ v56;
                  v52 = &v16[v58];
                  if (v57)
                  {
                    v52 = v55;
                  }

                  v53 = v54;
                }

                while (v52 != v49);
                *v54 = v50;
              }

              while (v49 != v16);
              v28 = (v16 + v30);
            }
          }
        }
      }

      a5 -= v22;
      v8 -= v14;
      v59 = a4;
      if (v22 + v14 >= a5 + v8)
      {
        v63 = v14;
        v60 = a7;
        v61 = a8;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v28, v15, a3);
        v15 = v16;
        v8 = v63;
        a5 = v22;
        a3 = v28;
      }

      else
      {
        v60 = a7;
        v61 = a8;
        v62 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v11, v16, v28);
        a3 = v62;
        v11 = v28;
      }

      a2 = v15;
      a7 = v60;
      a4 = v59;
      a8 = v61;
      if (!v8)
      {
        return result;
      }
    }

    if (a5 <= v8)
    {
      if (a2 != v11)
      {
        v69 = a7;
        v70 = v11;
        do
        {
          v71 = *v70++;
          *v69 = v71;
          v69 += 8;
        }

        while (v70 != a2);
        v72 = *a4;
        while (a2 != a3)
        {
          v73 = *a2;
          v74 = *(*v72 + 4 * *a2);
          v75 = *(*v72 + 4 * *a7);
          if (v74 <= v75)
          {
            v73 = *a7;
          }

          a2 += v74 > v75;
          a7 += 8 * (v74 <= v75);
          *v11++ = v73;
          if (a7 == v69)
          {
            return result;
          }
        }

        return memmove(v11, a7, v69 - a7);
      }
    }

    else if (a2 != a3)
    {
      v64 = a7;
      v65 = a2;
      do
      {
        v66 = *v65++;
        *v64 = v66;
        v64 += 8;
      }

      while (v65 != a3);
      v67 = *a4;
      while (a2 != v11)
      {
        v68 = *(v64 - 1);
        if (*(*v67 + 4 * v68) <= *(*v67 + 4 * *(a2 - 1)))
        {
          v64 -= 8;
        }

        else
        {
          v68 = *--a2;
        }

        *--a3 = v68;
        if (v64 == a7)
        {
          return result;
        }
      }

      if (v64 != a7)
      {
        v76 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v77 = *(v64 - 1);
          v64 -= 8;
          a3[v76--] = v77;
        }

        while (v64 != a7);
      }
    }
  }

  return result;
}

void marrs::mrr::mr::MentionKeywordFilter::~MentionKeywordFilter(void **this)
{
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::MentionKeywordFilter::filterEntities(_BYTE *a1@<X8>)
{
  v2 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2227A9000, v2, OS_LOG_TYPE_INFO, "[MentionKeywordFilter] Not implemented yet, returning input list", v3, 2u);
  }

  *a1 = 0;
  a1[24] = 0;
}

uint64_t getFirstAndLastIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v6 = a6;
  if (a4 == a3)
  {
    *a5 = 0;
    *a6 = 0;
  }

  else
  {
    *a5 = 0;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 == a1)
    {
      v12 = 0;
    }

    else
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
      v12 = 0;
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
      }

      do
      {
        v14 = a1 + 24 * v12;
        v15 = *(v14 + 23);
        if (v15 >= 0)
        {
          v16 = *(v14 + 23);
        }

        else
        {
          v16 = *(v14 + 8);
        }

        if (v15 >= 0)
        {
          v17 = (a1 + 24 * v12);
        }

        else
        {
          v17 = *v14;
        }

        v18 = a3;
        while (1)
        {
          v19 = *(v18 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v18 + 8);
          }

          if (v19 == v16)
          {
            v21 = v20 >= 0 ? v18 : *v18;
            if (!memcmp(v21, v17, v16))
            {
              break;
            }
          }

          v18 += 24;
          if (v18 == a4)
          {
            goto LABEL_23;
          }
        }

        if (v18 != a4)
        {
          goto LABEL_25;
        }

LABEL_23:
        *a5 = ++v12;
      }

      while (v12 != v13);
      v12 = v13;
LABEL_25:
      v11 = v32;
      v6 = a6;
    }

    if (v12 == v11)
    {
      return 0;
    }

    v23 = v11 - 1;
    for (*v6 = v23; v23 > *a5; *v6 = v23)
    {
      v24 = a1 + 24 * v23;
      v25 = *(v24 + 23);
      if (v25 >= 0)
      {
        v26 = *(v24 + 23);
      }

      else
      {
        v26 = *(v24 + 8);
      }

      if (v25 >= 0)
      {
        v27 = (a1 + 24 * v23);
      }

      else
      {
        v27 = *v24;
      }

      v28 = a3;
      while (1)
      {
        v29 = *(v28 + 23);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v28 + 8);
        }

        if (v29 == v26)
        {
          v31 = v30 >= 0 ? v28 : *v28;
          if (!memcmp(v31, v27, v26))
          {
            break;
          }
        }

        v28 += 24;
        if (v28 == a4)
        {
          goto LABEL_48;
        }
      }

      if (v28 != a4)
      {
        return 1;
      }

LABEL_48:
      --v23;
    }
  }

  return 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<std::string const*>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float rawEditDistance<unsigned int>(void *a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  computeAlignmentMatrix<unsigned int>(a1, a2, a3, a4, v14, v13, v12, v11, 0.0, 0.0, 0, 0, 0, &v8, v7, v6);
  v4 = *(*(v9 - 24) + v8[1] - *v8 - 4);
  v15 = v6;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v6[0] = v7;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v6);
  v7[0] = &v8;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v7);
  return v4;
}

void sub_2227F1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v22 - 72) = v21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  a15 = &a18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a18 = &a21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void computeAlignmentMatrix<unsigned int>(void *a1, uint64_t a2, uint64_t *a3, unsigned int a4, int **a5, int **a6, uint64_t a7, uint64_t a8, float a9, float a10, int a11, int a12, char a13, uint64_t *a14, uint64_t *a15, uint64_t *a16)
{
  v21 = a14;
  v174 = *(a2 + 8) - *a2;
  v22 = (v174 >> 2) + 1;
  v172 = a1[1] - *a1;
  v23 = (v172 >> 2) + 1;
  std::vector<std::vector<float>>::clear[abi:ne200100](a14);
  std::vector<std::vector<float>>::clear[abi:ne200100](a15);
  std::vector<std::vector<float>>::clear[abi:ne200100](a16);
  std::vector<std::vector<float>>::resize(a14, v22);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::resize(a15, v22);
  v24 = a16;
  v25 = *a16;
  v26 = a16[1];
  v27 = 0xAAAAAAAAAAAAAAABLL * (&v26[-*a16] >> 3);
  v28 = v22 - v27;
  v181 = a4;
  if (v22 <= v27)
  {
    if (v22 < v27)
    {
      v33 = (v25 + 24 * v22);
      if (v26 != v33)
      {
        v34 = a16[1];
        do
        {
          v36 = *(v34 - 3);
          v34 -= 24;
          v35 = v36;
          if (v36)
          {
            *(v26 - 2) = v35;
            operator delete(v35);
            v24 = a16;
          }

          v26 = v34;
        }

        while (v34 != v33);
      }

      v24[1] = v33;
    }

    v37 = (v174 >> 2) + 1;
    if ((v174 >> 2) == -1)
    {
      v38 = 1;
      v39 = a1;
      goto LABEL_77;
    }
  }

  else
  {
    v29 = a16[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v29 - v26) >> 3) < v28)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v25) >> 3);
      v31 = 2 * v30;
      if (2 * v30 <= v22)
      {
        v31 = (v174 >> 2) + 1;
      }

      if (v30 >= 0x555555555555555)
      {
        v32 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v32 = v31;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(v32);
    }

    v40 = 24 * ((24 * v28 - 24) / 0x18) + 24;
    bzero(v26, v40);
    v24 = a16;
    v21 = a14;
    a16[1] = &v26[v40];
    v37 = (v174 >> 2) + 1;
  }

  v41 = 0;
  v39 = a1;
  do
  {
    v42 = (*v21 + 24 * v41);
    v44 = *v42;
    v43 = v42[1];
    v45 = (v43 - *v42) >> 2;
    if (v23 <= v45)
    {
      if (v23 < v45)
      {
        v42[1] = v44 + 4 * v23;
      }
    }

    else
    {
      v46 = v23 - v45;
      v47 = v42[2];
      if (v46 > (v47 - v43) >> 2)
      {
        v48 = v47 - v44;
        v49 = (v47 - v44) >> 1;
        if (v49 <= v23)
        {
          v49 = (v172 >> 2) + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v50 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v50);
      }

      v51 = (v46 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v52 = vdupq_n_s64(v51);
      v53 = v51 - ((v46 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v54 = (v43 + 8);
      v55 = -4;
      do
      {
        v56 = vdupq_n_s64(v55 + 4);
        v57 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_2228320F0)));
        if (vuzp1_s16(v57, *v52.i8).u8[0])
        {
          *(v54 - 2) = 0;
        }

        if (vuzp1_s16(v57, *&v52).i8[2])
        {
          *(v54 - 1) = 0;
        }

        if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_222832500)))).i32[1])
        {
          *v54 = 0;
          v54[1] = 0;
        }

        v55 += 4;
        v54 += 4;
      }

      while (v53 != v55);
      v42[1] = v43 + 4 * v46;
      v39 = a1;
    }

    v58 = (*a15 + 24 * v41);
    v59 = *v58;
    v60 = v58[1];
    v61 = v60 - *v58;
    v62 = v61 >> 3;
    if (v23 <= v61 >> 3)
    {
      if (v23 >= v62)
      {
        goto LABEL_56;
      }

      v68 = v59 + 8 * v23;
    }

    else
    {
      v63 = v23 - v62;
      v64 = v58[2];
      if (v63 > (v64 - v60) >> 3)
      {
        v65 = v64 - v59;
        v66 = v65 >> 2;
        if (v65 >> 2 <= v23)
        {
          v66 = (v172 >> 2) + 1;
        }

        if (v65 >= 0x7FFFFFFFFFFFFFF8)
        {
          v67 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v67 = v66;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v67);
      }

      v69 = 0;
      v68 = v60 + 8 * v63;
      v70 = (8 * ((v172 >> 2) + 1) - 8 - v61) >> 3;
      v71 = vdupq_n_s64(v70);
      v72 = (v60 + 8);
      do
      {
        v73 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(vdupq_n_s64(v69), xmmword_2228320F0)));
        if (v73.i8[0])
        {
          *(v72 - 1) = 0;
        }

        if (v73.i8[4])
        {
          *v72 = 0;
        }

        v69 += 2;
        v72 += 2;
      }

      while (((v70 + 2) & 0x3FFFFFFFFFFFFFFELL) != v69);
    }

    v58[1] = v68;
LABEL_56:
    v74 = (*v24 + 24 * v41);
    v76 = *v74;
    v75 = v74[1];
    v77 = (v75 - *v74) >> 2;
    if (v23 <= v77)
    {
      if (v23 < v77)
      {
        v74[1] = v76 + 4 * v23;
      }
    }

    else
    {
      v78 = v23 - v77;
      v79 = v74[2];
      if (v78 > (v79 - v75) >> 2)
      {
        v80 = v79 - v76;
        v81 = (v79 - v76) >> 1;
        if (v81 <= v23)
        {
          v81 = (v172 >> 2) + 1;
        }

        if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v82 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v81;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v82);
      }

      v83 = (v78 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v84 = vdupq_n_s64(v83);
      v85 = v83 - ((v78 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v86 = (v75 + 8);
      v87 = -4;
      do
      {
        v88 = vdupq_n_s64(v87 + 4);
        v89 = vmovn_s64(vcgeq_u64(v84, vorrq_s8(v88, xmmword_2228320F0)));
        if (vuzp1_s16(v89, *v84.i8).u8[0])
        {
          *(v86 - 2) = 0;
        }

        if (vuzp1_s16(v89, *&v84).i8[2])
        {
          *(v86 - 1) = 0;
        }

        if (vuzp1_s16(*&v84, vmovn_s64(vcgeq_u64(v84, vorrq_s8(v88, xmmword_222832500)))).i32[1])
        {
          *v86 = 0;
          v86[1] = 0;
        }

        v87 += 4;
        v86 += 4;
      }

      while (v85 != v87);
      v74[1] = v75 + 4 * v78;
      v39 = a1;
    }

    ++v41;
  }

  while (v41 != v37);
  v38 = 0;
LABEL_77:
  v90 = *v21;
  v91 = **v21;
  *v91 = a9;
  ***v24 = a10;
  v92 = *a5;
  v93 = (v172 >> 2);
  if (a5[1] == *a5)
  {
    if ((v172 >> 2))
    {
      v179 = v38;
      v97 = 0;
      do
      {
        a9 = a9 + cost<unsigned int>(a3, *(*v39 + v97 * 4), v181);
        v90 = *v21;
        v91 = **v21;
        v91[++v97] = a9;
      }

      while (v93 != v97);
      v24 = a16;
      v38 = v179;
    }
  }

  else if ((v172 >> 2))
  {
    v94 = v91 + 1;
    v95 = (v172 >> 2);
    do
    {
      v96 = *v92++;
      *v94++ = v96;
      --v95;
    }

    while (v95);
  }

  v98 = *a6;
  v99 = (v174 >> 2);
  if (a6[1] == *a6)
  {
    if ((v174 >> 2))
    {
      v180 = v38;
      v103 = 0;
      v104 = *v91;
      v105 = 4 * v99;
      v106 = 24;
      do
      {
        v104 = v104 + cost<unsigned int>(a3, v181, *(*a2 + v103));
        v90 = *v21;
        **(*v21 + v106) = v104;
        v103 += 4;
        v106 += 24;
      }

      while (v105 != v103);
      v39 = a1;
      v24 = a16;
      v99 = (v174 >> 2);
      v38 = v180;
    }
  }

  else if ((v174 >> 2))
  {
    v100 = 3;
    v101 = (v174 >> 2);
    do
    {
      v102 = *v98++;
      *v90[v100] = v102;
      v100 += 3;
      --v101;
    }

    while (v101);
  }

  v107 = *a7;
  if (*(a7 + 8) == *a7)
  {
    if ((v172 >> 2) != -1)
    {
      v111 = 0;
      v112 = vdupq_n_s64(v23 - 1);
      v113 = xmmword_222832500;
      v114 = xmmword_2228320F0;
      v115 = (**v24 + 8);
      v116 = vdupq_n_s64(4uLL);
      do
      {
        v117 = vmovn_s64(vcgeq_u64(v112, v114));
        if (vuzp1_s16(v117, *v112.i8).u8[0])
        {
          *(v115 - 2) = v111;
        }

        if (vuzp1_s16(v117, *&v112).i8[2])
        {
          *(v115 - 1) = v111 + 1;
        }

        if (vuzp1_s16(*&v112, vmovn_s64(vcgeq_u64(v112, *&v113))).i32[1])
        {
          *v115 = v111 + 2;
          v115[1] = v111 + 3;
        }

        v111 += 4;
        v113 = vaddq_s64(v113, v116);
        v114 = vaddq_s64(v114, v116);
        v115 += 4;
      }

      while (((v23 + 3) & 0x1FFFFFFFCLL) != v111);
    }
  }

  else if ((v172 >> 2))
  {
    v108 = (**v24 + 4);
    v109 = (v172 >> 2);
    do
    {
      v110 = *v107++;
      *v108++ = v110;
      --v109;
    }

    while (v109);
  }

  v118 = *a8;
  if (*(a8 + 8) != *a8 && v99 != 0)
  {
    v120 = (*v24 + 24);
    v121 = v99;
    do
    {
      v122 = *v118++;
      v123 = v122;
      v124 = *v120;
      v120 += 3;
      *v124 = v123;
      --v121;
    }

    while (v121);
  }

  if ((v172 >> 2))
  {
    v125 = 0;
    v126 = vdupq_n_s64(v93 - 1);
    v127 = (**a15 + 20);
    do
    {
      v128 = vdupq_n_s64(v125);
      v129 = vmovn_s64(vcgeq_u64(v126, vorrq_s8(v128, xmmword_2228320F0)));
      if (vuzp1_s16(v129, *v126.i8).u8[0])
      {
        *(v127 - 2) = a12 + v125;
      }

      if (vuzp1_s16(v129, *&v126).i8[2])
      {
        *v127 = a12 + v125 + 1;
      }

      if (vuzp1_s16(*&v126, vmovn_s64(vcgeq_u64(v126, vorrq_s8(v128, xmmword_222832500)))).i32[1])
      {
        v127[2] = a12 + v125 + 2;
        v127[4] = a12 + v125 + 3;
      }

      v125 += 4;
      v127 += 8;
    }

    while (((v93 + 3) & 0x1FFFFFFFCLL) != v125);
  }

  if ((v172 >> 2) != -1)
  {
    v130 = (v23 + 3) & 0x1FFFFFFFCLL;
    v131 = vdupq_n_s64(v23 - 1);
    v132 = xmmword_222832500;
    v133 = xmmword_2228320F0;
    v134 = (**a15 + 16);
    v135 = vdupq_n_s64(4uLL);
    do
    {
      v136 = vmovn_s64(vcgeq_u64(v131, v133));
      if (vuzp1_s16(v136, *v131.i8).u8[0])
      {
        *(v134 - 4) = a11;
      }

      if (vuzp1_s16(v136, *&v131).i8[2])
      {
        *(v134 - 2) = a11;
      }

      if (vuzp1_s16(*&v131, vmovn_s64(vcgeq_u64(v131, *&v132))).i32[1])
      {
        *v134 = a11;
        v134[2] = a11;
      }

      v132 = vaddq_s64(v132, v135);
      v133 = vaddq_s64(v133, v135);
      v134 += 8;
      v130 -= 4;
    }

    while (v130);
  }

  if ((v38 & 1) == 0)
  {
    v137 = *a15;
    do
    {
      v138 = *v137;
      v137 += 3;
      *(v138 + 4) = a12;
      --v37;
    }

    while (v37);
  }

  if (v99)
  {
    v139 = (*a15 + 24);
    v140 = a11;
    v141 = v99;
    do
    {
      v142 = *v139;
      v139 += 3;
      *v142 = v140++;
      --v141;
    }

    while (v141);
  }

  if ((v172 >> 2))
  {
    v143 = 0;
    v144 = 24 * v99;
    do
    {
      v145 = v143 + 1;
      if (v99)
      {
        v146 = 0;
        v147 = 0;
        v178 = v143 + a12;
        v148 = a11;
        do
        {
          v149 = v90[v146 / 8 + 3][v143];
          v150 = v149 + cost<unsigned int>(a3, *(*v39 + 4 * v143), v181);
          v151 = *(*(*a14 + v146) + 4 * v145);
          v39 = a1;
          v152 = v151 + cost<unsigned int>(a3, v181, *(*a2 + 4 * v147));
          v153 = *(*(*a14 + v146) + 4 * v143);
          v154 = v153 + cost<unsigned int>(a3, *(*a1 + 4 * v143), *(*a2 + 4 * v147));
          v155 = a16;
          v156 = (*a16 + v146);
          v157 = v150 / (*(v156[3] + 4 * v143) + 1);
          v158 = *v156;
          v159 = v152 / *(v158 + 4 * v145);
          v160 = v154 / (*(v158 + 4 * v143) + 1);
          if (!(v147 | v143) && a13 && ((v161 = cost<unsigned int>(a3, **a1, **a2), v155 = a16, v161 < v157) ? (v162 = v161 < v159) : (v162 = 0), v162 ? (v163 = v161 < v160) : (v163 = 0), v163))
          {
            v90 = *a14;
            *(*(*a14 + v146 + 24) + 4 * v145) = v161;
            *(*(*a15 + v146 + 24) + 8 * v145) = 0;
            v169 = *(*a16 + v146 + 24);
            v170 = 1;
          }

          else if (v157 > v159 || v157 > v160)
          {
            v90 = *a14;
            v165 = *(*a14 + v146 + 24);
            if (v159 <= v160)
            {
              *(v165 + 4 * v145) = v152;
              v171 = (*(*a15 + v146 + 24) + 8 * v145);
              *v171 = v148;
              v171[1] = v145 + a12;
              v167 = (*v155 + v146);
              v170 = *(*v167 + 4 * v145);
            }

            else
            {
              *(v165 + 4 * v145) = v154;
              v166 = (*(*a15 + v146 + 24) + 8 * v145);
              *v166 = v148;
              v166[1] = v178;
              v167 = (*v155 + v146);
              v170 = *(*v167 + 4 * v143) + 1;
            }

            v169 = v167[3];
          }

          else
          {
            v90 = *a14;
            *(*(*a14 + v146 + 24) + 4 * v145) = v150;
            v168 = (*(*a15 + v146 + 24) + 8 * v145);
            *v168 = v148 + 1;
            v168[1] = v178;
            v169 = *(*v155 + v146 + 24);
            v170 = *(v169 + 4 * v143) + 1;
          }

          *(v169 + 4 * v145) = v170;
          v146 += 24;
          ++v148;
          ++v147;
        }

        while (v144 != v146);
      }

      ++v143;
      v99 = (v174 >> 2);
    }

    while (v145 != (v172 >> 2));
  }
}

void std::vector<std::vector<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(v10);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = v4 + 24 * ((24 * v6 - 24) / 0x18) + 24;
  }
}

float cost<unsigned int>(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (!a1[3])
  {
    if (a2 == a3)
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::find<unsigned int>(*a1, a1[1], a2);
  if (!v4)
  {
    return 1.0;
  }

  v5 = v4;
  memset(v16, 0, sizeof(v16));
  v17 = *(v4 + 14);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__rehash<true>(v16, v4[4]);
  v6 = v5[5];
  if (!v6)
  {
    goto LABEL_22;
  }

  do
  {
    v7 = *(v6 + 16);
    if (!*(&v16[0] + 1))
    {
      goto LABEL_20;
    }

    v8 = vcnt_s8(*(v16 + 8));
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = *(v6 + 16);
      if (*(&v16[0] + 1) <= v7)
      {
        v9 = v7 % DWORD2(v16[0]);
      }
    }

    else
    {
      v9 = (DWORD2(v16[0]) - 1) & v7;
    }

    v10 = *(*&v16[0] + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v7)
      {
        break;
      }

      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *(&v16[0] + 1))
        {
          v12 %= *(&v16[0] + 1);
        }
      }

      else
      {
        v12 &= *(&v16[0] + 1) - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_20;
      }

LABEL_19:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    if (*(v11 + 4) != v7)
    {
      goto LABEL_19;
    }

    v6 = *v6;
  }

  while (v6);
LABEL_22:
  v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::find<unsigned int>(*&v16[0], *(&v16[0] + 1), a3);
  if (v13)
  {
    v14 = *(v13 + 5);
  }

  else
  {
    v14 = 1.0;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v16);
  return v14;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void marrs::mrr::mr::ProtocolFilter::~ProtocolFilter(void **this)
{
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::ProtocolFilter::filterEntities(_BYTE *a1@<X8>)
{
  v2 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2227A9000, v2, OS_LOG_TYPE_INFO, "[ProtocolFilter] Not implemented yet, returning input list", v3, 2u);
  }

  *a1 = 0;
  a1[24] = 0;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 344;
  v208 = a2 - 1032;
  v209 = a2 - 688;
  v206 = (a2 - 272);
  v207 = (a2 - 268);
  v205 = a2 - 612;
  m = v7;
  v210 = a2;
  while (1)
  {
    v7 = m;
    v10 = a2 - m;
    v11 = 0x82FA0BE82FA0BE83 * ((a2 - m) >> 3);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v7 + 344, v8);
        case 4:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v7 + 344, v7 + 688, v8);
        case 5:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v7 + 344, v7 + 688, v7 + 1032, v8);
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v10 <= 8255)
    {
      if ((a4 & 1) == 0)
      {
        if (v7 == a2)
        {
          return result;
        }

        v187 = v7 + 344;
        if (v7 + 344 == a2)
        {
          return result;
        }

        for (i = (v7 + 680); ; i += 43)
        {
          v189 = v7;
          v7 = v187;
          v190 = *(v189 + 420);
          v191 = *(v189 + 76);
          v192 = v190 >= v191;
          if (v190 == v191 && (v193 = *(v189 + 416), v194 = *(v189 + 72), v192 = v193 >= v194, v193 == v194))
          {
            if (*(v189 + 432) > *(v189 + 88))
            {
              goto LABEL_329;
            }
          }

          else if (!v192)
          {
LABEL_329:
            v195 = (v189 + 552);
            MEMORY[0x223DC1920](v234, v7);
            v237 = *(v189 + 432);
            LOBYTE(v238) = 0;
            v255 = 0;
            if (*(v189 + 656) == 1)
            {
              v238 = *(v189 + 440);
              v239 = *(v189 + 448);
              v240 = *(v189 + 464);
              *(v189 + 456) = 0u;
              *(v189 + 448) = 0;
              v242 = *(v189 + 488);
              v241 = *(v189 + 472);
              *(v189 + 472) = 0;
              v196 = *(v189 + 496);
              v244 = *(v189 + 512);
              v243 = v196;
              *(v189 + 512) = 0;
              *(v189 + 480) = 0u;
              *(v189 + 496) = 0u;
              v197 = *(v189 + 520);
              *(v245 + 12) = *(v189 + 532);
              v245[0] = v197;
              v246 = *v195;
              v247 = *(v189 + 568);
              *v195 = 0u;
              *(v189 + 568) = 0;
              v249 = *(v189 + 592);
              v248 = *(v189 + 576);
              *(v189 + 592) = 0;
              *(v189 + 576) = 0u;
              v250 = *(v189 + 600);
              __p = *(v189 + 608);
              v252 = *(v189 + 624);
              *(v189 + 624) = 0;
              *(v189 + 608) = 0u;
              v253 = *(v189 + 632);
              v254 = *(v189 + 648);
              *(v189 + 632) = 0;
              *(v189 + 640) = 0;
              *(v189 + 648) = 0;
              v255 = 1;
            }

            v256[0] = *(v189 + 664);
            *&v256[1] = *(v189 + 680);
            *(v189 + 664) = 0;
            *(v189 + 672) = 0;
            *(v189 + 680) = 0;
            for (j = i; ; j -= 43)
            {
              sirinluinternal::MatchingSpan::operator=();
              *(j - 62) = *(j - 148);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((j - 30), (j - 73));
              v199 = *(j - 2);
              if (v199)
              {
                *(j - 1) = v199;
                operator delete(v199);
                *j = 0;
              }

              v200 = (j - 45);
              *(j - 1) = *(j - 45);
              *j = *(j - 43);
              *v200 = 0;
              v200[1] = 0;
              v200[2] = 0;
              v201 = *(j - 237);
              v202 = v236 >= v201;
              if (v236 == v201 && (v203 = *(j - 238), v202 = v235 >= v203, v235 == v203))
              {
                if (v237 <= *(j - 234))
                {
                  goto LABEL_340;
                }
              }

              else if (v202)
              {
LABEL_340:
                sirinluinternal::MatchingSpan::operator=();
                *(j - 148) = v237;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((j - 73), &v238);
                v204 = *v200;
                if (*v200)
                {
                  *(j - 44) = v204;
                  operator delete(v204);
                  *v200 = 0;
                  *(j - 44) = 0;
                  *(j - 43) = 0;
                }

                *v200 = v256[0];
                *(j - 43) = *&v256[1];
                memset(v256, 0, 24);
                if (v255 == 1)
                {
                  v211[0] = &v253;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
                  if (SHIBYTE(v252) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v249) < 0)
                  {
                    operator delete(v248);
                  }

                  v211[0] = &v246;
                  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
                  if (SHIBYTE(v244) < 0)
                  {
                    operator delete(v243);
                  }

                  if (SHIBYTE(v242) < 0)
                  {
                    operator delete(v241);
                  }

                  if (SHIBYTE(v240) < 0)
                  {
                    operator delete(v239);
                  }
                }

                result = MEMORY[0x223DC1950](v234);
                break;
              }
            }
          }

          v187 = v7 + 344;
          if (v7 + 344 == v210)
          {
            return result;
          }
        }
      }

      if (v7 == a2)
      {
        return result;
      }

      v83 = v7 + 344;
      if (v7 + 344 == a2)
      {
        return result;
      }

      v84 = 0;
      v85 = v7;
LABEL_166:
      v86 = v85;
      v85 = v83;
      v87 = *(v86 + 420);
      v88 = *(v86 + 76);
      v89 = v87 >= v88;
      if (v87 == v88 && (v90 = *(v86 + 416), v91 = *(v86 + 72), v89 = v90 >= v91, v90 == v91))
      {
        if (*(v86 + 432) <= *(v86 + 88))
        {
          goto LABEL_199;
        }
      }

      else if (v89)
      {
        goto LABEL_199;
      }

      v92 = (v86 + 552);
      MEMORY[0x223DC1920](v234, v85);
      v237 = *(v86 + 432);
      LOBYTE(v238) = 0;
      v255 = 0;
      if (*(v86 + 656) == 1)
      {
        v238 = *(v86 + 440);
        v239 = *(v86 + 448);
        v240 = *(v86 + 464);
        *(v86 + 456) = 0u;
        *(v86 + 448) = 0;
        v242 = *(v86 + 488);
        v241 = *(v86 + 472);
        *(v86 + 472) = 0;
        v93 = *(v86 + 496);
        v244 = *(v86 + 512);
        v243 = v93;
        *(v86 + 512) = 0;
        *(v86 + 480) = 0u;
        *(v86 + 496) = 0u;
        v94 = *(v86 + 520);
        *(v245 + 12) = *(v86 + 532);
        v245[0] = v94;
        v246 = *v92;
        v247 = *(v86 + 568);
        *v92 = 0u;
        *(v86 + 568) = 0;
        v249 = *(v86 + 592);
        v248 = *(v86 + 576);
        *(v86 + 592) = 0;
        *(v86 + 576) = 0u;
        v250 = *(v86 + 600);
        __p = *(v86 + 608);
        v252 = *(v86 + 624);
        *(v86 + 624) = 0;
        *(v86 + 608) = 0u;
        v253 = *(v86 + 632);
        v254 = *(v86 + 648);
        *(v86 + 632) = 0;
        *(v86 + 640) = 0;
        *(v86 + 648) = 0;
        v255 = 1;
      }

      v256[0] = *(v86 + 664);
      *&v256[1] = *(v86 + 680);
      *(v86 + 664) = 0;
      *(v86 + 672) = 0;
      *(v86 + 680) = 0;
      for (k = v84; ; k -= 344)
      {
        v96 = v7 + k;
        sirinluinternal::MatchingSpan::operator=();
        *(v96 + 432) = *(v96 + 88);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v96 + 440, v96 + 96);
        v97 = *(v7 + k + 664);
        if (v97)
        {
          *(v96 + 672) = v97;
          operator delete(v97);
          *(v96 + 680) = 0;
        }

        *(v96 + 664) = *(v96 + 320);
        *(v96 + 680) = *(v96 + 336);
        *(v96 + 320) = 0;
        *(v96 + 328) = 0;
        *(v96 + 336) = 0;
        if (!k)
        {
          v101 = v7 + 320;
          v102 = v7 + 96;
          v103 = v7;
          goto LABEL_185;
        }

        v98 = *(v7 + k - 268);
        v99 = v236 >= v98;
        if (v236 == v98 && (v100 = *(v7 + k - 272), v99 = v235 >= v100, v235 == v100))
        {
          if (v237 <= *(v7 + k - 256))
          {
            goto LABEL_184;
          }
        }

        else if (v99)
        {
LABEL_184:
          v103 = v7 + k;
          v101 = v7 + k + 320;
          v102 = v103 + 96;
LABEL_185:
          sirinluinternal::MatchingSpan::operator=();
          *(v103 + 88) = v237;
          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v102, &v238);
          v104 = *v101;
          if (*v101)
          {
            *(v103 + 328) = v104;
            operator delete(v104);
            *v101 = 0;
            *(v101 + 8) = 0;
            *(v101 + 16) = 0;
          }

          *v101 = *&v256[0];
          *(v103 + 328) = *(v256 + 8);
          memset(v256, 0, 24);
          if (v255 == 1)
          {
            v211[0] = &v253;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v252) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v249) < 0)
            {
              operator delete(v248);
            }

            v211[0] = &v246;
            std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(v243);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v241);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v239);
            }
          }

          result = MEMORY[0x223DC1950](v234);
LABEL_199:
          v83 = v85 + 344;
          v84 += 344;
          if (v85 + 344 == v210)
          {
            return result;
          }

          goto LABEL_166;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v105 = v12 >> 1;
      v106 = v12 >> 1;
      while (2)
      {
        v107 = v106;
        if (v105 < v106)
        {
          goto LABEL_249;
        }

        v108 = (2 * v106) | 1;
        v109 = v7 + 344 * v108;
        if (2 * v106 + 2 < v11)
        {
          v110 = *(v109 + 76);
          v111 = *(v109 + 420);
          v112 = v110 >= v111;
          if (v110 == v111 && (v113 = *(v109 + 72), v114 = *(v109 + 416), v112 = v113 >= v114, v113 == v114))
          {
            if (*(v109 + 88) <= *(v109 + 432))
            {
              goto LABEL_211;
            }

LABEL_210:
            v109 += 344;
            v108 = 2 * v106 + 2;
          }

          else if (!v112)
          {
            goto LABEL_210;
          }
        }

LABEL_211:
        v115 = v7 + 344 * v106;
        v116 = *(v109 + 76);
        v117 = *(v115 + 76);
        v118 = v116 >= v117;
        if (v116 == v117 && (v119 = *(v109 + 72), v120 = *(v115 + 72), v118 = v119 >= v120, v119 == v120))
        {
          if (*(v109 + 88) > *(v115 + 88))
          {
            goto LABEL_249;
          }
        }

        else if (!v118)
        {
          goto LABEL_249;
        }

        MEMORY[0x223DC1920](v234, v7 + 344 * v107);
        v237 = *(v115 + 88);
        LOBYTE(v238) = 0;
        v255 = 0;
        if (*(v115 + 312) == 1)
        {
          v238 = *(v115 + 96);
          v121 = *(v115 + 104);
          v240 = *(v115 + 120);
          v239 = v121;
          *(v115 + 112) = 0;
          *(v115 + 120) = 0;
          *(v115 + 104) = 0;
          v122 = *(v115 + 128);
          v242 = *(v115 + 144);
          v241 = v122;
          *(v115 + 136) = 0;
          *(v115 + 144) = 0;
          *(v115 + 128) = 0;
          v123 = *(v115 + 152);
          v244 = *(v115 + 168);
          v243 = v123;
          *(v115 + 160) = 0;
          *(v115 + 168) = 0;
          *(v115 + 152) = 0;
          v124 = *(v115 + 176);
          *(v245 + 12) = *(v115 + 188);
          v245[0] = v124;
          v247 = 0;
          v246 = 0uLL;
          v246 = *(v115 + 208);
          v247 = *(v115 + 224);
          *(v115 + 208) = 0;
          *(v115 + 216) = 0;
          *(v115 + 224) = 0;
          v125 = *(v115 + 232);
          v249 = *(v115 + 248);
          v248 = v125;
          *(v115 + 240) = 0;
          *(v115 + 248) = 0;
          *(v115 + 232) = 0;
          v250 = *(v115 + 256);
          v126 = *(v115 + 264);
          v252 = *(v115 + 280);
          __p = v126;
          *(v115 + 272) = 0;
          *(v115 + 280) = 0;
          *(v115 + 264) = 0;
          v253 = 0uLL;
          v254 = 0;
          v253 = *(v115 + 288);
          v254 = *(v115 + 304);
          *(v115 + 288) = 0;
          *(v115 + 296) = 0;
          *(v115 + 304) = 0;
          v255 = 1;
        }

        v256[0] = *(v115 + 320);
        *&v256[1] = *(v115 + 336);
        *(v115 + 320) = 0;
        *(v115 + 328) = 0;
        *(v115 + 336) = 0;
LABEL_220:
        v127 = v109;
        sirinluinternal::MatchingSpan::operator=();
        *(v115 + 88) = *(v109 + 88);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v115 + 96, v109 + 96);
        v128 = *(v115 + 320);
        if (v128)
        {
          *(v115 + 328) = v128;
          operator delete(v128);
          *(v115 + 320) = 0;
          *(v115 + 328) = 0;
          *(v115 + 336) = 0;
        }

        *(v115 + 320) = *(v109 + 320);
        *(v115 + 336) = *(v109 + 336);
        *(v109 + 320) = 0;
        *(v109 + 328) = 0;
        *(v109 + 336) = 0;
        if (v105 < v108)
        {
LABEL_235:
          sirinluinternal::MatchingSpan::operator=();
          *(v127 + 88) = v237;
          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v127 + 96, &v238);
          v139 = *(v127 + 320);
          if (v139)
          {
            *(v127 + 328) = v139;
            operator delete(v139);
            *(v127 + 320) = 0;
            *(v127 + 328) = 0;
            *(v127 + 336) = 0;
          }

          *(v127 + 320) = v256[0];
          *(v127 + 336) = *&v256[1];
          memset(v256, 0, 24);
          if (v255 == 1)
          {
            v211[0] = &v253;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v252) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v249) < 0)
            {
              operator delete(v248);
            }

            v211[0] = &v246;
            std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(v243);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v241);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v239);
            }
          }

          MEMORY[0x223DC1950](v234);
LABEL_249:
          v106 = v107 - 1;
          if (v107)
          {
            continue;
          }

          v140 = 0x82FA0BE82FA0BE83 * (v10 >> 3);
          v141 = (v7 + 264);
          v142 = v210;
          while (2)
          {
            MEMORY[0x223DC1920](v211, v7);
            v212 = *(v7 + 88);
            LOBYTE(v213) = 0;
            v230 = 0;
            if (*(v7 + 312) == 1)
            {
              v213 = *(v7 + 96);
              v143 = *(v7 + 120);
              v214 = *(v7 + 104);
              v215 = v143;
              *(v7 + 112) = 0;
              *(v7 + 120) = 0;
              *(v7 + 104) = 0;
              v144 = *(v7 + 144);
              v216 = *(v7 + 128);
              v217 = v144;
              *(v7 + 136) = 0;
              *(v7 + 144) = 0;
              *(v7 + 128) = 0;
              v145 = *(v7 + 152);
              v219 = *(v7 + 168);
              v218 = v145;
              *(v7 + 152) = 0;
              *(v7 + 160) = 0;
              *(v7 + 168) = 0;
              v146 = *(v7 + 176);
              *(v220 + 12) = *(v7 + 188);
              v220[0] = v146;
              v222 = 0;
              v221 = 0uLL;
              v221 = *(v7 + 208);
              v222 = *(v7 + 224);
              *(v7 + 208) = 0;
              *(v7 + 216) = 0;
              *(v7 + 224) = 0;
              v147 = *(v7 + 232);
              v224 = *(v7 + 248);
              v223 = v147;
              *(v7 + 232) = 0;
              *(v7 + 240) = 0;
              *(v7 + 248) = 0;
              v225 = *(v7 + 256);
              v148 = *v141;
              v227 = *(v7 + 280);
              v226 = v148;
              *v141 = 0;
              *(v7 + 272) = 0;
              *(v7 + 280) = 0;
              v228 = 0uLL;
              v229 = 0;
              v228 = *(v7 + 288);
              v229 = *(v7 + 304);
              *(v7 + 288) = 0;
              *(v7 + 296) = 0;
              *(v7 + 304) = 0;
              v230 = 1;
            }

            v149 = 0;
            *v231 = *(v7 + 320);
            v232 = *(v7 + 336);
            *(v7 + 320) = 0;
            *(v7 + 328) = 0;
            *(v7 + 336) = 0;
            v150 = v7;
LABEL_254:
            v151 = v150 + 344 * v149;
            v152 = v151 + 344;
            v153 = 2 * v149;
            v149 = (2 * v149) | 1;
            v154 = v153 + 2;
            if (v154 < v140)
            {
              v155 = *(v151 + 420);
              v156 = *(v151 + 764);
              v157 = v155 >= v156;
              if (v155 == v156 && (v158 = *(v151 + 416), v159 = *(v151 + 760), v157 = v158 >= v159, v158 == v159))
              {
                if (*(v151 + 432) <= *(v151 + 776))
                {
                  goto LABEL_261;
                }
              }

              else if (v157)
              {
                goto LABEL_261;
              }

              v152 = v151 + 688;
              v149 = v154;
            }

LABEL_261:
            sirinluinternal::MatchingSpan::operator=();
            *(v150 + 88) = *(v152 + 88);
            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v150 + 96, v152 + 96);
            v160 = *(v150 + 320);
            if (v160)
            {
              *(v150 + 328) = v160;
              operator delete(v160);
              *(v150 + 320) = 0;
              *(v150 + 328) = 0;
              *(v150 + 336) = 0;
            }

            *(v150 + 320) = *(v152 + 320);
            *(v150 + 336) = *(v152 + 336);
            *(v152 + 320) = 0;
            *(v152 + 328) = 0;
            *(v152 + 336) = 0;
            v150 = v152;
            if (v149 > ((v140 - 2) >> 1))
            {
              if (v152 == v142 - 344)
              {
                v163 = v142 - 344;
                sirinluinternal::MatchingSpan::operator=();
                *(v152 + 88) = v212;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v152 + 96, &v213);
                v173 = *(v152 + 320);
                if (v173)
                {
                  *(v152 + 328) = v173;
                  operator delete(v173);
                  *(v152 + 320) = 0;
                  *(v152 + 328) = 0;
                  *(v152 + 336) = 0;
                }

                *(v152 + 320) = *v231;
                *(v152 + 336) = v232;
                v231[0] = 0;
                v231[1] = 0;
                v232 = 0;
              }

              else
              {
                sirinluinternal::MatchingSpan::operator=();
                *(v152 + 88) = *(v142 - 256);
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v152 + 96, v142 - 248);
                v161 = *(v152 + 320);
                if (v161)
                {
                  *(v152 + 328) = v161;
                  operator delete(v161);
                  *(v152 + 320) = 0;
                  *(v152 + 328) = 0;
                  *(v152 + 336) = 0;
                }

                v162 = (v142 - 24);
                *(v152 + 320) = *(v142 - 24);
                *(v152 + 336) = *(v142 - 8);
                *v162 = 0;
                v162[1] = 0;
                v162[2] = 0;
                v163 = v142 - 344;
                sirinluinternal::MatchingSpan::operator=();
                *(v142 - 256) = v212;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v142 - 248, &v213);
                v164 = *(v142 - 24);
                if (v164)
                {
                  *(v142 - 16) = v164;
                  operator delete(v164);
                }

                *(v142 - 24) = *v231;
                *(v142 - 8) = v232;
                v231[0] = 0;
                v231[1] = 0;
                v232 = 0;
                v165 = v152 + 344 - v7;
                if (v165 >= 345)
                {
                  v166 = (-2 - 0x7D05F417D05F417DLL * (v165 >> 3)) >> 1;
                  v167 = v7 + 344 * v166;
                  v168 = *(v167 + 76);
                  v169 = *(v152 + 76);
                  v170 = v168 >= v169;
                  if (v168 == v169 && (v171 = *(v167 + 72), v172 = *(v152 + 72), v170 = v171 >= v172, v171 == v172))
                  {
                    if (*(v167 + 88) <= *(v152 + 88))
                    {
                      goto LABEL_305;
                    }
                  }

                  else if (v170)
                  {
                    goto LABEL_305;
                  }

                  MEMORY[0x223DC1920](v234, v152);
                  v237 = *(v152 + 88);
                  LOBYTE(v238) = 0;
                  v255 = 0;
                  if (*(v152 + 312) == 1)
                  {
                    v238 = *(v152 + 96);
                    v174 = *(v152 + 120);
                    v239 = *(v152 + 104);
                    v240 = v174;
                    *(v152 + 112) = 0;
                    *(v152 + 120) = 0;
                    *(v152 + 104) = 0;
                    v175 = *(v152 + 144);
                    v241 = *(v152 + 128);
                    v242 = v175;
                    *(v152 + 136) = 0;
                    *(v152 + 144) = 0;
                    *(v152 + 128) = 0;
                    v176 = *(v152 + 152);
                    v244 = *(v152 + 168);
                    v243 = v176;
                    *(v152 + 152) = 0;
                    *(v152 + 160) = 0;
                    *(v152 + 168) = 0;
                    v177 = *(v152 + 176);
                    *(v245 + 12) = *(v152 + 188);
                    v245[0] = v177;
                    v247 = 0;
                    v246 = 0uLL;
                    v246 = *(v152 + 208);
                    v247 = *(v152 + 224);
                    *(v152 + 208) = 0;
                    *(v152 + 216) = 0;
                    *(v152 + 224) = 0;
                    v178 = *(v152 + 232);
                    v249 = *(v152 + 248);
                    v248 = v178;
                    *(v152 + 232) = 0;
                    *(v152 + 240) = 0;
                    *(v152 + 248) = 0;
                    v250 = *(v152 + 256);
                    v179 = *(v152 + 264);
                    v252 = *(v152 + 280);
                    __p = v179;
                    *(v152 + 264) = 0;
                    *(v152 + 272) = 0;
                    *(v152 + 280) = 0;
                    v253 = 0uLL;
                    v254 = 0;
                    v253 = *(v152 + 288);
                    v254 = *(v152 + 304);
                    *(v152 + 288) = 0;
                    *(v152 + 296) = 0;
                    *(v152 + 304) = 0;
                    v255 = 1;
                  }

                  v256[0] = *(v152 + 320);
                  *&v256[1] = *(v152 + 336);
                  *(v152 + 320) = 0;
                  *(v152 + 328) = 0;
                  *(v152 + 336) = 0;
                  while (1)
                  {
                    v180 = v167;
                    sirinluinternal::MatchingSpan::operator=();
                    *(v152 + 88) = *(v167 + 88);
                    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v152 + 96, v167 + 96);
                    v181 = *(v152 + 320);
                    if (v181)
                    {
                      *(v152 + 328) = v181;
                      operator delete(v181);
                      *(v152 + 320) = 0;
                      *(v152 + 328) = 0;
                      *(v152 + 336) = 0;
                    }

                    *(v152 + 320) = *(v167 + 320);
                    *(v152 + 336) = *(v167 + 336);
                    *(v167 + 320) = 0;
                    *(v167 + 328) = 0;
                    *(v167 + 336) = 0;
                    if (!v166)
                    {
                      break;
                    }

                    v166 = (v166 - 1) >> 1;
                    v167 = v7 + 344 * v166;
                    v182 = *(v167 + 76);
                    v183 = v182 >= v236;
                    if (v182 == v236 && (v184 = *(v167 + 72), v183 = v184 >= v235, v184 == v235))
                    {
                      v152 = v180;
                      if (*(v167 + 88) <= v237)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v152 = v180;
                      if (v183)
                      {
                        break;
                      }
                    }
                  }

                  sirinluinternal::MatchingSpan::operator=();
                  *(v180 + 88) = v237;
                  std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v180 + 96, &v238);
                  v185 = *(v180 + 320);
                  if (v185)
                  {
                    *(v180 + 328) = v185;
                    operator delete(v185);
                  }

                  *(v180 + 320) = v256[0];
                  *(v180 + 336) = *&v256[1];
                  memset(v256, 0, 24);
                  if (v255 == 1)
                  {
                    v233 = &v253;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v233);
                    if (SHIBYTE(v252) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v249) < 0)
                    {
                      operator delete(v248);
                    }

                    v233 = &v246;
                    std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v233);
                    if (SHIBYTE(v244) < 0)
                    {
                      operator delete(v243);
                    }

                    if (SHIBYTE(v242) < 0)
                    {
                      operator delete(v241);
                    }

                    if (SHIBYTE(v240) < 0)
                    {
                      operator delete(v239);
                    }
                  }

                  MEMORY[0x223DC1950](v234);
                  if (v231[0])
                  {
                    v231[1] = v231[0];
                    operator delete(v231[0]);
                  }
                }
              }

LABEL_305:
              v142 = v163;
              if (v230 == 1)
              {
                v234[0] = &v228;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v234);
                if (SHIBYTE(v227) < 0)
                {
                  operator delete(v226);
                }

                if (SHIBYTE(v224) < 0)
                {
                  operator delete(v223);
                }

                v234[0] = &v221;
                std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v234);
                if (SHIBYTE(v219) < 0)
                {
                  operator delete(v218);
                }

                if (SHIBYTE(v217) < 0)
                {
                  operator delete(v216);
                }

                if (SHIBYTE(v215) < 0)
                {
                  operator delete(v214);
                }
              }

              result = MEMORY[0x223DC1950](v211);
              if (v140-- <= 2)
              {
                return result;
              }

              continue;
            }

            goto LABEL_254;
          }
        }

        break;
      }

      v129 = 2 * v108;
      v108 = (2 * v108) | 1;
      v109 = v7 + 344 * v108;
      v130 = v129 + 2;
      if (v130 < v11)
      {
        v131 = *(v109 + 76);
        v132 = *(v109 + 420);
        v133 = v131 >= v132;
        if (v131 == v132 && (v134 = *(v109 + 72), v135 = *(v109 + 416), v133 = v134 >= v135, v134 == v135))
        {
          if (*(v109 + 88) <= *(v109 + 432))
          {
            goto LABEL_230;
          }

LABEL_229:
          v109 += 344;
          v108 = v130;
        }

        else if (!v133)
        {
          goto LABEL_229;
        }
      }

LABEL_230:
      v136 = *(v109 + 76);
      v137 = v136 >= v236;
      if (v136 == v236 && (v138 = *(v109 + 72), v137 = v138 >= v235, v138 == v235))
      {
        v115 = v127;
        if (*(v109 + 88) > v237)
        {
          goto LABEL_235;
        }
      }

      else
      {
        v115 = v127;
        if (!v137)
        {
          goto LABEL_235;
        }
      }

      goto LABEL_220;
    }

    v13 = v11 >> 1;
    v14 = v7 + 344 * (v11 >> 1);
    if (v10 < 0xAC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v14, v7, v8);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v14, v8);
      v15 = 344 * v13;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7 + 344, v15 + v7 - 344, v209);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7 + 688, v7 + 344 + v15, v208);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v15 + v7 - 344, v14, v7 + 344 + v15);
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v7, v14);
    }

    --a3;
    a2 = v210;
    if ((a4 & 1) == 0)
    {
      v16 = *(v7 - 268);
      v17 = *(v7 + 76);
      v18 = v16 >= v17;
      if (v16 == v17)
      {
        v19 = *(v7 - 272);
        v20 = *(v7 + 72);
        v18 = v19 >= v20;
        if (v19 == v20)
        {
          if (*(v7 - 256) <= *(v7 + 88))
          {
            goto LABEL_19;
          }

          goto LABEL_26;
        }
      }

      if (v18)
      {
LABEL_19:
        MEMORY[0x223DC1920](v234, v7);
        v21 = *(v7 + 88);
        v237 = v21;
        LOBYTE(v238) = 0;
        v255 = 0;
        if (*(v7 + 312) == 1)
        {
          v238 = *(v7 + 96);
          v22 = *(v7 + 120);
          v239 = *(v7 + 104);
          v240 = v22;
          *(v7 + 112) = 0;
          *(v7 + 120) = 0;
          *(v7 + 104) = 0;
          v23 = *(v7 + 144);
          v241 = *(v7 + 128);
          v242 = v23;
          *(v7 + 136) = 0;
          *(v7 + 144) = 0;
          *(v7 + 128) = 0;
          v24 = *(v7 + 152);
          v244 = *(v7 + 168);
          v243 = v24;
          *(v7 + 152) = 0;
          *(v7 + 160) = 0;
          *(v7 + 168) = 0;
          v25 = *(v7 + 176);
          *(v245 + 12) = *(v7 + 188);
          v245[0] = v25;
          v247 = 0;
          v246 = 0uLL;
          v246 = *(v7 + 208);
          v247 = *(v7 + 224);
          *(v7 + 208) = 0;
          *(v7 + 216) = 0;
          *(v7 + 224) = 0;
          v26 = *(v7 + 232);
          v249 = *(v7 + 248);
          v248 = v26;
          *(v7 + 232) = 0;
          *(v7 + 240) = 0;
          *(v7 + 248) = 0;
          v250 = *(v7 + 256);
          v27 = *(v7 + 264);
          v252 = *(v7 + 280);
          __p = v27;
          *(v7 + 264) = 0;
          *(v7 + 272) = 0;
          *(v7 + 280) = 0;
          v253 = 0uLL;
          v254 = 0;
          v253 = *(v7 + 288);
          v254 = *(v7 + 304);
          *(v7 + 288) = 0;
          *(v7 + 296) = 0;
          *(v7 + 304) = 0;
          v255 = 1;
        }

        v256[0] = *(v7 + 320);
        *&v256[1] = *(v7 + 336);
        *(v7 + 320) = 0;
        *(v7 + 328) = 0;
        *(v7 + 336) = 0;
        v28 = *v207;
        if (v236 == *v207)
        {
          v29 = v235;
          if (v235 == *v206)
          {
            if (v21 > *(v210 - 256))
            {
              goto LABEL_97;
            }
          }

          else if (v235 < *v206)
          {
            goto LABEL_97;
          }
        }

        else if (v236 < v28)
        {
          v29 = v235;
LABEL_97:
          for (m = v7 + 344; ; m += 344)
          {
            v61 = *(m + 76);
            v62 = v236 >= v61;
            if (v236 == v61 && (v63 = *(m + 72), v62 = v29 >= v63, v29 == v63))
            {
              if (v21 > *(m + 88))
              {
                goto LABEL_113;
              }
            }

            else if (!v62)
            {
              goto LABEL_113;
            }
          }
        }

        for (m = v7 + 344; m < v210; m += 344)
        {
          v64 = *(m + 76);
          v65 = v236 >= v64;
          if (v236 == v64 && (v66 = *(m + 72), v65 = v235 >= v66, v235 == v66))
          {
            if (v21 > *(m + 88))
            {
              break;
            }
          }

          else if (!v65)
          {
            break;
          }
        }

LABEL_113:
        v67 = v210;
        if (m >= v210)
        {
          goto LABEL_134;
        }

        v68 = v205;
        while (2)
        {
          v69 = v236 >= v28;
          if (v236 == v28)
          {
            v70 = *(v68 + 85);
            v69 = v235 >= v70;
            if (v235 == v70)
            {
              if (v21 <= v68[89])
              {
                break;
              }

              goto LABEL_120;
            }
          }

          if (!v69)
          {
LABEL_120:
            v28 = *v68;
            v68 -= 86;
            continue;
          }

          break;
        }

        v67 = (v68 + 67);
LABEL_134:
        if (m >= v67)
        {
          if (m - 344 != v7)
          {
            sirinluinternal::MatchingSpan::operator=();
            *(v7 + 88) = *(m - 256);
            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v7 + 96, m - 248);
            v77 = *(v7 + 320);
            if (v77)
            {
              *(v7 + 328) = v77;
              operator delete(v77);
              *(v7 + 320) = 0;
              *(v7 + 328) = 0;
              *(v7 + 336) = 0;
            }

            v78 = (m - 24);
            *(v7 + 320) = *(m - 24);
            *(v7 + 336) = *(m - 8);
            *v78 = 0;
            v78[1] = 0;
            v78[2] = 0;
          }

          sirinluinternal::MatchingSpan::operator=();
          *(m - 256) = v237;
          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(m - 248, &v238);
          v79 = *(m - 24);
          if (v79)
          {
            *(m - 16) = v79;
            operator delete(v79);
            *(m - 24) = 0;
            *(m - 16) = 0;
            *(m - 8) = 0;
          }

          *(m - 24) = v256[0];
          *(m - 8) = *&v256[1];
          memset(v256, 0, 24);
          if (v255 == 1)
          {
            v211[0] = &v253;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v252) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v249) < 0)
            {
              operator delete(v248);
            }

            v211[0] = &v246;
            std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(v243);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v241);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v239);
            }
          }

          result = MEMORY[0x223DC1950](v234);
          a4 = 0;
          continue;
        }

        std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(m, v67);
        for (m += 344; ; m += 344)
        {
          v71 = *(m + 76);
          v72 = v236 >= v71;
          if (v236 == v71 && (v73 = *(m + 72), v72 = v235 >= v73, v235 == v73))
          {
            if (v237 > *(m + 88))
            {
              do
              {
LABEL_131:
                while (1)
                {
                  v67 -= 344;
                  v74 = *(v67 + 76);
                  v75 = v236 >= v74;
                  if (v236 == v74)
                  {
                    v76 = *(v67 + 72);
                    v75 = v235 >= v76;
                    if (v235 == v76)
                    {
                      break;
                    }
                  }

                  if (v75)
                  {
                    goto LABEL_134;
                  }
                }
              }

              while (v237 > *(v67 + 88));
              goto LABEL_134;
            }
          }

          else if (!v72)
          {
            goto LABEL_131;
          }
        }
      }
    }

LABEL_26:
    MEMORY[0x223DC1920](v234, v7);
    v30 = *(v7 + 88);
    v237 = v30;
    LOBYTE(v238) = 0;
    v255 = 0;
    if (*(v7 + 312) == 1)
    {
      v238 = *(v7 + 96);
      v31 = *(v7 + 120);
      v239 = *(v7 + 104);
      v240 = v31;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      v32 = *(v7 + 144);
      v241 = *(v7 + 128);
      v242 = v32;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 128) = 0;
      v33 = *(v7 + 152);
      v244 = *(v7 + 168);
      v243 = v33;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      v34 = *(v7 + 176);
      *(v245 + 12) = *(v7 + 188);
      v245[0] = v34;
      v247 = 0;
      v246 = 0uLL;
      v246 = *(v7 + 208);
      v247 = *(v7 + 224);
      *(v7 + 208) = 0;
      *(v7 + 216) = 0;
      *(v7 + 224) = 0;
      v35 = *(v7 + 232);
      v249 = *(v7 + 248);
      v248 = v35;
      *(v7 + 232) = 0;
      *(v7 + 240) = 0;
      *(v7 + 248) = 0;
      v250 = *(v7 + 256);
      v36 = *(v7 + 264);
      v252 = *(v7 + 280);
      __p = v36;
      *(v7 + 264) = 0;
      *(v7 + 272) = 0;
      *(v7 + 280) = 0;
      v253 = 0uLL;
      v254 = 0;
      v253 = *(v7 + 288);
      v254 = *(v7 + 304);
      *(v7 + 288) = 0;
      *(v7 + 296) = 0;
      *(v7 + 304) = 0;
      v255 = 1;
    }

    v256[0] = *(v7 + 320);
    *&v256[1] = *(v7 + 336);
    *(v7 + 320) = 0;
    *(v7 + 328) = 0;
    *(v7 + 336) = 0;
    for (n = v7 + 344; ; n += 344)
    {
      v38 = *(n + 76);
      v39 = v38 >= v236;
      if (v38 != v236)
      {
        break;
      }

      v40 = *(n + 72);
      v39 = v40 >= v235;
      if (v40 != v235)
      {
        break;
      }

      if (*(n + 88) <= v30)
      {
        goto LABEL_35;
      }

LABEL_34:
      ;
    }

    if (!v39)
    {
      goto LABEL_34;
    }

LABEL_35:
    ii = v8;
    if (n - 344 != v7)
    {
      while (1)
      {
        v42 = *(ii + 76);
        v43 = v42 >= v236;
        if (v42 == v236 && (v44 = *(ii + 72), v43 = v44 >= v235, v44 == v235))
        {
          if (*(ii + 88) > v30)
          {
            goto LABEL_58;
          }
        }

        else if (!v43)
        {
          goto LABEL_58;
        }

        ii -= 344;
      }
    }

    ii = v210;
    if (n < v210)
    {
      for (ii = v8; ; ii -= 344)
      {
        v45 = *(ii + 76);
        v46 = v45 >= v236;
        if (v45 == v236 && (v47 = *(ii + 72), v46 = v47 >= v235, v47 == v235))
        {
          if (*(ii + 88) > v30 || n >= ii)
          {
            break;
          }
        }

        else if (!v46 || n >= ii)
        {
          break;
        }
      }
    }

LABEL_58:
    m = n;
    if (n >= ii)
    {
      goto LABEL_73;
    }

    m = n;
    v50 = ii;
    while (2)
    {
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(m, v50);
      m += 344;
      while (2)
      {
        v51 = *(m + 76);
        v52 = v51 >= v236;
        if (v51 == v236)
        {
          v53 = *(m + 72);
          v52 = v53 >= v235;
          if (v53 == v235)
          {
            if (*(m + 88) <= v237)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }
        }

        if (!v52)
        {
LABEL_66:
          m += 344;
          continue;
        }

        break;
      }

      do
      {
LABEL_69:
        while (1)
        {
          v50 -= 344;
          v54 = *(v50 + 76);
          v55 = v54 >= v236;
          if (v54 == v236)
          {
            v56 = *(v50 + 72);
            v55 = v56 >= v235;
            if (v56 == v235)
            {
              break;
            }
          }

          if (!v55)
          {
            goto LABEL_72;
          }
        }
      }

      while (*(v50 + 88) <= v237);
LABEL_72:
      if (m < v50)
      {
        continue;
      }

      break;
    }

LABEL_73:
    if (m - 344 != v7)
    {
      sirinluinternal::MatchingSpan::operator=();
      *(v7 + 88) = *(m - 256);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v7 + 96, m - 248);
      v57 = *(v7 + 320);
      if (v57)
      {
        *(v7 + 328) = v57;
        operator delete(v57);
        *(v7 + 320) = 0;
        *(v7 + 328) = 0;
        *(v7 + 336) = 0;
      }

      v58 = (m - 24);
      *(v7 + 320) = *(m - 24);
      *(v7 + 336) = *(m - 8);
      *v58 = 0;
      v58[1] = 0;
      v58[2] = 0;
    }

    sirinluinternal::MatchingSpan::operator=();
    *(m - 256) = v237;
    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(m - 248, &v238);
    v59 = *(m - 24);
    if (v59)
    {
      *(m - 16) = v59;
      operator delete(v59);
      *(m - 24) = 0;
      *(m - 16) = 0;
      *(m - 8) = 0;
    }

    *(m - 24) = v256[0];
    *(m - 8) = *&v256[1];
    memset(v256, 0, 24);
    a2 = v210;
    if (v255 == 1)
    {
      v211[0] = &v253;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
      if (SHIBYTE(v252) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v249) < 0)
      {
        operator delete(v248);
      }

      v211[0] = &v246;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
      if (SHIBYTE(v244) < 0)
      {
        operator delete(v243);
      }

      if (SHIBYTE(v242) < 0)
      {
        operator delete(v241);
      }

      if (SHIBYTE(v240) < 0)
      {
        operator delete(v239);
      }
    }

    MEMORY[0x223DC1950](v234);
    if (n < ii)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(v7, m - 344, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v60 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(v7, m - 344);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(m, v210);
      if (result)
      {
        a2 = m - 344;
        if (v60)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v60)
      {
        goto LABEL_93;
      }
    }
  }

  v80 = *(v7 + 76);
  v81 = *v207 >= v80;
  if (*v207 == v80 && (v82 = *(v7 + 72), v81 = *v206 >= v82, *v206 == v82))
  {
    if (*(a2 - 256) <= *(v7 + 88))
    {
      return result;
    }
  }

  else if (v81)
  {
    return result;
  }

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v7, v8);
}

uint64_t std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x223DC1920](v16, a1);
  v17 = *(a1 + 88);
  LOBYTE(v18) = 0;
  v35 = 0;
  if (*(a1 + 312) == 1)
  {
    v18 = *(a1 + 96);
    *v19 = *(a1 + 104);
    v20 = *(a1 + 120);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *v21 = *(a1 + 128);
    v4 = *(a1 + 144);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v5 = *(a1 + 152);
    v6 = *(a1 + 168);
    v22 = v4;
    v24 = v6;
    *v23 = v5;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v7 = *(a1 + 176);
    *&v25[12] = *(a1 + 188);
    v8 = *(a1 + 208);
    *v25 = v7;
    v26 = v8;
    v9 = *(a1 + 224);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    v10 = *(a1 + 232);
    v11 = *(a1 + 248);
    v27 = v9;
    v29 = v11;
    *v28 = v10;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    v30 = *(a1 + 256);
    v12 = *(a1 + 280);
    __p = *(a1 + 264);
    v32 = v12;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    v33 = *(a1 + 288);
    v34 = *(a1 + 304);
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    v35 = 1;
  }

  v36 = *(a1 + 320);
  v37 = *(a1 + 336);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  sirinluinternal::MatchingSpan::operator=();
  *(a1 + 88) = *(a2 + 88);
  std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(a1 + 96, a2 + 96);
  v13 = *(a1 + 320);
  if (v13)
  {
    *(a1 + 328) = v13;
    operator delete(v13);
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  sirinluinternal::MatchingSpan::operator=();
  *(a2 + 88) = v17;
  std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(a2 + 96, &v18);
  v14 = *(a2 + 320);
  if (v14)
  {
    *(a2 + 328) = v14;
    operator delete(v14);
  }

  *(a2 + 320) = v36;
  *(a2 + 336) = v37;
  v37 = 0;
  v36 = 0uLL;
  if (v35 == 1)
  {
    v38 = &v33;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    v38 = &v26;
    std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  return MEMORY[0x223DC1950](v16);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 76);
  v7 = *(result + 76);
  v8 = v6 >= v7;
  if (v6 == v7)
  {
    v9 = *(a2 + 72);
    v10 = *(result + 72);
    v8 = v9 >= v10;
    if (v9 == v10)
    {
      if (*(a2 + 88) <= *(result + 88))
      {
        goto LABEL_4;
      }

LABEL_9:
      v15 = *(a3 + 76);
      v16 = v15 >= v6;
      if (v15 == v6 && (v17 = *(a3 + 72), v18 = *(a2 + 72), v16 = v17 >= v18, v17 == v18))
      {
        if (*(a3 + 88) <= *(a2 + 88))
        {
          goto LABEL_12;
        }
      }

      else if (v16)
      {
LABEL_12:
        result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(result, a2);
        v19 = *(a3 + 76);
        v20 = *(a2 + 76);
        v21 = v19 >= v20;
        if (v19 == v20 && (v22 = *(a3 + 72), v23 = *(a2 + 72), v21 = v22 >= v23, v22 == v23))
        {
          if (*(a3 + 88) <= *(a2 + 88))
          {
            return result;
          }
        }

        else if (v21)
        {
          return result;
        }

        result = a2;
      }

      v29 = a3;
      goto LABEL_28;
    }
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = *(a3 + 76);
  v12 = v11 >= v6;
  if (v11 == v6 && (v13 = *(a3 + 72), v14 = *(a2 + 72), v12 = v13 >= v14, v13 == v14))
  {
    if (*(a3 + 88) <= *(a2 + 88))
    {
      return result;
    }
  }

  else if (v12)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  v24 = *(a2 + 76);
  v25 = *(v5 + 76);
  v26 = v24 >= v25;
  if (v24 == v25 && (v27 = *(a2 + 72), v28 = *(v5 + 72), v26 = v27 >= v28, v27 == v28))
  {
    if (*(a2 + 88) <= *(v5 + 88))
    {
      return result;
    }
  }

  else if (v26)
  {
    return result;
  }

  result = v5;
  v29 = a2;
LABEL_28:

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(result, v29);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a2, a3);
  v9 = *(a4 + 76);
  v10 = *(a3 + 76);
  v11 = v9 >= v10;
  if (v9 == v10 && (v12 = *(a4 + 72), v13 = *(a3 + 72), v11 = v12 >= v13, v12 == v13))
  {
    if (*(a4 + 88) <= *(a3 + 88))
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a3, a4);
  v14 = *(a3 + 76);
  v15 = *(a2 + 76);
  v16 = v14 >= v15;
  if (v14 == v15 && (v17 = *(a3 + 72), v18 = *(a2 + 72), v16 = v17 >= v18, v17 == v18))
  {
    if (*(a3 + 88) <= *(a2 + 88))
    {
      return result;
    }
  }

  else if (v16)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  v19 = *(a2 + 76);
  v20 = *(a1 + 76);
  v21 = v19 >= v20;
  if (v19 == v20 && (v22 = *(a2 + 72), v23 = *(a1 + 72), v21 = v22 >= v23, v22 == v23))
  {
    if (*(a2 + 88) <= *(a1 + 88))
    {
      return result;
    }
  }

  else if (v21)
  {
    return result;
  }

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2);
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a2, a3, a4);
  v11 = *(a5 + 76);
  v12 = *(a4 + 76);
  v13 = v11 >= v12;
  if (v11 == v12 && (v14 = *(a5 + 72), v15 = *(a4 + 72), v13 = v14 >= v15, v14 == v15))
  {
    if (*(a5 + 88) <= *(a4 + 88))
    {
      return result;
    }
  }

  else if (v13)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a4, a5);
  v16 = *(a4 + 76);
  v17 = *(a3 + 76);
  v18 = v16 >= v17;
  if (v16 == v17 && (v19 = *(a4 + 72), v20 = *(a3 + 72), v18 = v19 >= v20, v19 == v20))
  {
    if (*(a4 + 88) <= *(a3 + 88))
    {
      return result;
    }
  }

  else if (v18)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a3, a4);
  v21 = *(a3 + 76);
  v22 = *(a2 + 76);
  v23 = v21 >= v22;
  if (v21 == v22 && (v24 = *(a3 + 72), v25 = *(a2 + 72), v23 = v24 >= v25, v24 == v25))
  {
    if (*(a3 + 88) <= *(a2 + 88))
    {
      return result;
    }
  }

  else if (v23)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  v26 = *(a2 + 76);
  v27 = *(a1 + 76);
  v28 = v26 >= v27;
  if (v26 == v27 && (v29 = *(a2 + 72), v30 = *(a1 + 72), v28 = v29 >= v30, v29 == v30))
  {
    if (*(a2 + 88) <= *(a1 + 88))
    {
      return result;
    }
  }

  else if (v28)
  {
    return result;
  }

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2)
{
  v4 = 0x82FA0BE82FA0BE83 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a2 - 344);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688, a2 - 344);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688, a1 + 1032, a2 - 344);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 268);
      v6 = *(a1 + 76);
      v7 = v5 >= v6;
      if (v5 == v6 && (v8 = *(a2 - 272), v9 = *(a1 + 72), v7 = v8 >= v9, v8 == v9))
      {
        if (*(a2 - 256) <= *(a1 + 88))
        {
          return 1;
        }
      }

      else if (v7)
      {
        return 1;
      }

      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2 - 344);
      return 1;
    }
  }

  v10 = a1 + 688;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688);
  v11 = a1 + 1032;
  v12 = 1;
  if (a1 + 1032 != a2)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(v11 + 76);
      v16 = *(v10 + 76);
      v17 = v15 >= v16;
      if (v15 == v16 && (v18 = *(v11 + 72), v19 = *(v10 + 72), v17 = v18 >= v19, v18 == v19))
      {
        if (*(v11 + 88) <= *(v10 + 88))
        {
          goto LABEL_50;
        }
      }

      else if (v17)
      {
        goto LABEL_50;
      }

      MEMORY[0x223DC1920](v34, v11);
      v37 = *(v11 + 88);
      LOBYTE(v38) = 0;
      v55 = 0;
      if (*(v11 + 312) == 1)
      {
        v38 = *(v11 + 96);
        v39 = *(v11 + 104);
        v40 = *(v11 + 120);
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
        v41 = *(v11 + 128);
        v42 = *(v11 + 144);
        *(v11 + 120) = 0;
        *(v11 + 128) = 0;
        *(v11 + 136) = 0;
        *(v11 + 144) = 0;
        v20 = *(v11 + 152);
        v44 = *(v11 + 168);
        v43 = v20;
        *(v11 + 152) = 0;
        *(v11 + 160) = 0;
        *(v11 + 168) = 0;
        v21 = *(v11 + 176);
        *(v45 + 12) = *(v11 + 188);
        v45[0] = v21;
        v46 = *(v11 + 208);
        v47 = *(v11 + 224);
        *(v11 + 208) = 0;
        *(v11 + 216) = 0;
        v22 = *(v11 + 232);
        v49 = *(v11 + 248);
        v48 = v22;
        *(v11 + 224) = 0;
        *(v11 + 232) = 0;
        *(v11 + 240) = 0;
        *(v11 + 248) = 0;
        v50 = *(v11 + 256);
        v23 = *(v11 + 264);
        v52 = *(v11 + 280);
        __p = v23;
        *(v11 + 264) = 0;
        *(v11 + 272) = 0;
        v53 = *(v11 + 288);
        v54 = *(v11 + 304);
        *(v11 + 280) = 0;
        *(v11 + 288) = 0;
        *(v11 + 296) = 0;
        *(v11 + 304) = 0;
        v55 = 1;
      }

      *v56 = *(v11 + 320);
      *&v56[16] = *(v11 + 336);
      *(v11 + 328) = 0;
      *(v11 + 336) = 0;
      *(v11 + 320) = 0;
      for (i = v13; ; i -= 344)
      {
        v25 = a1 + i;
        sirinluinternal::MatchingSpan::operator=();
        *(v25 + 1120) = *(v25 + 776);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v25 + 1128, v25 + 784);
        v26 = *(a1 + i + 1352);
        if (v26)
        {
          *(v25 + 1360) = v26;
          operator delete(v26);
          *(v25 + 1368) = 0;
        }

        *(v25 + 1352) = *(v25 + 1008);
        *(v25 + 1368) = *(v25 + 1024);
        *(v25 + 1008) = 0;
        *(v25 + 1016) = 0;
        *(v25 + 1024) = 0;
        if (i == -688)
        {
          v10 = a1;
LABEL_35:
          v29 = a1 + i;
          goto LABEL_36;
        }

        v27 = *(a1 + i + 420);
        if (v36 == v27)
        {
          break;
        }

        if (v36 >= v27)
        {
          goto LABEL_35;
        }

LABEL_33:
        v10 -= 344;
      }

      v28 = *(a1 + i + 416);
      if (v35 == v28)
      {
        break;
      }

      if (v35 < v28)
      {
        goto LABEL_33;
      }

      v29 = a1 + i;
      v10 = a1 + i + 688;
LABEL_36:
      v30 = v29 + 1008;
      v31 = v29 + 784;
      sirinluinternal::MatchingSpan::operator=();
      *(v10 + 88) = v37;
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v31, &v38);
      v32 = *v30;
      if (*v30)
      {
        *(v10 + 328) = v32;
        operator delete(v32);
        *v30 = 0;
        *(v30 + 8) = 0;
        *(v30 + 16) = 0;
      }

      *v30 = *v56;
      *(v10 + 328) = *&v56[8];
      memset(v56, 0, sizeof(v56));
      if (v55 == 1)
      {
        v57[0] = &v53;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v57);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48);
        }

        v57[0] = &v46;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v57);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }
      }

      ++v14;
      MEMORY[0x223DC1950](v34);
      if (v14 == 8)
      {
        return v11 + 344 == a2;
      }

LABEL_50:
      v10 = v11;
      v13 += 344;
      v11 += 344;
      if (v11 == a2)
      {
        return 1;
      }
    }

    if (v37 <= *(a1 + i + 432))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  return v12;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v6 = a2;
  v7 = a2 - 344;
  v8 = v5;
  while (1)
  {
    v9 = v8;
    v10 = v6 - v8;
    v11 = 0x82FA0BE82FA0BE83 * ((v6 - v8) >> 3);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344, v7);
        case 4uLL:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344, v8 + 688, v7);
        case 5uLL:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344, v8 + 688, v8 + 1032, v7);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      v6 = a2;
      if (v11 == 2)
      {
        if (*(a2 - 32) != 1)
        {
          return result;
        }

        if (*(v8 + 312) != 1)
        {
          return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v7);
        }

        v160 = *(v8 + 152);
        v161 = *(a2 - 169);
        v162 = *(a2 - 192);
        if (v161 >= 0)
        {
          v163 = *(a2 - 169);
        }

        else
        {
          v163 = *(a2 - 184);
        }

        v164 = *(v8 + 175);
        if (v164 >= 0)
        {
          v165 = *(v8 + 175);
        }

        else
        {
          v165 = *(v8 + 160);
        }

        if (v163 == v165)
        {
          if (v161 >= 0)
          {
            v166 = (a2 - 192);
          }

          else
          {
            v166 = *(a2 - 192);
          }

          if (v164 >= 0)
          {
            v167 = (v8 + 152);
          }

          else
          {
            v167 = *(v8 + 152);
          }

          result = memcmp(v166, v167, v163);
          if (!result)
          {
            if (*(a2 - 256) <= *(v8 + 88))
            {
              return result;
            }

            return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v7);
          }
        }

        else
        {
          if (v164 >= 0)
          {
            v167 = (v8 + 152);
          }

          else
          {
            v167 = *(v8 + 152);
          }

          if (v161 >= 0)
          {
            v166 = (a2 - 192);
          }

          else
          {
            v166 = *(a2 - 192);
          }
        }

        if (v163 >= v165)
        {
          v360 = v165;
        }

        else
        {
          v360 = v163;
        }

        result = memcmp(v167, v166, v360);
        v361 = v165 < v163;
        if (result)
        {
          v361 = result < 0;
        }

        if (!v361)
        {
          return result;
        }

        return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v7);
      }
    }

    v369 = v8;
    if (v10 <= 8255)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == v6)
      {
        return result;
      }

      v204 = v12 >> 1;
      v205 = v12 >> 1;
      v367 = v10;
      while (1)
      {
        v206 = v205;
        if (v204 < v205)
        {
          goto LABEL_647;
        }

        v207 = (2 * v205) | 1;
        v208 = v9 + 344 * v207;
        v209 = 2 * v205 + 2;
        v371 = v205;
        if (v209 >= v11 || *(v208 + 312) != 1)
        {
          goto LABEL_535;
        }

        if (*(v208 + 656) == 1)
        {
          v210 = *(v208 + 152);
          v211 = *(v208 + 175);
          if (v211 >= 0)
          {
            v212 = *(v208 + 175);
          }

          else
          {
            v212 = *(v208 + 160);
          }

          v213 = *(v208 + 519);
          v214 = *(v208 + 496);
          if (v213 >= 0)
          {
            v215 = *(v208 + 519);
          }

          else
          {
            v215 = *(v208 + 504);
          }

          if (v212 == v215)
          {
            if (v211 >= 0)
            {
              v216 = (v208 + 152);
            }

            else
            {
              v216 = *(v208 + 152);
            }

            if (v213 >= 0)
            {
              v217 = (v208 + 496);
            }

            else
            {
              v217 = *(v208 + 496);
            }

            if (!memcmp(v216, v217, v212))
            {
              v9 = v369;
              v10 = v367;
              v206 = v371;
              if (*(v208 + 88) <= *(v208 + 432))
              {
                goto LABEL_535;
              }

              goto LABEL_534;
            }
          }

          else
          {
            if (v213 >= 0)
            {
              v217 = (v208 + 496);
            }

            else
            {
              v217 = *(v208 + 496);
            }

            if (v211 >= 0)
            {
              v216 = (v208 + 152);
            }

            else
            {
              v216 = *(v208 + 152);
            }
          }

          if (v212 >= v215)
          {
            v218 = v215;
          }

          else
          {
            v218 = v212;
          }

          v219 = memcmp(v217, v216, v218);
          v220 = v215 < v212;
          if (v219)
          {
            v220 = v219 < 0;
          }

          v9 = v369;
          v10 = v367;
          v206 = v371;
          if (!v220)
          {
            goto LABEL_535;
          }
        }

LABEL_534:
        v208 += 344;
        v207 = v209;
LABEL_535:
        v221 = v9 + 344 * v206;
        if (*(v208 + 312) != 1)
        {
          goto LABEL_565;
        }

        if (*(v221 + 312) != 1)
        {
          goto LABEL_647;
        }

        v222 = *(v208 + 152);
        v223 = *(v221 + 152);
        v224 = *(v208 + 175);
        if (v224 >= 0)
        {
          v225 = *(v208 + 175);
        }

        else
        {
          v225 = *(v208 + 160);
        }

        v226 = *(v221 + 175);
        if (v226 >= 0)
        {
          v227 = *(v221 + 175);
        }

        else
        {
          v227 = *(v221 + 160);
        }

        if (v225 == v227)
        {
          if (v224 >= 0)
          {
            v228 = (v208 + 152);
          }

          else
          {
            v228 = *(v208 + 152);
          }

          if (v226 >= 0)
          {
            v229 = (v221 + 152);
          }

          else
          {
            v229 = *(v221 + 152);
          }

          if (!memcmp(v228, v229, v225))
          {
            v9 = v369;
            v10 = v367;
            v206 = v371;
            if (*(v208 + 88) > *(v221 + 88))
            {
              goto LABEL_647;
            }

LABEL_565:
            MEMORY[0x223DC1920](v396, v221);
            v397 = *(v221 + 88);
            LOBYTE(v398) = 0;
            v415 = 0;
            if (*(v221 + 312) == 1)
            {
              v398 = *(v221 + 96);
              v233 = *(v221 + 104);
              v400 = *(v221 + 120);
              v399 = v233;
              *(v221 + 112) = 0;
              *(v221 + 120) = 0;
              *(v221 + 104) = 0;
              v234 = *(v221 + 128);
              v402 = *(v221 + 144);
              v401 = v234;
              *(v221 + 136) = 0;
              *(v221 + 144) = 0;
              *(v221 + 128) = 0;
              v235 = *(v221 + 152);
              v404 = *(v221 + 168);
              v403 = v235;
              *(v221 + 160) = 0;
              *(v221 + 168) = 0;
              *(v221 + 152) = 0;
              v236 = *(v221 + 176);
              *(v405 + 12) = *(v221 + 188);
              v405[0] = v236;
              v407 = 0;
              v406 = 0uLL;
              v406 = *(v221 + 208);
              v407 = *(v221 + 224);
              *(v221 + 208) = 0;
              *(v221 + 216) = 0;
              *(v221 + 224) = 0;
              v237 = *(v221 + 232);
              v409 = *(v221 + 248);
              v408 = v237;
              *(v221 + 240) = 0;
              *(v221 + 248) = 0;
              *(v221 + 232) = 0;
              v410 = *(v221 + 256);
              v238 = *(v221 + 264);
              v412 = *(v221 + 280);
              __p = v238;
              *(v221 + 272) = 0;
              *(v221 + 280) = 0;
              *(v221 + 264) = 0;
              v413 = 0uLL;
              v414 = 0;
              v413 = *(v221 + 288);
              v414 = *(v221 + 304);
              *(v221 + 288) = 0;
              *(v221 + 296) = 0;
              *(v221 + 304) = 0;
              v415 = 1;
            }

            v416[0] = *(v221 + 320);
            *&v416[1] = *(v221 + 336);
            *(v221 + 320) = 0;
            *(v221 + 328) = 0;
            *(v221 + 336) = 0;
            while (1)
            {
              v239 = v208;
              sirinluinternal::MatchingSpan::operator=();
              *(v221 + 88) = *(v208 + 88);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v221 + 96, v208 + 96);
              v240 = *(v221 + 320);
              if (v240)
              {
                *(v221 + 328) = v240;
                operator delete(v240);
                *(v221 + 320) = 0;
                *(v221 + 328) = 0;
                *(v221 + 336) = 0;
              }

              *(v221 + 320) = *(v208 + 320);
              *(v221 + 336) = *(v208 + 336);
              *(v208 + 320) = 0;
              *(v208 + 328) = 0;
              *(v208 + 336) = 0;
              if (v204 < v207)
              {
LABEL_633:
                sirinluinternal::MatchingSpan::operator=();
                *(v239 + 88) = v397;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v239 + 96, &v398);
                v264 = *(v239 + 320);
                if (v264)
                {
                  *(v239 + 328) = v264;
                  operator delete(v264);
                  *(v239 + 320) = 0;
                  *(v239 + 328) = 0;
                  *(v239 + 336) = 0;
                }

                *(v239 + 320) = v416[0];
                *(v239 + 336) = *&v416[1];
                memset(v416, 0, 24);
                v9 = v369;
                if (v415 == 1)
                {
                  v373[0] = &v413;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v373);
                  if (SHIBYTE(v412) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v409) < 0)
                  {
                    operator delete(v408);
                  }

                  v373[0] = &v406;
                  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v373);
                  if (SHIBYTE(v404) < 0)
                  {
                    operator delete(v403);
                  }

                  if (SHIBYTE(v402) < 0)
                  {
                    operator delete(v401);
                  }

                  if (SHIBYTE(v400) < 0)
                  {
                    operator delete(v399);
                  }
                }

                MEMORY[0x223DC1950](v396);
                v10 = v367;
                v206 = v371;
                goto LABEL_647;
              }

              v241 = 2 * v207;
              v207 = (2 * v207) | 1;
              v208 = v369 + 344 * v207;
              v242 = v241 + 2;
              if (v241 + 2 >= v11 || *(v208 + 312) != 1)
              {
                goto LABEL_603;
              }

              if (*(v208 + 656) == 1)
              {
                v243 = v204;
                v244 = *(v208 + 152);
                v245 = *(v208 + 175);
                if (v245 >= 0)
                {
                  v246 = *(v208 + 175);
                }

                else
                {
                  v246 = *(v208 + 160);
                }

                v247 = *(v208 + 519);
                v248 = *(v208 + 496);
                if (v247 >= 0)
                {
                  v249 = *(v208 + 519);
                }

                else
                {
                  v249 = *(v208 + 504);
                }

                if (v246 == v249)
                {
                  if (v245 >= 0)
                  {
                    v250 = (v208 + 152);
                  }

                  else
                  {
                    v250 = *(v208 + 152);
                  }

                  if (v247 >= 0)
                  {
                    v251 = (v208 + 496);
                  }

                  else
                  {
                    v251 = *(v208 + 496);
                  }

                  if (!memcmp(v250, v251, v246))
                  {
                    v204 = v243;
                    if (*(v208 + 88) <= *(v208 + 432))
                    {
                      goto LABEL_603;
                    }

                    goto LABEL_602;
                  }
                }

                else
                {
                  if (v247 >= 0)
                  {
                    v251 = (v208 + 496);
                  }

                  else
                  {
                    v251 = *(v208 + 496);
                  }

                  if (v245 >= 0)
                  {
                    v250 = (v208 + 152);
                  }

                  else
                  {
                    v250 = *(v208 + 152);
                  }
                }

                if (v246 >= v249)
                {
                  v252 = v249;
                }

                else
                {
                  v252 = v246;
                }

                v253 = memcmp(v251, v250, v252);
                v254 = v249 < v246;
                if (v253)
                {
                  v254 = v253 < 0;
                }

                v204 = v243;
                if (!v254)
                {
                  goto LABEL_603;
                }
              }

LABEL_602:
              v208 += 344;
              v207 = v242;
LABEL_603:
              v221 = v239;
              if (*(v208 + 312) == 1)
              {
                if (v415 != 1)
                {
                  goto LABEL_633;
                }

                v255 = *(v208 + 152);
                v256 = *(v208 + 175);
                if (v256 >= 0)
                {
                  v257 = *(v208 + 175);
                }

                else
                {
                  v257 = *(v208 + 160);
                }

                if (v404 >= 0)
                {
                  v258 = HIBYTE(v404);
                }

                else
                {
                  v258 = *(&v403 + 1);
                }

                if (v257 != v258)
                {
                  if (v404 >= 0)
                  {
                    v260 = &v403;
                  }

                  else
                  {
                    v260 = v403;
                  }

                  if (v256 >= 0)
                  {
                    v259 = (v208 + 152);
                  }

                  else
                  {
                    v259 = *(v208 + 152);
                  }

                  goto LABEL_627;
                }

                if (v256 >= 0)
                {
                  v259 = (v208 + 152);
                }

                else
                {
                  v259 = *(v208 + 152);
                }

                if (v404 >= 0)
                {
                  v260 = &v403;
                }

                else
                {
                  v260 = v403;
                }

                if (!memcmp(v259, v260, v257))
                {
                  v221 = v239;
                  if (*(v208 + 88) > v397)
                  {
                    goto LABEL_633;
                  }
                }

                else
                {
LABEL_627:
                  if (v257 >= v258)
                  {
                    v261 = v258;
                  }

                  else
                  {
                    v261 = v257;
                  }

                  v262 = memcmp(v260, v259, v261);
                  v263 = v258 < v257;
                  if (v262)
                  {
                    v263 = v262 < 0;
                  }

                  v221 = v239;
                  if (v263)
                  {
                    goto LABEL_633;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v226 >= 0)
          {
            v229 = (v221 + 152);
          }

          else
          {
            v229 = *(v221 + 152);
          }

          if (v224 >= 0)
          {
            v228 = (v208 + 152);
          }

          else
          {
            v228 = *(v208 + 152);
          }
        }

        if (v225 >= v227)
        {
          v230 = v227;
        }

        else
        {
          v230 = v225;
        }

        v231 = memcmp(v229, v228, v230);
        v232 = v227 < v225;
        if (v231)
        {
          v232 = v231 < 0;
        }

        v9 = v369;
        v10 = v367;
        v206 = v371;
        if (!v232)
        {
          goto LABEL_565;
        }

LABEL_647:
        v205 = v206 - 1;
        if (!v206)
        {
          v265 = 0x82FA0BE82FA0BE83 * (v10 >> 3);
          v362 = v9 + 264;
          while (1)
          {
            MEMORY[0x223DC1920](v373, v9);
            v374 = *(v9 + 88);
            LOBYTE(v375) = 0;
            v392 = 0;
            if (*(v9 + 312) == 1)
            {
              v375 = *(v9 + 96);
              v266 = *(v9 + 120);
              v376 = *(v9 + 104);
              v377 = v266;
              *(v9 + 112) = 0;
              *(v9 + 120) = 0;
              *(v9 + 104) = 0;
              v267 = *(v9 + 144);
              v378 = *(v9 + 128);
              v379 = v267;
              *(v9 + 136) = 0;
              *(v9 + 144) = 0;
              *(v9 + 128) = 0;
              v268 = *(v9 + 152);
              v381 = *(v9 + 168);
              v380 = v268;
              *(v9 + 152) = 0;
              *(v9 + 160) = 0;
              *(v9 + 168) = 0;
              v269 = *(v9 + 176);
              *(v382 + 12) = *(v9 + 188);
              v382[0] = v269;
              v384 = 0;
              v383 = 0uLL;
              v383 = *(v9 + 208);
              v384 = *(v9 + 224);
              *(v9 + 208) = 0;
              *(v9 + 216) = 0;
              *(v9 + 224) = 0;
              v270 = *(v9 + 232);
              v386 = *(v9 + 248);
              v385 = v270;
              *(v9 + 232) = 0;
              *(v9 + 240) = 0;
              *(v9 + 248) = 0;
              v387 = *(v9 + 256);
              v271 = *v362;
              v389 = *(v362 + 16);
              v388 = v271;
              *v362 = 0;
              *(v362 + 8) = 0;
              *(v362 + 16) = 0;
              v390 = 0uLL;
              v391 = 0;
              v390 = *(v9 + 288);
              v391 = *(v9 + 304);
              *(v9 + 288) = 0;
              *(v9 + 296) = 0;
              *(v9 + 304) = 0;
              v392 = 1;
            }

            v272 = 0;
            *v393 = *(v9 + 320);
            v394 = *(v9 + 336);
            *(v9 + 320) = 0;
            *(v9 + 328) = 0;
            *(v9 + 336) = 0;
            v273 = (v265 - 2) >> 1;
            v274 = v9;
            v372 = v265;
            do
            {
              v275 = (v274 + 344 * v272);
              v276 = v275 + 86;
              v277 = 2 * v272;
              v272 = (2 * v272) | 1;
              v278 = v277 + 2;
              if (v277 + 2 >= v265 || *(v275 + 656) != 1)
              {
                goto LABEL_684;
              }

              if (*(v275 + 1000) != 1)
              {
                goto LABEL_683;
              }

              v279 = *(v275 + 519);
              v280 = *(v275 + 62);
              if (v279 >= 0)
              {
                v281 = *(v275 + 519);
              }

              else
              {
                v281 = *(v275 + 63);
              }

              v282 = *(v275 + 863);
              if (v282 >= 0)
              {
                v283 = *(v275 + 863);
              }

              else
              {
                v283 = *(v275 + 106);
              }

              v284 = *(v275 + 105);
              if (v281 == v283)
              {
                if (v279 >= 0)
                {
                  v285 = v275 + 124;
                }

                else
                {
                  v285 = *(v275 + 62);
                }

                if (v282 >= 0)
                {
                  v286 = v275 + 210;
                }

                else
                {
                  v286 = *(v275 + 105);
                }

                if (!memcmp(v285, v286, v281))
                {
                  v265 = v372;
                  if (v275[108] > v275[194])
                  {
                    goto LABEL_683;
                  }

                  goto LABEL_684;
                }
              }

              else
              {
                if (v282 >= 0)
                {
                  v286 = v275 + 210;
                }

                else
                {
                  v286 = *(v275 + 105);
                }

                if (v279 >= 0)
                {
                  v285 = v275 + 124;
                }

                else
                {
                  v285 = *(v275 + 62);
                }
              }

              if (v281 >= v283)
              {
                v287 = v283;
              }

              else
              {
                v287 = v281;
              }

              v288 = memcmp(v286, v285, v287);
              v289 = v283 < v281;
              if (v288)
              {
                v289 = v288 < 0;
              }

              v265 = v372;
              if (v289)
              {
LABEL_683:
                v276 = v275 + 172;
                v272 = v278;
              }

LABEL_684:
              sirinluinternal::MatchingSpan::operator=();
              *(v274 + 88) = v276[22];
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v274 + 96, (v276 + 24));
              v290 = *(v274 + 320);
              if (v290)
              {
                *(v274 + 328) = v290;
                operator delete(v290);
                *(v274 + 320) = 0;
                *(v274 + 328) = 0;
                *(v274 + 336) = 0;
              }

              *(v274 + 320) = *(v276 + 20);
              *(v274 + 336) = *(v276 + 42);
              *(v276 + 40) = 0;
              *(v276 + 41) = 0;
              *(v276 + 42) = 0;
              v274 = v276;
            }

            while (v272 <= v273);
            if (v276 == (a2 - 344))
            {
              sirinluinternal::MatchingSpan::operator=();
              *(v276 + 22) = v374;
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v276 + 24), &v375);
              v305 = *(v276 + 40);
              if (v305)
              {
                *(v276 + 41) = v305;
                operator delete(v305);
                *(v276 + 40) = 0;
                *(v276 + 41) = 0;
                *(v276 + 42) = 0;
              }

              *(v276 + 20) = *v393;
              *(v276 + 42) = v394;
              v393[0] = 0;
              v393[1] = 0;
              v394 = 0;
            }

            else
            {
              sirinluinternal::MatchingSpan::operator=();
              v276[22] = *(a2 - 256);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v276 + 24), a2 - 248);
              v291 = *(v276 + 40);
              if (v291)
              {
                *(v276 + 41) = v291;
                operator delete(v291);
                *(v276 + 40) = 0;
                *(v276 + 41) = 0;
                *(v276 + 42) = 0;
              }

              v292 = (a2 - 24);
              *(v276 + 20) = *(a2 - 24);
              *(v276 + 42) = *(a2 - 8);
              *v292 = 0;
              v292[1] = 0;
              v292[2] = 0;
              sirinluinternal::MatchingSpan::operator=();
              *(a2 - 256) = v374;
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(a2 - 248, &v375);
              v293 = *(a2 - 24);
              if (v293)
              {
                *(a2 - 16) = v293;
                operator delete(v293);
              }

              *(a2 - 24) = *v393;
              *(a2 - 8) = v394;
              v393[0] = 0;
              v393[1] = 0;
              v394 = 0;
              v294 = v276 - v369 + 344;
              if (v294 >= 345)
              {
                v295 = (-2 - 0x7D05F417D05F417DLL * (v294 >> 3)) >> 1;
                v296 = v369 + 344 * v295;
                if (*(v296 + 312) == 1)
                {
                  if (*(v276 + 312) != 1)
                  {
                    goto LABEL_740;
                  }

                  v297 = *(v296 + 152);
                  v298 = *(v276 + 19);
                  v299 = *(v296 + 175);
                  if (v299 >= 0)
                  {
                    v300 = *(v296 + 175);
                  }

                  else
                  {
                    v300 = *(v296 + 160);
                  }

                  v301 = *(v276 + 175);
                  if (v301 >= 0)
                  {
                    v302 = *(v276 + 175);
                  }

                  else
                  {
                    v302 = *(v276 + 20);
                  }

                  if (v300 == v302)
                  {
                    if (v299 >= 0)
                    {
                      v303 = (v296 + 152);
                    }

                    else
                    {
                      v303 = *(v296 + 152);
                    }

                    if (v301 >= 0)
                    {
                      v304 = v276 + 38;
                    }

                    else
                    {
                      v304 = *(v276 + 19);
                    }

                    if (!memcmp(v303, v304, v300))
                    {
                      v265 = v372;
                      if (*(v296 + 88) <= v276[22])
                      {
                        goto LABEL_714;
                      }

LABEL_740:
                      MEMORY[0x223DC1920](v396, v276);
                      v397 = v276[22];
                      LOBYTE(v398) = 0;
                      v415 = 0;
                      if (*(v276 + 312) == 1)
                      {
                        v398 = *(v276 + 12);
                        v310 = *(v276 + 15);
                        v399 = *(v276 + 26);
                        v400 = v310;
                        *(v276 + 14) = 0;
                        *(v276 + 15) = 0;
                        *(v276 + 13) = 0;
                        v311 = *(v276 + 18);
                        v401 = *(v276 + 8);
                        v402 = v311;
                        *(v276 + 17) = 0;
                        *(v276 + 18) = 0;
                        *(v276 + 16) = 0;
                        v312 = *(v276 + 38);
                        v404 = *(v276 + 21);
                        v403 = v312;
                        *(v276 + 19) = 0;
                        *(v276 + 20) = 0;
                        *(v276 + 21) = 0;
                        v313 = *(v276 + 11);
                        *(v405 + 12) = *(v276 + 47);
                        v405[0] = v313;
                        v407 = 0;
                        v406 = 0uLL;
                        v406 = *(v276 + 13);
                        v407 = *(v276 + 28);
                        *(v276 + 26) = 0;
                        *(v276 + 27) = 0;
                        *(v276 + 28) = 0;
                        v314 = *(v276 + 58);
                        v409 = *(v276 + 31);
                        v408 = v314;
                        *(v276 + 29) = 0;
                        *(v276 + 30) = 0;
                        *(v276 + 31) = 0;
                        v410 = *(v276 + 64);
                        v315 = *(v276 + 66);
                        v412 = *(v276 + 35);
                        __p = v315;
                        *(v276 + 33) = 0;
                        *(v276 + 34) = 0;
                        *(v276 + 35) = 0;
                        v413 = 0uLL;
                        v414 = 0;
                        v413 = *(v276 + 18);
                        v414 = *(v276 + 38);
                        *(v276 + 36) = 0;
                        *(v276 + 37) = 0;
                        *(v276 + 38) = 0;
                        v415 = 1;
                      }

                      v416[0] = *(v276 + 20);
                      *&v416[1] = *(v276 + 42);
                      *(v276 + 40) = 0;
                      *(v276 + 41) = 0;
                      *(v276 + 42) = 0;
                      while (1)
                      {
                        do
                        {
LABEL_743:
                          v316 = v296;
                          sirinluinternal::MatchingSpan::operator=();
                          v276[22] = *(v296 + 88);
                          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v276 + 24), v296 + 96);
                          v317 = *(v276 + 40);
                          if (v317)
                          {
                            *(v276 + 41) = v317;
                            operator delete(v317);
                            *(v276 + 40) = 0;
                            *(v276 + 41) = 0;
                            *(v276 + 42) = 0;
                          }

                          *(v276 + 20) = *(v296 + 320);
                          *(v276 + 42) = *(v296 + 336);
                          *(v296 + 320) = 0;
                          *(v296 + 328) = 0;
                          *(v296 + 336) = 0;
                          if (!v295 || (v295 = (v295 - 1) >> 1, v296 = v369 + 344 * v295, *(v296 + 312) != 1))
                          {
LABEL_776:
                            sirinluinternal::MatchingSpan::operator=();
                            *(v316 + 88) = v397;
                            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v316 + 96, &v398);
                            v327 = *(v316 + 320);
                            if (v327)
                            {
                              *(v316 + 328) = v327;
                              operator delete(v327);
                            }

                            *(v316 + 320) = v416[0];
                            *(v316 + 336) = *&v416[1];
                            memset(v416, 0, 24);
                            if (v415 == 1)
                            {
                              v395 = &v413;
                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v395);
                              if (SHIBYTE(v412) < 0)
                              {
                                operator delete(__p);
                              }

                              if (SHIBYTE(v409) < 0)
                              {
                                operator delete(v408);
                              }

                              v395 = &v406;
                              std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v395);
                              if (SHIBYTE(v404) < 0)
                              {
                                operator delete(v403);
                              }

                              if (SHIBYTE(v402) < 0)
                              {
                                operator delete(v401);
                              }

                              if (SHIBYTE(v400) < 0)
                              {
                                operator delete(v399);
                              }
                            }

                            MEMORY[0x223DC1950](v396);
                            if (v393[0])
                            {
                              v393[1] = v393[0];
                              operator delete(v393[0]);
                            }

                            goto LABEL_714;
                          }

                          v276 = v316;
                        }

                        while (v415 != 1);
                        v318 = *(v296 + 152);
                        v319 = *(v296 + 175);
                        if (v319 >= 0)
                        {
                          v320 = *(v296 + 175);
                        }

                        else
                        {
                          v320 = *(v296 + 160);
                        }

                        if (v404 >= 0)
                        {
                          v321 = HIBYTE(v404);
                        }

                        else
                        {
                          v321 = *(&v403 + 1);
                        }

                        if (v320 == v321)
                        {
                          if (v319 >= 0)
                          {
                            v322 = (v296 + 152);
                          }

                          else
                          {
                            v322 = *(v296 + 152);
                          }

                          if (v404 >= 0)
                          {
                            v323 = &v403;
                          }

                          else
                          {
                            v323 = v403;
                          }

                          if (!memcmp(v322, v323, v320))
                          {
                            v276 = v316;
                            v265 = v372;
                            if (*(v296 + 88) <= v397)
                            {
                              goto LABEL_776;
                            }

                            goto LABEL_743;
                          }
                        }

                        else
                        {
                          if (v404 >= 0)
                          {
                            v323 = &v403;
                          }

                          else
                          {
                            v323 = v403;
                          }

                          if (v319 >= 0)
                          {
                            v322 = (v296 + 152);
                          }

                          else
                          {
                            v322 = *(v296 + 152);
                          }
                        }

                        if (v320 >= v321)
                        {
                          v324 = v321;
                        }

                        else
                        {
                          v324 = v320;
                        }

                        v325 = memcmp(v323, v322, v324);
                        v326 = v321 < v320;
                        if (v325)
                        {
                          v326 = v325 < 0;
                        }

                        v276 = v316;
                        v265 = v372;
                        if (!v326)
                        {
                          goto LABEL_776;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v301 >= 0)
                    {
                      v304 = v276 + 38;
                    }

                    else
                    {
                      v304 = *(v276 + 19);
                    }

                    if (v299 >= 0)
                    {
                      v303 = (v296 + 152);
                    }

                    else
                    {
                      v303 = *(v296 + 152);
                    }
                  }

                  if (v300 >= v302)
                  {
                    v307 = v302;
                  }

                  else
                  {
                    v307 = v300;
                  }

                  v308 = memcmp(v304, v303, v307);
                  v309 = v302 < v300;
                  if (v308)
                  {
                    v309 = v308 < 0;
                  }

                  v265 = v372;
                  if (v309)
                  {
                    goto LABEL_740;
                  }
                }
              }
            }

LABEL_714:
            v9 = v369;
            if (v392 == 1)
            {
              v396[0] = &v390;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v396);
              if (SHIBYTE(v389) < 0)
              {
                operator delete(v388);
              }

              if (SHIBYTE(v386) < 0)
              {
                operator delete(v385);
              }

              v396[0] = &v383;
              std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v396);
              if (SHIBYTE(v381) < 0)
              {
                operator delete(v380);
              }

              if (SHIBYTE(v379) < 0)
              {
                operator delete(v378);
              }

              if (SHIBYTE(v377) < 0)
              {
                operator delete(v376);
              }
            }

            a2 -= 344;
            result = MEMORY[0x223DC1950](v373);
            if (v265-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    if (v10 < 0xAC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8 + 344 * (v11 >> 1), v8, v7);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344 * (v11 >> 1), v7);
      v13 = 344 * (v11 >> 1);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8 + 344, v13 + v8 - 344, a2 - 688);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8 + 688, v8 + 344 + v13, a2 - 1032);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v13 + v8 - 344, v8 + v13, v8 + 344 + v13);
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v8 + v13);
    }

    v364 = a3 - 1;
    if (a4)
    {
      goto LABEL_63;
    }

    if (*(v8 - 32) != 1)
    {
      goto LABEL_33;
    }

    if (*(v8 + 312) != 1)
    {
      goto LABEL_63;
    }

    v14 = *(v8 - 192);
    v15 = *(v8 - 169);
    v16 = v15 >= 0 ? *(v8 - 169) : *(v8 - 184);
    v17 = *(v8 + 175);
    v18 = *(v8 + 152);
    v19 = v17 >= 0 ? *(v8 + 175) : *(v8 + 160);
    if (v16 == v19)
    {
      if (v15 >= 0)
      {
        v20 = (v8 - 192);
      }

      else
      {
        v20 = *(v8 - 192);
      }

      if (v17 >= 0)
      {
        v21 = (v8 + 152);
      }

      else
      {
        v21 = *(v8 + 152);
      }

      if (!memcmp(v20, v21, v16))
      {
        if (*(v8 - 256) <= *(v8 + 88))
        {
          goto LABEL_33;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v21 = v17 >= 0 ? (v8 + 152) : *(v8 + 152);
      v20 = v15 >= 0 ? (v8 - 192) : *(v8 - 192);
    }

    if (v16 >= v19)
    {
      v42 = v19;
    }

    else
    {
      v42 = v16;
    }

    v43 = memcmp(v21, v20, v42);
    v44 = v19 < v16;
    if (v43)
    {
      v44 = v43 < 0;
    }

    if (v44)
    {
LABEL_63:
      MEMORY[0x223DC1920](v396, v8);
      v45 = *(v8 + 88);
      v397 = v45;
      LOBYTE(v398) = 0;
      v415 = 0;
      v46 = *(v8 + 312);
      if (v46 == 1)
      {
        v398 = *(v8 + 96);
        v47 = *(v8 + 120);
        v399 = *(v8 + 104);
        v400 = v47;
        *(v8 + 112) = 0;
        *(v8 + 120) = 0;
        *(v8 + 104) = 0;
        v48 = *(v8 + 144);
        v401 = *(v8 + 128);
        v402 = v48;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v49 = *(v8 + 152);
        v404 = *(v8 + 168);
        v403 = v49;
        *(v8 + 152) = 0;
        *(v8 + 160) = 0;
        *(v8 + 168) = 0;
        v50 = *(v8 + 176);
        *(v405 + 12) = *(v8 + 188);
        v405[0] = v50;
        v407 = 0;
        v406 = 0uLL;
        v406 = *(v8 + 208);
        v407 = *(v8 + 224);
        *(v8 + 208) = 0;
        *(v8 + 216) = 0;
        *(v8 + 224) = 0;
        v51 = *(v8 + 232);
        v409 = *(v8 + 248);
        v408 = v51;
        *(v8 + 232) = 0;
        *(v8 + 240) = 0;
        *(v8 + 248) = 0;
        v410 = *(v8 + 256);
        v52 = *(v8 + 264);
        v412 = *(v8 + 280);
        __p = v52;
        *(v8 + 264) = 0;
        *(v8 + 272) = 0;
        *(v8 + 280) = 0;
        v413 = 0uLL;
        v414 = 0;
        v413 = *(v8 + 288);
        v414 = *(v8 + 304);
        *(v8 + 288) = 0;
        *(v8 + 296) = 0;
        *(v8 + 304) = 0;
        v415 = 1;
      }

      v416[0] = *(v8 + 320);
      *&v416[1] = *(v8 + 336);
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      if (*(v8 + 656) != 1)
      {
        v74 = (v8 + 344);
        goto LABEL_95;
      }

      if (v404 >= 0)
      {
        v53 = HIBYTE(v404);
      }

      else
      {
        v53 = *(&v403 + 1);
      }

      if (v404 >= 0)
      {
        v54 = &v403;
      }

      else
      {
        v54 = v403;
      }

      v55 = (v8 + 1000);
      while (1)
      {
        if (!v46)
        {
          goto LABEL_88;
        }

        v56 = *(v55 - 481);
        v57 = v56 >= 0 ? *(v55 - 481) : *(v55 - 62);
        v58 = v56 >= 0 ? v55 - 504 : *(v55 - 63);
        if (v57 != v53 || memcmp(v58, v54, v53))
        {
          break;
        }

        if (*(v55 - 142) <= v45)
        {
          goto LABEL_91;
        }

LABEL_88:
        v62 = *v55;
        v55 += 344;
        if ((v62 & 1) == 0)
        {
          v74 = v55 - 656;
          goto LABEL_131;
        }
      }

      if (v57 >= v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = v57;
      }

      v60 = memcmp(v54, v58, v59);
      v61 = v53 < v57;
      if (v60)
      {
        v61 = v60 < 0;
      }

      if (v61)
      {
        goto LABEL_88;
      }

LABEL_91:
      v63 = v55 - 1000 == v9;
      v74 = v55 - 656;
      if (!v63)
      {
        while (1)
        {
LABEL_131:
          if (*(v7 + 312) == 1)
          {
            if (!v46)
            {
              goto LABEL_149;
            }

            v75 = *(v7 + 175);
            if (v75 >= 0)
            {
              v76 = *(v7 + 175);
            }

            else
            {
              v76 = *(v7 + 160);
            }

            if (v75 >= 0)
            {
              v77 = (v7 + 152);
            }

            else
            {
              v77 = *(v7 + 152);
            }

            if (v76 == v53 && !memcmp(v77, v54, v53))
            {
              if (*(v7 + 88) > v45)
              {
                goto LABEL_149;
              }
            }

            else
            {
              if (v76 >= v53)
              {
                v78 = v53;
              }

              else
              {
                v78 = v76;
              }

              v79 = memcmp(v54, v77, v78);
              v80 = v53 < v76;
              if (v79)
              {
                v80 = v79 < 0;
              }

              if (v80)
              {
                goto LABEL_149;
              }
            }
          }

          v7 -= 344;
        }
      }

LABEL_95:
      if (v74 < v6)
      {
        if (v404 >= 0)
        {
          v64 = HIBYTE(v404);
        }

        else
        {
          v64 = *(&v403 + 1);
        }

        if (v404 >= 0)
        {
          v65 = &v403;
        }

        else
        {
          v65 = v403;
        }

        while (1)
        {
          if (*(v7 + 312) == 1)
          {
            if (!v46)
            {
              goto LABEL_149;
            }

            v66 = *(v7 + 175);
            if (v66 >= 0)
            {
              v67 = *(v7 + 175);
            }

            else
            {
              v67 = *(v7 + 160);
            }

            if (v66 >= 0)
            {
              v68 = (v7 + 152);
            }

            else
            {
              v68 = *(v7 + 152);
            }

            if (v67 == v64 && !memcmp(v68, v65, v64))
            {
              if (*(v7 + 88) > v45 || v74 >= v7)
              {
                goto LABEL_149;
              }
            }

            else
            {
              if (v67 >= v64)
              {
                v69 = v64;
              }

              else
              {
                v69 = v67;
              }

              v70 = memcmp(v65, v68, v69);
              v71 = v64 >= v67;
              if (v70)
              {
                v71 = v70 >= 0;
              }

              if (!v71 || v74 >= v7)
              {
LABEL_149:
                v366 = v7;
                goto LABEL_151;
              }
            }
          }

          else if (v74 >= v7)
          {
            goto LABEL_149;
          }

          v7 -= 344;
        }
      }

      v366 = v6;
LABEL_151:
      v8 = v74;
      v365 = v74;
      if (v74 >= v366)
      {
        goto LABEL_208;
      }

      v8 = v74;
      v81 = v366;
      while (2)
      {
        std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v81);
        v82 = v8 + 344;
        v83 = v415;
        v84 = HIBYTE(v404);
        v85 = *(&v403 + 1);
        v86 = v403;
        v87 = v397;
        if ((*(v8 + 656) & 1) == 0)
        {
          v8 += 344;
          goto LABEL_183;
        }

        if (v404 >= 0)
        {
          v88 = HIBYTE(v404);
        }

        else
        {
          v88 = *(&v403 + 1);
        }

        v370 = v403;
        if (v404 >= 0)
        {
          v89 = &v403;
        }

        else
        {
          v89 = v403;
        }

        v90 = (v8 + 1000);
        while (2)
        {
          if ((v83 & 1) == 0)
          {
            goto LABEL_176;
          }

          v91 = *(v90 - 481);
          if (v91 >= 0)
          {
            v92 = *(v90 - 481);
          }

          else
          {
            v92 = *(v90 - 62);
          }

          if (v91 >= 0)
          {
            v93 = v90 - 504;
          }

          else
          {
            v93 = *(v90 - 63);
          }

          if (v92 == v88 && !memcmp(v93, v89, v88))
          {
            if (*(v90 - 142) <= v87)
            {
              v83 = 1;
              v8 = v82;
              goto LABEL_182;
            }

            goto LABEL_176;
          }

          if (v92 >= v88)
          {
            v94 = v88;
          }

          else
          {
            v94 = v92;
          }

          v95 = memcmp(v89, v93, v94);
          v96 = v88 < v92;
          if (v95)
          {
            v96 = v95 < 0;
          }

          if (v96)
          {
LABEL_176:
            v82 += 344;
            v97 = *v90;
            v90 += 344;
            if ((v97 & 1) == 0)
            {
              v8 = (v90 - 656);
              goto LABEL_182;
            }

            continue;
          }

          break;
        }

        v8 = (v90 - 656);
        v83 = 1;
LABEL_182:
        v86 = v370;
LABEL_183:
        if ((v84 & 0x80u) == 0)
        {
          v98 = v84;
        }

        else
        {
          v98 = v85;
        }

        if ((v84 & 0x80u) == 0)
        {
          v99 = &v403;
        }

        else
        {
          v99 = v86;
        }

        while (1)
        {
          do
          {
            v81 -= 344;
          }

          while (*(v81 + 312) != 1);
          if ((v83 & 1) == 0)
          {
            break;
          }

          v100 = *(v81 + 175);
          if (v100 >= 0)
          {
            v101 = *(v81 + 175);
          }

          else
          {
            v101 = *(v81 + 160);
          }

          if (v100 >= 0)
          {
            v102 = (v81 + 152);
          }

          else
          {
            v102 = *(v81 + 152);
          }

          if (v101 == v98 && !memcmp(v102, v99, v98))
          {
            if (*(v81 + 88) > v87)
            {
              break;
            }
          }

          else
          {
            if (v101 >= v98)
            {
              v103 = v98;
            }

            else
            {
              v103 = v101;
            }

            v104 = memcmp(v99, v102, v103);
            v105 = v98 < v101;
            if (v104)
            {
              v105 = v104 < 0;
            }

            if (v105)
            {
              break;
            }
          }
        }

        if (v8 < v81)
        {
          continue;
        }

        break;
      }

LABEL_208:
      v6 = a2;
      v5 = v369;
      v7 = a2 - 344;
      a3 = v364;
      if (v8 - 344 != v369)
      {
        sirinluinternal::MatchingSpan::operator=();
        *(v369 + 88) = *(v8 - 256);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v369 + 96, v8 - 248);
        v106 = *(v369 + 320);
        if (v106)
        {
          *(v369 + 328) = v106;
          operator delete(v106);
          *(v369 + 320) = 0;
          *(v369 + 328) = 0;
          *(v369 + 336) = 0;
        }

        v107 = (v8 - 24);
        *(v369 + 320) = *(v8 - 24);
        *(v369 + 336) = *(v8 - 8);
        *v107 = 0;
        v107[1] = 0;
        v107[2] = 0;
      }

      sirinluinternal::MatchingSpan::operator=();
      *(v8 - 256) = v397;
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v8 - 248, &v398);
      v108 = *(v8 - 24);
      if (v108)
      {
        *(v8 - 16) = v108;
        operator delete(v108);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      *(v8 - 24) = v416[0];
      *(v8 - 8) = *&v416[1];
      memset(v416, 0, 24);
      if (v415 == 1)
      {
        v373[0] = &v413;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v373);
        if (SHIBYTE(v412) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v409) < 0)
        {
          operator delete(v408);
        }

        v373[0] = &v406;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v373);
        if (SHIBYTE(v404) < 0)
        {
          operator delete(v403);
        }

        if (SHIBYTE(v402) < 0)
        {
          operator delete(v401);
        }

        if (SHIBYTE(v400) < 0)
        {
          operator delete(v399);
        }
      }

      MEMORY[0x223DC1950](v396);
      if (v365 < v366)
      {
LABEL_228:
        result = std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(v369, v8 - 344, v364, a4 & 1);
        a4 = 0;
      }

      else
      {
        v109 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(v369, v8 - 344);
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(v8, a2);
        if (result)
        {
          a2 = v8 - 344;
          if (v109)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v109)
        {
          goto LABEL_228;
        }
      }
    }

    else
    {
LABEL_33:
      MEMORY[0x223DC1920](v396, v8);
      v22 = *(v8 + 88);
      v397 = v22;
      LOBYTE(v398) = 0;
      v415 = 0;
      v23 = *(v8 + 312);
      if ((v23 & 1) == 0)
      {
        v110 = v8;
        v30 = (v8 + 320);
        v416[0] = *(v8 + 320);
        v31 = (v8 + 336);
        *&v416[1] = *(v8 + 336);
        *(v8 + 320) = 0;
        *(v8 + 328) = 0;
        *(v8 + 336) = 0;
        goto LABEL_230;
      }

      v398 = *(v8 + 96);
      v24 = *(v8 + 120);
      v399 = *(v8 + 104);
      v400 = v24;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = 0;
      v25 = *(v8 + 144);
      v401 = *(v8 + 128);
      v402 = v25;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v26 = *(v8 + 152);
      v404 = *(v8 + 168);
      v403 = v26;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      v27 = *(v8 + 176);
      *(v405 + 12) = *(v8 + 188);
      v405[0] = v27;
      v407 = 0;
      v406 = 0uLL;
      v406 = *(v8 + 208);
      v407 = *(v8 + 224);
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 224) = 0;
      v28 = *(v8 + 232);
      v409 = *(v8 + 248);
      v408 = v28;
      *(v8 + 232) = 0;
      *(v8 + 240) = 0;
      *(v8 + 248) = 0;
      v410 = *(v8 + 256);
      v29 = *(v8 + 264);
      v412 = *(v8 + 280);
      __p = v29;
      *(v8 + 264) = 0;
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
      v413 = 0uLL;
      v414 = 0;
      v413 = *(v8 + 288);
      v414 = *(v8 + 304);
      *(v8 + 288) = 0;
      *(v8 + 296) = 0;
      *(v8 + 304) = 0;
      v415 = 1;
      v30 = (v8 + 320);
      v416[0] = *(v8 + 320);
      v31 = (v8 + 336);
      *&v416[1] = *(v8 + 336);
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      v32 = HIBYTE(v404);
      if ((*(a2 - 32) & 1) == 0)
      {
        v34 = *(&v403 + 1);
        v35 = v403;
        goto LABEL_270;
      }

      v33 = (v8 + 336);
      v34 = *(&v403 + 1);
      v35 = v403;
      if (v404 >= 0)
      {
        v36 = HIBYTE(v404);
      }

      else
      {
        v36 = *(&v403 + 1);
      }

      v37 = *(a2 - 169);
      v38 = *(a2 - 192);
      if (v37 >= 0)
      {
        v39 = *(a2 - 169);
      }

      else
      {
        v39 = *(a2 - 184);
      }

      if (v36 == v39)
      {
        if (v404 >= 0)
        {
          v40 = &v403;
        }

        else
        {
          v40 = v403;
        }

        if (v37 >= 0)
        {
          v41 = (a2 - 192);
        }

        else
        {
          v41 = *(a2 - 192);
        }

        if (!memcmp(v40, v41, v36))
        {
          v31 = v33;
          if (v22 <= *(a2 - 256))
          {
            goto LABEL_387;
          }

          goto LABEL_270;
        }
      }

      else
      {
        if (v37 >= 0)
        {
          v41 = (a2 - 192);
        }

        else
        {
          v41 = *(a2 - 192);
        }

        if (v404 >= 0)
        {
          v40 = &v403;
        }

        else
        {
          v40 = v403;
        }
      }

      if (v36 >= v39)
      {
        v119 = v39;
      }

      else
      {
        v119 = v36;
      }

      v120 = memcmp(v41, v40, v119);
      v121 = v39 < v36;
      if (v120)
      {
        v121 = v120 < 0;
      }

      v31 = v33;
      if (!v121)
      {
LABEL_387:
        v110 = v369;
LABEL_230:
        v8 = v110 + 344;
        if (v110 + 344 < a2)
        {
          if (v404 >= 0)
          {
            v111 = HIBYTE(v404);
          }

          else
          {
            v111 = *(&v403 + 1);
          }

          if (v404 >= 0)
          {
            v112 = &v403;
          }

          else
          {
            v112 = v403;
          }

          while (1)
          {
            if (v23)
            {
              if (*(v8 + 312) != 1)
              {
                goto LABEL_296;
              }

              v113 = *(v8 + 175);
              if (v113 >= 0)
              {
                v114 = *(v8 + 175);
              }

              else
              {
                v114 = *(v8 + 160);
              }

              if (v113 >= 0)
              {
                v115 = (v8 + 152);
              }

              else
              {
                v115 = *(v8 + 152);
              }

              if (v111 == v114 && !memcmp(v112, v115, v111))
              {
                if (v22 > *(v8 + 88))
                {
                  goto LABEL_296;
                }
              }

              else
              {
                if (v111 >= v114)
                {
                  v116 = v114;
                }

                else
                {
                  v116 = v111;
                }

                v117 = memcmp(v115, v112, v116);
                v118 = v114 < v111;
                if (v117)
                {
                  v118 = v117 < 0;
                }

                if (v118)
                {
                  goto LABEL_296;
                }
              }
            }

            v8 += 344;
            if (v8 >= a2)
            {
              goto LABEL_296;
            }
          }
        }

        goto LABEL_296;
      }

LABEL_270:
      if ((v32 & 0x80u) == 0)
      {
        v122 = v32;
      }

      else
      {
        v122 = v34;
      }

      if ((v32 & 0x80u) == 0)
      {
        v123 = &v403;
      }

      else
      {
        v123 = v35;
      }

      v8 = v369 + 344;
      if (*(v369 + 656) == 1)
      {
        v124 = (v369 + 1000);
        while (1)
        {
          v125 = *(v124 - 481);
          if (v125 >= 0)
          {
            v126 = *(v124 - 481);
          }

          else
          {
            v126 = *(v124 - 62);
          }

          if (v125 >= 0)
          {
            v127 = v124 - 504;
          }

          else
          {
            v127 = *(v124 - 63);
          }

          if (v122 == v126 && !memcmp(v123, v127, v122))
          {
            if (v22 > *(v124 - 142))
            {
LABEL_295:
              v8 = (v124 - 656);
              break;
            }
          }

          else
          {
            if (v122 >= v126)
            {
              v128 = v126;
            }

            else
            {
              v128 = v122;
            }

            v129 = memcmp(v127, v123, v128);
            v130 = v126 < v122;
            if (v129)
            {
              v130 = v129 < 0;
            }

            if (v130)
            {
              break;
            }
          }

          v8 += 344;
          v131 = *v124;
          v124 += 344;
          if ((v131 & 1) == 0)
          {
            goto LABEL_295;
          }
        }
      }

LABEL_296:
      if (v8 >= a2)
      {
        i = a2;
      }

      else
      {
        i = a2 - 344;
      }

      if (v8 < a2 && v23)
      {
        if (v404 >= 0)
        {
          v133 = HIBYTE(v404);
        }

        else
        {
          v133 = *(&v403 + 1);
        }

        if (v404 >= 0)
        {
          v134 = &v403;
        }

        else
        {
          v134 = v403;
        }

        for (i = a2 - 344; ; i -= 344)
        {
          if (*(i + 312) == 1)
          {
            v135 = *(i + 175);
            if (v135 >= 0)
            {
              v136 = *(i + 175);
            }

            else
            {
              v136 = *(i + 160);
            }

            if (v135 >= 0)
            {
              v137 = (i + 152);
            }

            else
            {
              v137 = *(i + 152);
            }

            if (v133 == v136 && !memcmp(v134, v137, v133))
            {
              if (v22 <= *(i + 88))
              {
                break;
              }
            }

            else
            {
              if (v133 >= v136)
              {
                v138 = v136;
              }

              else
              {
                v138 = v133;
              }

              v139 = memcmp(v137, v134, v138);
              v140 = v136 < v133;
              if (v139)
              {
                v140 = v139 < 0;
              }

              if (!v140)
              {
                break;
              }
            }
          }
        }
      }

LABEL_368:
      while (v8 < i)
      {
        std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, i);
        v141 = v415;
        if (v404 >= 0)
        {
          v142 = HIBYTE(v404);
        }

        else
        {
          v142 = *(&v403 + 1);
        }

        if (v404 >= 0)
        {
          v143 = &v403;
        }

        else
        {
          v143 = v403;
        }

        v144 = v397;
        do
        {
          while (1)
          {
            do
            {
              v8 += 344;
            }

            while (!v141);
            if (*(v8 + 312) != 1)
            {
              goto LABEL_351;
            }

            v145 = *(v8 + 175);
            v146 = v145 >= 0 ? *(v8 + 175) : *(v8 + 160);
            v147 = v145 >= 0 ? (v8 + 152) : *(v8 + 152);
            if (v142 != v146 || memcmp(v143, v147, v142))
            {
              break;
            }

            if (v144 > *(v8 + 88))
            {
              goto LABEL_351;
            }
          }

          if (v142 >= v146)
          {
            v148 = v146;
          }

          else
          {
            v148 = v142;
          }

          v149 = memcmp(v147, v143, v148);
          v150 = v146 < v142;
          if (v149)
          {
            v150 = v149 < 0;
          }
        }

        while (!v150);
        do
        {
          while (1)
          {
            do
            {
LABEL_351:
              i -= 344;
            }

            while (*(i + 312) != 1);
            v151 = *(i + 175);
            v152 = v151 >= 0 ? *(i + 175) : *(i + 160);
            v153 = v151 >= 0 ? (i + 152) : *(i + 152);
            if (v142 != v152 || memcmp(v143, v153, v142))
            {
              break;
            }

            if (v144 <= *(i + 88))
            {
              goto LABEL_368;
            }
          }

          if (v142 >= v152)
          {
            v154 = v152;
          }

          else
          {
            v154 = v142;
          }

          v155 = memcmp(v153, v143, v154);
          v156 = v152 < v142;
          if (v155)
          {
            v156 = v155 < 0;
          }
        }

        while (v156);
      }

      v6 = a2;
      v7 = a2 - 344;
      a3 = v364;
      if (v8 - 344 != v369)
      {
        sirinluinternal::MatchingSpan::operator=();
        *(v369 + 88) = *(v8 - 256);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v369 + 96, v8 - 248);
        v157 = *(v369 + 320);
        if (v157)
        {
          *(v369 + 328) = v157;
          operator delete(v157);
          *v30 = 0;
          v30[1] = 0;
          v30[2] = 0;
        }

        v158 = (v8 - 24);
        *v30 = *(v8 - 24);
        *v31 = *(v8 - 8);
        *v158 = 0;
        v158[1] = 0;
        v158[2] = 0;
      }

      sirinluinternal::MatchingSpan::operator=();
      *(v8 - 256) = v397;
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v8 - 248, &v398);
      v159 = *(v8 - 24);
      if (v159)
      {
        *(v8 - 16) = v159;
        operator delete(v159);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      *(v8 - 24) = v416[0];
      *(v8 - 8) = *&v416[1];
      memset(v416, 0, 24);
      if (v415 == 1)
      {
        v373[0] = &v413;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v373);
        if (SHIBYTE(v412) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v409) < 0)
        {
          operator delete(v408);
        }

        v373[0] = &v406;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v373);
        if (SHIBYTE(v404) < 0)
        {
          operator delete(v403);
        }

        if (SHIBYTE(v402) < 0)
        {
          operator delete(v401);
        }

        if (SHIBYTE(v400) < 0)
        {
          operator delete(v399);
        }
      }

      result = MEMORY[0x223DC1950](v396);
      a4 = 0;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (v8 == v6)
    {
      return result;
    }

    v328 = v8 + 344;
    if (v8 + 344 == a2)
    {
      return result;
    }

    for (j = (v8 + 680); ; j += 43)
    {
      v330 = v9;
      v9 = v328;
      v331 = a2;
      if (*(v330 + 656) == 1)
      {
        if (*(v330 + 312) != 1)
        {
          goto LABEL_824;
        }

        v332 = v328;
        v333 = *(v330 + 152);
        v334 = *(v330 + 519);
        v335 = *(v330 + 496);
        if (v334 >= 0)
        {
          v336 = *(v330 + 519);
        }

        else
        {
          v336 = *(v330 + 504);
        }

        v337 = *(v330 + 175);
        if (v337 >= 0)
        {
          v338 = *(v330 + 175);
        }

        else
        {
          v338 = *(v330 + 160);
        }

        if (v336 != v338)
        {
          if (v337 >= 0)
          {
            v340 = (v330 + 152);
          }

          else
          {
            v340 = *(v330 + 152);
          }

          if (v334 >= 0)
          {
            v339 = (v330 + 496);
          }

          else
          {
            v339 = *(v330 + 496);
          }

LABEL_818:
          if (v336 >= v338)
          {
            v341 = v338;
          }

          else
          {
            v341 = v336;
          }

          result = memcmp(v340, v339, v341);
          v342 = v338 < v336;
          if (result)
          {
            v342 = result < 0;
          }

          v9 = v332;
          if (!v342)
          {
            goto LABEL_874;
          }

LABEL_824:
          v343 = (v330 + 552);
          MEMORY[0x223DC1920](v396, v9);
          v397 = *(v330 + 432);
          LOBYTE(v398) = 0;
          v415 = 0;
          if (*(v330 + 656) == 1)
          {
            v398 = *(v330 + 440);
            v399 = *(v330 + 448);
            v400 = *(v330 + 464);
            *(v330 + 456) = 0u;
            *(v330 + 448) = 0;
            v402 = *(v330 + 488);
            v401 = *(v330 + 472);
            *(v330 + 472) = 0;
            v344 = *(v330 + 496);
            v404 = *(v330 + 512);
            v403 = v344;
            *(v330 + 512) = 0;
            *(v330 + 480) = 0u;
            *(v330 + 496) = 0u;
            v345 = *(v330 + 520);
            *(v405 + 12) = *(v330 + 532);
            v405[0] = v345;
            v406 = *v343;
            v407 = *(v330 + 568);
            *v343 = 0u;
            *(v330 + 568) = 0;
            v409 = *(v330 + 592);
            v408 = *(v330 + 576);
            *(v330 + 592) = 0;
            *(v330 + 576) = 0u;
            v410 = *(v330 + 600);
            __p = *(v330 + 608);
            v412 = *(v330 + 624);
            *(v330 + 624) = 0;
            *(v330 + 608) = 0u;
            v413 = *(v330 + 632);
            v414 = *(v330 + 648);
            *(v330 + 632) = 0;
            *(v330 + 640) = 0;
            *(v330 + 648) = 0;
            v415 = 1;
          }

          v416[0] = *(v330 + 664);
          *&v416[1] = *(v330 + 680);
          *(v330 + 664) = 0;
          *(v330 + 672) = 0;
          *(v330 + 680) = 0;
          v346 = j;
          while (2)
          {
            sirinluinternal::MatchingSpan::operator=();
            *(v346 - 62) = *(v346 - 148);
            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v346 - 30), (v346 - 73));
            v347 = *(v346 - 2);
            if (v347)
            {
              *(v346 - 1) = v347;
              operator delete(v347);
              *v346 = 0;
            }

            v348 = (v346 - 45);
            *(v346 - 1) = *(v346 - 45);
            *v346 = *(v346 - 43);
            *v348 = 0;
            v348[1] = 0;
            v348[2] = 0;
            if (v415 != 1)
            {
LABEL_860:
              sirinluinternal::MatchingSpan::operator=();
              *(v346 - 148) = v397;
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v346 - 73), &v398);
              v359 = *v348;
              if (*v348)
              {
                *(v346 - 44) = v359;
                operator delete(v359);
                *v348 = 0;
                *(v346 - 44) = 0;
                *(v346 - 43) = 0;
              }

              *v348 = v416[0];
              *(v346 - 43) = *&v416[1];
              memset(v416, 0, 24);
              v331 = a2;
              if (v415 == 1)
              {
                v373[0] = &v413;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v373);
                if (SHIBYTE(v412) < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v409) < 0)
                {
                  operator delete(v408);
                }

                v373[0] = &v406;
                std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v373);
                if (SHIBYTE(v404) < 0)
                {
                  operator delete(v403);
                }

                if (SHIBYTE(v402) < 0)
                {
                  operator delete(v401);
                }

                if (SHIBYTE(v400) < 0)
                {
                  operator delete(v399);
                }
              }

              result = MEMORY[0x223DC1950](v396);
              goto LABEL_874;
            }

            if (*(v346 - 712) == 1)
            {
              v349 = v346 - 109;
              if (v404 >= 0)
              {
                v350 = HIBYTE(v404);
              }

              else
              {
                v350 = *(&v403 + 1);
              }

              v351 = *(v346 - 849);
              if (v351 >= 0)
              {
                v352 = *(v346 - 849);
              }

              else
              {
                v352 = *(v346 - 108);
              }

              v353 = *v349;
              if (v350 == v352)
              {
                if (v404 >= 0)
                {
                  v354 = &v403;
                }

                else
                {
                  v354 = v403;
                }

                if (v351 >= 0)
                {
                  v355 = v346 - 109;
                }

                else
                {
                  v355 = *v349;
                }

                if (!memcmp(v354, v355, v350))
                {
                  if (v397 <= *(v346 - 234))
                  {
                    goto LABEL_860;
                  }

                  goto LABEL_859;
                }
              }

              else
              {
                if (v351 >= 0)
                {
                  v355 = v346 - 109;
                }

                else
                {
                  v355 = *v349;
                }

                if (v404 >= 0)
                {
                  v354 = &v403;
                }

                else
                {
                  v354 = v403;
                }
              }

              if (v350 >= v352)
              {
                v356 = v352;
              }

              else
              {
                v356 = v350;
              }

              v357 = memcmp(v355, v354, v356);
              v358 = v352 < v350;
              if (v357)
              {
                v358 = v357 < 0;
              }

              if (!v358)
              {
                goto LABEL_860;
              }
            }

LABEL_859:
            v346 -= 43;
            continue;
          }
        }

        if (v334 >= 0)
        {
          v339 = (v330 + 496);
        }

        else
        {
          v339 = *(v330 + 496);
        }

        if (v337 >= 0)
        {
          v340 = (v330 + 152);
        }

        else
        {
          v340 = *(v330 + 152);
        }

        result = memcmp(v339, v340, v336);
        if (result)
        {
          goto LABEL_818;
        }

        v9 = v332;
        if (*(v330 + 432) > *(v330 + 88))
        {
          goto LABEL_824;
        }
      }

LABEL_874:
      v328 = v9 + 344;
      if (v9 + 344 == v331)
      {
        return result;
      }
    }
  }

  if (v8 == v6)
  {
    return result;
  }

  v168 = v8 + 344;
  if (v8 + 344 == a2)
  {
    return result;
  }

  v169 = 0;
  v170 = v9;
  while (2)
  {
    v171 = v170;
    v170 = v168;
    if (*(v171 + 656) != 1)
    {
      goto LABEL_498;
    }

    if (*(v171 + 312) == 1)
    {
      v172 = *(v171 + 152);
      v173 = *(v171 + 519);
      v174 = *(v171 + 496);
      if (v173 >= 0)
      {
        v175 = *(v171 + 519);
      }

      else
      {
        v175 = *(v171 + 504);
      }

      v176 = *(v171 + 175);
      if (v176 >= 0)
      {
        v177 = *(v171 + 175);
      }

      else
      {
        v177 = *(v171 + 160);
      }

      if (v175 == v177)
      {
        if (v173 >= 0)
        {
          v178 = (v171 + 496);
        }

        else
        {
          v178 = *(v171 + 496);
        }

        if (v176 >= 0)
        {
          v179 = (v171 + 152);
        }

        else
        {
          v179 = *(v171 + 152);
        }

        result = memcmp(v178, v179, v175);
        if (!result)
        {
          if (*(v171 + 432) <= *(v171 + 88))
          {
            goto LABEL_498;
          }

          goto LABEL_445;
        }
      }

      else
      {
        if (v176 >= 0)
        {
          v179 = (v171 + 152);
        }

        else
        {
          v179 = *(v171 + 152);
        }

        if (v173 >= 0)
        {
          v178 = (v171 + 496);
        }

        else
        {
          v178 = *(v171 + 496);
        }
      }

      if (v175 >= v177)
      {
        v180 = v177;
      }

      else
      {
        v180 = v175;
      }

      result = memcmp(v179, v178, v180);
      v181 = v177 < v175;
      if (result)
      {
        v181 = result < 0;
      }

      if (!v181)
      {
        goto LABEL_498;
      }
    }

LABEL_445:
    v182 = (v171 + 552);
    MEMORY[0x223DC1920](v396, v170);
    v397 = *(v171 + 432);
    LOBYTE(v398) = 0;
    v415 = 0;
    if (*(v171 + 656) == 1)
    {
      v398 = *(v171 + 440);
      v399 = *(v171 + 448);
      v400 = *(v171 + 464);
      *(v171 + 456) = 0u;
      *(v171 + 448) = 0;
      v402 = *(v171 + 488);
      v401 = *(v171 + 472);
      *(v171 + 472) = 0;
      v183 = *(v171 + 496);
      v404 = *(v171 + 512);
      v403 = v183;
      *(v171 + 512) = 0;
      *(v171 + 480) = 0u;
      *(v171 + 496) = 0u;
      v184 = *(v171 + 520);
      *(v405 + 12) = *(v171 + 532);
      v405[0] = v184;
      v406 = *v182;
      v407 = *(v171 + 568);
      *v182 = 0u;
      *(v171 + 568) = 0;
      v409 = *(v171 + 592);
      v408 = *(v171 + 576);
      *(v171 + 592) = 0;
      *(v171 + 576) = 0u;
      v410 = *(v171 + 600);
      __p = *(v171 + 608);
      v412 = *(v171 + 624);
      *(v171 + 624) = 0;
      *(v171 + 608) = 0u;
      v413 = *(v171 + 632);
      v414 = *(v171 + 648);
      *(v171 + 632) = 0;
      *(v171 + 640) = 0;
      *(v171 + 648) = 0;
      v415 = 1;
    }

    v416[0] = *(v171 + 664);
    *&v416[1] = *(v171 + 680);
    *(v171 + 664) = 0;
    *(v171 + 672) = 0;
    *(v171 + 680) = 0;
    v185 = v169;
    while (2)
    {
      v186 = v369 + v185;
      sirinluinternal::MatchingSpan::operator=();
      *(v186 + 432) = *(v186 + 88);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v186 + 440, v186 + 96);
      v187 = *(v369 + v185 + 664);
      if (v187)
      {
        *(v186 + 672) = v187;
        operator delete(v187);
        *(v186 + 680) = 0;
      }

      *(v186 + 664) = *(v186 + 320);
      *(v186 + 680) = *(v186 + 336);
      *(v186 + 320) = 0;
      *(v186 + 328) = 0;
      *(v186 + 336) = 0;
      if (v185)
      {
        if (v415 != 1)
        {
          goto LABEL_482;
        }

        v188 = v369 + v185;
        if (*(v369 + v185 - 32) == 1)
        {
          v191 = *(v188 - 192);
          v189 = v188 - 192;
          v190 = v191;
          if (v404 >= 0)
          {
            v192 = HIBYTE(v404);
          }

          else
          {
            v192 = *(&v403 + 1);
          }

          v193 = *(v189 + 23);
          if (v193 >= 0)
          {
            v194 = *(v189 + 23);
          }

          else
          {
            v194 = *(v189 + 8);
          }

          if (v192 == v194)
          {
            if (v404 >= 0)
            {
              v195 = &v403;
            }

            else
            {
              v195 = v403;
            }

            if (v193 >= 0)
            {
              v196 = v189;
            }

            else
            {
              v196 = v190;
            }

            if (!memcmp(v195, v196, v192))
            {
              if (v397 <= *(v369 + v185 - 256))
              {
                goto LABEL_482;
              }

              goto LABEL_481;
            }
          }

          else
          {
            if (v193 >= 0)
            {
              v196 = v189;
            }

            else
            {
              v196 = v190;
            }

            if (v404 >= 0)
            {
              v195 = &v403;
            }

            else
            {
              v195 = v403;
            }
          }

          if (v192 >= v194)
          {
            v197 = v194;
          }

          else
          {
            v197 = v192;
          }

          v198 = memcmp(v196, v195, v197);
          v199 = v194 < v192;
          if (v198)
          {
            v199 = v198 < 0;
          }

          if (!v199)
          {
LABEL_482:
            v200 = v369 + v185;
            v201 = v369 + v185 + 320;
            v202 = v369 + v185 + 96;
            goto LABEL_484;
          }
        }

LABEL_481:
        v185 -= 344;
        continue;
      }

      break;
    }

    v200 = v369;
    v201 = v369 + 320;
    v202 = v369 + 96;
LABEL_484:
    sirinluinternal::MatchingSpan::operator=();
    *(v200 + 88) = v397;
    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v202, &v398);
    v203 = *v201;
    if (*v201)
    {
      *(v200 + 328) = v203;
      operator delete(v203);
      *v201 = 0;
      *(v201 + 8) = 0;
      *(v201 + 16) = 0;
    }

    *v201 = *&v416[0];
    *(v200 + 328) = *(v416 + 8);
    memset(v416, 0, 24);
    if (v415 == 1)
    {
      v373[0] = &v413;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v373);
      if (SHIBYTE(v412) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v409) < 0)
      {
        operator delete(v408);
      }

      v373[0] = &v406;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v373);
      if (SHIBYTE(v404) < 0)
      {
        operator delete(v403);
      }

      if (SHIBYTE(v402) < 0)
      {
        operator delete(v401);
      }

      if (SHIBYTE(v400) < 0)
      {
        operator delete(v399);
      }
    }

    result = MEMORY[0x223DC1950](v396);
LABEL_498:
    v168 = v170 + 344;
    v169 += 344;
    if (v170 + 344 != a2)
    {
      continue;
    }

    return result;
  }
}