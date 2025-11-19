void **std::vector<std::vector<std::string>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::string>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<long>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void CoreNLP::TransferSeqTagModel::createBatchForDataType(void *a1, unsigned int a2)
{
  v2 = &a1[3 * a2];
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2 + 1;
  if (v3 != v4)
  {
    v7 = a1[82];
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3);
    v9 = applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(v7, &CoreNLP::kNLModelTrainerBatchSizeKey);
    v41 = 0;
    v42 = 0;
    if ((v9 & 0x100000000) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 32;
    }

    v43 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v10 <= v8)
    {
      v11 = 0;
      v12 = v10;
      v13 = 104 * v10;
      v14 = &a1[3 * a2];
      v15 = v8;
      v16 = v10 << 32;
      v17 = v10;
      do
      {
        v18 = *v5 + 104 * SHIDWORD(v11);
        memset(v28, 0, sizeof(v28));
        std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>,std::__wrap_iter<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>>(v28, v18, v18 + v13, v12);
        memset(v27, 0, sizeof(v27));
        memset(v26, 0, sizeof(v26));
        CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(a1, v28, v27, v26, &v41, &v38, &v35, &v32, &v29);
        std::vector<std::vector<std::vector<std::string>>>::push_back[abi:ne200100]((v14 + 12), v27);
        std::vector<std::vector<std::vector<std::vector<int>>>>::push_back[abi:ne200100]((v14 + 21), v26);
        v44 = v26;
        std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v44);
        v26[0] = v27;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v26);
        v27[0] = v28;
        std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](v27);
        v17 += v12;
        v11 += v16;
      }

      while (v17 <= v15);
    }

    v19 = &a1[3 * a2 + 30];
    if (v19 != &v41)
    {
      std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v19, v41, v42, 0xAAAAAAAAAAAAAAABLL * (v42 - v41));
    }

    v20 = &a1[3 * a2 + 39];
    if (v20 != &v38)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v20, v38, v39, (v39 - v38) >> 2);
    }

    v21 = &a1[3 * a2 + 66];
    if (v21 != &v35)
    {
      std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v21, v35, v36, 0xAAAAAAAAAAAAAAABLL * (v36 - v35));
    }

    v22 = &a1[3 * a2 + 48];
    if (v22 != &v32)
    {
      std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v22, v32, v33, 0xAAAAAAAAAAAAAAABLL * (v33 - v32));
    }

    v23 = &a1[3 * a2 + 57];
    if (v23 != &v29)
    {
      std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v23, v29, v30, 0xAAAAAAAAAAAAAAABLL * (v30 - v29));
    }

    v28[0] = &v29;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v28);
    v29 = &v32;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v29);
    v32 = &v35;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v32);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    v38 = &v41;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v38);
  }
}

uint64_t std::vector<std::vector<std::vector<std::string>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<std::string>>>::__emplace_back_slow_path<std::vector<std::vector<std::string>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<std::string>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::string>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<std::vector<std::vector<int>>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<std::vector<int>>>>::__emplace_back_slow_path<std::vector<std::vector<std::vector<int>>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<std::vector<int>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::vector<int>>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void CoreNLP::TransferSeqTagModel::endReadSamples(CoreNLP::TransferSeqTagModel *this)
{
  v2 = *(this + 82);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(v2, &CoreNLP::kNLModelTrainerBatchSizeKey);
  v4 = 0;
  if ((v3 & 0x100000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 32;
  }

  v6 = this + 8;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((*&v6[24 * v4 + 8] - *&v6[24 * v4]) >> 3);
    if (v9 < v5)
    {
      v5 = v9;
    }

    v4 = 1;
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  valuePtr = v5;
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  cf = v10;
  if (!v10)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFDictionarySetValue(*(this + 82), @"batchSize", v10);
  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    CoreNLP::TransferSeqTagModel::createBatchForDataType(this, v11);
    std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__base_destruct_at_end[abi:ne200100](&v6[24 * v11], *&v6[24 * v11]);
    v12 = 0;
    *(this + v11 + 20) = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

void CoreNLP::TransferSeqTagModel::loadEmbeddings(CoreNLP::TransferSeqTagModel *this, CFDictionaryRef theDict)
{
  v17 = *MEMORY[0x1E69E9840];
  if (CFDictionaryContainsKey(theDict, @"TransferTaggingEmbeddingVesionKey"))
  {
    Value = CFDictionaryGetValue(theDict, @"TransferTaggingEmbeddingVesionKey");
    v4 = CFDictionaryGetValue(theDict, kNLModelTrainerLanguageKey);
    v5 = CFLocaleCreate(*MEMORY[0x1E695E480], v4);
    keys = kNLStringEmbeddingModelType[0];
    v15 = kNLStringEmbeddingModelLocale[0];
    v16 = kNLStringEmbeddingModelVersion[0];
    values = kNLStringEmbeddingModelTypeContextualWordEmbedding[0];
    v12 = v5;
    v13 = Value;
    CFDictionaryCreate(*MEMORY[0x1E695E4A8], &keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = CFDictionaryGetValue(theDict, kNLModelTrainerEmbeddingArchitectureKey);
    v7 = CFStringCompare(v6, kNLModelTrainerEmbeddingArchitectureMultilingualBERT, 0);
    v8 = &kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey;
    if (v7)
    {
      v8 = &kNLModelTrainerLanguageKey;
    }

    v9 = CFDictionaryGetValue(theDict, *v8);
    v10 = CFLocaleCreate(*MEMORY[0x1E695E480], v9);
    keys = kNLStringEmbeddingModelType[0];
    v15 = kNLStringEmbeddingModelLocale[0];
    v16 = kNLStringEmbeddingContextualModelArchitecture[0];
    values = kNLStringEmbeddingModelTypeContextualWordEmbedding[0];
    v12 = v10;
    v13 = v6;
    CFDictionaryCreate(*MEMORY[0x1E695E4A8], &keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  NLStringEmbeddingCreateWithOptions();
}

void sub_19D1CF1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void nlp::CFScopedPtr<__CFDictionary const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void CoreNLP::TransferSeqTagModel::load(CoreNLP::TransferSeqTagModel *this, const __CFDictionary *a2, const __CFArray *a3)
{
  std::vector<std::string>::clear[abi:ne200100](this + 79);
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 75) = this + 608;
  *(this + 38) = 0u;
  *(this + 84) = *(this + 83);
  Value = CFDictionaryGetValue(a2, kNLModelSampleDataLabelTypesArrayKey);
  Count = CFArrayGetCount(Value);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      v9 = [CFArrayGetValueAtIndex(Value i)];
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v13 = v10;
      if (v10)
      {
        memmove(&__dst, v9, v10);
      }

      *(&__dst + v11) = 0;
      p_dst = &__dst;
      *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 600, &__dst) + 56) = i;
      Count = std::vector<std::string>::push_back[abi:ne200100](this + 632, &__dst);
      if (v13 < 0)
      {
        operator delete(__dst);
      }
    }
  }

  CoreNLP::TransferSeqTagModel::loadEmbeddings(Count, a2);
}

void sub_19D1CF4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x19D1CF488);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::TransferSeqTagModel::copyTrainedDict(CFDictionaryRef *this)
{
  v2 = 0;
  memset(v9, 0, sizeof(v9));
  v3 = (this + 12);
  memset(v8, 0, sizeof(v8));
  v4 = (this + 21);
  v5 = 1;
  do
  {
    v6 = v5;
    std::vector<std::vector<std::vector<std::vector<std::string>>>>::push_back[abi:ne200100](v9, &v3[24 * v2]);
    v7 = std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::push_back[abi:ne200100](v8, &v4[24 * v2]);
    v5 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  CoreNLP::TransferSeqTagModel::loadEmbeddings(v7, this[82]);
}

void sub_19D1CF8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, char a25)
{
  nlp::CFScopedPtr<void *>::reset((v25 - 96), 0);
  *(v25 - 96) = &a22;
  std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  a22 = &a25;
  std::vector<std::vector<std::vector<std::vector<std::string>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<std::vector<std::string>>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<std::vector<std::string>>>>::__emplace_back_slow_path<std::vector<std::vector<std::vector<std::string>>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<std::vector<std::string>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::vector<std::string>>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__emplace_back_slow_path<std::vector<std::vector<std::vector<std::vector<int>>>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::vector<std::vector<int>>>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void CoreNLP::TransferSeqTagModel::inference(uint64_t a1@<X0>, uint64_t *a2@<X1>, CoreNLP *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = *a2;
  v6 = a2[1];
  Dimension = NLStringEmbeddingGetDimension(*(a1 + 712), a2);
  v44 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  LODWORD(v53[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v52, v44 * Dimension);
  LODWORD(v53[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v51, Dimension);
  memset(v50, 0, sizeof(v50));
  std::vector<std::vector<std::string>>::push_back[abi:ne200100](v50, a2);
  v49 = applesauce::CF::details::make_CFArrayRef<std::vector<std::string>>(v50);
  NLStringEmbeddingFillWordVectorsWithShape(*(a1 + 712), v49, 1, v44, v52[0], 0, v51[0], 2);
  CoreNLP::MontrealModel::setInput(*(a1 + 720), 1, v44, v52[0], 0);
  CoreNLP::MontrealModel::predict(*(a1 + 720));
  v9 = CoreNLP::MontrealModel::output(*(a1 + 720), 0);
  cf = v49;
  v10 = CoreNLP::MontrealModel::outputSize(*(a1 + 720));
  if (v44 >= 1)
  {
    v11 = v10;
    v12 = 0;
    do
    {
      __src[0] = 0;
      __src[1] = 0;
      v48 = 0;
      v13 = v11;
      CoreNLP::getTopNIndices(a3, v11, v9, &__p);
      v15 = __p;
      v14 = v46;
      if (__p != v46)
      {
        v16 = __src[1];
        do
        {
          v17 = *v15;
          v18 = v9[*v15];
          if (v16 >= v48)
          {
            v19 = __src[0];
            v20 = v16 - __src[0];
            v21 = (v16 - __src[0]) >> 4;
            v22 = v21 + 1;
            if ((v21 + 1) >> 60)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v23 = v48 - __src[0];
            if ((v48 - __src[0]) >> 3 > v22)
            {
              v22 = v23 >> 3;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF0)
            {
              v24 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(__src, v24);
            }

            v25 = v21;
            v26 = 16 * v21;
            *v26 = v17;
            *(v26 + 8) = v18;
            v16 = (16 * v21 + 16);
            v27 = (v26 - 16 * v25);
            memcpy(v27, v19, v20);
            v28 = __src[0];
            __src[0] = v27;
            __src[1] = v16;
            v48 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v16 = v17;
            v16[1] = v18;
            v16 += 2;
          }

          __src[1] = v16;
          ++v15;
        }

        while (v15 != v14);
      }

      v29 = *(a4 + 8);
      v30 = *(a4 + 16);
      if (v29 >= v30)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a4) >> 3);
        v33 = v32 + 1;
        if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a4) >> 3);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v33;
        }

        v53[4] = a4;
        if (v35)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a4, v35);
        }

        v36 = 24 * v32;
        *v36 = 0;
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        *v36 = *__src;
        *(v36 + 16) = v48;
        __src[0] = 0;
        __src[1] = 0;
        v48 = 0;
        v31 = 24 * v32 + 24;
        v37 = *(a4 + 8) - *a4;
        v38 = v36 - v37;
        memcpy((v36 - v37), *a4, v37);
        v39 = *a4;
        *a4 = v38;
        *(a4 + 8) = v31;
        v40 = *(a4 + 16);
        *(a4 + 16) = 0;
        v53[2] = v39;
        v53[3] = v40;
        v53[0] = v39;
        v53[1] = v39;
        std::__split_buffer<std::vector<long>>::~__split_buffer(v53);
      }

      else
      {
        *v29 = 0;
        v29[1] = 0;
        v29[2] = 0;
        *v29 = *__src;
        v29[2] = v48;
        __src[0] = 0;
        __src[1] = 0;
        v48 = 0;
        v31 = (v29 + 3);
      }

      *(a4 + 8) = v31;
      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }

      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      v11 = v13;
      v9 += v13;
      ++v12;
    }

    while (v12 != v44);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v53[0] = v50;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](v53);
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }
}

void sub_19D1CFE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, __int16 *a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a21);
  a17 = &a22;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

std::string *CoreNLP::TransferSeqTagModel::tagToLabel@<X0>(std::string *this@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if ((a2 & 0x80000000) == 0)
  {
    size = this[26].__r_.__value_.__l.__size_;
    if (0xAAAAAAAAAAAAAAABLL * ((this[26].__r_.__value_.__r.__words[2] - size) >> 3) > a2)
    {
      return std::string::operator=(a3, (size + 24 * a2));
    }
  }

  return this;
}

void sub_19D1CFFB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJiNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEESB_NS3_IiNS7_IiEEEESD_EEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJiSB_SB_SD_SD_EJEJEJRiRKSB_SI_RKSD_SK_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 8, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 32, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_19D1D00B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

__n128 std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>::destroy[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,0>(v5, v4 - 104);
  }
}

void std::allocator_traits<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>::destroy[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3)
  {
    *(a2 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    *(a2 + 64) = v4;
    operator delete(v4);
  }

  v5 = (a2 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a2 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_19D1D0750(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v126 = (a2 - 304);
  v127 = (a2 - 104);
  v125 = (a2 - 296);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (*(a2 - 88) - *(a2 - 96) <= *(a1 + 16) - *(a1 + 8))
        {
          return;
        }

LABEL_121:
        v70 = a1;
LABEL_122:
        v71 = (a2 - 104);
LABEL_123:
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v70, v71);
        return;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,0>(a1, a1 + 104, a1 + 208, v127);
      return;
    }

    if (v10 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,0>(a1, a1 + 104, a1 + 208, a1 + 312);
      if (*(a2 - 88) - *(a2 - 96) <= *(a1 + 328) - *(a1 + 320))
      {
        return;
      }

      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100]((a1 + 312), v127);
      if (*(a1 + 328) - *(a1 + 320) <= *(a1 + 224) - *(a1 + 216))
      {
        return;
      }

      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100]((a1 + 208), (a1 + 312));
      if (*(a1 + 224) - *(a1 + 216) <= *(a1 + 120) - *(a1 + 112))
      {
        return;
      }

      v66 = (a1 + 104);
      v67 = (a1 + 208);
      goto LABEL_196;
    }

LABEL_9:
    if (v9 <= 2495)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v72 = (a1 + 104);
          if (a1 + 104 != a2)
          {
            v73 = 0;
            v74 = a1;
            do
            {
              v75 = v72;
              v77 = *(v74 + 112);
              v76 = *(v74 + 120);
              if ((v76 - v77) > *(v74 + 16) - *(v74 + 8))
              {
                LODWORD(v138) = *v72;
                v139 = v77;
                v140 = v76;
                v141 = *(v74 + 128);
                *(v74 + 120) = 0;
                *(v74 + 128) = 0;
                *(v74 + 112) = 0;
                v142 = *(v74 + 136);
                v78 = *(v74 + 152);
                *(v74 + 136) = 0;
                *(v74 + 144) = 0;
                v144 = *(v74 + 160);
                v79 = *(v74 + 176);
                v143 = v78;
                v145 = v79;
                *(v74 + 152) = 0;
                *(v74 + 160) = 0;
                *(v74 + 168) = 0;
                *(v74 + 176) = 0;
                *__p = *(v74 + 184);
                v147 = *(v74 + 200);
                *(v74 + 184) = 0;
                *(v74 + 192) = 0;
                v80 = v73;
                *(v74 + 200) = 0;
                while (1)
                {
                  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(a1 + v80 + 104, a1 + v80);
                  if (!v80)
                  {
                    break;
                  }

                  v81 = *(a1 + v80 - 88) - *(a1 + v80 - 96);
                  v80 -= 104;
                  if (v140 - v139 <= v81)
                  {
                    v82 = a1 + v80 + 104;
                    goto LABEL_135;
                  }
                }

                v82 = a1;
LABEL_135:
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v82, &v138);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                if (v144)
                {
                  *(&v144 + 1) = v144;
                  operator delete(v144);
                }

                v128 = &v142;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
                v128 = &v139;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
              }

              v72 = v75 + 26;
              v73 += 104;
              v74 = v75;
            }

            while (v75 + 26 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v117 = (a1 + 104);
        if (a1 + 104 != a2)
        {
          do
          {
            v118 = v117;
            v120 = *(a1 + 112);
            v119 = *(a1 + 120);
            if ((v119 - v120) > *(a1 + 16) - *(a1 + 8))
            {
              LODWORD(v138) = *v117;
              v139 = v120;
              v140 = v119;
              v141 = *(a1 + 128);
              *(a1 + 120) = 0;
              *(a1 + 128) = 0;
              *(a1 + 112) = 0;
              v142 = *(a1 + 136);
              v121 = *(a1 + 152);
              *(a1 + 136) = 0;
              *(a1 + 144) = 0;
              v144 = *(a1 + 160);
              v122 = *(a1 + 176);
              v143 = v121;
              v145 = v122;
              *(a1 + 152) = 0;
              *(a1 + 160) = 0;
              *(a1 + 168) = 0;
              *(a1 + 176) = 0;
              *__p = *(a1 + 184);
              v147 = *(a1 + 200);
              *(a1 + 184) = 0;
              *(a1 + 192) = 0;
              *(a1 + 200) = 0;
              do
              {
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(a1 + 104, a1);
                v123 = a1 - 104;
                v124 = *(a1 - 88) - *(a1 - 96);
                a1 -= 104;
              }

              while (v140 - v139 > v124);
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v123 + 104, &v138);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v144)
              {
                *(&v144 + 1) = v144;
                operator delete(v144);
              }

              v128 = &v142;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
              v128 = &v139;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
            }

            v117 = v118 + 26;
            a1 = v118;
          }

          while (v118 + 26 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v83 = v11 >> 1;
        v84 = v11 >> 1;
        do
        {
          v85 = v84;
          if (v83 >= v84)
          {
            v86 = (2 * v84) | 1;
            v87 = (a1 + 104 * v86);
            if (2 * v85 + 2 < v10)
            {
              v88 = v87[2] - v87[1];
              v89 = v87[15] - v87[14];
              v90 = v88 > v89;
              v91 = v88 <= v89 ? 0 : 104;
              v87 = (v87 + v91);
              if (v90)
              {
                v86 = 2 * v85 + 2;
              }
            }

            v92 = a1 + 104 * v85;
            v94 = *(v92 + 8);
            v93 = *(v92 + 16);
            v95 = v93 - v94;
            if (v87[2] - v87[1] <= (v93 - v94))
            {
              LODWORD(v138) = *v92;
              v139 = v94;
              v140 = v93;
              v141 = *(v92 + 24);
              *(v92 + 8) = 0;
              *(v92 + 16) = 0;
              *(v92 + 24) = 0;
              v142 = *(v92 + 32);
              v143 = *(v92 + 48);
              *(v92 + 32) = 0;
              *(v92 + 40) = 0;
              *(v92 + 48) = 0;
              v144 = *(v92 + 56);
              v145 = *(v92 + 72);
              *(v92 + 56) = 0;
              *(v92 + 64) = 0;
              *(v92 + 72) = 0;
              *__p = *(v92 + 80);
              v147 = *(v92 + 96);
              *(v92 + 80) = 0;
              *(v92 + 88) = 0;
              *(v92 + 96) = 0;
              do
              {
                v96 = v87;
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v92, v87);
                if (v83 < v86)
                {
                  break;
                }

                v97 = (2 * v86) | 1;
                v87 = (a1 + 104 * v97);
                if (2 * v86 + 2 < v10)
                {
                  v98 = v87[2] - v87[1];
                  v99 = v87[15] - v87[14];
                  v100 = v98 > v99;
                  v101 = v98 <= v99 ? 0 : 104;
                  v87 = (v87 + v101);
                  if (v100)
                  {
                    v97 = 2 * v86 + 2;
                  }
                }

                v92 = v96;
                v86 = v97;
              }

              while (v87[2] - v87[1] <= v95);
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v96, &v138);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v144)
              {
                *(&v144 + 1) = v144;
                operator delete(v144);
              }

              v128 = &v142;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
              v128 = &v139;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
            }
          }

          v84 = v85 - 1;
        }

        while (v85);
        v102 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 3);
        do
        {
          v103 = 0;
          LODWORD(v128) = *a1;
          v129 = *(a1 + 8);
          v130 = *(a1 + 24);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 8) = 0;
          v131 = *(a1 + 32);
          v132 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 32) = 0;
          *v133 = *(a1 + 56);
          v134 = *(a1 + 72);
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          *v135 = *(a1 + 80);
          v136 = *(a1 + 96);
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          v104 = a1;
          *(a1 + 96) = 0;
          do
          {
            v105 = (v104 + 104 * v103);
            v106 = (v105 + 13);
            if (2 * v103 + 2 >= v102)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v107 = v105[15] - v105[14];
              v108 = v105[28] - v105[27];
              v109 = v105 + 26;
              if (v107 <= v108)
              {
                v103 = (2 * v103) | 1;
              }

              else
              {
                v106 = v109;
                v103 = 2 * v103 + 2;
              }
            }

            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v104, v106);
            v104 = v106;
          }

          while (v103 <= ((v102 - 2) >> 1));
          a2 -= 104;
          if (v106 == a2)
          {
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v106, &v128);
          }

          else
          {
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v106, a2);
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(a2, &v128);
            v110 = v106 - a1 + 104;
            if (v110 >= 105)
            {
              v111 = (0x4EC4EC4EC4EC4EC5 * (v110 >> 3) - 2) >> 1;
              v112 = a1 + 104 * v111;
              v114 = *(v106 + 8);
              v113 = *(v106 + 16);
              v115 = v113 - v114;
              if (*(v112 + 16) - *(v112 + 8) > (v113 - v114))
              {
                LODWORD(v138) = *v106;
                v139 = v114;
                v140 = v113;
                v141 = *(v106 + 24);
                *(v106 + 16) = 0;
                *(v106 + 24) = 0;
                *(v106 + 8) = 0;
                v142 = *(v106 + 32);
                v143 = *(v106 + 48);
                *(v106 + 40) = 0;
                *(v106 + 48) = 0;
                *(v106 + 32) = 0;
                v144 = *(v106 + 56);
                v145 = *(v106 + 72);
                *(v106 + 56) = 0;
                *(v106 + 64) = 0;
                *(v106 + 72) = 0;
                *__p = *(v106 + 80);
                v147 = *(v106 + 96);
                *(v106 + 80) = 0;
                *(v106 + 88) = 0;
                *(v106 + 96) = 0;
                do
                {
                  v116 = v112;
                  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v106, v112);
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = a1 + 104 * v111;
                  v106 = v116;
                }

                while (*(v112 + 16) - *(v112 + 8) > v115);
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v116, &v138);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                if (v144)
                {
                  *(&v144 + 1) = v144;
                  operator delete(v144);
                }

                v137 = &v142;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v137);
                v137 = &v139;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v137);
              }
            }
          }

          if (v135[0])
          {
            v135[1] = v135[0];
            operator delete(v135[0]);
          }

          if (v133[0])
          {
            v133[1] = v133[0];
            operator delete(v133[0]);
          }

          v138 = &v131;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v138);
          v138 = &v129;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v138);
          v90 = v102-- <= 2;
        }

        while (!v90);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = a1 + 104 * (v10 >> 1);
    v14 = *(a2 - 88) - *(a2 - 96);
    if (v9 >= 0x3401)
    {
      v15 = *(v13 + 16) - *(v13 + 8);
      if (v15 <= *(a1 + 16) - *(a1 + 8))
      {
        if (v14 > v15)
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v13, v127);
          if (*(v13 + 16) - *(v13 + 8) > *(a1 + 16) - *(a1 + 8))
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 > v15)
        {
          goto LABEL_16;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, v13);
        if (*(a2 - 88) - *(a2 - 96) > *(v13 + 16) - *(v13 + 8))
        {
          v16 = v13;
LABEL_16:
          v17 = (a2 - 104);
LABEL_25:
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v16, v17);
        }
      }

      v21 = a1 + 104 * v12;
      v22 = v21 - 104;
      v23 = *(v21 - 88) - *(v21 - 96);
      v24 = *(a2 - 192) - *(a2 - 200);
      if (v23 <= *(a1 + 120) - *(a1 + 112))
      {
        if (v24 > v23)
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v22, (a2 - 208));
          if (*(v22 + 16) - *(v22 + 8) > *(a1 + 120) - *(a1 + 112))
          {
            v25 = (a1 + 104);
            v26 = v22;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v25 = (a1 + 104);
        if (v24 > v23)
        {
          goto LABEL_30;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v25, v22);
        if (*(a2 - 192) - *(a2 - 200) > *(v22 + 16) - *(v22 + 8))
        {
          v25 = v22;
LABEL_30:
          v26 = (a2 - 208);
LABEL_37:
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v25, v26);
        }
      }

      v27 = a1 + 104 * v12;
      v28 = *(v27 + 120) - *(v27 + 112);
      v29 = *v125 - *v126;
      if (v28 <= *(a1 + 224) - *(a1 + 216))
      {
        if (v29 > v28)
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100]((v27 + 104), (a2 - 312));
          if (*(v27 + 120) - *(v27 + 112) > *(a1 + 224) - *(a1 + 216))
          {
            v30 = (a1 + 208);
            v31 = (v27 + 104);
            goto LABEL_46;
          }
        }
      }

      else
      {
        v30 = (a1 + 208);
        if (v29 > v28)
        {
          goto LABEL_42;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v30, (v27 + 104));
        if (*v125 - *v126 > *(v27 + 120) - *(v27 + 112))
        {
          v30 = (v27 + 104);
LABEL_42:
          v31 = (a2 - 312);
LABEL_46:
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v30, v31);
        }
      }

      v32 = *(v13 + 16) - *(v13 + 8);
      v33 = *(v27 + 120) - *(v27 + 112);
      if (v32 <= *(v22 + 16) - *(v22 + 8))
      {
        if (v33 > v32)
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v13, (v27 + 104));
          if (*(v13 + 16) - *(v13 + 8) > *(v22 + 16) - *(v22 + 8))
          {
            v35 = v22;
            v34 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        if (v33 > v32)
        {
          v34 = (v27 + 104);
          v35 = v22;
          goto LABEL_55;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v22, v13);
        if (*(v27 + 120) - *(v27 + 112) > *(v13 + 16) - *(v13 + 8))
        {
          v34 = (v27 + 104);
          v35 = v13;
LABEL_55:
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v35, v34);
        }
      }

      v19 = a1;
      v20 = v13;
      goto LABEL_57;
    }

    v18 = *(a1 + 16) - *(a1 + 8);
    if (v18 <= *(v13 + 16) - *(v13 + 8))
    {
      if (v14 <= v18)
      {
        goto LABEL_58;
      }

      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, v127);
      if (*(a1 + 16) - *(a1 + 8) <= *(v13 + 16) - *(v13 + 8))
      {
        goto LABEL_58;
      }

      v19 = v13;
      v20 = a1;
      goto LABEL_57;
    }

    v19 = v13;
    if (v14 > v18)
    {
      goto LABEL_21;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v13, a1);
    if (*(a2 - 88) - *(a2 - 96) > *(a1 + 16) - *(a1 + 8))
    {
      v19 = a1;
LABEL_21:
      v20 = (a2 - 104);
LABEL_57:
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v19, v20);
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v37 = *(a1 + 8);
      v36 = *(a1 + 16);
      v38 = v36 - v37;
LABEL_61:
      v39 = 0;
      LODWORD(v138) = *a1;
      v139 = v37;
      v140 = v36;
      v141 = *(a1 + 24);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v142 = *(a1 + 32);
      v143 = *(a1 + 48);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v144 = *(a1 + 56);
      v145 = *(a1 + 72);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *__p = *(a1 + 80);
      v147 = *(a1 + 96);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      do
      {
        v40 = *(a1 + v39 + 120) - *(a1 + v39 + 112);
        v39 += 104;
      }

      while (v40 > v38);
      v41 = a1 + v39;
      v42 = a2;
      if (v39 == 104)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = (v45 - 104);
          v46 = *(v45 - 88) - *(v45 - 96);
          v45 -= 104;
          if (v46 > v38)
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
          v43 = (v42 - 104);
          v44 = *(v42 - 88) - *(v42 - 96);
          v42 -= 104;
        }

        while (v44 <= v38);
      }

LABEL_71:
      if (v41 >= v43)
      {
        v53 = v41 - 104;
      }

      else
      {
        v47 = v41;
        v48 = v43;
        do
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v47, v48);
          do
          {
            v50 = *(v47 + 112);
            v49 = *(v47 + 120);
            v47 += 104;
          }

          while (v49 - v50 > v38);
          do
          {
            v52 = *(v48 - 12);
            v51 = *(v48 - 11);
            v48 -= 26;
          }

          while (v51 - v52 <= v38);
        }

        while (v47 < v48);
        v53 = v47 - 104;
      }

      if (v53 != a1)
      {
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(a1, v53);
      }

      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v53, &v138);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v144)
      {
        *(&v144 + 1) = v144;
        operator delete(v144);
      }

      v128 = &v142;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
      v128 = &v139;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
      if (v41 < v43)
      {
        goto LABEL_88;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>(a1, v53);
      v8 = v53 + 104;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>(v53 + 104, a2))
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v54)
      {
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,false>(a1, v53, a3, a4 & 1);
        a4 = 0;
        v8 = v53 + 104;
      }
    }

    else
    {
      v37 = *(a1 + 8);
      v36 = *(a1 + 16);
      v38 = v36 - v37;
      if (*(a1 - 88) - *(a1 - 96) > (v36 - v37))
      {
        goto LABEL_61;
      }

      LODWORD(v138) = *a1;
      v139 = v37;
      v140 = v36;
      v141 = *(a1 + 24);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v142 = *(a1 + 32);
      v143 = *(a1 + 48);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v144 = *(a1 + 56);
      v145 = *(a1 + 72);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *__p = *(a1 + 80);
      v147 = *(a1 + 96);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      if (v38 <= *(a2 - 88) - *(a2 - 96))
      {
        v57 = a1 + 104;
        do
        {
          v8 = v57;
          if (v57 >= a2)
          {
            break;
          }

          v58 = *(v57 + 16) - *(v57 + 8);
          v57 += 104;
        }

        while (v38 <= v58);
      }

      else
      {
        v55 = a1;
        do
        {
          v8 = v55 + 104;
          v56 = *(v55 + 120) - *(v55 + 112);
          v55 += 104;
        }

        while (v38 <= v56);
      }

      v59 = a2;
      if (v8 < a2)
      {
        v60 = a2;
        do
        {
          v59 = (v60 - 104);
          v61 = *(v60 - 88) - *(v60 - 96);
          v60 -= 104;
        }

        while (v38 > v61);
      }

      while (v8 < v59)
      {
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v8, v59);
        do
        {
          v63 = *(v8 + 112);
          v62 = *(v8 + 120);
          v8 += 104;
        }

        while (v38 <= v62 - v63);
        do
        {
          v65 = *(v59 - 12);
          v64 = *(v59 - 11);
          v59 -= 26;
        }

        while (v38 > v64 - v65);
      }

      if (v8 - 104 != a1)
      {
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(a1, v8 - 104);
      }

      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v8 - 104, &v138);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v144)
      {
        *(&v144 + 1) = v144;
        operator delete(v144);
      }

      v128 = &v142;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
      v128 = &v139;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v128);
      a4 = 0;
    }
  }

  v68 = *(a1 + 120) - *(a1 + 112);
  v69 = *(a2 - 88) - *(a2 - 96);
  if (v68 > *(a1 + 16) - *(a1 + 8))
  {
    if (v69 > v68)
    {
      goto LABEL_121;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, (a1 + 104));
    if (*(a2 - 88) - *(a2 - 96) > *(a1 + 120) - *(a1 + 112))
    {
      v70 = (a1 + 104);
      goto LABEL_122;
    }

    return;
  }

  if (v69 <= v68)
  {
    return;
  }

  v66 = (a1 + 104);
  v67 = (a2 - 104);
LABEL_196:
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v66, v67);
  if (*(a1 + 120) - *(a1 + 112) > *(a1 + 16) - *(a1 + 8))
  {
    v71 = (a1 + 104);
    v70 = a1;
    goto LABEL_123;
  }
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,0>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 16) - *(a2 + 8);
  v9 = *(a3 + 16) - *(a3 + 8);
  if (v8 <= *(result + 2) - *(result + 1))
  {
    if (v9 > v8)
    {
      result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a2, a3);
      if (*(a2 + 16) - *(a2 + 8) > *(v7 + 2) - *(v7 + 1))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](result, v10);
      goto LABEL_10;
    }

    result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](result, a2);
    if (*(a3 + 16) - *(a3 + 8) > *(a2 + 16) - *(a2 + 8))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 16) - *(a4 + 8) > *(a3 + 16) - *(a3 + 8))
  {
    result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a3, a4);
    if (*(a3 + 16) - *(a3 + 8) > *(a2 + 16) - *(a2 + 8))
    {
      result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a2, a3);
      if (*(a2 + 16) - *(a2 + 8) > *(v7 + 2) - *(v7 + 1))
      {

        return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v7, a2);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 120) - *(a1 + 112);
        v9 = *(a2 - 88) - *(a2 - 96);
        if (v8 > *(a1 + 16) - *(a1 + 8))
        {
          if (v9 <= v8)
          {
            std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, (a1 + 104));
            if (*(a2 - 88) - *(a2 - 96) <= *(v3 + 120) - *(v3 + 112))
            {
              return 1;
            }

            a1 = v3 + 104;
          }

          v5 = (a2 - 104);
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 104);
        v7 = (a2 - 104);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,0>(a1, a1 + 104, a1 + 208, a2 - 104);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,0>(a1, a1 + 104, a1 + 208, a1 + 312);
        if (*(a2 - 88) - *(a2 - 96) <= *(v3 + 328) - *(v3 + 320))
        {
          return 1;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100]((v3 + 312), (a2 - 104));
        if (*(v3 + 328) - *(v3 + 320) <= *(v3 + 224) - *(v3 + 216))
        {
          return 1;
        }

        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100]((v3 + 208), (v3 + 312));
        if (*(v3 + 224) - *(v3 + 216) <= *(v3 + 120) - *(v3 + 112))
        {
          return 1;
        }

        v6 = (v3 + 104);
        v7 = (v3 + 208);
        break;
      default:
        goto LABEL_16;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](v6, v7);
    if (*(v3 + 120) - *(v3 + 112) > *(v3 + 16) - *(v3 + 8))
    {
      v5 = (v3 + 104);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 88) - *(a2 - 96) > *(a1 + 16) - *(a1 + 8))
    {
      v5 = (a2 - 104);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 208;
  v11 = *(a1 + 120) - *(a1 + 112);
  v12 = *(a1 + 224) - *(a1 + 216);
  if (v11 > *(a1 + 16) - *(a1 + 8))
  {
    if (v12 <= v11)
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, (a1 + 104));
      if (*(v3 + 224) - *(v3 + 216) <= *(v3 + 120) - *(v3 + 112))
      {
        goto LABEL_36;
      }

      a1 = v3 + 104;
    }

    v13 = (v3 + 208);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100]((a1 + 104), (a1 + 208));
    if (*(v3 + 120) - *(v3 + 112) > *(v3 + 16) - *(v3 + 8))
    {
      v13 = (v3 + 104);
      a1 = v3;
LABEL_35:
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 312;
  if (v3 + 312 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 8);
    if ((*(v14 + 16) - v17) > *(v10 + 16) - *(v10 + 8))
    {
      v24 = *v14;
      v25 = v17;
      v18 = *(v14 + 16);
      v19 = *(v14 + 32);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      v26 = v18;
      v27 = v19;
      v28 = *(v14 + 48);
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *v29 = *(v14 + 56);
      v30 = *(v14 + 72);
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *__p = *(v14 + 80);
      v32 = *(v14 + 96);
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      v20 = v15;
      *(v14 + 80) = 0;
      while (1)
      {
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v3 + v20 + 312, v3 + v20 + 208);
        if (v20 == -208)
        {
          break;
        }

        v21 = *(v3 + v20 + 120) - *(v3 + v20 + 112);
        v20 -= 104;
        if (v26 - v25 <= v21)
        {
          v22 = v3 + v20 + 312;
          goto LABEL_44;
        }
      }

      v22 = v3;
LABEL_44:
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(v22, &v24);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }

      ++v16;
      v33 = &v27;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
      v33 = &v25;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
      if (v16 == 8)
      {
        return v14 + 104 == a2;
      }
    }

    v10 = v14;
    v15 += 104;
    v14 += 104;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

int *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::swap[abi:ne200100](int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = *(result + 1);
  *(result + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(result + 6);
  *(result + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(result + 7);
  *(result + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  v13 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v14;
  return result;
}

double std::__memberwise_forward_assign[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>,0ul,1ul,2ul,3ul,4ul>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::vector<std::string>::__vdeallocate((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<int>::__move_assign(a1 + 56, (a2 + 56));

  *&result = std::vector<int>::__move_assign(a1 + 80, (a2 + 80)).n128_u64[0];
  return result;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

__n128 std::vector<int>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1D1FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::vector<std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<int>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<int>>>::__emplace_back_slow_path<std::vector<std::vector<int>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<int>>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1D2260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D22DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::__split_buffer<std::vector<std::vector<int>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<int>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<int>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D24D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D2558(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>,std::__wrap_iter<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D25DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::__tuple_impl(v4, v6);
      v6 += 104;
      v4 = v11 + 104;
      v11 += 104;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  return a1;
}

void sub_19D1D27C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 104;
      std::allocator_traits<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>::destroy[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<std::vector<std::string>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::string>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<std::string>>>::__emplace_back_slow_path<std::vector<std::vector<std::string>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<std::string>>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1D2A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<std::string>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D2B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::string>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::string>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::string>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::vector<std::vector<std::vector<int>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::vector<int>>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<std::vector<int>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<int>>*,std::vector<std::vector<int>>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<std::vector<int>>>>::__emplace_back_slow_path<std::vector<std::vector<std::vector<int>>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<std::vector<int>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<int>>*,std::vector<std::vector<int>>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<std::vector<int>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1D2ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<std::vector<int>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<int>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<int>>*,std::vector<std::vector<int>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D2F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<int>>>,std::vector<std::vector<int>>*,std::vector<std::vector<int>>*,std::vector<std::vector<int>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<int>>>,std::vector<std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<int>>>,std::vector<std::vector<int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<int>>>,std::vector<std::vector<int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<int>>>,std::vector<std::vector<int>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::vector<int>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::vector<int>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::vector<int>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::string>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::vector<std::string>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string **std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(int a1, std::string **a2, std::string **a3, std::vector<std::string> *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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

void std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<long>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>::destroy[abi:ne200100]<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>,0>(a1, i))
  {
    i -= 104;
  }

  *(a1 + 8) = a2;
}

void std::vector<std::vector<std::vector<std::vector<std::string>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<std::vector<std::vector<std::string>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::vector<std::string>>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<std::vector<std::string>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<std::vector<std::string>>>>::__emplace_back_slow_path<std::vector<std::vector<std::vector<std::string>>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<std::vector<std::string>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<std::vector<std::string>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1D3B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<std::vector<std::string>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<std::string>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D3BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::vector<std::string>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::vector<std::string>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::vector<std::string>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<std::vector<std::vector<int>>>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<std::vector<std::vector<int>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<int>>>*,std::vector<std::vector<std::vector<int>>>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__emplace_back_slow_path<std::vector<std::vector<std::vector<std::vector<int>>>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<std::vector<std::vector<int>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<int>>>*,std::vector<std::vector<std::vector<int>>>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<std::vector<std::vector<int>>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1D3F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<std::vector<std::vector<int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<std::vector<int>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<int>>>*,std::vector<std::vector<std::vector<int>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D3FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::vector<int>>>>,std::vector<std::vector<std::vector<int>>>*,std::vector<std::vector<std::vector<int>>>*,std::vector<std::vector<std::vector<int>>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<std::vector<int>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<int>>*,std::vector<std::vector<int>>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<int>>>>,std::vector<std::vector<std::vector<int>>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<int>>>>,std::vector<std::vector<std::vector<int>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<int>>>>,std::vector<std::vector<std::vector<int>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<int>>>>,std::vector<std::vector<std::vector<int>>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::vector<std::vector<int>>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::vector<std::vector<int>>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::vector<std::vector<int>>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<std::string>>(uint64_t **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v10, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      memset(v9, 0, sizeof(v9));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v9, *v3, v3[1], 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3));
      v5 = v11;
      if (v11 >= v12)
      {
        v6 = std::vector<applesauce::CF::ArrayRef>::__emplace_back_slow_path<std::vector<std::string>>(&v10, v9);
      }

      else
      {
        *v5 = applesauce::CF::details::make_CFArrayRef<std::string>(v9);
        v6 = (v5 + 1);
      }

      v11 = v6;
      v13 = v9;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
      v3 += 3;
    }

    while (v3 != v4);
  }

  v7 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v10);
  v9[0] = &v10;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](v9);
  return v7;
}

void sub_19D1D42A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::ArrayRef>::__emplace_back_slow_path<std::vector<std::string>>(uint64_t a1, __int128 **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v8 = (8 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = applesauce::CF::details::make_CFArrayRef<std::string>(a2);
  *&v17 = v8 + 1;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1D43E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<int>(void *a1)
{
  v2 = (a1[1] - *a1) >> 2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v8, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v9;
    do
    {
      LODWORD(v11) = *v3;
      if (v5 >= v10)
      {
        v5 = std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<int>(&v8, &v11);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,int,0>(&v8, v5++, &v11);
      }

      v9 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v6 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v8);
  v11 = &v8;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  return v6;
}

void sub_19D1D44C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<int>(uint64_t a1, int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,int,0>(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1D45F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,int,0>(uint64_t a1, CFNumberRef *a2, int *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<int>>(uint64_t **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v5 = v13;
    if (v13 >= v14)
    {
      v6 = std::vector<applesauce::CF::ArrayRef>::__emplace_back_slow_path<std::vector<int>>(&v12, &__p);
    }

    else
    {
      *v5 = applesauce::CF::details::make_CFArrayRef<int>(&__p);
      v6 = (v5 + 1);
    }

    v13 = v6;
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v3 += 3;
  }

  v7 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  __p = &v12;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v7;
}

void sub_19D1D479C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  __p = &a12;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::ArrayRef>::__emplace_back_slow_path<std::vector<int>>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v8 = (8 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = applesauce::CF::details::make_CFArrayRef<int>(a2);
  *&v17 = v8 + 1;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1D48DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void LanguageIdentifierModel::setCharacters(LanguageIdentifierModel *this, const unsigned __int16 *a2, CFIndex a3)
{
  v4 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], a2, a3);
  if (v4)
  {
    v5 = v4;
    LanguageIdentifierModel::setString(this, v4);

    CFRelease(v5);
  }
}

void LanguageIdentifierModel::setConstraints(void *a1, _DWORD *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v6 = a1[2];
    do
    {
      v7 = a1[3];
      if (v6 >= v7)
      {
        v8 = a1[1];
        v9 = v6 - v8;
        v10 = (v6 - v8) >> 2;
        v11 = v10 + 1;
        if ((v10 + 1) >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((a1 + 1), v13);
        }

        v14 = (v6 - v8) >> 2;
        v15 = (4 * v10);
        v16 = (4 * v10 - 4 * v14);
        *v15 = *a2;
        v6 = (v15 + 1);
        memcpy(v16, v8, v9);
        v17 = a1[1];
        a1[1] = v16;
        a1[2] = v6;
        a1[3] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v6 = *a2;
        v6 += 4;
      }

      a1[2] = v6;
      ++a2;
      --v3;
    }

    while (v3);
  }
}

uint64_t LanguageIdentifierModel::clearConstraints(uint64_t this)
{
  v1 = *(this + 8);
  if (*(this + 16) != v1)
  {
    *(this + 16) = v1;
  }

  return this;
}

void LanguageIdentifierModel::setHints(void *a1, void *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v6 = a1[5];
    do
    {
      v7 = a1[6];
      if (v6 >= v7)
      {
        v8 = a1[4];
        v9 = (v6 - v8) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v10 = v7 - v8;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((a1 + 4), v12);
        }

        *(8 * v9) = *a2;
        v6 = (8 * v9 + 8);
        v13 = a1[4];
        v14 = a1[5] - v13;
        v15 = (8 * v9 - v14);
        memcpy(v15, v13, v14);
        v16 = a1[4];
        a1[4] = v15;
        a1[5] = v6;
        a1[6] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6++ = *a2;
      }

      a1[5] = v6;
      ++a2;
      --v3;
    }

    while (v3);
  }
}

uint64_t LanguageIdentifierModel::clearHints(uint64_t this)
{
  v1 = *(this + 32);
  if (*(this + 40) != v1)
  {
    *(this + 40) = v1;
  }

  return this;
}

void LanguageIdentifierModel::clearModels(LanguageIdentifierModel *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    CoreNLP::MontrealModel::clear(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    CoreNLP::MontrealModel::clear(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    CoreNLP::MontrealModel::clear(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    CoreNLP::MontrealModel::clear(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    CoreNLP::MontrealModel::clear(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {

    CoreNLP::MontrealModel::clear(v7);
  }
}

void sub_19D1D4CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAF8CA0](v15, v16);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void ___ZN7CoreNLP24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileItEEE8getQueueEv_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreNLP.SingletonResourceManager", 0);
  CoreNLP::SingletonResourceManager<std::string,CoreNLP::ReadOnlyFile<unsigned short>>::getQueue(void)::queue = v0;
  global_queue = dispatch_get_global_queue(-32768, 0);

  dispatch_set_target_queue(v0, global_queue);
}

uint64_t CoreNLP::ReadOnlyFile<unsigned short>::ReadOnlyFile(uint64_t a1, __int128 *a2, const std::string::value_type *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
  }

  if (a3[23] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  if (a3[23] < 0)
  {
    if (*(a3 + 1) != 1 || **a3 != 114)
    {
      if (*(a3 + 1) != 2)
      {
        goto LABEL_33;
      }

      a3 = *a3;
LABEL_15:
      if (*a3 == 11122)
      {
        *(a1 + 64) = 514;
        if (*(a2 + 23) >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        v12 = open(v11, 514, 384);
        goto LABEL_25;
      }

LABEL_33:
      exception = __cxa_allocate_exception(0x20uLL);
      CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 1);
      goto LABEL_36;
    }
  }

  else
  {
    v10 = *(a3 + 23);
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

    if (*a3 != 114)
    {
      goto LABEL_33;
    }
  }

  *(a1 + 64) = 0;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v12 = open(v13, 0);
LABEL_25:
  v14 = v12;
  if (v12 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 2);
    goto LABEL_36;
  }

  if (fstat(v12, &v21) < 0)
  {
    close(v14);
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 3);
LABEL_36:
  }

  st_size = v21.st_size;
  *(a1 + 8) = v21.st_size;
  v22 = 0;
  v23 = st_size;
  fcntl(v14, 44, &v22);
  v16 = *(a1 + 8);
  if (!a4)
  {
    operator new[]();
  }

  if (v16)
  {
    v17 = mmap(0, v16, *(a1 + 64) & 2 | 1u, 1, v14, 0);
    if (v17 == -1)
    {
      close(v14);
      v20 = __cxa_allocate_exception(0x20uLL);
      CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(v20, 4);
    }

    *a1 = v17;
  }

  close(v14);
  return a1;
}

void sub_19D1D50CC(_Unwind_Exception *a1)
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

void *CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(void *a1, int a2)
{
  if ((a2 - 1) <= 4)
  {
    v3 = off_1E7624BB8[a2 - 1];
  }

  std::operator+<char>();
  CoreNLP::ResourceCreationException::ResourceCreationException(a1, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_1F10AD9F0;
  return a1;
}

void sub_19D1D51BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CoreNLP::ResourceCreationException::ResourceCreationException(void *a1, __int128 *a2)
{
  *a1 = &unk_1F10ADA18;
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

void CoreNLP::ReadOnlyFileCreationException::~ReadOnlyFileCreationException(std::exception *this)
{
  CoreNLP::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::ResourceCreationException::what(CoreNLP::ResourceCreationException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void CoreNLP::ResourceCreationException::~ResourceCreationException(std::exception *this)
{
  CoreNLP::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  this->__vftable = &unk_1F10ADA18;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

LanguageIdentifierModel *NLLanguageIdentifierGetTopHypothesis(LanguageIdentifierModel *result)
{
  if (result)
  {
    v1 = result;
    Constraints = LanguageIdentifierModel::getConstraints(result);
    v3 = *(Constraints + 8) - *Constraints;
    if (v3 == 4)
    {
      v4 = **Constraints;
    }

    else
    {
      v5 = Constraints;
      Type = CoreNLP::ModelContainer::getType(v1);
      FixedLanguageForScript = getFixedLanguageForScript(Type);
      if (!FixedLanguageForScript)
      {
        LanguageIdentifierModel::getTopProbabilities(v1, &v63);
        OutputSize = LanguageIdentifierModel::getOutputSize(v1, Type);
        DominantScriptOutputMap = getDominantScriptOutputMap(Type);
        v13 = v64;
        v14 = v63;
        if (v63 == v64)
        {
          v10 = 0;
          v4 = 0;
        }

        else
        {
          v15 = DominantScriptOutputMap;
          do
          {
            *v14 = log10f(*v14);
            ++v14;
          }

          while (v14 != v13);
          Hints = LanguageIdentifierModel::getHints(v1);
          __p = 0;
          v61 = 0;
          v62 = 0;
          v18 = *Hints;
          v17 = Hints[1];
          if (*Hints == v17)
          {
            v28 = v64;
            v27 = v63;
          }

          else
          {
            do
            {
              if (OutputSize)
              {
                v19 = 4 * OutputSize;
                v20 = v15;
                v21 = v15;
                while (*v21 != *v18)
                {
                  v21 += 4;
                  v20 += 4;
                  v19 -= 4;
                  if (!v19)
                  {
                    goto LABEL_29;
                  }
                }
              }

              else
              {
                v20 = v15;
                v21 = v15;
              }

              v22 = (v20 - v15) >> 2;
              if (&v15[4 * OutputSize] == v21)
              {
                v23 = -1;
              }

              else
              {
                v23 = v22;
              }

              LODWORD(v57) = v23;
              if ((v23 & 0x80000000) == 0)
              {
                std::vector<int>::push_back[abi:ne200100](&__p, &v57);
                v24 = log10f(*(v18 + 4));
                v63[v57] = v24 + v63[v57];
                v17 = Hints[1];
              }

LABEL_29:
              v18 += 8;
            }

            while (v18 != v17);
            v25 = __p;
            v26 = v61;
            v28 = v64;
            v27 = v63;
            if (__p != v61 && v64 != v63)
            {
              v30 = 0;
              v31 = v64 - v63;
              if (v31 <= 1)
              {
                v31 = 1;
              }

              do
              {
                v32 = v25;
                while (v30 != *v32)
                {
                  if (++v32 == v26)
                  {
                    goto LABEL_41;
                  }
                }

                if (v32 != v26)
                {
                  goto LABEL_42;
                }

LABEL_41:
                v27[v30] = -20.0;
LABEL_42:
                ++v30;
              }

              while (v30 != v31);
            }
          }

          if (v27 != v28)
          {
            v33 = 0.0;
            v34 = v27;
            do
            {
              v35 = *v34++;
              v33 = v33 + __exp10f(v35);
            }

            while (v34 != v28);
            do
            {
              v36 = __exp10f(*v27);
              *v27++ = log10f(v36 / v33);
            }

            while (v27 != v28);
          }

          v57 = 0;
          v58 = 0;
          v59 = 0;
          v56 = 0;
          if (OutputSize < 1)
          {
            v4 = 0;
            v10 = 0;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = -1;
            v40 = 0.0;
            do
            {
              v41 = *v5;
              v42 = *(v5 + 8);
              if (*v5 != v42)
              {
                while (*v41 != *&v15[4 * v37])
                {
                  if (++v41 == v42)
                  {
                    v41 = *(v5 + 8);
                    break;
                  }
                }
              }

              if (v3 >= 5 && v41 == v42)
              {
                std::vector<int>::push_back[abi:ne200100](&v57, &v56);
                v38 = v56;
              }

              else
              {
                v43 = __exp10f(v63[v37]);
                if (v43 > v40)
                {
                  v39 = v38;
                  v40 = v43;
                }
              }

              v56 = ++v38;
              v37 = v38;
            }

            while (OutputSize > v38);
            v44 = v57;
            v45 = v58;
            if (v58 != v57)
            {
              v46 = 0.0;
              v47 = v63;
              v48 = v57;
              do
              {
                v49 = *v48++;
                v46 = v46 + __exp10f(v47[v49]);
                v47[v49] = -3.4028e38;
              }

              while (v48 != v45);
              v50 = v64;
              if (v47 != v64)
              {
                v51 = 0.0;
                v52 = v47;
                do
                {
                  v53 = *v52++;
                  v51 = v51 + __exp10f(v53);
                }

                while (v52 != v50);
                do
                {
                  v54 = __exp10f(*v47);
                  *v47++ = log10f(v54 + ((v54 / v51) * v46));
                }

                while (v47 != v50);
              }
            }

            if ((v39 & 0x80000000) != 0)
            {
              v10 = 0;
              v4 = 0;
            }

            else
            {
              v55 = __exp10f(v63[v39]);
              v4 = *&v15[4 * v39];
              v10 = LODWORD(v55) << 32;
            }

            if (v44)
            {
              v58 = v44;
              operator delete(v44);
            }
          }

          if (__p)
          {
            v61 = __p;
            operator delete(__p);
          }

          v14 = v63;
        }

        if (v14)
        {
          v64 = v14;
          operator delete(v14);
        }

        return (v10 | v4);
      }

      v4 = FixedLanguageForScript;
      v8 = *v5;
      v9 = *(v5 + 8);
      if (*v5 != v9)
      {
        while (*v8 != FixedLanguageForScript)
        {
          if (++v8 == v9)
          {
            v8 = *(v5 + 8);
            break;
          }
        }
      }

      if (v3 >= 5 && v8 == v9)
      {
        v4 = 0;
        v10 = 0;
        return (v10 | v4);
      }
    }

    v10 = 0x3F80000000000000;
    return (v10 | v4);
  }

  return result;
}

void sub_19D1D587C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLLanguageIdentifierGetTopLanguages(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    getDominantScriptForString(a1);
  }

  return 0;
}

void NLLanguageIdentifierConsumeCharacters(LanguageIdentifierModel *this, const unsigned __int16 *a2, CFIndex a3)
{
  if (this)
  {
    LanguageIdentifierModel::setCharacters(this, a2, a3);
  }
}

_DWORD *NLLanguageIdentifierReset(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    LanguageIdentifierModel::clearInputString(result);
    LanguageIdentifierModel::clearConstraints(v1);
    LanguageIdentifierModel::clearHints(v1);

    return LanguageIdentifierModel::clearDominantScriptForModel(v1);
  }

  return result;
}

void NLLanguageIdentifierSetLanguageHints(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    LanguageIdentifierModel::setHints(a1, a2, a3);
  }
}

void NLLanguageIdentifierSetLanguageConstraints(void *a1, _DWORD *a2, uint64_t a3)
{
  if (a1)
  {
    LanguageIdentifierModel::setConstraints(a1, a2, a3);
  }
}

uint64_t NLLanguageIdentifierSetModelID(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 == 1)
    {
      v2 = 29;
    }

    else
    {
      v2 = 28;
    }

    return LanguageIdentifierModel::setDominantScriptForModel(result, v2);
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = result - 8;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12[0] = *v6;
          v11 = v9;
          do
          {
            *(v11 + 16) = *(v11 + 8);
            result = (*a3)(v12, v11);
            v11 -= 8;
          }

          while ((result & 1) != 0);
          *(v11 + 16) = v12[0];
        }

        v7 = v6 + 1;
        v9 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,NLLanguageHypothesis *,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    do
    {
      ++v6;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v11;
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,NLLanguageHypothesis *,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    ++v6;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  v8 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v13));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v13) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v13));
    }

    while (v9 < v10);
    v8 = v9 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v13;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *v17;
        *v17 = v28;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v30 = *v22;
      v25 = v23;
      while (1)
      {
        v26 = a1 + v25;
        *(a1 + v25 + 24) = *(a1 + v25 + 16);
        if (v25 == -16)
        {
          break;
        }

        v25 -= 8;
        if (((*a3)(&v30, (v26 + 8)) & 1) == 0)
        {
          v27 = (a1 + v25 + 24);
          goto LABEL_40;
        }
      }

      v27 = a1;
LABEL_40:
      *v27 = v30;
      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*,NLLanguageHypothesis*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v24 = v6;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v19 = 2 * v14 + 2;
          if (v19 < v8)
          {
            v20 = v16 + 2;
            if ((*a4)(v16 + 1, (v16 + 2)))
            {
              v17 = v20;
              v18 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
          v14 = v18;
        }

        while (v18 <= ((v8 - 2) >> 1));
        v6 = v24 - 1;
        if (v17 == v24 - 1)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v19[11] = v4;
    v19[12] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v12 = (a4 - result) >> 2;
      v13 = v12 + 1;
      v14 = (result + 8 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19[0] = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = (v8 + 8 * v17);
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 8 * v17, v14 + 1))
            {
              ++v14;
              v17 = v18;
            }
          }

          result = (*a2)(v14, v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19[0];
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NLLanguageHypothesis const&,NLLanguageHypothesis const&),NLLanguageHypothesis*>(uint64_t result, uint64_t a2, uint64_t (**a3)(void *, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v13[7] = v4;
    v13[8] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    result = (*a3)(v10, a2 - 8);
    if (result)
    {
      v13[0] = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 8 * v9);
        result = (*a3)(v10, v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13[0];
    }
  }

  return result;
}

void std::vector<NLLanguageHypothesis>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>>*,std::vector<std::pair<int,double>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D6868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,double>>>,std::vector<std::pair<int,double>>*,std::vector<std::pair<int,double>>*,std::vector<std::pair<int,double>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,double>>>,std::vector<std::pair<int,double>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D6994(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,double>>>,std::vector<std::pair<int,double>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t CoreNLP::Tagger::getTokenAtIndex@<X0>(CoreNLP::Tagger *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*this + 64))(this, 0, a2);
  if (result)
  {
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = -1;
  }

  return result;
}

CFStringRef NLStringTokenizerCopyBestStringLanguage(CoreNLP::NLLangid *a1, const __CFString *a2, CFRange a3)
{
  if (!a1 || (a2 & 0x8000000000000000) != 0 || a3.location < 1)
  {
    return 0;
  }

  else
  {
    return CoreNLP::NLLangid::copyLanguageString(a1, a2, a3);
  }
}

CFStringRef NLStringTokenizerCopyBestStringLanguageWithHints(__CFString *a1, const __CFString *a2, CFRange theArray)
{
  location = theArray.location;
  if (theArray.length && (length = theArray.length, CFArrayGetCount(theArray.length)))
  {
    ValueAtIndex = 0;
    if (!a1 || (a2 & 0x8000000000000000) != 0 || location < 1)
    {
      return ValueAtIndex;
    }

    if (CFStringGetLength(a1) <= 25)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(length, 0);
      CFRetain(ValueAtIndex);
      return ValueAtIndex;
    }
  }

  else
  {
    ValueAtIndex = 0;
    if (!a1 || (a2 & 0x8000000000000000) != 0 || location < 1)
    {
      return ValueAtIndex;
    }
  }

  theArray.location = location;

  return CoreNLP::NLLangid::copyLanguageString(a1, a2, theArray);
}

uint64_t _NLStringTokenizerCopyPossibleStringLanguages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    if (_NLStringTokenizerCopyPossibleStringLanguages::initOnce != -1)
    {
      _NLStringTokenizerCopyPossibleStringLanguages_cold_1();
    }

    if (_NLStringTokenizerCopyPossibleStringLanguages::nlLangid)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2000000000;
      v12 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___NLStringTokenizerCopyPossibleStringLanguages_block_invoke_2;
      v8[3] = &unk_1E7624C08;
      v8[4] = &v9;
      v8[5] = a1;
      v8[6] = a2;
      v8[7] = a3;
      dispatch_sync(_NLStringTokenizerCopyPossibleStringLanguages::queue, v8);
      v3 = v10[3];
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t NLStringTokenizerGetTypeID()
{
  if (NLStringTokenizerGetTypeID::onceToken != -1)
  {
    NLStringTokenizerGetTypeID_cold_1();
  }

  return __kNLStringTokenizerTypeID;
}

uint64_t NLStringTokenizerCopyCurrentTokenAttribute(uint64_t a1, int a2)
{
  if ((a2 & 0x20000) != 0)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 88);
    if (!v6)
    {
      return 0;
    }

    if ((*(a1 + 56) - 1) > 1)
    {
      return 0;
    }

    v7 = CFStringCreateWithSubstring(0, v5, *v6);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    Length = CFStringGetLength(v7);
    if (Length < 1)
    {
      v11 = 0;
    }

    else
    {
      v10.location = Length;
      v11 = CoreNLP::NLLangid::copyLanguageString(v8, 0, v10);
    }

    CFRelease(v8);
    return v11;
  }

  if ((a2 & 0x10000) != 0)
  {
    v3 = *(a1 + 48);
    v12 = *(a1 + 88);
    goto LABEL_13;
  }

  v3 = *(a1 + 48);
  if ((a2 & 0x1000000) != 0)
  {
    v14 = *(a1 + 64);
    NLTokenizerSetOptions(v3);
    v15 = *(a1 + 88);
    v11 = NLTokenizerCopyTranscriptionOfCurrentToken(*(a1 + 48));
    v16 = *(a1 + 64);
    NLTokenizerSetOptions(*(a1 + 48));
    return v11;
  }

  v4 = *(a1 + 88);
LABEL_13:

  return NLTokenizerCopyTranscriptionOfCurrentToken(v3);
}

uint64_t NLStringTokenizerGetCurrentSubTokens(uint64_t a1, void *a2, uint64_t a3, __CFArray *a4)
{
  if (a3)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      v20 = 0;
      location = v5[1].location;
      if ((location & 4) != 0)
      {
        v12 = *(a1 + 48);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = __NLStringTokenizerGetCurrentSubTokens_block_invoke;
        v16[3] = &unk_1E7624C50;
        v16[4] = &v17;
        v16[5] = a2;
        v16[6] = a1;
        v16[7] = a4;
        v16[8] = a3;
        NLTokenizerEnumerateDerivedSubTokensOfToken(v12, v5, v16);
      }

      else if ((location & 2) != 0)
      {
        v13 = *(a1 + 48);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = __NLStringTokenizerGetCurrentSubTokens_block_invoke_2;
        v15[3] = &unk_1E7624C78;
        v15[4] = &v17;
        v15[5] = a2;
        v15[6] = a1;
        v15[7] = a4;
        v15[8] = a3;
        NLTokenizerEnumerateSubTokensOfToken(v13, v5, v15);
      }

      else
      {
        if (!a2)
        {
          v11 = 0;
LABEL_15:
          _Block_object_dispose(&v17, 8);
          return v11;
        }

        length = v5->length;
        *a2 = *(a1 + 24) + v5->location;
        a2[1] = length;
        if (a4)
        {
          v9 = CFStringCreateWithSubstring(0, *(a1 + 16), *v5);
          CFArrayAppendValue(a4, v9);
          CFRelease(v9);
          v10 = v18;
        }

        else
        {
          v10 = &v17;
        }

        v10[3] = 1;
      }

      v11 = v18[3];
      goto LABEL_15;
    }
  }

  return 0;
}

void __NLStringTokenizerGetCurrentSubTokens_block_invoke(void *a1, _OWORD *a2, __CFString *a3, uint64_t a4, _BYTE *a5)
{
  v7 = a1[5];
  if (v7)
  {
    *(v7 + 16 * *(*(a1[4] + 8) + 24)) = *a2;
    v8 = 16 * *(*(a1[4] + 8) + 24);
    *(a1[5] + v8) += *(a1[6] + 24) + **(a1[6] + 88);
  }

  v9 = a1[7];
  if (v9)
  {
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = &stru_1F10B2700;
    }

    CFArrayAppendValue(v9, v10);
  }

  if (++*(*(a1[4] + 8) + 24) == a1[8])
  {
    *a5 = 1;
  }
}

void __NLStringTokenizerGetCurrentSubTokens_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    *(v5 + 16 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
    v6 = 16 * *(*(*(a1 + 32) + 8) + 24);
    *(*(a1 + 40) + v6) += *(*(a1 + 48) + 24) + **(*(a1 + 48) + 88);
  }

  if (*(a1 + 56))
  {
    v9.length = *(a2 + 8);
    v7 = *(a1 + 48);
    v9.location = **(v7 + 88) + *a2;
    v8 = CFStringCreateWithSubstring(0, *(v7 + 16), v9);
    CFArrayAppendValue(*(a1 + 56), v8);
    CFRelease(v8);
  }

  if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 64))
  {
    *a3 = 1;
  }
}

uint64_t _NLStringTokenizerGetDerivedTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[1] = a3;
  if (!a4)
  {
    return 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  v9 = a2 - *(a1 + 24);
  v18 = 0;
  v19[0] = v9;
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___NLStringTokenizerGetDerivedTokens_block_invoke;
  v13[3] = &unk_1E7624CC8;
  v13[6] = a5;
  v13[7] = a6;
  v13[8] = a9;
  v13[9] = a8;
  v13[4] = &v15;
  v13[5] = v14;
  v13[10] = a7;
  v13[11] = a4;
  NLTokenizerEnumerateDerivedSubTokensOfToken(v10, v19, v13);
  v11 = v16[3];
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void sub_19D1D7308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _NLStringTokenizerSetLocale(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 104) = 0;
  }

  if (cf)
  {
    *(a1 + 104) = CFRetain(cf);
  }

  v5 = *(a1 + 48);

  return NLTokenizerSetLocale(v5);
}

CFMutableArrayRef __NLSTCreatePossibleNamePartsArrayWithStringAsCompositeName(uint64_t a1, CFStringRef theString, int a3)
{
  if (!theString || !CFStringGetLength(theString))
  {
    return 0;
  }

  v5 = *(a1 + 112);
  if (!v5)
  {
    v6 = *(a1 + 104);
    NLTokenizerCreate();
  }

  NLTokenizerSetStringType(v5, a3 != 0);
  NLTokenizerSetString(*(a1 + 112));
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  NLTokenizerEnumeratePossibleTokenSequences(*(a1 + 112));
  _Block_object_dispose(v9, 8);
  return Mutable;
}

void ___ZL59__NLSTCreatePossibleNamePartsArrayWithStringAsCompositeNameP19__NLStringTokenizerPK10__CFStringhhPi_block_invoke(uint64_t a1, _BYTE *a2)
{
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2000000000;
  v30[3] = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = *(a1 + 80);
  }

  v5 = *(*(a1 + 40) + 112);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZL59__NLSTCreatePossibleNamePartsArrayWithStringAsCompositeNameP19__NLStringTokenizerPK10__CFStringhhPi_block_invoke_2;
  v26[3] = &unk_1E7624CF0;
  v27 = *(a1 + 48);
  v29 = v4;
  v6 = *(a1 + 32);
  v26[4] = v30;
  v26[5] = v6;
  v28 = *(a1 + 64);
  v7 = NLTokenizerEnumerateTokensOfCurrentTokenSequence(v5, v26);
  if (*(a1 + 80))
  {
    v8 = v7;
    CFArrayAppendValue(*(a1 + 64), *(*(*(a1 + 32) + 8) + 24));
    v32.length = *(a1 + 72);
    v32.location = 0;
    CoreNLP::UStringPiece::UStringPiece(v24, *(a1 + 56), v32);
    if ((v8 & 1) == 0)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      if (v9)
      {
        if (CFArrayGetCount(v9) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(a1 + 32) + 8) + 24), 0);
          Length = CFStringGetLength(ValueAtIndex);
          v12 = *(a1 + 72);
          if (v12 >= 1)
          {
            v13 = Length;
            v14 = -1;
            v15 = 1;
            v16 = 1;
            v17 = MEMORY[0x1E695E9C0];
            do
            {
              if (v13 != v15)
              {
                v18 = v25;
                Mutable = CFArrayCreateMutable(0, 0, v17);
                v20 = CFStringCreateWithCharacters(0, v18, v15);
                v31 = v20;
                CFArrayAppendValue(Mutable, v20);
                if (v20)
                {
                  CFRelease(v20);
                }

                if (v12 > v15)
                {
                  v21 = CFStringCreateWithCharacters(0, &v18[v16], v12 + v14);
                  v31 = v21;
                  CFArrayAppendValue(Mutable, v21);
                  if (v21)
                  {
                    CFRelease(v21);
                  }
                }

                CFArrayAppendValue(*(a1 + 64), Mutable);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                v12 = *(a1 + 72);
              }

              ++v16;
              --v14;
            }

            while (v15++ < v12);
          }
        }
      }
    }

    v23 = *(*(*(a1 + 32) + 8) + 24);
    if (v23)
    {
      CFRelease(v23);
    }

    CoreNLP::UStringPiece::~UStringPiece(v24);
  }

  else
  {
    *a2 = 1;
  }

  _Block_object_dispose(v30, 8);
}

void sub_19D1D78E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  CoreNLP::UStringPiece::~UStringPiece(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZL59__NLSTCreatePossibleNamePartsArrayWithStringAsCompositeNameP19__NLStringTokenizerPK10__CFStringhhPi_block_invoke_2(uint64_t a1, CFRange *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_8;
  }

  location = a2[1].location;
  if ((location & 0x10000) != 0)
  {
    v4 = *(a1 + 48);
    v5 = 1;
  }

  else
  {
    v4 = *(a1 + 48);
    if ((location & 0x40000) == 0)
    {
      *v4 = 0;
      goto LABEL_8;
    }

    v5 = -1;
  }

  *v4 = v5;
LABEL_8:
  v6 = CFStringCreateWithSubstring(0, *(a1 + 56), *a2);
  if (*(a1 + 72))
  {
    v7 = (*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v7 = (a1 + 64);
  }

  CFArrayAppendValue(*v7, v6);
  CFRelease(v6);
  ++*(*(*(a1 + 32) + 8) + 24);
}

void std::unique_ptr<__CFString const,CoreNLP::CFDeleteFunctor<__CFString const*>>::reset[abi:ne200100](const void **a1, const void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFRelease(v3);
  }
}

void std::unique_ptr<__CFArray const,CoreNLP::CFDeleteFunctor<__CFArray const*>>::reset[abi:ne200100](const void **a1, const void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFRelease(v3);
  }
}

void CoreNLP::TopicModel::CreateModel(int a1@<W0>, void *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v4 = CoreNLP::copyLocaleForLanguageID(a1);
  v11[1] = v4;
  CoreNLP::Resource::getAssetResource(v4, @"TopicModel", @"topic.bundle", 0, v11);
  if (v11[0] && CoreNLP::Resource::exists(v11[0], v5))
  {
    CoreNLP::Resource::path(v11[0], v6, &v9);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v9;
    v13 = v10;
    std::string::basic_string[abi:ne200100]<0>(v15, "output1");
    v9 = 0uLL;
    v10 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v9, v15, &v17, 1uLL);
    CoreNLP::CNNModel::CreateCNNModel(1, &v8);
    v14 = &v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    operator new();
  }

  *a2 = 0;
  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](v11);
  if (v4)
  {
    CFRelease(v4);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19D1D7C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CoreNLP::Resource *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    CoreNLP::TopicModel::CreateModel(a10);
  }

  MEMORY[0x19EAF8CA0](v22, 0x10B3C405D312BFDLL);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&a15);
  nlp::CFScopedPtr<__CFLocale const*>::reset(&a16, 0);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::TopicModel::vinference(uint64_t a1@<X0>, uint64_t *a2@<X1>, CoreNLP *a3@<X2>, void *a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 72);
  if (v5)
  {
    memset(v34, 0, sizeof(v34));
    std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(v34, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v7 = CoreNLP::CNNModel::featureRepresentation(v5, v34);
    v35 = v7;
    __p.__begin_ = v34;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    Value = CFDictionaryGetValue(v7, @"output1");
    v9 = Value;
    if (Value)
    {
      CFRetain(Value);
      cf = v9;
      v10 = CFGetTypeID(v9);
      if (v10 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (cf)
      {
        applesauce::CF::convert_to<std::vector<float>,0>(cf, &__p);
        CoreNLP::getTopNIndices(a3, __p.__end_ - __p.__begin_, __p.__begin_, &v39);
        __src = 0;
        v31 = 0;
        v32 = 0;
        v11 = v39;
        v12 = v40;
        if (v39 == v40)
        {
          v13 = 0;
          v26 = 0;
        }

        else
        {
          v13 = 0;
          do
          {
            v14 = *v11 + 212;
            v15 = *&__p.__begin_[*v11];
            if (v13 >= v32)
            {
              v16 = __src;
              v17 = v13 - __src;
              v18 = (v13 - __src) >> 4;
              v19 = v18 + 1;
              if ((v18 + 1) >> 60)
              {
                std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
              }

              v20 = v32 - __src;
              if ((v32 - __src) >> 3 > v19)
              {
                v19 = v20 >> 3;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFF0)
              {
                v21 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(&__src, v21);
              }

              v22 = v18;
              v23 = 16 * v18;
              *v23 = v14;
              *(v23 + 8) = v15;
              v13 = 16 * v18 + 16;
              v24 = (v23 - 16 * v22);
              memcpy(v24, v16, v17);
              v25 = __src;
              __src = v24;
              v31 = v13;
              v32 = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *v13 = v14;
              *(v13 + 8) = v15;
              v13 += 16;
            }

            v31 = v13;
            ++v11;
          }

          while (v11 != v12);
          v26 = __src;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(&v36, v26, v13, (v13 - v26) >> 4);
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(a4, &v36, &v39, 1uLL);
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (__src)
        {
          v31 = __src;
          operator delete(__src);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v35)
        {
          CFRelease(v35);
        }

        goto LABEL_36;
      }
    }

    else
    {
      cf = 0;
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(v39) = 0;
  v40 = 0x3FF0000000000000;
  memset(&__p, 0, sizeof(__p));
  std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double> const*,std::pair<int,double> const*>(&__p, &v39, &v41, 1uLL);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(a4, &__p, &v43, 1uLL);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

LABEL_36:
  v27 = *MEMORY[0x1E69E9840];
}

void sub_19D1D811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  __cxa_free_exception(v24);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a12);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a16, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::TopicModel::~TopicModel(CoreNLP::TopicModel *this)
{
  *this = &unk_1F10ADB90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::AbstractModel::~AbstractModel(this);
}

{
  *this = &unk_1F10ADB90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::AbstractModel::~AbstractModel(this);

  JUMPOUT(0x19EAF8CA0);
}

void *CoreNLP::TopicModel::TopicModel(void *a1, uint64_t *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  CoreNLP::AbstractModel::AbstractModel(a1, &v6);
  std::__tree<std::string>::destroy(&v6, v7[0]);
  *a1 = &unk_1F10ADB90;
  v4 = *a2;
  *a2 = 0;
  a1[9] = v4;
  return a1;
}

uint64_t std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double> const*,std::pair<int,double> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D8468(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1D84EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,double>>>,std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,double>>>,std::vector<std::pair<int,double>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void applesauce::CF::convert_to<std::vector<float>,0>(const void *a1@<X0>, std::vector<int> *a2@<X8>)
{
  if (!a1 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFArray_get_value_to<std::vector<float>>(a1, a2);
}

void applesauce::CF::details::CFArray_get_value_to<std::vector<float>>(const __CFArray *a1@<X0>, std::vector<int> *a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  a2->__begin_ = 0;
  std::vector<int>::reserve(a2, Count);
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
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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

void sub_19D1D87B0(_Unwind_Exception *exception_object)
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
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *&v1;
}

uint64_t CoreNLP::AbstractEmbedding::fillWordVectorsWithShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (*(*a1 + 64))(a1);
  if (a8 == 3)
  {
    v14 = 3 * v13;
  }

  else
  {
    v14 = v13;
  }

  bzero(a5, 4 * v14 * (a4 * a3));
  if (a8 == 1)
  {
    operator new[]();
  }

  if (a8 != 3)
  {
    return (*(*a1 + 16))(a1, a2, a3, a4, a5, a6, a7);
  }

  v15 = *(*a1 + 24);

  return v15(a1, a2, a3, a4, a5, a6, a7, 3);
}

uint64_t CoreNLP::AbstractEmbedding::fillTokenVectorsWithShape(uint64_t a1, const __CFArray *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = (*(*a1 + 64))(a1);
  Count = CFArrayGetCount(a2);
  bzero(a4, 4 * v12 * a3 * Count);
  if (a7 == 1)
  {
    operator new[]();
  }

  return (*(*a1 + 40))(a1, a2, Count, a3, a4, a5, a6);
}

void CoreNLP::AbstractEmbedding::tokenizeSentences(CoreNLP::AbstractEmbedding *this, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, kNLTagSchemeTokenType[0]);
  v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v5 = (*(*this + 72))(this);
  v6 = CoreNLP::copyLocaleForLanguageID(v5);
  CFDictionaryAddValue(v4, kNLTaggerOptionCustomModelPropertyLanguageKey[0], v6);
  NLTaggerCreate();
}

uint64_t ___ZN7CoreNLP17AbstractEmbedding17tokenizeSentencesEPK9__CFArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) substringWithRange:{*a2, a2[1]}];
  v4 = *(a1 + 40);

  return [v4 addObject:v3];
}

uint64_t CoreNLP::AbstractEmbedding::processModelConfig(uint64_t a1, uint64_t a2)
{
  v107 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *a2, *(a2 + 8));
  }

  else
  {
    v102 = *a2;
  }

  corelm::util::Directory::Directory<std::string>(v103, &v102);
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v101[0] = 0;
  v101[1] = 0;
  v100 = v101;
  std::string::basic_string[abi:ne200100]<0>(&v99, "");
  std::string::basic_string[abi:ne200100]<0>(&v98, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, kEmbeddingModelConfig);
  hasFile = corelm::util::Directory::hasFile(v103, &__p);
  v4 = hasFile;
  if ((v96.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
    if (hasFile)
    {
      goto LABEL_8;
    }

LABEL_11:
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      CoreNLP::AbstractEmbedding::processModelConfig(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_71;
  }

  operator delete(__p);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_8:
  v5 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(v93, kEmbeddingModelConfig);
  corelm::util::Directory::getFilePath(v103, v93, &__p);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v97 = v96;
  }

  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v97;
  }

  else
  {
    v14 = v97.__r_.__value_.__r.__words[0];
  }

  v15 = [v5 stringWithUTF8String:v14];
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  __p = &unk_1F10AD1D0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v15];
  if (![objc_msgSend(v16 "allKeys")] || !objc_msgSend(objc_msgSend(v16, "allKeys"), "containsObject:", @"EmbeddingNodeNameOnANE") || !objc_msgSend(objc_msgSend(v16, "allKeys"), "containsObject:", @"EmbeddingDimension") || (objc_msgSend(objc_msgSend(v16, "allKeys"), "containsObject:", @"SupportedBatchSizesAndSequenceLengths") & 1) == 0)
  {
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v55)
    {
      CoreNLP::AbstractEmbedding::processModelConfig(v55, v56, v57, v58, v59, v60, v61, v62);
    }

    goto LABEL_71;
  }

  MEMORY[0x19EAF8860](&v99, [objc_msgSend(v16 objectForKeyedSubscript:{@"EmbeddingNodeNameOnCPU", "UTF8String"}]);
  MEMORY[0x19EAF8860](&v98, [objc_msgSend(v16 objectForKeyedSubscript:{@"EmbeddingNodeNameOnANE", "UTF8String"}]);
  v17 = [objc_msgSend(v16 objectForKeyedSubscript:{@"EmbeddingDimension", "intValue"}];
  v81 = [v16 objectForKeyedSubscript:@"SupportedBatchSizesAndSequenceLengths"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v81 objectForKeyedSubscript:@"1"])
  {
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v66)
    {
      CoreNLP::AbstractEmbedding::processModelConfig(v66, v67, v68, v69, v70, v71, v72, v73);
    }

LABEL_71:
    v63 = 0;
    goto LABEL_72;
  }

  v76 = a1;
  v77 = v16;
  v75 = v17;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = [v81 allKeys];
  v18 = [obj countByEnumeratingWithState:&v89 objects:v106 count:16];
  if (v18)
  {
    v79 = *v90;
    do
    {
      v19 = 0;
      v80 = v18;
      do
      {
        if (*v90 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v89 + 1) + 8 * v19);
        v97.__r_.__value_.__r.__words[0] = [v20 intValue];
        __p = &v97;
        v21 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v100, &v97);
        v82 = v19;
        v23 = v21 + 5;
        v22 = v21[5];
        if (v22)
        {
          v21[6] = v22;
          operator delete(v22);
          *v23 = 0;
          v23[1] = 0;
          v23[2] = 0;
        }

        v23[1] = 0;
        v23[2] = 0;
        *v23 = 0;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v24 = [v81 objectForKey:v20];
        v25 = [v24 countByEnumeratingWithState:&v85 objects:v105 count:16];
        if (v25)
        {
          v26 = *v86;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v86 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v85 + 1) + 8 * i);
              __p = &v97;
              v29 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v100, &v97);
              v30 = [v28 intValue];
              v32 = v29[6];
              v31 = v29[7];
              if (v32 >= v31)
              {
                v34 = v29[5];
                v35 = v32 - v34;
                v36 = (v32 - v34) >> 3;
                v37 = v36 + 1;
                if ((v36 + 1) >> 61)
                {
                  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                }

                v38 = v31 - v34;
                if (v38 >> 2 > v37)
                {
                  v37 = v38 >> 2;
                }

                v51 = v38 >= 0x7FFFFFFFFFFFFFF8;
                v39 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v51)
                {
                  v39 = v37;
                }

                if (v39)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v29 + 5), v39);
                }

                v40 = (v32 - v34) >> 3;
                v41 = (8 * v36);
                v42 = (8 * v36 - 8 * v40);
                *v41 = v30;
                v33 = v41 + 1;
                memcpy(v42, v34, v35);
                v43 = v29[5];
                v29[5] = v42;
                v29[6] = v33;
                v29[7] = 0;
                if (v43)
                {
                  operator delete(v43);
                }
              }

              else
              {
                *v32 = v30;
                v33 = v32 + 8;
              }

              v29[6] = v33;
            }

            v25 = [v24 countByEnumeratingWithState:&v85 objects:v105 count:16];
          }

          while (v25);
        }

        v19 = v82 + 1;
      }

      while (v82 + 1 != v80);
      v18 = [obj countByEnumeratingWithState:&v89 objects:v106 count:16];
    }

    while (v18);
  }

  v97.__r_.__value_.__r.__words[0] = 1;
  __p = &v97;
  v44 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v100, &v97)[5];
  v93[0] = 1;
  __p = v93;
  v45 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v100, v93)[6];
  if (v44 != v45)
  {
    v46 = v44 + 1;
    if (v44 + 1 != v45)
    {
      v47 = *v44;
      v48 = v44 + 1;
      do
      {
        v50 = *v48++;
        v49 = v50;
        v51 = v47 >= v50;
        if (v47 <= v50)
        {
          v47 = v49;
        }

        if (!v51)
        {
          v44 = v46;
        }

        v46 = v48;
      }

      while (v48 != v45);
    }
  }

  v52 = *v44;
  if ([objc_msgSend(v77 "allKeys")])
  {
    v53 = [objc_msgSend(v77 objectForKeyedSubscript:{@"PreProcessor", "objectForKeyedSubscript:", @"Name"}];
    std::string::basic_string[abi:ne200100]<0>(&__p, [v53 UTF8String]);
    v54 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "custom1");
    if (v96.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }

    if (v54)
    {
      _ZNSt3__111make_uniqueB8ne200100IN6corelm19Custom1PreProcessorEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS4_EEEEDpOT0_();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, [v53 UTF8String]);
    v74 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "custom2");
    if (v96.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }

    if (v74)
    {
      _ZNSt3__111make_uniqueB8ne200100IN6corelm19Custom2PreProcessorEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS4_EEEEDpOT0_();
    }
  }

  (*(*v76 + 80))(v76, &v100);
  (*(*v76 + 88))(v76, v52);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v99;
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v83 = v98;
  }

  (*(*v76 + 96))(v76, &v84, &v83);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  (*(*v76 + 104))(v76, v75);
  v63 = 1;
LABEL_72:
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(&v100, v101[0]);
  v103[0] = &unk_1F10AD1D0;
  if (v104 < 0)
  {
    operator delete(v103[1]);
  }

  v64 = *MEMORY[0x1E69E9840];
  return v63;
}

void sub_19D1D97C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, _Unwind_Exception *a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a25)
  {
    copyModelInfo(a25);
  }

  CoreNLP::AbstractEmbedding::processModelConfig(&a51);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(&a66, a67);
  a72 = &unk_1F10AD1D0;
  if (a74 < 0)
  {
    operator delete(a73);
  }

  _Unwind_Resume(a47);
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void sub_19D1D9B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAF8CA0](v15, v16);
  _Unwind_Resume(a1);
}

void CoreNLP::SmartWordBreak::~SmartWordBreak(CoreNLP::SmartWordBreak *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 2))
  {
    ubrk_close();
  }
}

CFTypeRef *CoreNLP::SmartWordBreak::setString(CFTypeRef *this, CFTypeRef cf, CFRange a3)
{
  if (cf)
  {
    v3 = this;
    if (this[2])
    {
      v5 = *this;
      if (*v3)
      {
        CFRelease(v5);
        *v3 = 0;
      }

      *v3 = CFRetain(cf);
      v3[1] = 0;
      this = CFStringOpenUText();
      if (this)
      {
        v6 = this;
        v7 = v3[2];
        ubrk_setUText();
        utext_close(v6);
        v8 = v3[2];
        this = ubrk_first();
        v3[1] = this;
      }
    }
  }

  return this;
}

CoreNLP::Resource *std::unique_ptr<CoreNLP::Resource>::reset[abi:ne200100](CoreNLP::Resource **a1, CoreNLP::Resource *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreNLP::Resource::~Resource(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

uint64_t CoreNLP::ReadOnlyFile<char>::ReadOnlyFile(uint64_t a1, __int128 *a2, const std::string::value_type *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
  }

  if (a3[23] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  if (a3[23] < 0)
  {
    if (*(a3 + 1) != 1 || **a3 != 114)
    {
      if (*(a3 + 1) != 2)
      {
        goto LABEL_33;
      }

      a3 = *a3;
LABEL_15:
      if (*a3 == 11122)
      {
        *(a1 + 64) = 514;
        if (*(a2 + 23) >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        v12 = open(v11, 514, 384);
        goto LABEL_25;
      }

LABEL_33:
      exception = __cxa_allocate_exception(0x20uLL);
      CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 1);
      goto LABEL_36;
    }
  }

  else
  {
    v10 = *(a3 + 23);
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

    if (*a3 != 114)
    {
      goto LABEL_33;
    }
  }

  *(a1 + 64) = 0;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v12 = open(v13, 0);
LABEL_25:
  v14 = v12;
  if (v12 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 2);
    goto LABEL_36;
  }

  if (fstat(v12, &v21) < 0)
  {
    close(v14);
    exception = __cxa_allocate_exception(0x20uLL);
    CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 3);
LABEL_36:
  }

  st_size = v21.st_size;
  *(a1 + 8) = v21.st_size;
  v22 = 0;
  v23 = st_size;
  fcntl(v14, 44, &v22);
  if (!a4)
  {
    v17 = *(a1 + 8);
    operator new[]();
  }

  if (*(a1 + 8))
  {
    v16 = mmap(0, *(a1 + 8), *(a1 + 64) & 2 | 1u, 1, v14, 0);
    if (v16 == -1)
    {
      close(v14);
      v20 = __cxa_allocate_exception(0x20uLL);
      CoreNLP::ReadOnlyFileCreationException::ReadOnlyFileCreationException(v20, 4);
    }

    *a1 = v16;
  }

  close(v14);
  return a1;
}

void sub_19D1D9F94(_Unwind_Exception *a1)
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

CFIndex CoreNLP::DefaultSubWordTagger::setLocaleConstraints(CFIndex this, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = this;
    this = CFArrayGetCount(theArray);
    if (this == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);

      return CoreNLP::DefaultSubWordTagger::resetICUTextBreak(v3, ValueAtIndex);
    }
  }

  return this;
}

void CoreNLP::DefaultSubWordTagger::releaseString(CoreNLP::DefaultSubWordTagger *this)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = -1;
  CoreNLP::ICUTextBreak::reset(*(this + 8));
  *(this + 11) = *(this + 10);
  *(this + 13) = 0;
}

uint64_t CoreNLP::DefaultSubWordTagger::enumeratePersonNamesOfCurrentSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 113) == 1)
  {
    v7 = 1;
    (*(a3 + 16))(a3, a1 + 24, &v7);
    *(a1 + 113) = 0;
  }

  else
  {
    v4 = *(a1 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN7CoreNLP20DefaultSubWordTagger37enumeratePersonNamesOfCurrentSequenceEmU13block_pointerFvP7NLTokenPbE_block_invoke;
    v6[3] = &unk_1E7624D88;
    v6[4] = a3;
    v6[5] = a1;
    CoreNLP::ICUTextBreak::fastEnumerateTokens(v4, a2, v6);
  }

  return 1;
}

uint64_t ___ZN7CoreNLP20DefaultSubWordTagger37enumeratePersonNamesOfCurrentSequenceEmU13block_pointerFvP7NLTokenPbE_block_invoke(uint64_t result, void *a2)
{
  if (a2[2] != -1)
  {
    v2 = *(*(*(result + 40) + 8) + 16) + *a2;
    v3 = a2[1];
    return (*(*(result + 32) + 16))();
  }

  return result;
}

__CFString *CoreNLP::DefaultSubWordTagger::copyTranscriptionOfCurrentToken(uint64_t a1, CFIndex *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3.location = *a2;
  if (v3.location == -1)
  {
    return 0;
  }

  v3.length = a2[1];
  if (!v3.length)
  {
    return 0;
  }

  SubStringCharsOfRange = CoreNLP::StringBuffer::getSubStringCharsOfRange(*(a1 + 16), v3);
  v6 = (**(a1 + 8) >> 26) & 1;
  v7 = a2[1];

  return CoreNLP::createLatinTranscription(SubStringCharsOfRange, v7, v6);
}

uint64_t CoreNLP::DefaultSubWordTagger::needSpeciallyHandleCJPersonName(CoreNLP::DefaultSubWordTagger *this, const __CFString *a2, CFRange a3)
{
  *(this + 24) = xmmword_19D27D570;
  v3 = this + 24;
  if (*(this + 72) != 1)
  {
    goto LABEL_4;
  }

  length = a3.length;
  v6 = *(*(this + 1) + 56);
  (*(**(this + 8) + 16))(*(this + 8), a2, a3.location);
  v12 = 0;
  v7 = (*(**(this + 8) + 56))(*(this + 8), &v12);
  if (!v7 || (*(v7 + 16) & 0x80) == 0)
  {
    goto LABEL_4;
  }

  if (*(v7 + 8) != length)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    v9 = 1;
    *(this + 113) = 1;
LABEL_10:
    v11 = *v7;
    *(v3 + 2) = *(v7 + 16);
    *v3 = v11;
    v8 = 1;
    return v8 | (v9 << 8);
  }

LABEL_4:
  v8 = 0;
  v9 = 0;
  return v8 | (v9 << 8);
}

_OWORD *CoreNLP::DefaultSubWordTagger::enumerateSpeciallyHandledPersonNames(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = (a1 + 24);
  if (*(a1 + 24) == -1 || !*(a1 + 32))
  {
    goto LABEL_6;
  }

  v5 = 0x80000;
  if (*(*(a1 + 8) + 56) == 1)
  {
    v5 = 0x40000;
  }

  *(a1 + 40) |= v5;
  result = (*(a2 + 16))(a2, v4, &v8);
  if ((v8 & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    do
    {
      result = (*(**(a1 + 64) + 56))(*(a1 + 64), &v7);
      if (!result)
      {
        break;
      }

      *v4 = *result;
      *(a1 + 40) = 0x80000;
      result = (*(a2 + 16))(a2, v4, &v8);
    }

    while (v8 != 1);
  }

  return result;
}

uint64_t CoreNLP::DefaultSubWordTagger::getCurrentICUTokenFlag(CoreNLP::DefaultSubWordTagger *this)
{
  if (*(this + 112) == 1)
  {
    return (*(**(this + 8) + 64))();
  }

  else
  {
    return 0;
  }
}

uint64_t CoreNLP::MeCabSubTokenizer::init(CoreNLP::MeCabSubTokenizer *this, int a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 100) = a2;
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/usr/share/tokenizer/ja");
        (*(*v2 + 16))(v2, __p, 0);
        if (v5 < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }

      if (a2 == 2)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/usr/share/tokenizer/zh/Hans");
        (*(*v2 + 16))(v2, __p, 0);
        if (v5 < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          std::string::basic_string[abi:ne200100]<0>(__p, "/usr/share/tokenizer/zh/Hant");
          (*(*v2 + 16))(v2, __p, 0);
          if (v5 < 0)
          {
            operator delete(__p[0]);
          }

          operator new();
        case 4:
          std::string::basic_string[abi:ne200100]<0>(__p, "/usr/share/tokenizer/zh/yue-Hant");
          (*(*v2 + 16))(v2, __p, 0);
          if (v5 < 0)
          {
            operator delete(__p[0]);
          }

          operator new();
        case 5:
          std::string::basic_string[abi:ne200100]<0>(__p, "/usr/share/tokenizer/ko");
          (*(*v2 + 16))(v2, __p, 0);
          if (v5 < 0)
          {
            operator delete(__p[0]);
          }

          operator new();
      }
    }

    CoreNLP::MeCabSubTokenizer::initFunctors(this);
  }

  return 0;
}

void *CoreNLP::MeCabSubTokenizer::initFunctors(CoreNLP::MeCabSubTokenizer *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 100);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v10 = &unk_1F10ADDA0;
      v12 = &v10;
      std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::swap[abi:ne200100](&v10, this + 2);
      std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADE50;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::swap[abi:ne200100](&v10, this + 10);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADF00;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::swap[abi:ne200100](&v10, this + 14);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADFB0;
      v12 = &v10;
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::swap[abi:ne200100](&v10, this + 18);
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10AE060;
      v4 = CoreNLP::mecab::GetJapanesePOS;
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_13;
      }

      v10 = &unk_1F10ADDA0;
      v12 = &v10;
      std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::swap[abi:ne200100](&v10, this + 2);
      std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADE50;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::swap[abi:ne200100](&v10, this + 10);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADF00;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::swap[abi:ne200100](&v10, this + 14);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADFB0;
      v12 = &v10;
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::swap[abi:ne200100](&v10, this + 18);
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10AE060;
      v4 = CoreNLP::mecab::GetSimplifiedChinesePOS;
    }

    v11 = v4;
    v12 = &v10;
    std::__function::__value_func<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::swap[abi:ne200100](&v10, this + 22);
    std::__function::__value_func<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::~__value_func[abi:ne200100](&v10);
  }

  else
  {
    if (v2 == 3 || v2 == 4)
    {
      v10 = &unk_1F10ADE50;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::swap[abi:ne200100](&v10, this + 10);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADF00;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::swap[abi:ne200100](&v10, this + 14);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADFB0;
      v12 = &v10;
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::swap[abi:ne200100](&v10, this + 18);
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADDA0;
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      v10 = &unk_1F10ADE50;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::swap[abi:ne200100](&v10, this + 10);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADF00;
      v12 = &v10;
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::swap[abi:ne200100](&v10, this + 14);
      std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADFB0;
      v12 = &v10;
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::swap[abi:ne200100](&v10, this + 18);
      std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::~__value_func[abi:ne200100](&v10);
      v10 = &unk_1F10ADDA0;
    }

    v11 = v3;
    v12 = &v10;
    std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::swap[abi:ne200100](&v10, this + 2);
    std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::~__value_func[abi:ne200100](&v10);
  }

LABEL_13:
  v6 = *(this + 31);
  v5 = *(this + 32);
  if (v6 >= v5)
  {
    v7 = std::vector<std::function<BOOL ()(mecab_node_t const*)>>::__emplace_back_slow_path<BOOL (&)(mecab_node_t const*)>(this + 30, CoreNLP::mecab::isAlphaNumeric);
    v5 = *(this + 32);
  }

  else
  {
    *v6 = &unk_1F10AE1D0;
    v6[1] = CoreNLP::mecab::isAlphaNumeric;
    v6[3] = v6;
    v7 = v6 + 4;
  }

  *(this + 31) = v7;
  if (v7 >= v5)
  {
    result = std::vector<std::function<BOOL ()(mecab_node_t const*)>>::__emplace_back_slow_path<BOOL (&)(mecab_node_t const*)>(this + 30, CoreNLP::mecab::isOutOfBMP);
  }

  else
  {
    *v7 = &unk_1F10AE1D0;
    v7[1] = CoreNLP::mecab::isOutOfBMP;
    v7[3] = v7;
    result = v7 + 4;
  }

  *(this + 31) = result;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void CoreNLP::MeCabSubTokenizer::~MeCabSubTokenizer(CoreNLP::MeCabSubTokenizer *this)
{
  *this = &unk_1F10ADD00;
  v2 = *(this + 58);
  *(this + 58) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 57);
  *(this + 57) = 0;
  if (v3)
  {
    MEMORY[0x19EAF8C70](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 52);
  if (v4)
  {
    *(this + 53) = v4;
    operator delete(v4);
  }

  v5 = *(this + 33);
  *(this + 33) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = (this + 240);
  std::vector<std::function<BOOL ()(mecab_node_t const*)>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__function::__value_func<unsigned short const* ()(mecab_node_t const**,long *)>::~__value_func[abi:ne200100](this + 208);
  std::__function::__value_func<NLTokenizerPartOfSpeech ()(mecab_node_t const*)>::~__value_func[abi:ne200100](this + 176);
  std::__function::__value_func<void ()(mecab_node_t const*,NLToken *,unsigned long)>::~__value_func[abi:ne200100](this + 144);
  std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::~__value_func[abi:ne200100](this + 112);
  std::__function::__value_func<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<unsigned long ()(unsigned short const*,int)>::~__value_func[abi:ne200100](this + 48);
  std::__function::__value_func<__CFString const* ()(CoreNLP::MeCabInterface *,mecab_node_t const*,unsigned long,BOOL)>::~__value_func[abi:ne200100](this + 16);
  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{
  CoreNLP::MeCabSubTokenizer::~MeCabSubTokenizer(this);

  JUMPOUT(0x19EAF8CA0);
}

__CFString *CoreNLP::anonymous namespace::createJapaneseTranscription(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 90);
  if (v3 - 3 >= 2 && (v3 != 5 || *(a2 + 91) != 1))
  {
    if ((a3 & 0x20000) != 0)
    {
      v5 = v3 > 8;
      v6 = (1 << v3) & 0x184;
      if (!v5 && v6 != 0)
      {
        v8 = a2;
        do
        {
          if (*(v8 + 80) == *(a2 + 80) && *(v8 + 88) - 1 < 2)
          {
            break;
          }

          v8 = *(v8 + 24);
        }

        while (v8);
      }
    }

    operator new[]();
  }
}

uint64_t CoreNLP::anonymous namespace::calcRange(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5)
{
  v9 = *(*a2 + 64);
  v10 = *(*a2 + 80);
  v11 = v10 >> 1;
  if ((*&a4 & 0x810000) != 0 || v10 < 4 || *(*a2 + 90) != 3 || *(v9 + 2) != 12288)
  {
    v12 = CoreNLP::NumberIterator::next(a2);
    v13 = *a2;
    if (*a2 && *(v13 + 91) == 1 && (*(v13 + 80) & 0xFFFE) == 2 && (**(v13 + 64) & 0xFC00) == 0xD800 && (v14 = *(v13 + 8)) != 0 && *(v14 + 91) == 1 && (*(v14 + 80) & 0xFFFE) == 2 && (**(v14 + 64) & 0xFC00) == 0xDC00)
    {
      *a2 = v14;
      v15 = 1;
      v13 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v12 + v11 + v15;
    if (a3)
    {
      while (1)
      {
        v17 = *(v13 + 8);
        if (v17 && *(v17 + 91) == 1)
        {
          v18 = *(v17 + 90);
          if (v18 == 12)
          {
            v20 = *v17;
            if (v20 && *(v20 + 90) == 11)
            {
              return (v9 - a1) >> 1;
            }
          }

          else if (v18 == 11)
          {
            v19 = v17[1];
            if (v19)
            {
              if (*(v19 + 90) == 12)
              {
                return (v9 - a1) >> 1;
              }
            }
          }
        }

        if (!(*(*a5 + 16))(a5))
        {
          return (v9 - a1) >> 1;
        }

        v13 = *(*a2 + 8);
        *a2 = v13;
        v16 += *(v13 + 82) >> 1;
      }
    }
  }

  return (v9 - a1) >> 1;
}

uint64_t CoreNLP::anonymous namespace::calcRangeRandomAccess(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v6 = *a2;
  v7 = *(*a2 + 64);
  v8 = (v7 - a1) >> 1;
  if ((*&a4 & 0x810000) == 0 && *(*a2 + 80) >= 4u && *(v6 + 90) == 3 && *(v7 + 2) == 12288)
  {
    return v8;
  }

  v22 = *a2;
  v23 = v6;
  if (CoreNLP::NumberIterator::isDecimalMark(v6) && (v9 = *v6, (v23 = v9) != 0))
  {
    v10 = *(v9 + 80) >> 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = CoreNLP::NumberIterator::prev(&v23) + v10;
  if (CoreNLP::NumberIterator::isDecimalMark(v6))
  {
    v12 = *(v6 + 8);
    v22 = v12;
    if (v12)
    {
      v12 = *(v12 + 80) >> 1;
    }

    v11 += v12;
  }

  if ((CoreNLP::NumberIterator::next(&v22) + v11) >= 1)
  {
    return (v23[8] - a1) >> 1;
  }

  v13 = *a2;
  if (*a2)
  {
    if (*(v13 + 91) == 1 && (*(v13 + 80) & 0xFFFE) == 2)
    {
      v14 = *(v13 + 64);
      if ((*v14 & 0xFC00) == 0xD800)
      {
        v15 = *(v13 + 8);
        if (v15)
        {
          if (*(v15 + 91) == 1 && (*(v15 + 80) & 0xFFFE) == 2 && (**(v15 + 64) & 0xFC00) == 0xDC00)
          {
            v16 = (v14 - a1) >> 1;
            v17 = 1;
            goto LABEL_36;
          }
        }
      }
    }
  }

  v18 = *v13;
  if (!*v13)
  {
    v17 = 0;
    goto LABEL_35;
  }

  if (*(v18 + 91) != 1 || (*(v18 + 80) & 0xFFFE) != 2 || (v19 = *(v18 + 64), (*v19 & 0xFC00) != 0xD800) || *(v13 + 91) != 1 || (*(v13 + 80) & 0xFFFE) != 2)
  {
    v17 = 0;
LABEL_35:
    v16 = -1;
    goto LABEL_36;
  }

  v16 = -1;
  v20 = (v19 - a1) >> 1;
  if ((**(v13 + 64) & 0xFC00) == 0xDC00)
  {
    v16 = v20;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_36:
  if (((v16 != -1) & v17) != 0)
  {
    return v16;
  }

  return v8;
}

uint64_t CoreNLP::anonymous namespace::setAttributes(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 16) = result;
  if ((a3 & 0x80000) != 0)
  {
    if ((result & 0x80) != 0)
    {
      result = result & 0x1F7F | 0x40000000;
      *(a2 + 16) = result;
    }

    if (*(a1 + 90) == 5 && *(a1 + 80) && **(a1 + 64) - 65 <= 0x19)
    {
      result |= 2uLL;
      *(a2 + 16) = result;
    }

    if ((result & 8) != 0)
    {
      *(a2 + 16) = result & 0xFFFFFFFFFFFFFFC7 | 0x30;
    }
  }

  return result;
}

uint64_t CoreNLP::mecab::GetJapanesePOS(uint64_t a1)
{
  v1 = *(a1 + 88);
  if ((v1 - 12) < 3)
  {
    return 1;
  }

  if (v1 == 7)
  {
    return 3;
  }

  if (v1 == 26)
  {
    return 14;
  }

  if ((v1 - 8) < 3)
  {
    return 10;
  }

  if (v1 == 11)
  {
    return 4;
  }

  if ((v1 - 15) < 4u)
  {
    return 2;
  }

  if ((v1 - 1) < 6)
  {
    return 0;
  }

  if ((v1 - 20) < 3)
  {
    return 12;
  }

  v3 = v1 - 19;
  if (v3 > 9)
  {
    return 15;
  }

  else
  {
    return *&asc_19D27E540[4 * v3];
  }
}

__CFString *CoreNLP::anonymous namespace::createChineseTranscription(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 90) - 3 > 2)
  {
    operator new[]();
  }
}

uint64_t CoreNLP::mecab::GetSimplifiedChinesePOS(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 - 1) < 7 && ((0x4Du >> (v1 - 1)))
  {
    return dword_19D27E568[(v1 - 1)];
  }

  if ((v1 & 0xFFFC) == 8)
  {
    return 3;
  }

  if (v1 == 12)
  {
    return 8;
  }

  if (v1 == 15)
  {
    return 11;
  }

  if ((v1 - 16) < 6)
  {
    return 13;
  }

  if (v1 == 27)
  {
    return 12;
  }

  if ((v1 - 37) < 0xA)
  {
    return 0;
  }

  if (v1 == 48)
  {
    return 6;
  }

  if ((v1 - 61) < 5)
  {
    return 7;
  }

  if ((v1 - 70) < 9)
  {
    return 4;
  }

  v3 = v1 - 79;
  if ((v1 - 88) < 0x10u)
  {
    v4 = 14;
  }

  else
  {
    v4 = 15;
  }

  if (v3 >= 9)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t CoreNLP::anonymous namespace::korean::calcRangeForward(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5)
{
  v6 = a4;
  v10 = *(*a2 + 64);
  v11 = *(*a2 + 80);
  v12 = v11 >> 1;
  if ((a4 & 0x10000) == 0 && v12 == 2)
  {
    if (v11 >= 4 && *(*a2 + 90) == 3)
    {
      if (*(v10 + 2) == 12288)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  v13 = CoreNLP::NumberIterator::next(a2);
  v14 = *a2;
  if (*a2 && *(v14 + 91) == 1 && (*(v14 + 80) & 0xFFFE) == 2 && (**(v14 + 64) & 0xFC00) == 0xD800 && (v15 = *(v14 + 8)) != 0 && *(v15 + 91) == 1 && (*(v15 + 80) & 0xFFFE) == 2 && (**(v15 + 64) & 0xFC00) == 0xDC00)
  {
    *a2 = v15;
    v16 = 1;
    v14 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v13 + v12 + v16;
  if (a3)
  {
    while (1)
    {
      v18 = *(v14 + 8);
      if (v18 && *(v18 + 91) == 1)
      {
        v19 = *(v18 + 90);
        if (v19 == 12)
        {
          v21 = *v18;
          if (v21 && *(v21 + 90) == 11)
          {
            return (v10 - a1) >> 1;
          }
        }

        else if (v19 == 11)
        {
          v20 = v18[1];
          if (v20)
          {
            if (*(v20 + 90) == 12)
            {
              return (v10 - a1) >> 1;
            }
          }
        }
      }

      if ((v6 & 4) != 0)
      {
        if (((*(*a5 + 16))(a5) & 1) == 0)
        {
          return (v10 - a1) >> 1;
        }
      }

      else if (!CoreNLP::mecab::KoreanWordConnector::connect(a1, v14))
      {
        return (v10 - a1) >> 1;
      }

      v14 = *(*a2 + 8);
      *a2 = v14;
      v17 += *(v14 + 82) >> 1;
    }
  }

  return (v10 - a1) >> 1;
}

uint64_t CoreNLP::anonymous namespace::korean::calcRangeRandomAccess(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v7 = *a2;
  v8 = *(*a2 + 64);
  v9 = *(*a2 + 80);
  v10 = v9 >> 1;
  if ((a4 & 0x10000) == 0 && v10 == 2)
  {
    if (v9 >= 4 && *(v7 + 90) == 3)
    {
      if (*(v8 + 2) == 12288)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  v35 = *a2;
  v36 = v7;
  if (CoreNLP::NumberIterator::isDecimalMark(v7) && (v11 = *v7, (v36 = v11) != 0))
  {
    v12 = *(v11 + 80) >> 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = CoreNLP::NumberIterator::prev(&v36) + v12;
  if (CoreNLP::NumberIterator::isDecimalMark(v7))
  {
    v14 = *(v7 + 8);
    v35 = v14;
    if (v14)
    {
      v14 = *(v14 + 80) >> 1;
    }

    v13 += v14;
  }

  if ((CoreNLP::NumberIterator::next(&v35) + v13) >= 1)
  {
    return (v36[8] - a1) >> 1;
  }

  v16 = (v8 - a1) >> 1;
  v17 = *a2;
  if (*a2 && *(v17 + 91) == 1 && (*(v17 + 80) & 0xFFFE) == 2 && (v18 = *(v17 + 64), (*v18 & 0xFC00) == 0xD800) && (v19 = *(v17 + 8)) != 0 && *(v19 + 91) == 1 && (*(v19 + 80) & 0xFFFE) == 2 && (**(v19 + 64) & 0xFC00) == 0xDC00)
  {
    v20 = 0;
    v21 = (v18 - a1) >> 1;
  }

  else
  {
    v22 = *v17;
    if (*v17 && *(v22 + 91) == 1 && (*(v22 + 80) & 0xFFFE) == 2 && (v23 = *(v22 + 64), (*v23 & 0xFC00) == 0xD800) && *(v17 + 91) == 1 && (*(v17 + 80) & 0xFFFE) == 2)
    {
      v21 = -1;
      v24 = (v23 - a1) >> 1;
      if ((**(v17 + 64) & 0xFC00) == 0xDC00)
      {
        v21 = v24;
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
      v21 = -1;
    }
  }

  if (v21 == -1)
  {
    v20 = 1;
  }

  if (v20)
  {
    result = v16;
  }

  else
  {
    result = v21;
  }

  if (v20 == 1 && a3)
  {
    v25 = *v17;
    if (*v17)
    {
      while (1)
      {
        v26 = *(v25 + 91);
        if ((v26 & 0xFE) == 2 || !*(v25 + 80))
        {
          break;
        }

        if (v26 == 1)
        {
          v27 = *(v25 + 90);
          if (v27 == 12)
          {
            if (*v25 && *(*v25 + 90) == 11)
            {
              break;
            }
          }

          else if (v27 == 11)
          {
            v28 = *(v25 + 8);
            if (v28)
            {
              if (*(v28 + 90) == 12)
              {
                break;
              }
            }
          }
        }

        if (CoreNLP::mecab::KoreanWordConnector::connect(a1, v25))
        {
          v16 = (*(v25 + 64) - a1) >> 1;
          v10 += *(v25 + 80) >> 1;
          v25 = *v25;
          if (v25)
          {
            continue;
          }
        }

        break;
      }

      v17 = *a2;
    }

    for (i = v10; ; i += v34)
    {
      v30 = *(v17 + 8);
      if (v30 && *(v30 + 91) == 1)
      {
        v31 = *(v30 + 90);
        if (v31 == 12)
        {
          v33 = *v30;
          if (v33 && *(v33 + 90) == 11)
          {
            return v16;
          }
        }

        else if (v31 == 11)
        {
          v32 = v30[1];
          if (v32)
          {
            if (*(v32 + 90) == 12)
            {
              return v16;
            }
          }
        }
      }

      if (!CoreNLP::mecab::KoreanWordConnector::connect(a1, v17))
      {
        return v16;
      }

      v17 = *(*a2 + 8);
      *a2 = v17;
      if (v17)
      {
        v34 = *(v17 + 80) >> 1;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  return result;
}

uint64_t CoreNLP::anonymous namespace::korean::setAttributes(uint64_t a1, uint64_t a2, int a3)
{
  v6 = result | 2;
  if ((a3 & 0x8800000) != 0)
  {
    v6 = result & 0x1FFD;
  }

  *(a2 + 16) = v6;
  return result;
}

__CFString *CoreNLP::anonymous namespace::createKoreanTranscription(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a2 + 64);
  v5[1] = 0;
  v5[2] = *(a2 + 80) >> 1;
  MutableString = CoreNLP::TranscriptionBuffer::createMutableString(v5);
  v3 = MutableString;
  if (MutableString && !CFStringTransform(MutableString, 0, *MEMORY[0x1E695E9A8], 0))
  {
    CFRelease(v3);
  }

  CoreNLP::TranscriptionBuffer::~TranscriptionBuffer(v5);
  return v3;
}

void sub_19D1DC6FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNLP::TranscriptionBuffer::~TranscriptionBuffer(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::mecab::isOutOfBMP(uint64_t a1)
{
  v1 = *(a1 + 90);
  if ((v1 - 11) > 1)
  {
    goto LABEL_6;
  }

  if (*(a1 + 91) == 1)
  {
    if (v1 == 11)
    {
      v2 = *(a1 + 8);
      if (v2 && *(v2 + 90) == 12)
      {
LABEL_6:
        v3 = 0;
        goto LABEL_7;
      }
    }

    else if (*a1)
    {
      v3 = *(*a1 + 90) != 11;
LABEL_7:
      if (*(a1 + 90))
      {
        v4 = !v3;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return *(a1 + 80) == 2 && **(a1 + 64) == 8205;
      }
    }
  }

  if (*(a1 + 91) == 1)
  {
    return 1;
  }

  return *(a1 + 80) == 2 && **(a1 + 64) == 8205;
}

double CoreNLP::MeCabSubTokenizer::setString(CoreNLP::MeCabSubTokenizer *this, const CoreNLP::UStringPiece *a2, CFRange a3)
{
  *(this + 34) = a2;
  *(this + 280) = a3;
  *(this + 37) = 0;
  if (a3.location < 0 || a3.length < 1)
  {
    if (!a2)
    {
      goto LABEL_20;
    }

    v4 = *(a2 + 2);
    v6 = 1;
    if (v4 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v4 = *(a2 + 2);
  if (v4 != -1)
  {
    v5 = a3.location >= v4 && a3.location + a3.length <= *(a2 + 3) + v4;
    v6 = !v5;
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_14:
      if (*(a2 + 3) >= 1)
      {
        v7 = *(a2 + 1);
        if (v7 != 0 && !v6)
        {
          v8 = (*(**(this + 1) + 24))(*(this + 1), v7 + 2 * a3.location - 2 * v4, a3.length);
          *(this + 37) = v8;
          if (v8)
          {
            if ((*(v8 + 91) & 0xFE) == 2 || !*(v8 + 80))
            {
              *(this + 37) = *(v8 + 8);
            }
          }
        }
      }
    }
  }

LABEL_20:
  result = 0.0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  v10 = *(*(this + 44) + 16);
  *(this + 45) = 0;
  *(this + 46) = v10;
  *(this + 47) = -1;
  *(this + 48) = 0;
  *(this + 49) = 0;
  return result;
}

void *CoreNLP::MeCabSubTokenizer::setOptions(void *this, uint64_t a2)
{
  v2 = this;
  v8 = *MEMORY[0x1E69E9840];
  this[55] = a2;
  if ((a2 & 0x2000000) != 0)
  {
    v3 = CoreNLP::quickCheckNFKD;
  }

  else
  {
    if ((a2 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    v3 = CoreNLP::quickCheckNFKC;
  }

  *&v7 = v3;
  this = std::function<unsigned long ()(unsigned short const*,int)>::operator=<std::__bind<unsigned long (&)(unsigned short const*,int),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,void>(this + 6, &v7);
LABEL_6:
  v4 = v2[55];
  v5 = (v4 & 0x8000004) != 0 && (v4 & 0x880000) == 0;
  *(v2 + 448) = v5;
  v6 = *MEMORY[0x1E69E9840];
  return this;
}

unint64_t CoreNLP::quickCheckNFKD(CoreNLP *this, const unsigned __int16 *a2)
{
  if (CoreNLP::getUNormalizer2(3))
  {
    return (unorm2_quickCheck() != 1) << 8;
  }

  else
  {
    return 256;
  }
}

void *std::function<unsigned long ()(unsigned short const*,int)>::operator=<std::__bind<unsigned long (&)(unsigned short const*,int),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,void>(void *a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F10AE110;
  v6 = *a2;
  HIDWORD(v6) = 0;
  *(&v6 + 9) = 0;
  v7 = &v5;
  std::__function::__value_func<unsigned long ()(unsigned short const*,int)>::swap[abi:ne200100](&v5, a1);
  std::__function::__value_func<unsigned long ()(unsigned short const*,int)>::~__value_func[abi:ne200100](&v5);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t CoreNLP::MeCabSubTokenizer::fastEnumerateTokensWithSpecifiedStop(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 296);
  if (v5)
  {
    v9 = result;
    v17 = *(result + 296);
    v10 = result + 376;
    do
    {
      v11 = *(v5 + 91);
      if ((v11 & 0xFE) != 2 && *(v5 + 80))
      {
        v13 = *(v9 + 272);
        v12 = *(v9 + 280);
        if (v13)
        {
          v14 = (*(v5 + 64) - (*(v13 + 8) + 2 * v12) + 2 * *(v13 + 16)) >> 1;
          v15 = *(v5 + 80) >> 1;
        }

        else
        {
          v15 = 0;
          v14 = -1;
        }

        if (v11 == 1 && *(v5 + 90) != 4)
        {
          result = (*(a5 + 16))(a5, v14 + v12, v15);
        }

        else
        {
          *(v9 + 304) = v5;
          *&v18 = *(v9 + 280) + std::function<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::operator()(v9 + 80, *(v13 + 8) + 2 * v12 - 2 * *(v13 + 16), &v17, *(v9 + 448), *(v9 + 440), *(v9 + 464));
          *(&v18 + 1) = v16;
          std::function<void ()(mecab_node_t const*,NLToken *,unsigned long)>::operator()(v9 + 144, v17, &v18, *(v9 + 440));
          *v10 = v18;
          *(v10 + 16) = v19;
          result = (*(a4 + 16))(a4, &v18, a3);
        }

        if (*a3)
        {
          break;
        }
      }

      v5 = *(v17 + 8);
      v17 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t CoreNLP::MeCabSubTokenizer::getRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (!v2)
  {
    return -1;
  }

  if (*(a2 + 91) == 2)
  {
    result = 0;
  }

  else
  {
    result = (*(a2 + 64) - (*(v2 + 8) + 2 * *(a1 + 280)) + 2 * *(v2 + 16)) >> 1;
  }

  v4 = *(a2 + 80) >> 1;
  return result;
}

uint64_t std::function<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v8 = a6;
  v9 = a5;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

uint64_t std::function<void ()(mecab_node_t const*,NLToken *,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

char *CoreNLP::MeCabSubTokenizer::goToTokenAtIndex(CoreNLP::MeCabSubTokenizer *this, unint64_t a2, uint64_t a3, CFRange *a4)
{
  if (a4)
  {
    *a4 = xmmword_19D27D570;
  }

  v6 = *(this + 35);
  v7 = a3 - v6;
  if (a3 < v6 || !*(this + 34) || *(this + 36) + v6 <= a3)
  {
    return 0;
  }

  v8 = this + 376;
  v9 = *(this + 47);
  if (v9 <= a3 && *(this + 48) + v9 > a3)
  {
    return v8;
  }

  v10 = *(this + 37);
  if (!v10)
  {
    return 0;
  }

  v11 = *(this + 55) & 0x10004;
  if (!v11)
  {
    v10 = (this + 296);
  }

  for (i = *v10; ; i = i[1])
  {
    v31 = i;
    if (!i)
    {
LABEL_31:
      if (v11)
      {
        if (CoreNLP::MeCabSubTokenizer::hasSpace(this, i))
        {
          CoreNLP::MeCabSubTokenizer::seekSpace(this, i);
          v20 = CoreNLP::mecab::SpaceIterator::seekTo(this + 44, v7);
          if (v20 != -1)
          {
LABEL_34:
            *(this + 47) = *(this + 35) + v20;
            *(this + 48) = v21;
            *(this + 49) = 2048;
            return v8;
          }
        }
      }

      return 0;
    }

    v13 = *(i + 91);
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        goto LABEL_31;
      }

      v14 = CoreNLP::MeCabSubTokenizer::skipNonWord(this, i);
      i = v31;
      if (!v14)
      {
        break;
      }
    }

LABEL_30:
    ;
  }

  if (v31)
  {
    v15 = *(v31 + 40) >> 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v31 + 41) >> 1;
  NodeLocation = CoreNLP::MeCabSubTokenizer::getNodeLocation(this, v31);
  v18 = NodeLocation;
  if (v11)
  {
    if (NodeLocation <= v7 && v7 < NodeLocation + v16 - v15)
    {
      v19 = v31;
      if (CoreNLP::MeCabSubTokenizer::hasSpace(this, v31))
      {
        CoreNLP::MeCabSubTokenizer::seekSpace(this, v19);
        v20 = CoreNLP::mecab::SpaceIterator::seekTo(this + 44, v7);
        if (v20 != -1)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v22 = *(this + 55);
  if ((v22 & 4) != 0)
  {
    v23 = std::function<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long,CoreNLP::LineBreakConnector const*)>::operator()(this + 80, *(*(this + 34) + 8) + 2 * *(this + 35) - 2 * *(*(this + 34) + 16), &v31, *(this + 448), v22, *(this + 58));
    if (v7 < v23)
    {
      return 0;
    }

    i = v31;
    if (v23 + v24 > v7)
    {
      *(this + 47) = *(this + 35) + v23;
      *(this + 48) = v24;
      std::function<void ()(mecab_node_t const*,NLToken *,unsigned long)>::operator()(this + 144, i, this + 376, *(this + 55));
      *(this + 38) = v31;
      return v8;
    }

    goto LABEL_30;
  }

  if (v18 > v7 || v7 >= v18 + v16)
  {
    i = v31;
    goto LABEL_30;
  }

  if (!v11 && CoreNLP::MeCabSubTokenizer::hasSpace(this, v31))
  {
    SpaceRange = CoreNLP::MeCabSubTokenizer::getSpaceRange(this, v31);
    if (SpaceRange <= v7 && SpaceRange + v26 > v7)
    {
      return 0;
    }
  }

  *(this + 47) = *(this + 35) + std::function<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::operator()(this + 112, *(*(this + 34) + 8) + 2 * *(this + 35) - 2 * *(*(this + 34) + 16), &v31, *(this + 448), *(this + 55));
  *(this + 48) = v28;
  std::function<void ()(mecab_node_t const*,NLToken *,unsigned long)>::operator()(this + 144, v31, this + 376, *(this + 55));
  v29 = v31;
  *(this + 38) = v31;
  if (a4 && *(v29 + 91) == 1)
  {
    a4->location = CoreNLP::MeCabSubTokenizer::makeUnhandledRange(this, v29);
    a4->length = v30;
  }

  return v8;
}

BOOL CoreNLP::MeCabSubTokenizer::skipNonWord(uint64_t a1, uint64_t a2)
{
  if (CoreNLP::MeCabSubTokenizer::hasObjectReplacementCharacter(a1, a2))
  {
    return 0;
  }

  if (*(a2 + 90) != 3)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v4 = -56613888;
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  if (v6 == 2)
  {
    goto LABEL_6;
  }

  if (v6 == 4)
  {
    v4 = v5[1] - 56613888;
LABEL_6:
    v7 = *v5;
    if ((v7 & 0xF800) == 0xD800)
    {
      v7 = v4 + (v7 << 10);
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v8 = u_ispunct(v7) != 0;
LABEL_11:
  if ((*(a1 + 440) & 0x10004) != 0)
  {
LABEL_12:
    result = 0;
    goto LABEL_34;
  }

  v10 = *(a2 + 8);
  if (!v10 || *(v10 + 91) == 3 || *(v10 + 82) != *(v10 + 80) || *(a2 + 80) != 2 || (**(a2 + 64) & 0xFFFD) != 0x2C || (result = 0, v11 = *(v10 + 90), v11 != 4) && v11 != 8)
  {
    if (*(a2 + 80) == 2)
    {
      v12 = **(a2 + 64);
      v15 = *(a2 + 90) == 3 && v12 == 12288 || v12 == 160;
      if (v15 || v8)
      {
        goto LABEL_33;
      }
    }

    else if (v8)
    {
      goto LABEL_33;
    }

    v19 = *(a2 + 88);
    v20 = *(a1 + 400);
    if (v20 == 1)
    {
      if (v19 <= 0x1C)
      {
        goto LABEL_12;
      }
    }

    else if (v20 == 3)
    {
      if (v19 - 39 >= 5)
      {
        result = CoreNLP::mecab::skipSymbol(a2);
        goto LABEL_34;
      }
    }

    else if (v20 != 2 || v19 - 88 >= 0x11)
    {
      goto LABEL_12;
    }

LABEL_33:
    result = 1;
  }

LABEL_34:
  if (*(a1 + 400) != 1 || *(a1 + 440) != 0 || !result)
  {
    return result && ((*(a1 + 442) & 8) == 0 || !v8 || *(a2 + 80) != 2 || **(a2 + 64) != 45);
  }

  if (*(a2 + 80) == 2)
  {
    v16 = **(a2 + 64);
    v18 = (v16 - 40) >= 2;
    v17 = v16 - 65288;
    v18 = v18 && v17 >= 2;
    if (!v18)
    {
      return 0;
    }
  }

  return result;
}

unint64_t CoreNLP::MeCabSubTokenizer::getNodeLocation(uint64_t a1, uint64_t *a2)
{
  if (a2 && (v2 = *a2) != 0 && *(v2 + 91) != 2)
  {
    return ((*(v2 + 64) - (*(*(a1 + 272) + 8) + 2 * *(a1 + 280)) + 2 * *(*(a1 + 272) + 16)) >> 1) + (*(v2 + 80) >> 1);
  }

  else
  {
    return 0;
  }
}

BOOL CoreNLP::MeCabSubTokenizer::hasSpace(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 41) != *(a2 + 40))
  {
    return 1;
  }

  if (*(a2 + 91) == 3)
  {
    v2 = *a2;
    if (*a2)
    {
      if (*(v2 + 91) != 2)
      {
        return ((*(v2 + 64) - (*(*(a1 + 272) + 8) + 2 * *(a1 + 280)) + 2 * *(*(a1 + 272) + 16)) >> 1) + (*(v2 + 80) >> 1) != 0;
      }
    }
  }

  return 0;
}

unint64_t CoreNLP::MeCabSubTokenizer::getSpaceRange(uint64_t a1, uint64_t a2)
{
  result = CoreNLP::MeCabSubTokenizer::getNodeLocation(a1, a2);
  if (*(a2 + 82) == *(a2 + 80))
  {
    v5 = *(a1 + 288) - result;
  }

  return result;
}

uint64_t std::function<CFRange ()(unsigned short const*,mecab_node_t const**,BOOL,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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

uint64_t CoreNLP::MeCabSubTokenizer::makeUnhandledRange(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!CoreNLP::MeCabSubTokenizer::hasObjectReplacementCharacter(a1, a2))
  {
    v6 = *(v2 + 90);
    if ((v6 - 11) <= 1)
    {
      if (*(v2 + 91) != 1)
      {
        goto LABEL_13;
      }

      if (v6 != 11)
      {
        if (!*v2)
        {
          goto LABEL_21;
        }

        v8 = *(*v2 + 90) != 11;
        if (!*(v2 + 90))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v7 = *(v2 + 8);
      if (!v7 || *(v7 + 90) != 12)
      {
        goto LABEL_21;
      }
    }

    v8 = 0;
    if (!*(v2 + 90))
    {
      goto LABEL_12;
    }

LABEL_11:
    if (v8)
    {
LABEL_12:
      if (*(v2 + 91) == 1)
      {
        goto LABEL_21;
      }
    }

LABEL_13:
    if (*(v2 + 80) != 2 || **(v2 + 64) != 8205)
    {
      return -1;
    }

LABEL_21:
    v10 = *(a1 + 272);
    if (v10)
    {
      if (*(v2 + 91) == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = (*(v2 + 64) - (*(v10 + 8) + 2 * *(a1 + 280)) + 2 * *(v10 + 16)) >> 1;
      }

      v12 = *(v2 + 80) >> 1;
    }

    else
    {
      v12 = 0;
      v11 = -1;
    }

    v13 = v2;
    while (1)
    {
      v14 = v12;
      v13 = *(v13 + 8);
      if (!v13)
      {
        break;
      }

      v15 = *(v13 + 91);
      if (v15 == 3)
      {
        break;
      }

      v16 = *(v13 + 90);
      if ((v16 - 11) > 1)
      {
        goto LABEL_35;
      }

      if (v15 != 1)
      {
        goto LABEL_40;
      }

      if (v16 == 11)
      {
        v17 = *(v13 + 8);
        if (!v17 || *(v17 + 90) != 12)
        {
LABEL_38:
          if (v10)
          {
            v20 = *(v13 + 64);
            v21 = *(v13 + 80) >> 1;
LABEL_47:
            v22 = (&v20[*(v10 + 16)] - *(v10 + 8) + -2 * *(a1 + 280)) >> 1;
            goto LABEL_48;
          }

LABEL_45:
          v21 = 0;
          v22 = -1;
          goto LABEL_48;
        }

LABEL_35:
        v18 = 0;
        goto LABEL_36;
      }

      if (!*v13)
      {
        goto LABEL_38;
      }

      v18 = *(*v13 + 90) != 11;
LABEL_36:
      v19 = v16 == 0;
      if (v15 == 1 && (v19 || v18))
      {
        goto LABEL_38;
      }

LABEL_40:
      if (*(v13 + 80) != 2)
      {
        goto LABEL_52;
      }

      v20 = *(v13 + 64);
      if (*v20 != 8205)
      {
        goto LABEL_52;
      }

      if (!v10)
      {
        goto LABEL_45;
      }

      if (v15 != 2)
      {
        v21 = 1;
        goto LABEL_47;
      }

      v22 = 0;
      v21 = 1;
LABEL_48:
      v12 = v21 + v14;
      if (v22 != v14 + v11)
      {
        goto LABEL_52;
      }
    }

    while (1)
    {
LABEL_52:
      v23 = v11;
      v24 = v14;
      v2 = *v2;
      if (!v2)
      {
        return *(a1 + 280) + v23;
      }

      v25 = *(v2 + 91);
      if (v25 == 2)
      {
        return *(a1 + 280) + v23;
      }

      v26 = *(v2 + 90);
      if ((v26 - 11) <= 1)
      {
        if (v25 != 1)
        {
          goto LABEL_62;
        }

        if (v26 != 11)
        {
          if (!*v2)
          {
            goto LABEL_64;
          }

          v28 = *(*v2 + 90) != 11;
          goto LABEL_60;
        }

        v27 = *(v2 + 8);
        if (!v27 || *(v27 + 90) != 12)
        {
          goto LABEL_64;
        }
      }

      v28 = 0;
LABEL_60:
      v29 = v26 == 0;
      if (v25 != 1 || !v29 && !v28)
      {
LABEL_62:
        if (*(v2 + 80) != 2 || **(v2 + 64) != 8205)
        {
          return *(a1 + 280) + v23;
        }
      }

LABEL_64:
      if (v10)
      {
        v11 = (*(v2 + 64) - (*(v10 + 8) + 2 * *(a1 + 280)) + 2 * *(v10 + 16)) >> 1;
        v30 = *(v2 + 80) >> 1;
      }

      else
      {
        v30 = 0;
        v11 = -1;
      }

      v31 = v11 + v30;
      v14 = v30 + v24;
      if (v23 != v31)
      {
        return *(a1 + 280) + v23;
      }
    }
  }

  v4 = *(a1 + 272);
  if (!v4)
  {
    return -1;
  }

  if (*(v2 + 91) == 2)
  {
    result = 0;
  }

  else
  {
    result = (*(v2 + 64) - (*(v4 + 8) + 2 * *(a1 + 280)) + 2 * *(v4 + 16)) >> 1;
  }

  v9 = *(v2 + 80) >> 1;
  return result;
}