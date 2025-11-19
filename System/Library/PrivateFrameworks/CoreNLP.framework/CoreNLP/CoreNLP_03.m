void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

unint64_t CoreNLP::BERTANEEmbedding::copyEmbeddingDataForTokenizedSentences(CoreNLP::BERTANEEmbedding *this, CFArrayRef theArray, const __CFDictionary *a3, __CFDictionary *a4, __CFError **a5)
{
  v68 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  result = CoreNLP::BERTANEEmbedding::selectBatchSizeForInput(this, Count);
  if (result)
  {
    v9 = result;
    v10 = CoreNLP::BERTANEEmbedding::maxSeqLenSupportedByModel(this, result);
    theDict = a4;
    if (a3 && CFDictionaryContainsKey(a3, kNLStringEmbeddingPadEncoderInput[0]) && (v11 = CFDictionaryGetValue(a3, kNLStringEmbeddingPadEncoderInput[0])) != 0)
    {
      v49 = [v11 unsignedIntValue];
    }

    else
    {
      v49 = 0;
    }

    theData = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    value = [MEMORY[0x1E695DF70] array];
    v50 = [MEMORY[0x1E695DF70] array];
    if (Count)
    {
      v53 = v9;
      v54 = 0;
      v12 = v49;
      if (v49 >= v10)
      {
        v12 = v10;
      }

      v57 = v12;
      v55 = this;
      while (1)
      {
        v13 = 0;
        v56 = 0;
        memset(v64, 0, sizeof(v64));
        do
        {
          v14 = *(this + 19);
          v15 = *(v14 + 31);
          if (v15 < 0)
          {
            v16 = *(v14 + 8);
            v15 = *(v14 + 16);
          }

          else
          {
            v16 = v14 + 8;
          }

          v65 = (*(*v14 + 32))(v14, v16, v15);
          __dst = 0;
          v60 = 0;
          v58 = 0;
          std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&v58, &v65, &v66, 1uLL);
          v17 = [(__CFArray *)theArray objectAtIndex:v13 + v54];
          v18 = [MEMORY[0x1E695DF70] array];
          for (i = 0; [v17 count] > i; ++i)
          {
            applesauce::CF::convert_to<std::string,0>([v17 objectAtIndex:i], &v65);
            (*(**(this + 19) + 16))(&__p);
            v20 = __p;
            v21 = ((v63 - __p) >> 3) + ((__dst - v58) >> 3);
            if (v21 <= v10)
            {
              [v18 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", (__dst - v58) >> 3)}];
              std::vector<long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long *>,std::__wrap_iter<long *>>(&v58, __dst, __p, v63, (v63 - __p) >> 3);
              v20 = __p;
            }

            if (v20)
            {
              v63 = v20;
              operator delete(v20);
            }

            if (v67 < 0)
            {
              operator delete(v65);
            }

            if (v21 > v10)
            {
              break;
            }
          }

          v22 = __dst;
          if (v49)
          {
            while (1)
            {
              v23 = v58;
              v24 = v22 - v58;
              v25 = (v22 - v58) >> 3;
              if (v25 >= v57)
              {
                break;
              }

              if (v22 >= v60)
              {
                v26 = v25 + 1;
                if ((v25 + 1) >> 61)
                {
                  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                }

                v27 = v60 - v58;
                if ((v60 - v58) >> 2 > v26)
                {
                  v26 = v27 >> 2;
                }

                v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
                v29 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v29 = v26;
                }

                if (v29)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v58, v29);
                }

                v30 = (v22 - v58) >> 3;
                v31 = (8 * v25);
                v32 = (8 * v25 - 8 * v30);
                *v31 = 0;
                v22 = (v31 + 1);
                memcpy(v32, v23, v24);
                v33 = v58;
                v58 = v32;
                __dst = v22;
                v60 = 0;
                if (v33)
                {
                  operator delete(v33);
                }
              }

              else
              {
                *v22 = 0;
                v22 += 8;
              }

              __dst = v22;
            }
          }

          v34 = v56;
          if (v56 <= (v22 - v58) >> 3)
          {
            v34 = (v22 - v58) >> 3;
          }

          v56 = v34;
          std::vector<std::vector<long>>::push_back[abi:ne200100](v64, &v58);
          while ([v17 count] > i)
          {
            [v18 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", 0x7FFFFFFFFFFFFFFFLL, 0)}];
            ++i;
          }

          [value addObject:v18];
          [v50 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", (__dst - v58) >> 3)}];
          if (v58)
          {
            __dst = v58;
            operator delete(v58);
          }

          ++v13;
        }

        while (v13 != v53);
        v35 = CoreNLP::BERTANEEmbedding::selectSeqLenForInputBatch(this, v53, v56);
        if (!v35)
        {
          break;
        }

        CoreNLP::BERTANEEmbedding::runANEModel(this, v64, v35, &v58);
        v36 = 0;
        v37 = 0;
        v38 = v53;
        do
        {
          v39 = v35;
          v40 = v61;
          v41 = (*(*v55 + 64))(v55);
          v43 = *(v64[0] + v36);
          v42 = *(v64[0] + v36 + 8);
          v44 = (*(*v55 + 64))(v55);
          CFDataAppendBytes(theData, (v40 + 4 * v37 * v41), ((v42 - v43) >> 1) * v44);
          v35 = v39;
          v37 += v39;
          v36 += 24;
          --v38;
        }

        while (v38);
        v58 = v64;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v58);
        v54 += v53;
        this = v55;
        if (v54 >= Count)
        {
          goto LABEL_51;
        }
      }

      if (theData)
      {
        CFRelease(theData);
      }

      v58 = v64;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v58);
      result = 0;
    }

    else
    {
LABEL_51:
      CFDictionarySetValue(theDict, kNLStringEmbeddingTokenizedBatchComponentRanges[0], value);
      CFDictionarySetValue(theDict, kNLStringEmbeddingTokenizedBatchComponentsCount[0], v50);
      corelm::NeuralNetwork::clear((this + 24));
      result = theData;
    }
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1B0DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  __p = (v27 - 144);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL CoreNLP::BERTANEEmbedding::fillStringVector(void *a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1[19];
  v6 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  (*(*v5 + 16))(&__p);
  v8 = CoreNLP::BERTANEEmbedding::selectSeqLenForInputBatch(a1, 1uLL, (v21 - __p) >> 3);
  if (v8)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&v23, __p, v21, (v21 - __p) >> 3);
    v16 = 0uLL;
    v17 = 0;
    std::vector<std::vector<long>>::__init_with_size[abi:ne200100]<std::vector<long> const*,std::vector<long> const*>(&v16, &v23, &v26, 1uLL);
    CoreNLP::BERTANEEmbedding::runANEModel(a1, &v16, v8, v18);
    v22 = &v16;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v22);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    v9 = (*(*a1 + 64))(a1);
    LODWORD(v23) = 0;
    std::vector<float>::vector[abi:ne200100](&v16, v9);
    v10 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v10;
      operator delete(v10);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    *a3 = v16;
    *(a3 + 16) = v17;
    v12 = __p;
    v11 = v21;
    v13 = (*(*a1 + 64))(a1);
    memmove(*a3, (v19 + 4 * (((v11 - v12) >> 3) - 1) * v13), *(a3 + 8) - *a3);
    corelm::NeuralNetwork::clear((a1 + 3));
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  result = v8 != 0;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1B1078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::BERTANEEmbedding::~BERTANEEmbedding(CoreNLP::BERTANEEmbedding *this)
{
  *this = &unk_1F10AD110;
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(this + 216, *(this + 28));
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  corelm::NeuralNetwork::~NeuralNetwork(this + 3);
}

{
  *this = &unk_1F10AD110;
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(this + 216, *(this + 28));
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  corelm::NeuralNetwork::~NeuralNetwork(this + 3);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t **CoreNLP::BERTANEEmbedding::setSupportedConfigs(uint64_t a1, uint64_t **a2)
{
  result = (a1 + 216);
  if (result != a2)
  {
    return std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *> *,long>>(result, *a2, a2 + 1);
  }

  return result;
}

uint64_t CoreNLP::BERTANEEmbedding::setPreProcessor(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 152);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (*(*v2 + 64))(v2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D1B1338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CoreNLP::BERTANEEmbedding::setPreProcessor(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::BERTANEEmbedding::textToIDs(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 152);
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return (*(*v2 + 16))(v2, a2, v4, 1);
}

BOOL corelm::util::Path::exists(corelm::util::Path *this)
{
  v2 = this + 8;
  if (*(this + 31) < 0)
  {
    v2 = *v2;
  }

  v3 = open(v2, 0);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  return v4 >= 0;
}

void corelm::NeuralNetwork::~NeuralNetwork(char **this)
{
  corelm::NeuralNetwork::releaseInputTensor(this);
  std::__tree<std::string>::destroy((this + 10), this[11]);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy((this + 7), this[8]);
  v2 = (this + 4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 1);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset(this, 0);
}

void corelm::NeuralNetwork::releaseInputTensor(corelm::NeuralNetwork *this)
{
  v1 = *(this + 1);
  for (i = *(this + 2); v1 != i; v1 = (v1 + 24))
  {
    if (*(v1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v1, *(v1 + 1));
    }

    else
    {
      v4 = *v1;
      __p.__r_.__value_.__r.__words[2] = *(v1 + 2);
      *&__p.__r_.__value_.__l.__data_ = v4;
    }

    p_p = &__p;
    if (*(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 80, &__p.__r_.__value_.__l.__data_) + 56))
    {
      p_p = &__p;
      v5 = std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 80, &__p.__r_.__value_.__l.__data_);
      CFRelease(*(v5 + 56));
      p_p = &__p;
      *(std::__tree<std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::__map_value_compare<std::string,std::__value_type<std::string,MontrealNeuralNetworkTensor *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MontrealNeuralNetworkTensor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 80, &__p.__r_.__value_.__l.__data_) + 56) = 0;
    }

    p_p = &__p;
    v6 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 56, &__p.__r_.__value_.__l.__data_);
    if (*(v6 + 56) != *(v6 + 64))
    {
      p_p = &__p;
      v7 = std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 56, &__p.__r_.__value_.__l.__data_);
      *(v7 + 64) = *(v7 + 56);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19D1B15D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t ___ZL19MontrealLibraryCorePPc_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MontrealLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t **std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          std::pair<unsigned long &,std::vector<unsigned long> &>::operator=[abi:ne200100]<unsigned long const,std::vector<unsigned long>,0>(v15, (v9 + 4));
          std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__node_insert_multi(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_multi<std::pair<unsigned long const,std::vector<unsigned long>> const&>();
  }

  return result;
}

void sub_19D1B1900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::pair<unsigned long &,std::vector<unsigned long> &>::operator=[abi:ne200100]<unsigned long const,std::vector<unsigned long>,0>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *v4 = *a2;
  if (v3 != (a2 + 8))
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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

void *std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_19D1B1CBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1B1E48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *corelm::util::Directory::Directory<std::string>(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = &unk_1F10AD1D0;
  v3 = (a1 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    a1[3] = *(&__p.__r_.__value_.__l + 2);
  }

  *a1 = &unk_1F10AD1F8;
  return a1;
}

void sub_19D1B1FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL corelm::util::Directory::exists(corelm::util::Directory *this)
{
  v2 = this + 8;
  if (*(this + 31) < 0)
  {
    v2 = *v2;
  }

  v3 = open(v2, 0x100000);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  return v4 >= 0;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(unint64_t *result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v58 = v9[1];
          v59 = *(a2 - 1);
          if (v58 <= v59)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = v9[1];
          }

          if (v58 >= v59)
          {
            v58 = *(a2 - 1);
          }

          *(a2 - 1) = v58;
          v9[1] = v60;
          v61 = *(a2 - 1);
          if (v61 <= *v9)
          {
            v62 = *v9;
          }

          else
          {
            v62 = *(a2 - 1);
          }

          if (v61 >= *v9)
          {
            v61 = *v9;
          }

          *(a2 - 1) = v61;
          v64 = *v9;
          v63 = v9[1];
          if (v62 <= v63)
          {
            v64 = v9[1];
          }

          if (v62 < v63)
          {
            v63 = v62;
          }

          *v9 = v64;
          v9[1] = v63;
          return result;
        case 4:
          v88 = v9[1];
          v87 = v9[2];
          if (*v9 <= v87)
          {
            v89 = v9[2];
          }

          else
          {
            v89 = *v9;
          }

          if (*v9 < v87)
          {
            v87 = *v9;
          }

          v9[2] = v87;
          *v9 = v89;
          v90 = *(a2 - 1);
          if (v88 <= v90)
          {
            v91 = *(a2 - 1);
          }

          else
          {
            v91 = v88;
          }

          if (v88 < v90)
          {
            v90 = v88;
          }

          *(a2 - 1) = v90;
          v92 = *v9;
          if (*v9 <= v91)
          {
            v93 = v91;
          }

          else
          {
            v93 = *v9;
          }

          if (*v9 >= v91)
          {
            v92 = v91;
          }

          *v9 = v93;
          v9[1] = v92;
          v94 = v9[2];
          v95 = *(a2 - 1);
          if (v94 <= v95)
          {
            v96 = *(a2 - 1);
          }

          else
          {
            v96 = v9[2];
          }

          if (v94 >= v95)
          {
            v94 = *(a2 - 1);
          }

          *(a2 - 1) = v94;
          v97 = v9[1];
          if (v97 <= v96)
          {
            v98 = v96;
          }

          else
          {
            v98 = v9[1];
          }

          if (v97 >= v96)
          {
            v97 = v96;
          }

          v9[1] = v98;
          v9[2] = v97;
          return result;
        case 5:
          v65 = *v9;
          v66 = v9[1];
          if (*v9 <= v66)
          {
            v67 = v9[1];
          }

          else
          {
            v67 = *v9;
          }

          if (*v9 >= v66)
          {
            v65 = v9[1];
          }

          *v9 = v67;
          v9[1] = v65;
          v68 = v9[3];
          v69 = *(a2 - 1);
          if (v68 <= v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v9[3];
          }

          if (v68 >= v69)
          {
            v68 = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          v9[3] = v70;
          v71 = *(a2 - 1);
          v72 = v9[2];
          if (v71 <= v72)
          {
            v73 = v9[2];
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v71 >= v72)
          {
            v71 = v9[2];
          }

          *(a2 - 1) = v71;
          v75 = v9[2];
          v74 = v9[3];
          v76 = v9[1];
          if (v73 <= v74)
          {
            v75 = v9[3];
          }

          if (v73 < v74)
          {
            v74 = v73;
          }

          v9[2] = v75;
          v9[3] = v74;
          v77 = *(a2 - 1);
          if (v76 <= v77)
          {
            v78 = *(a2 - 1);
          }

          else
          {
            v78 = v76;
          }

          if (v76 < v77)
          {
            v77 = v76;
          }

          *(a2 - 1) = v77;
          v79 = *v9;
          v81 = v9[2];
          v80 = v9[3];
          if (v80 <= *v9)
          {
            v82 = *v9;
          }

          else
          {
            v82 = v9[3];
          }

          if (v80 >= *v9)
          {
            v80 = *v9;
          }

          if (v82 <= v81)
          {
            v79 = v9[2];
          }

          if (v82 < v81)
          {
            v81 = v82;
          }

          if (v80 <= v78)
          {
            v83 = v78;
          }

          else
          {
            v83 = v80;
          }

          if (v80 >= v78)
          {
            v80 = v78;
          }

          if (v83 <= v81)
          {
            v78 = v81;
          }

          *v9 = v79;
          v9[1] = v78;
          if (v83 >= v81)
          {
            v84 = v81;
          }

          else
          {
            v84 = v83;
          }

          v9[2] = v84;
          v9[3] = v80;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v85 = *(a2 - 1);
        v86 = *v9;
        if (v85 > *v9)
        {
          *v9 = v85;
          *(a2 - 1) = v86;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v47 = *v9;
      if (*v9 <= v14)
      {
        v48 = *(a2 - 1);
      }

      else
      {
        v48 = *v9;
      }

      if (*v9 >= v14)
      {
        v47 = *(a2 - 1);
      }

      *(a2 - 1) = v47;
      *v9 = v48;
      v49 = *(a2 - 1);
      v50 = v9[v13];
      if (v49 <= v50)
      {
        v51 = v9[v13];
      }

      else
      {
        v51 = *(a2 - 1);
      }

      if (v49 >= v50)
      {
        v49 = v9[v13];
      }

      *(a2 - 1) = v49;
      v52 = *v9;
      v53 = v51 > *v9;
      if (v51 > *v9)
      {
        v52 = v9[v13];
      }

      v9[v13] = v52;
      v54 = *v9;
      if (!v53)
      {
        v54 = v51;
      }

      *v9 = v54;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (*v15 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 > *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v23 = *(v15 - 1);
      v22 = *v15;
      if (!v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = v23;
      }

      if (v23 < v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 > v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (!v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (!v39)
      {
        v40 = v37;
      }

      v42 = *(v15 - 1);
      if (v41 <= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      if (v40 <= v42)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v42)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v42 <= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v42;
      }

      if (v42 > v43)
      {
        v44 = v43;
      }

      *(v15 - 1) = v45;
      *v15 = v44;
      v46 = *v9;
      *v9 = v44;
      *v15 = v46;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(v9, a2);
      v9 = result;
      goto LABEL_94;
    }

LABEL_89:
    v55 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(v9, a2);
    if ((v56 & 1) == 0)
    {
      goto LABEL_92;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(v9, v55);
    v9 = v55 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(v55 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v55;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v57)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v8, v55, a3, -v11, a5 & 1);
      v9 = v55 + 1;
LABEL_94:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v99 = v9 + 1;
  v101 = v9 == a2 || v99 == a2;
  if (a5)
  {
    if (!v101)
    {
      v102 = 0;
      v103 = v9;
      do
      {
        v105 = *v103;
        v104 = v103[1];
        v103 = v99;
        if (v104 > v105)
        {
          v106 = v102;
          while (1)
          {
            *(v9 + v106 + 8) = v105;
            if (!v106)
            {
              break;
            }

            v105 = *(v9 + v106 - 8);
            v106 -= 8;
            if (v104 <= v105)
            {
              v107 = (v9 + v106 + 8);
              goto LABEL_199;
            }
          }

          v107 = v9;
LABEL_199:
          *v107 = v104;
        }

        v99 = v103 + 1;
        v102 += 8;
      }

      while (v103 + 1 != a2);
    }
  }

  else if (!v101)
  {
    do
    {
      v109 = *v8;
      v108 = v8[1];
      v8 = v99;
      if (v108 > v109)
      {
        do
        {
          *v99 = v109;
          v109 = *(v99 - 2);
          --v99;
        }

        while (v108 > v109);
        *v99 = v108;
      }

      v99 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_19D27D560;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v13, *(v7 + v12)), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_19D27D560;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v9[v19], *&v9[v19], 8uLL), v13), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 > v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] <= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,unsigned long *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(a1, a4, v8, v11--);
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
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(a1, a4, v8, a1);
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
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 > v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 8 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1B3018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::NeuralNetwork::createInputTensorANE(corelm::NeuralNetwork *this, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a2;
  v14 = 5;
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],int>(v22, "ShapeDimension", &v14);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],unsigned long &>(v23, "Width", &v16);
  v13 = 1;
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],int>(&v24, "Height", &v13);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],unsigned long &>(v25, "Channel", &v17);
  v18 = v22;
  v19 = 4;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v18);
  v4 = 0;
  v15 = CFDictionaryRef;
  do
  {
    v5 = *&v25[v4 + 8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *&v25[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
  }

  while (v4 != -64);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v7 = getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr;
  v21 = getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23[0] = ___ZL40getMRLNeuralNetworkTensorCreateSymbolLocv_block_invoke_0;
    v23[1] = &unk_1E76248C8;
    v24 = &v18;
    v8 = MontrealLibrary();
    v9 = dlsym(v8, "MRLNeuralNetworkTensorCreate");
    v24[1][3] = v9;
    getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr = v24[1][3];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  if (!v7)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v10 = v7(CFDictionaryRef);
  if (CFDictionaryRef)
  {
    CFRelease(CFDictionaryRef);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_19D1B3230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D1B3364(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],unsigned long &>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D1B3464(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *___ZL40getMRLNeuralNetworkTensorCreateSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkTensorCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkTensorCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getMRLNeuralNetworkTensorAppendDataSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkTensorAppendData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkTensorAppendDataSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getMRLNeuralNetworkSetInputTensorSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkSetInputTensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkSetInputTensorSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t std::vector<std::vector<long>>::__construct_one_at_end[abi:ne200100]<std::vector<long> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<long>>::__emplace_back_slow_path<std::vector<long> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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
  std::__split_buffer<std::vector<long>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1B372C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<long>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<long>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1B3888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long *>,std::__wrap_iter<long *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
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
  std::__split_buffer<std::vector<long>>::~__split_buffer(&v14);
  return v8;
}

void sub_19D1B3C40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1B3CB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<long>>::__init_with_size[abi:ne200100]<std::vector<long> const*,std::vector<long> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1B3D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<long>>,std::vector<long> const*,std::vector<long> const*,std::vector<long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_19D1B3FD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::BERTEmbedding::BERTEmbedding(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F10AD228;
  v8 = a1 + 24;
  HIDWORD(v10) = a4 - 2;
  LODWORD(v10) = a4 - 2;
  v9 = v10 >> 1;
  if (v9 < 6 && ((0x39u >> v9) & 1) != 0)
  {
    v11 = off_1E7624950[v9];
  }

  else if (a4 == 13)
  {
    v11 = "/cpu_search_embeddings.espresso.net";
  }

  else
  {
    v11 = "/cpu_embeddings.espresso.net";
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = strlen(v11);
  v14 = v21;
  std::string::basic_string[abi:ne200100](v21, v12 + v13);
  if (v22 < 0)
  {
    v14 = v21[0];
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    memmove(v14, v15, v12);
  }

  v16 = v14 + v12;
  if (v13)
  {
    memcpy(v16, v11, v13);
  }

  v16[v13] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "CPU");
  corelm::NeuralNetwork::NeuralNetwork(v8, v21, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *(a1 + 128) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  corelm::util::Directory::Directory<std::string>(&v18, &v17);
  corelm::VocabularyBuilder::makeVocabulary(&v18, 2);
}

void sub_19D1B42E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v38 = *(v35 + 152);
  *(v35 + 152) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  if (*(v35 + 151) < 0)
  {
    operator delete(*v36);
  }

  corelm::NeuralNetwork::~NeuralNetwork(v34);
  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t CoreNLP::BERTEmbedding::fillTokenVectors(CoreNLP::BERTEmbedding *this, CFArrayRef theArray, unint64_t a3, unsigned int a4, float *a5, const float *a6, const float *a7)
{
  v10 = theArray;
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_34:
    corelm::NeuralNetwork::clear((this + 24));
    return 1;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
      applesauce::CF::convert_to<std::string,0>(ValueAtIndex, &v37);
      (*(**(this + 19) + 16))(&v35);
      v14 = v35;
      v15 = v36;
      v16 = (v36 - v35) >> 3;
      if (v16 > a4)
      {
        v17 = v36 - v35 - 8;
        do
        {
          v15 -= 8;
          v16 = v17 >> 3;
          v17 -= 8;
        }

        while (v16 > a4);
        v36 = v15;
      }

      v18 = *(this + 20);
      if (v16 <= v18)
      {
        std::string::basic_string[abi:ne200100]<0>(&v41, "input");
        corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v35, (v36 - v35) >> 3, &v41, 1);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        v41 = xmmword_19D27D560;
        v42 = 0;
        __p = (((v36 - v35) >> 3) & ~((v36 - v35) >> 63));
        v40 = xmmword_19D27D650;
        std::vector<long>::vector[abi:ne200100]<corelm::util::NumRange<long>::iterator,0>(&v33, &v41, &__p);
        std::string::basic_string[abi:ne200100]<0>(&v41, "position");
        corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v33, (v34 - v33) >> 3, &v41, 1);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (corelm::util::contains<std::string,char const*,void>(this + 4, "temperature"))
        {
          v32 = 1065353216;
          v42 = 0;
          v41 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v41, &v32, &v33, 1uLL);
          std::string::basic_string[abi:ne200100]<0>(&__p, "temperature");
          corelm::NeuralNetwork::setInputTensor<float,void>((this + 24), v41, (*(&v41 + 1) - v41) >> 2, &__p, 1);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p);
          }

          if (v41)
          {
            *(&v41 + 1) = v41;
            operator delete(v41);
          }
        }

        if (corelm::util::contains<std::string,char const*,void>(this + 4, "segment"))
        {
          __p = 0;
          std::vector<long>::vector[abi:ne200100](&v41, (v36 - v35) >> 3);
          std::string::basic_string[abi:ne200100]<0>(&__p, "segment");
          corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v41, (*(&v41 + 1) - v41) >> 3, &__p, 1);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p);
          }

          if (v41)
          {
            *(&v41 + 1) = v41;
            operator delete(v41);
          }
        }

        corelm::NeuralNetwork::predict((this + 24));
        v31 = v18;
        v19 = v10;
        v20 = v35;
        v21 = v36;
        __p = (((v21 - v20) >> 3) * (*(*this + 64))(this));
        corelm::NeuralNetwork::getOutput<1ul>(this + 128, this + 3, &__p, &v41);
        v22 = v42;
        v23 = v35;
        v24 = v36;
        v25 = (*(*this + 64))(this);
        memcpy(a5, v22, ((v24 - v23) >> 1) * v25);
        v27 = v35;
        v26 = v36;
        a5 += ((v26 - v27) >> 3) * (*(*this + 64))(this);
        if (a4 > ((v36 - v35) >> 3))
        {
          v28 = a4 - ((v36 - v35) >> 3);
          do
          {
            v29 = (*(*this + 64))(this);
            memcpy(a5, a7, 4 * v29);
            a5 += (*(*this + 64))(this);
            --v28;
          }

          while (v28);
        }

        if (v33)
        {
          v34 = v33;
          operator delete(v33);
        }

        v14 = v35;
        v10 = v19;
        v18 = v31;
      }

      if (v14)
      {
        v36 = v14;
        operator delete(v14);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v16 > v18)
      {
        return 0;
      }

      if (++v12 >= CFArrayGetCount(v10))
      {
        goto LABEL_34;
      }
    }
  }
}

void sub_19D1B4970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 112);
  if (v34)
  {
    *(v32 - 104) = v34;
    operator delete(v34);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void corelm::NeuralNetwork::getOutput<1ul>(UInt8 *bytes@<X3>, uint64_t *a2@<X0>, int *a3@<X1>, uint64_t a4@<X8>)
{
  v6 = bytes[23];
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (bytes[23])
    {
      v7 = *a2;
      goto LABEL_6;
    }

LABEL_9:
    Output = _MRLNeuralNetworkGetOutput(*a2, 0);
    goto LABEL_10;
  }

  v6 = *(bytes + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  bytes = *bytes;
  if (bytes)
  {
LABEL_6:
    v8 = CFStringCreateWithBytes(0, bytes, v6, 0x8000100u, 0);
    cf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_7;
  }

  v8 = 0;
  cf = 0;
LABEL_7:
  Output = _MRLNeuralNetworkGetOutput(v7, v8);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_10:
  v10 = *a3;
  *a4 = 0;
  *(a4 + 8) = v10;
  *(a4 + 16) = Output;
}

void sub_19D1B4B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::BERTEmbedding::fillWordFragmentVectors(CoreNLP::BERTEmbedding *this, CFArrayRef theArray, unsigned int a3, unsigned int a4, float *a5, const float *a6, const float *a7, int a8)
{
  v10 = theArray;
  v65 = *MEMORY[0x1E69E9840];
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_66:
    corelm::NeuralNetwork::clear((this + 24));
    result = 1;
  }

  else
  {
    v12 = 0;
    v13 = a4;
    v43 = v10;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v15 = *(this + 19);
      v16 = *(v15 + 31);
      if (v16 < 0)
      {
        v17 = *(v15 + 8);
        v16 = *(v15 + 16);
      }

      else
      {
        v17 = v15 + 8;
      }

      *&v63 = (*(*v15 + 32))(v15, v17, v16);
      __dst = 0;
      v54 = 0;
      v52 = 0;
      std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&v52, &v63, &v63 + 8, 1uLL);
      for (i = 0; ; ++i)
      {
        Count = CFArrayGetCount(ValueAtIndex);
        if (v13 == i || Count <= i)
        {
          break;
        }

        v20 = CFArrayGetValueAtIndex(ValueAtIndex, i);
        applesauce::CF::convert_to<std::string,0>(v20, &v63);
        (*(**(this + 19) + 16))(&v61);
        LODWORD(__p) = (__dst - v52) >> 3;
        std::vector<int>::push_back[abi:ne200100](&v58, &__p);
        LODWORD(__p) = (v62 - v61) >> 3;
        std::vector<int>::push_back[abi:ne200100](&v55, &__p);
        std::vector<long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long *>,std::__wrap_iter<long *>>(&v52, __dst, v61, v62, (v62 - v61) >> 3);
        if (v61)
        {
          *&v62 = v61;
          operator delete(v61);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63);
        }
      }

      v21 = v52;
      v46 = *(this + 20);
      v47 = (__dst - v52) >> 3;
      if (v47 <= v46)
      {
        std::string::basic_string[abi:ne200100]<0>(&v63, "input");
        corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v52, (__dst - v52) >> 3, &v63, 1);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63);
        }

        v62 = xmmword_19D27D650;
        v63 = xmmword_19D27D560;
        v64 = 0;
        v61 = ((__dst - v52) >> 3) & ~((__dst - v52) >> 63);
        std::vector<long>::vector[abi:ne200100]<corelm::util::NumRange<long>::iterator,0>(&__p, &v63, &v61);
        std::string::basic_string[abi:ne200100]<0>(&v63, "position");
        corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), __p, (v51 - __p) >> 3, &v63, 1);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63);
        }

        if (corelm::util::contains<std::string,char const*,void>(this + 4, "temperature"))
        {
          v49 = 1065353216;
          v63 = 0uLL;
          v64 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v63, &v49, &__p, 1uLL);
          std::string::basic_string[abi:ne200100]<0>(&v61, "temperature");
          corelm::NeuralNetwork::setInputTensor<float,void>((this + 24), v63, (*(&v63 + 1) - v63) >> 2, &v61, 1);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61);
          }

          if (v63)
          {
            *(&v63 + 1) = v63;
            operator delete(v63);
          }
        }

        if (corelm::util::contains<std::string,char const*,void>(this + 4, "segment"))
        {
          v61 = 0;
          std::vector<long>::vector[abi:ne200100](&v63, (__dst - v52) >> 3);
          std::string::basic_string[abi:ne200100]<0>(&v61, "segment");
          corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v63, (*(&v63 + 1) - v63) >> 3, &v61, 1);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61);
          }

          if (v63)
          {
            *(&v63 + 1) = v63;
            operator delete(v63);
          }
        }

        corelm::NeuralNetwork::predict((this + 24));
        v45 = v12;
        v23 = v52;
        v22 = __dst;
        v61 = ((v22 - v23) >> 3) * (*(*this + 64))(this);
        corelm::NeuralNetwork::getOutput<1ul>(this + 128, this + 3, &v61, &v63);
        v25 = v58;
        v24 = v59;
        if (*(this + 168))
        {
          if (v59 != v58)
          {
            v26 = 0;
            LODWORD(v27) = *(this + 4);
            do
            {
              if (v27 >= 1)
              {
                v28 = 0;
                v29 = 0;
                v30 = v25[v26];
                v31 = *(v55 + v26);
                do
                {
                  vDSP_meanv((v64 + 4 * v27 * v30 + v28 * 4), v27, &a5[v28], v31);
                  ++v29;
                  v27 = *(this + 4);
                  ++v28;
                }

                while (v29 < v27);
                v25 = v58;
                v24 = v59;
                a5 = (a5 + v28 * 4);
                v13 = a4;
              }

              ++v26;
            }

            while (v26 < (v24 - v25) >> 2);
          }
        }

        else if (v59 != v58)
        {
          v32 = 0;
          do
          {
            if (a8 >= 1)
            {
              v33 = 0;
              v34 = v25[v32];
              do
              {
                if (v33 >= *(v55 + v32))
                {
                  v37 = (*(*this + 64))(this);
                  v38 = a7;
                }

                else
                {
                  v35 = v64;
                  v36 = (*(*this + 64))(this);
                  v37 = (*(*this + 64))(this);
                  v38 = (v35 + 4 * v36 * (v34 + v33));
                }

                memcpy(a5, v38, 4 * v37);
                a5 += (*(*this + 64))(this);
                ++v33;
              }

              while (a8 != v33);
              v25 = v58;
              v24 = v59;
              v13 = a4;
            }

            ++v32;
          }

          while (v32 < (v24 - v25) >> 2);
        }

        if (i >= a4)
        {
          v12 = v45;
        }

        else
        {
          v12 = v45;
          do
          {
            v39 = a8;
            if (a8 >= 1)
            {
              do
              {
                v40 = (*(*this + 64))(this);
                memcpy(a5, a7, 4 * v40);
                a5 += (*(*this + 64))(this);
                --v39;
              }

              while (v39);
            }

            LODWORD(i) = i + 1;
          }

          while (i != v13);
        }

        if (__p)
        {
          v51 = __p;
          operator delete(__p);
        }

        v21 = v52;
        v10 = v43;
      }

      if (v21)
      {
        __dst = v21;
        operator delete(v21);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v47 > v46)
      {
        break;
      }

      if (++v12 >= CFArrayGetCount(v10))
      {
        goto LABEL_66;
      }
    }

    result = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1B52B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (*(v33 - 129) < 0)
  {
    operator delete(*(v33 - 152));
  }

  v35 = *(v33 - 128);
  if (v35)
  {
    *(v32 + 8) = v35;
    operator delete(v35);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

__CFData *CoreNLP::BERTEmbedding::copyEmbeddingDataForTokenizedSentences(CoreNLP::BERTEmbedding *this, const __CFArray *a2, unint64_t a3, __CFDictionary *a4, __CFError **a5)
{
  v54 = *MEMORY[0x1E69E9840];
  theData = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  value = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    if (CFDictionaryContainsKey(a3, kNLStringEmbeddingPadEncoderInput[0]) && (v8 = CFDictionaryGetValue(a3, kNLStringEmbeddingPadEncoderInput[0])) != 0)
    {
      a3 = [v8 unsignedIntValue];
    }

    else
    {
      a3 = 0;
    }
  }

  if (CFArrayGetCount(a2) >= 1)
  {
    v9 = 0;
    v40 = a2;
    do
    {
      v10 = [(__CFArray *)a2 objectAtIndex:v9];
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = *(this + 19);
      v13 = *(v12 + 31);
      if (v13 < 0)
      {
        v14 = *(v12 + 8);
        v13 = *(v12 + 16);
      }

      else
      {
        v14 = v12 + 8;
      }

      *&v52 = (*(*v12 + 32))(v12, v14, v13);
      __dst = 0;
      v49 = 0;
      __src = 0;
      std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&__src, &v52, &v52 + 8, 1uLL);
      for (i = 0; [v10 count] > i; ++i)
      {
        applesauce::CF::convert_to<std::string,0>([v10 objectAtIndex:i], &v52);
        (*(**(this + 19) + 16))(&__p);
        v16 = __p;
        v17 = ((v51 - __p) >> 3) + ((__dst - __src) >> 3);
        v18 = *(this + 20);
        if (v17 <= v18)
        {
          [v11 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", (__dst - __src) >> 3)}];
          std::vector<long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<long *>,std::__wrap_iter<long *>>(&__src, __dst, __p, v51, (v51 - __p) >> 3);
          v16 = __p;
        }

        if (v16)
        {
          *&v51 = v16;
          operator delete(v16);
        }

        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }

        if (v17 > v18)
        {
          break;
        }
      }

      while ([v10 count] > i)
      {
        [v11 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", 0x7FFFFFFFFFFFFFFFLL, 0)}];
        ++i;
      }

      if (a3)
      {
        for (j = __dst; ; __dst = j)
        {
          v20 = __src;
          v21 = j - __src;
          v22 = (j - __src) >> 3;
          if (v22 >= a3 || v22 >= *(this + 20))
          {
            break;
          }

          if (j >= v49)
          {
            v23 = v22 + 1;
            if ((v22 + 1) >> 61)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v24 = v49 - __src;
            if ((v49 - __src) >> 2 > v23)
            {
              v23 = v24 >> 2;
            }

            v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
            v26 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v25)
            {
              v26 = v23;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v26);
            }

            v27 = (j - __src) >> 3;
            v28 = (8 * v22);
            v29 = (8 * v22 - 8 * v27);
            *v28 = 0;
            j = v28 + 1;
            memcpy(v29, v20, v21);
            v30 = __src;
            __src = v29;
            __dst = j;
            v49 = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *j++ = 0;
          }
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v52, "input");
      corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), __src, (__dst - __src) >> 3, &v52, 1);
      a2 = v40;
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      v52 = xmmword_19D27D560;
      v53 = 0;
      __p = (((__dst - __src) >> 3) & ~((__dst - __src) >> 63));
      v51 = xmmword_19D27D650;
      std::vector<long>::vector[abi:ne200100]<corelm::util::NumRange<long>::iterator,0>(&v45, &v52, &__p);
      std::string::basic_string[abi:ne200100]<0>(&v52, "position");
      corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v45, (v46 - v45) >> 3, &v52, 1);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      if (corelm::util::contains<std::string,char const*,void>(this + 4, "temperature"))
      {
        v44 = 1065353216;
        v53 = 0;
        v52 = 0uLL;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v52, &v44, &v45, 1uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "temperature");
        corelm::NeuralNetwork::setInputTensor<float,void>((this + 24), v52, (*(&v52 + 1) - v52) >> 2, &__p, 1);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p);
        }

        if (v52)
        {
          *(&v52 + 1) = v52;
          operator delete(v52);
        }
      }

      if (corelm::util::contains<std::string,char const*,void>(this + 4, "segment"))
      {
        __p = 0;
        std::vector<long>::vector[abi:ne200100](&v52, (__dst - __src) >> 3);
        std::string::basic_string[abi:ne200100]<0>(&__p, "segment");
        corelm::NeuralNetwork::setInputTensor<long,void>((this + 24), v52, (*(&v52 + 1) - v52) >> 3, &__p, 1);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p);
        }

        if (v52)
        {
          *(&v52 + 1) = v52;
          operator delete(v52);
        }
      }

      corelm::NeuralNetwork::predict((this + 24));
      v32 = __src;
      v31 = __dst;
      __p = (((v31 - v32) >> 3) * (*(*this + 64))(this));
      corelm::NeuralNetwork::getOutput<1ul>(this + 128, this + 3, &__p, &v52);
      v33 = v53;
      v35 = __src;
      v34 = __dst;
      v36 = (*(*this + 64))(this);
      CFDataAppendBytes(theData, v33, ((v34 - v35) >> 1) * v36);
      [value addObject:v11];
      [v41 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", (__dst - __src) >> 3)}];
      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      if (__src)
      {
        __dst = __src;
        operator delete(__src);
      }

      ++v9;
    }

    while (v9 < CFArrayGetCount(v40));
  }

  CFDictionarySetValue(a4, kNLStringEmbeddingTokenizedBatchComponentRanges[0], value);
  CFDictionarySetValue(a4, kNLStringEmbeddingTokenizedBatchComponentsCount[0], v41);
  corelm::NeuralNetwork::clear((this + 24));
  v37 = *MEMORY[0x1E69E9840];
  return theData;
}

void sub_19D1B5A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL CoreNLP::BERTEmbedding::fillStringVector(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 152);
  v6 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  (*(*v5 + 16))(&v22);
  v8 = v22;
  v9 = (v23 - v22) >> 3;
  v10 = *(a1 + 160);
  if (v9 <= v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&v25, "input");
    corelm::NeuralNetwork::setInputTensor<long,void>((a1 + 24), v22, (v23 - v22) >> 3, &v25, 1);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    v25 = xmmword_19D27D560;
    v26 = 0;
    *__p = ((v23 - v22) >> 3) & ~((v23 - v22) >> 63);
    *&__p[8] = xmmword_19D27D650;
    std::vector<long>::vector[abi:ne200100]<corelm::util::NumRange<long>::iterator,0>(&v20, &v25, __p);
    std::string::basic_string[abi:ne200100]<0>(&v25, "position");
    corelm::NeuralNetwork::setInputTensor<long,void>((a1 + 24), v20, (v21 - v20) >> 3, &v25, 1);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (corelm::util::contains<std::string,char const*,void>((a1 + 32), "temperature"))
    {
      v19 = 1065353216;
      v26 = 0;
      v25 = 0uLL;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v25, &v19, &v20, 1uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "temperature");
      corelm::NeuralNetwork::setInputTensor<float,void>((a1 + 24), v25, (*(&v25 + 1) - v25) >> 2, __p, 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v25)
      {
        *(&v25 + 1) = v25;
        operator delete(v25);
      }
    }

    if (corelm::util::contains<std::string,char const*,void>((a1 + 32), "segment"))
    {
      *__p = 0;
      std::vector<long>::vector[abi:ne200100](&v25, (v23 - v22) >> 3);
      std::string::basic_string[abi:ne200100]<0>(__p, "segment");
      corelm::NeuralNetwork::setInputTensor<long,void>((a1 + 24), v25, (*(&v25 + 1) - v25) >> 3, __p, 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v25)
      {
        *(&v25 + 1) = v25;
        operator delete(v25);
      }
    }

    corelm::NeuralNetwork::predict((a1 + 24));
    v12 = v22;
    v11 = v23;
    *__p = ((v11 - v12) >> 3) * (*(*a1 + 64))(a1);
    corelm::NeuralNetwork::getOutput<1ul>((a1 + 128), (a1 + 24), __p, &v25);
    v13 = (*(*a1 + 64))(a1);
    v19 = 0;
    std::vector<float>::vector[abi:ne200100](__p, v13);
    v14 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v14;
      operator delete(v14);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    *a3 = *__p;
    *(a3 + 16) = *&__p[16];
    v16 = v22;
    v15 = v23;
    v17 = (*(*a1 + 64))(a1);
    memmove(*a3, (v26 + 4 * (((v15 - v16) >> 3) - 1) * v17), *(a3 + 8) - *a3);
    corelm::NeuralNetwork::clear((a1 + 24));
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    v8 = v22;
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }

  return v9 <= v10;
}

void sub_19D1B5EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 80);
  if (v24)
  {
    *(v22 - 72) = v24;
    operator delete(v24);
  }

  if (a11)
  {
    operator delete(a11);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::BERTEmbedding::~BERTEmbedding(CoreNLP::BERTEmbedding *this)
{
  *this = &unk_1F10AD228;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  corelm::NeuralNetwork::~NeuralNetwork(this + 3);
}

{
  *this = &unk_1F10AD228;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  corelm::NeuralNetwork::~NeuralNetwork(this + 3);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::BERTEmbedding::setEmbeddingNodeName(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 128), a2);
  result = corelm::NeuralNetwork::declareOutput((a1 + 24), (a1 + 128));
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" not found", (a1 + 128), &v5.__r_.__value_.__l.__data_);
    std::runtime_error::runtime_error(exception, &v5);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_19D1B6194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t CoreNLP::BERTEmbedding::setPreProcessor(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 152);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (*(*v2 + 64))(v2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D1B6260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CoreNLP::BERTANEEmbedding::setPreProcessor(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::BERTEmbedding::textToIDs(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 152);
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return (*(*v2 + 16))(v2, a2, v4, 1);
}

void *___ZL37getMRLNeuralNetworkGetOutputSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkGetOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkGetOutputSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19MontrealLibraryCorePPc_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MontrealLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t corelm::NeuralNetwork::declareOutput(uint64_t *a1, const UInt8 *a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    cf = 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v9 = getMRLNeuralNetworkDeclareOutputSymbolLoc(void)::ptr;
  v17 = getMRLNeuralNetworkDeclareOutputSymbolLoc(void)::ptr;
  if (!getMRLNeuralNetworkDeclareOutputSymbolLoc(void)::ptr)
  {
    v10 = MontrealLibrary();
    v15[3] = dlsym(v10, "MRLNeuralNetworkDeclareOutput");
    getMRLNeuralNetworkDeclareOutputSymbolLoc(void)::ptr = v15[3];
    v9 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v9)
  {
    v11 = v9(v3, v7);
    if (cf)
    {
      CFRelease(cf);
    }

    return v11;
  }

  else
  {
    dlerror();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void sub_19D1B676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void *___ZL41getMRLNeuralNetworkDeclareOutputSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MontrealLibrary();
  result = dlsym(v2, "MRLNeuralNetworkDeclareOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRLNeuralNetworkDeclareOutputSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1B68C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::ContextualWordEmbedding::ContextualWordEmbedding(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F10AD2E8;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0;
  operator new();
}

uint64_t CoreNLP::ContextualWordEmbedding::fillWordVectors(CoreNLP::ContextualWordEmbedding *this, CFArrayRef theArray, unsigned int a3, int a4, float *a5, const float *a6, const float *a7)
{
  LODWORD(v9) = a4;
  v10 = theArray;
  v12 = *(this + 2);
  v13 = v12 > 0x1D;
  v14 = (1 << v12) & 0x20000402;
  if (v13 || v14 == 0)
  {
    v16 = 50;
  }

  else
  {
    v16 = 16;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    v17 = 0;
    v9 = v9;
    v51 = v10;
    v52 = a7;
    v54 = v9;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v17);
      v62 = 0;
      __dst = 0;
      v64 = 0;
      *v55 = 1132593152;
      std::vector<float>::vector[abi:ne200100](__p, v16);
      v19 = __p[0];
      *__p[0] = 0x4380000043810000;
      *(v19 + 2) = 1132560384;
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v62, __dst, v19, __p[1], (__p[1] - v19) >> 2);
      v20 = 0;
      for (i = v9; ; --i)
      {
        Count = CFArrayGetCount(ValueAtIndex);
        if (v20 == v9 || v20 >= Count)
        {
          break;
        }

        v23 = CFArrayGetValueAtIndex(ValueAtIndex, v20);
        applesauce::CF::convert_to<std::string,0>(v23, v55);
        v57 = 1132593152;
        std::vector<float>::vector[abi:ne200100](&v58, v16);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v25 = *(&v58 + 1);
        *__p = v58;
        v61 = v59;
        v26 = v58;
        *v58 = 1132527616;
        v27 = v55[23];
        if (v55[23] < 0)
        {
          v27 = *&v55[8];
        }

        v28 = v27 + 2;
        if (v16 < v28)
        {
          v28 = v16;
        }

        if (v28 < 3)
        {
          v30 = 0;
        }

        else
        {
          v29 = 0;
          v30 = v28 - 2;
          do
          {
            if (v55[23] >= 0)
            {
              v31 = v55;
            }

            else
            {
              v31 = *v55;
            }

            LOBYTE(v24) = v31[v29];
            v24 = LODWORD(v24);
            *&v26[4 * v29++ + 4] = v24;
          }

          while (v30 != v29);
        }

        *&v26[4 * v30 + 4] = 1132560384;
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v62, __dst, v26, v25, (v25 - v26) >> 2);
        if ((v55[23] & 0x80000000) != 0)
        {
          operator delete(*v55);
        }

        ++v20;
      }

      LODWORD(v58) = 1132593152;
      std::vector<float>::vector[abi:ne200100](v55, v16);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v55;
      v61 = *&v55[16];
      v32 = *&v55[8];
      v33 = *v55;
      **v55 = 0x4380800043810000;
      *(v33 + 8) = 1132560384;
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v62, __dst, v33, v32, &v32[-v33] >> 2);
      v34 = v62;
      v35 = __dst;
      v36 = *(this + 2);
      v37 = ((__dst - v62) >> 2) / v16;
      v53 = v17;
      if (v36 <= 0x1D && ((1 << v36) & 0x20000402) != 0)
      {
        v38 = v62;
        if (v62 != __dst)
        {
          do
          {
            *v38 = *v38 + 1.0;
            ++v38;
          }

          while (v38 != v35);
        }

        CoreNLP::MontrealModel::setInput(*(this + 2), 1, v37, v34, @"elmo_input");
        CoreNLP::MontrealModel::predict(*(this + 2));
        v39 = CoreNLP::MontrealModel::output(*(this + 2), @"elmo_embedding");
        v40 = CoreNLP::MontrealModel::output(*(this + 2), @"elmo_lstm0");
        v41 = CoreNLP::MontrealModel::output(*(this + 2), @"elmo_lstm1");
        if (v37 >= 3)
        {
          v42 = (v39 + 512);
          v43 = (v41 + 1024);
          v44 = (v40 + 1024);
          do
          {
            if (*(this + 3) == 1)
            {
              memcpy(a5, v42, 0x200uLL);
              memcpy(a5 + 128, v44, 0x400uLL);
              memcpy(a5 + 384, v43, 0x400uLL);
              a5 += 640;
            }

            --v37;
            v42 += 512;
            v43 += 1024;
            v44 += 1024;
          }

          while (v37 > 2);
        }
      }

      else
      {
        v45 = *(this + 2);
        *v55 = 256;
        *&v55[4] = 3;
        *&v55[8] = v16;
        *&v46 = 0x100000001;
        *(&v46 + 1) = 0x100000001;
        *&v55[12] = v46;
        v56 = ((__dst - v62) >> 2) / v16;
        CoreNLP::MontrealModel::setInputTensor(v45, v55, v62, @"input");
        CoreNLP::MontrealModel::predict(*(this + 2));
        v47 = CoreNLP::MontrealModel::output(*(this + 2), @"output");
        if (v37 >= 3)
        {
          v48 = (v47 + 2560);
          do
          {
            memcpy(a5, v48, 0xA00uLL);
            a5 += 640;
            --v37;
            v48 += 2560;
          }

          while (v37 > 2);
        }
      }

      CoreNLP::MontrealModel::clear(*(this + 2));
      v10 = v51;
      if (v20 < v54)
      {
        do
        {
          v49 = (*(*this + 64))(this);
          memcpy(a5, v52, 4 * v49);
          a5 += (*(*this + 64))(this);
          --i;
        }

        while (i);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v9 = v54;
      if (v62)
      {
        __dst = v62;
        operator delete(v62);
      }

      v17 = v53 + 1;
    }

    while (v53 + 1 < CFArrayGetCount(v51));
  }

  return 1;
}

void sub_19D1B6F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::ContextualWordEmbedding::~ContextualWordEmbedding(CoreNLP::MontrealModel **this)
{
  *this = &unk_1F10AD2E8;
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 2, 0);
}

{
  *this = &unk_1F10AD2E8;
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 2, 0);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::AbstractEmbedding::fillWordFragmentVectors(CoreNLP::AbstractEmbedding *this, const __CFArray *a2, unsigned int a3, unsigned int a4, float *a5, const float *a6, const float *a7)
{
  if (CoreNLP::AbstractEmbedding::fillWordFragmentVectors(__CFArray const*,unsigned int,unsigned int,float *,float const*,float const*,int)::sOnce != -1)
  {
    CoreNLP::AbstractEmbedding::fillWordFragmentVectors();
  }

  v7 = CoreNLP::AbstractEmbedding::fillWordFragmentVectors(__CFArray const*,unsigned int,unsigned int,float *,float const*,float const*,int)::sLogger;
  if (os_log_type_enabled(CoreNLP::AbstractEmbedding::fillWordFragmentVectors(__CFArray const*,unsigned int,unsigned int,float *,float const*,float const*,int)::sLogger, OS_LOG_TYPE_ERROR))
  {
    CoreNLP::AbstractEmbedding::fillWordFragmentVectors(v7);
  }

  return 0;
}

uint64_t CoreNLP::AbstractEmbedding::copyEmbeddingDataForTokenizedSentences(CoreNLP::AbstractEmbedding *this, const __CFArray *a2, const __CFDictionary *a3, __CFDictionary *a4, __CFError **a5)
{
  if (a5)
  {
    *a5 = CFErrorCreate(*MEMORY[0x1E695E480], kNLStringEmbeddingErrorDomain[0], 1, 0);
  }

  return 0;
}

void CoreNLP::AbstractEmbedding::textToIDs(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

os_log_t ___ZN7CoreNLP17AbstractEmbedding23fillWordFragmentVectorsEPK9__CFArrayjjPfPKfS6_i_block_invoke()
{
  result = os_log_create("com.apple.CoreNLP", "Embedding");
  CoreNLP::AbstractEmbedding::fillWordFragmentVectors(__CFArray const*,unsigned int,unsigned int,float *,float const*,float const*,int)::sLogger = result;
  return result;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void CoreNLP::PosTagger::PosTagger(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  operator new();
}

void sub_19D1B74A4(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF8CA0](v2, 0x80C40803F642BLL);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::PosTagger::GetPosTags(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  LODWORD(v21[0]) = 0;
  std::vector<int>::push_back[abi:ne200100](a4, v21);
  if (a3 >= 1)
  {
    v8 = *(a1 + 44);
    v9 = 1;
    do
    {
      v10 = *a1;
      v11 = *(a1 + 24);
      v21[0] = *(a1 + 8);
      v21[1] = v11;
      CoreNLP::MontrealModel::setInputTensor(v10, v21, *a2 + 4 * *(a1 + 40) * v9, @"input");
      CoreNLP::MontrealModel::predict(*a1);
      v12 = CoreNLP::MontrealModel::output(*a1, @"output");
      if (v8 >= 2)
      {
        v14 = v12 + 1;
        v15 = *v12;
        v16 = 4 * v8 - 4;
        v13 = v12;
        v17 = v12 + 1;
        do
        {
          v18 = *v17++;
          v19 = v18;
          if (v15 < v18)
          {
            v15 = v19;
            v13 = v14;
          }

          v14 = v17;
          v16 -= 4;
        }

        while (v16);
      }

      else
      {
        v13 = v12;
      }

      LODWORD(v21[0]) = (v13 - v12) >> 2;
      std::vector<int>::push_back[abi:ne200100](a4, v21);
    }

    while (v9++ != a3);
  }

  CoreNLP::MontrealModel::clear(*a1);
}

void sub_19D1B7624(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL corelm::util::InFile::getLine(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

void corelm::util::InFile::getLines(corelm::util::InFile *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  while (corelm::util::InFile::getLine(this, __p))
  {
    v4 = *(a2 + 8);
    if (v4 >= *(a2 + 16))
    {
      v6 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(a2, __p);
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        std::string::__init_copy_ctor_external(*(a2 + 8), __p[0], __p[1]);
      }

      else
      {
        v5 = *__p;
        *(v4 + 16) = v8;
        *v4 = v5;
      }

      v6 = (v4 + 24);
    }

    *(a2 + 8) = v6;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1B77E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v15[1] = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t corelm::util::InFile::reset(corelm::util::InFile *this)
{
  std::ios_base::clear((*(this + 4) + *(**(this + 4) - 24)), 0);
  v2 = *(this + 4);

  return std::istream::seekg();
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x19EAF89A0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_19D1B79E8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x19D1B79A8);
  }

  __cxa_rethrow();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
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

uint64_t CoreNLP::ModelContainer::ModelContainer(uint64_t a1, int a2, int a3, uint64_t a4, applesauce::CF::DictionaryRef *this, const void *a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  applesauce::CF::DictionaryRef::from_get(this, (a1 + 16));
  if (a6)
  {
    CFRetain(a6);
    *(a1 + 24) = a6;
    v8 = CFGetTypeID(a6);
    if (v8 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (!*(a1 + 16))
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Invalid info dictionary");
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Invalid model data dictionary");
LABEL_19:
    v15->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(v15, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  for (i = 0; i < CFArrayGetCount(a6); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    v12 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    v17 = v12;
    applesauce::CF::TypeRef::operator applesauce::CF::DataRef(&v17, &cf);
    if (!cf)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v14, "Invalid data type in model data array");
      v14->__vftable = (MEMORY[0x1E69E55C8] + 16);
      __cxa_throw(v14, off_1E76245E0, MEMORY[0x1E69E5298]);
    }

    CFRelease(cf);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  return a1;
}

void sub_19D1B7DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef((v10 + 24));
  applesauce::CF::DictionaryRef::~DictionaryRef((v10 + 16));
  _Unwind_Resume(a1);
}

const void *applesauce::CF::DictionaryRef::from_get@<X0>(const void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CFRetain(this);
    *a2 = v4;
    v5 = CFGetTypeID(v4);
    this = CFDictionaryGetTypeID();
    if (v5 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_19D1B7F20(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DataRef@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
    *a2 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

void sub_19D1B8068(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

CoreNLP::ModelContainer *CoreNLP::ModelContainer::ModelContainer(CoreNLP::ModelContainer *this, CFURLRef anURL, char a3)
{
  v22[19] = *MEMORY[0x1E69E9840];
  *this = 0;
  v5 = kNLModelUnknownRevision;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v6 = this + 32;
  *(this + 1) = v5;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v7 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  v8 = v7;
  if (v7)
  {
    CoreNLP::getUTF8StringFromCFString(v7, &v20);
    if (*(this + 55) < 0)
    {
      operator delete(*v6);
    }

    *v6 = v20;
    *(v6 + 2) = v21[0];
    CFRelease(v8);
  }

  std::ifstream::basic_ifstream(&v20, v6);
  if (!v21[15])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "Failed to open the given file ");
    v12 = *(this + 55);
    if (v12 >= 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = *(this + 4);
    }

    if (v12 >= 0)
    {
      v14 = *(this + 55);
    }

    else
    {
      v14 = *(this + 5);
    }

    v15 = std::string::append(&v18, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    __msg.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__msg.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    *&__ec.__val_ = 1;
    __ec.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(exception, &__msg, &__ec);
    __cxa_throw(exception, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  CoreNLP::ModelContainer::parseMetaData(this, &v20);
  if ((a3 & 8) != 0)
  {
    CoreNLP::ModelContainer::createMemoryMap(this);
  }

  *&v20 = *MEMORY[0x1E69E54C8];
  *(&v21[-2] + *(v20 - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x19EAF8960](v21);
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v22);
  v9 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_19D1B8344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v29 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a24);
      std::unique_ptr<CoreNLP::ModelContainerMMap>::reset[abi:ne200100](v27, 0);
      v31 = *(v24 + 56);
      if (v31)
      {
        *(v24 + 64) = v31;
        operator delete(v31);
      }

      if (*(v24 + 55) < 0)
      {
        operator delete(*v26);
      }

      applesauce::CF::ArrayRef::~ArrayRef((v24 + 24));
      applesauce::CF::DictionaryRef::~DictionaryRef(v25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x19EAF8950](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19D1B8598(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::ModelContainer::parseMetaData(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v50 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, kFieldHeader);
  v4 = CoreNLP::read_32<unsigned int>(a2, &v50, __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 != kMagicNumber)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    CoreNLP::NLModelContainerParseError::NLModelContainerParseError(exception, "Given input does not contain the expected file header");
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kFieldModelType);
  v5 = CoreNLP::read_16<NLModelMethodType>(a2, a1, __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kFieldModelSubtype);
  v6 = CoreNLP::read_16<NLModelMethodType>(a2, (a1 + 4), __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  v49 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, kFieldFormatVersion);
  v7 = CoreNLP::read_16<unsigned short>(a2, &v49, __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  if (v49 != kContainerFormatVersion_1)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    CoreNLP::NLModelContainerIncompatibleFormat::NLModelContainerIncompatibleFormat(v39, "Given input cannot be parsed, as the file format has a higher number");
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kFieldModelRevision);
  v8 = CoreNLP::read_16<long>(a2, (a1 + 8), __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  v48 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, kFieldModelCount);
  v9 = CoreNLP::read_32<long>(a2, &v48, __p);
  if (SBYTE7(v61) < 0)
  {
    operator delete(__p[0]);
  }

  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *__p = 0u;
  v61 = 0u;
  std::string::basic_string[abi:ne200100]<0>(__src, kFieldInfoOffset);
  v10 = CoreNLP::read_32<std::fpos<__mbstate_t>>(a2, __p, __src);
  if (SBYTE7(v52) < 0)
  {
    operator delete(__src[0]);
  }

  v47 = 0;
  std::string::basic_string[abi:ne200100]<0>(__src, kFieldInfoLength);
  v11 = v5 + v4 + v6 + v7 + v8 + v9 + v10 + CoreNLP::read_32<long>(a2, &v47, __src);
  if (SBYTE7(v52) < 0)
  {
    operator delete(__src[0]);
  }

  if (v48 >= 1)
  {
    for (i = 0; i < v48; ++i)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *__src = 0u;
      v52 = 0u;
      std::string::basic_string[abi:ne200100]<0>(cf, kFieldModelOffset);
      v13 = CoreNLP::read_32<std::fpos<__mbstate_t>>(a2, __src, cf);
      if (v46 < 0)
      {
        operator delete(cf[0]);
      }

      v44 = 0;
      std::string::basic_string[abi:ne200100]<0>(cf, kFieldModelLength);
      v14 = CoreNLP::read_32<long>(a2, &v44, cf);
      if (v46 < 0)
      {
        operator delete(cf[0]);
      }

      v16 = *(a1 + 64);
      v15 = *(a1 + 72);
      if (v16 >= v15)
      {
        v19 = *(a1 + 56);
        v20 = 0x8E38E38E38E38E39 * ((v16 - v19) >> 4);
        v21 = v20 + 1;
        if (v20 + 1 > 0x1C71C71C71C71C7)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v22 = 0x8E38E38E38E38E39 * ((v15 - v19) >> 4);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0xE38E38E38E38E3)
        {
          v23 = 0x1C71C71C71C71C7;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::NLModelDataPosition>>(a1 + 56, v23);
        }

        v24 = 144 * v20;
        v25 = v44;
        memmove(v24, __src, 0x88uLL);
        *(v24 + 136) = v25;
        v18 = v24 + 144;
        v26 = *(a1 + 56);
        v27 = *(a1 + 64) - v26;
        v28 = (v24 - v27);
        memcpy(v28, v26, v27);
        v29 = *(a1 + 56);
        *(a1 + 56) = v28;
        *(a1 + 64) = v18;
        *(a1 + 72) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v17 = v44;
        memmove(*(a1 + 64), __src, 0x88uLL);
        *(v16 + 136) = v17;
        v18 = v16 + 144;
      }

      v11 += v13 + v14;
      *(a1 + 64) = v18;
    }
  }

  LOBYTE(cf[0]) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__src, v47);
  std::istream::read();
  v30 = *(a2 + 8);
  if (v30 != v47)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Failed to read complete info dictionary");
    v40->__vftable = &unk_1F10AD4E0;
  }

  v31 = CFDataCreate(0, __src[0], __src[1] - __src[0]);
  cf[0] = v31;
  if (!v31)
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Could not construct");
    __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v32 = CFPropertyListCreateWithData(0, v31, 0, 0, 0);
  v33 = v32;
  if (!v32)
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v42, "Failed to deserialize info dictionary");
    v42->__vftable = &unk_1F10AD4E0;
  }

  v34 = CFGetTypeID(v32);
  if (v34 != CFDictionaryGetTypeID())
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v43, "Could not construct");
    __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::DictionaryRef::from_get(v33, &v44);
  v35 = *(a1 + 16);
  *(a1 + 16) = v44;
  v44 = v35;
  if (v35)
  {
    CFRelease(v35);
  }

  CFRelease(v33);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  v36 = *MEMORY[0x1E69E9840];
  return v30 + v11;
}

void sub_19D1B8C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  __cxa_free_exception(v46);
  applesauce::CF::TypeRef::~TypeRef(&a9);
  applesauce::CF::DataRef::~DataRef(&a11);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::ModelContainer::createMemoryMap(CoreNLP::ModelContainer *this)
{
  v2 = (this + 32);
  if (*(this + 55) < 0)
  {
    v3 = *v2;
  }

  else
  {
    v3 = this + 32;
  }

  v4 = open(v3, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    if ((fstat(v4, &v27) & 0x80000000) == 0)
    {
      if (mmap(0, v27.st_size, 1, 1, v5, 0) != -1)
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&__ec, "Failed to mmap the given file ");
      v20 = *(this + 55);
      if (v20 >= 0)
      {
        v21 = v2;
      }

      else
      {
        v21 = *(this + 4);
      }

      if (v20 >= 0)
      {
        v22 = *(this + 55);
      }

      else
      {
        v22 = *(this + 5);
      }

      v23 = std::string::append(&__ec, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      __msg.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&__msg.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      *&v25.__val_ = 1;
      v25.__cat_ = std::iostream_category();
      std::ios_base::failure::failure(exception, &__msg, &v25);
      __cxa_throw(exception, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
    }

    v13 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&__ec, "Failed to open the given file ");
    v14 = *(this + 55);
    if (v14 >= 0)
    {
      v15 = v2;
    }

    else
    {
      v15 = *(this + 4);
    }

    if (v14 >= 0)
    {
      v16 = *(this + 55);
    }

    else
    {
      v16 = *(this + 5);
    }

    v17 = std::string::append(&__ec, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    __msg.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&__msg.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    *&v25.__val_ = 1;
    v25.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(v13, &__msg, &v25);
    __cxa_throw(v13, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
  }

  v6 = __cxa_allocate_exception(0x20uLL);
  v7 = std::string::basic_string[abi:ne200100]<0>(&__msg, "Failed to open the given file ");
  v8 = *(this + 55);
  if (v8 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = *(this + 4);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 55);
  }

  else
  {
    v10 = *(this + 5);
  }

  v11 = std::string::append(v7, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  *&v27.st_uid = *(&v11->__r_.__value_.__l + 2);
  *&v27.st_dev = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  __ec.__r_.__value_.__r.__words[0] = 1;
  __ec.__r_.__value_.__l.__size_ = std::iostream_category();
  std::ios_base::failure::failure(v6, &v27, &__ec);
  __cxa_throw(v6, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
}

void sub_19D1B9044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v25 - 73) < 0)
  {
    operator delete(*(v25 - 96));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  _Unwind_Resume(exception_object);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x19EAF8960](a1 + 2);
  std::istream::~istream();
  MEMORY[0x19EAF8C10](a1 + 53);
  return a1;
}

CoreNLP::ModelContainer *CoreNLP::ModelContainer::ModelContainer(CoreNLP::ModelContainer *this, CFDataRef theData)
{
  *this = 0;
  *(this + 1) = kNLModelUnknownRevision;
  *(this + 1) = 0u;
  *(this + 10) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  if (!theData)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Given container data is null");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  std::istrstream::istrstream[abi:ne200100](&v16, BytePtr, Length);
  CoreNLP::ModelContainer::parseMetaData(this, &v16);
  Mutable = CFArrayCreateMutable(0, 0x8E38E38E38E38E39 * ((*(this + 8) - *(this + 7)) >> 4), MEMORY[0x1E695E9C0]);
  v7 = *(this + 7);
  v8 = *(this + 8);
  if (v7 != v8)
  {
    v9 = *MEMORY[0x1E695E498];
    do
    {
      v10 = CFDataCreateWithBytesNoCopy(0, &BytePtr[*(v7 + 128)], *(v7 + 136), v9);
      CFArrayAppendValue(Mutable, v10);
      if (v10)
      {
        CFRelease(v10);
      }

      v7 += 144;
    }

    while (v7 != v8);
  }

  if (Mutable)
  {
    v11 = CFGetTypeID(Mutable);
    if (v11 != CFArrayGetTypeID())
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v12 = *(this + 3);
  *(this + 3) = Mutable;
  if (v12)
  {
    CFRelease(v12);
  }

  *(this + 8) = *(this + 7);
  std::istrstream::~istrstream(&v16);
  return this;
}

void sub_19D1B93D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::istrstream *a10)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a9);
  std::istrstream::~istrstream(&a10);
  std::unique_ptr<CoreNLP::ModelContainerMMap>::reset[abi:ne200100](v12, 0);
  v15 = *(v10 + 56);
  if (v15)
  {
    *(v10 + 64) = v15;
    operator delete(v15);
  }

  if (*(v10 + 55) < 0)
  {
    operator delete(*(v10 + 32));
  }

  applesauce::CF::ArrayRef::~ArrayRef((v10 + 24));
  applesauce::CF::DictionaryRef::~DictionaryRef(v11);
  _Unwind_Resume(a1);
}

uint64_t std::istrstream::istrstream[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 160) = 0;
  *a1 = &unk_1F10AD498;
  *(a1 + 8) = 0;
  *(a1 + 112) = &unk_1F10AD4C0;
  std::ios_base::init((a1 + 112), (a1 + 16));
  v6 = MEMORY[0x1E69E54F0] + 64;
  v7 = MEMORY[0x1E69E54F0] + 24;
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *a1 = v7;
  *(a1 + 112) = v6;
  MEMORY[0x19EAF8920](a1 + 16, a2, a3);
  return a1;
}

void sub_19D1B9568(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

CoreNLP::ModelContainer *CoreNLP::ModelContainer::ModelContainer(CoreNLP::ModelContainer *this, CFArrayRef theArray)
{
  *this = 0;
  *(this + 1) = kNLModelUnknownRevision;
  *(this + 1) = 0u;
  *(this + 10) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  if (!theArray || CFArrayGetCount(theArray) <= 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Given container data is null");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v5 = CFArrayGetValueAtIndex(theArray, 1);
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 != CFDataGetTypeID() || (v7 = CFGetTypeID(v5), v7 != CFDataGetTypeID()))
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v22, "Given array contains non-data elements");
    v22->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(v22, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  v9 = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(ValueAtIndex);
  std::istrstream::istrstream[abi:ne200100](&v24, BytePtr, Length);
  v11 = CoreNLP::ModelContainer::parseMetaData(this, &v24);
  Mutable = CFArrayCreateMutable(0, 0x8E38E38E38E38E39 * ((*(this + 8) - *(this + 7)) >> 4), MEMORY[0x1E695E9C0]);
  v13 = *(this + 7);
  if (v13 != *(this + 8))
  {
    v14 = v13 + 144;
    while (1)
    {
      if (v13 == *(this + 7))
      {
        v11 = *(v13 + 128);
      }

      if (v11 == CFDataGetLength(ValueAtIndex))
      {
        v15 = CFDataCreate(0, v9, *(v13 + 136));
        CFArrayAppendValue(Mutable, v15);
        v16 = *(v13 + 136);
        if (v15)
        {
          CFRelease(v15);
        }

        v9 += v16;
        goto LABEL_18;
      }

      v17 = CFDataCreate(0, &BytePtr[*(v13 + 128)], *(v13 + 136));
      CFArrayAppendValue(Mutable, v17);
      if (*(this + 8) != v14)
      {
        break;
      }

      v11 += *(v13 + 136);
      if (v17)
      {
        goto LABEL_17;
      }

LABEL_18:
      v13 += 144;
      v14 += 144;
      if (v13 == *(this + 8))
      {
        goto LABEL_19;
      }
    }

    v11 = v11 + *(v14 + 128) - *(v13 + 128);
    if (!v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v17);
    goto LABEL_18;
  }

LABEL_19:
  if (Mutable)
  {
    v18 = CFGetTypeID(Mutable);
    if (v18 != CFArrayGetTypeID())
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v23, "Could not construct");
      __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v19 = *(this + 3);
  *(this + 3) = Mutable;
  if (v19)
  {
    CFRelease(v19);
  }

  *(this + 8) = *(this + 7);
  std::istrstream::~istrstream(&v24);
  return this;
}

void sub_19D1B990C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CoreNLP::ModelContainerMMap **a10, const void **a11, const void *a12, std::istrstream *a13)
{
  __cxa_free_exception(v14);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a12);
  std::istrstream::~istrstream(&a13);
  std::unique_ptr<CoreNLP::ModelContainerMMap>::reset[abi:ne200100](a10, 0);
  v16 = *(v13 + 56);
  if (v16)
  {
    *(v13 + 64) = v16;
    operator delete(v16);
  }

  if (*(v13 + 55) < 0)
  {
    operator delete(*(v13 + 32));
  }

  applesauce::CF::ArrayRef::~ArrayRef((v13 + 24));
  applesauce::CF::DictionaryRef::~DictionaryRef(a11);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::read_32<unsigned int>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v15 = 0;
  std::istream::read();
  if (*(a1 + 8) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to read ");
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::string::append(&v13, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    exception->__vftable = &unk_1F10AD4E0;
  }

  *a2 = v15;
  return 4;
}

void sub_19D1B9AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

std::runtime_error *CoreNLP::NLModelContainerParseError::NLModelContainerParseError(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_1F10AD4E0;
  return result;
}

uint64_t CoreNLP::read_16<NLModelMethodType>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v15 = 0;
  std::istream::read();
  if (*(a1 + 8) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to read ");
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::string::append(&v13, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    exception->__vftable = &unk_1F10AD4E0;
  }

  *a2 = v15;
  return 2;
}

void sub_19D1B9C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t CoreNLP::read_16<unsigned short>(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v15 = 0;
  std::istream::read();
  if (*(a1 + 8) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to read ");
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::string::append(&v13, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    exception->__vftable = &unk_1F10AD4E0;
  }

  *a2 = v15;
  return 2;
}

void sub_19D1B9DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

std::runtime_error *CoreNLP::NLModelContainerIncompatibleFormat::NLModelContainerIncompatibleFormat(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_1F10AD508;
  return result;
}

uint64_t CoreNLP::read_16<long>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = 0;
  std::istream::read();
  if (*(a1 + 8) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to read ");
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::string::append(&v13, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    exception->__vftable = &unk_1F10AD4E0;
  }

  *a2 = v15;
  return 2;
}

void sub_19D1B9F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t CoreNLP::read_32<long>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = 0;
  std::istream::read();
  if (*(a1 + 8) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to read ");
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::string::append(&v13, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    exception->__vftable = &unk_1F10AD4E0;
  }

  *a2 = v15;
  return 4;
}

void sub_19D1BA100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t CoreNLP::read_32<std::fpos<__mbstate_t>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  std::istream::read();
  if (*(a1 + 8) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Failed to read ");
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = std::string::append(&v14, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F10AD4E0;
  }

  v6 = v16;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = v6;
  return 4;
}

void sub_19D1BA27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

BOOL CoreNLP::has_suffix(uint64_t **a1, void *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v11 = v4 >= v6;
  v7 = v4 - v6;
  if (!v11)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    v11 = v6 != -1 && v3 >= v7;
    if (v11)
    {
      v12 = v3 - v7;
      if (v12 >= v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = v12;
      }

      a1 = *a1;
      goto LABEL_26;
    }

LABEL_34:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v2 < v7 || v6 == -1)
  {
    goto LABEL_34;
  }

  if (v2 - v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v2 - v7;
  }

LABEL_26:
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1 + v7, a2, v10) && v10 == v6;
}

BOOL CoreNLP::ModelContainer::writeToURL(CoreNLP::ModelContainer *this, CFURLRef anURL, char a3)
{
  v23[19] = *MEMORY[0x1E69E9840];
  v5 = CFURLGetString(anURL);
  if (v5 && (v6 = v5, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v6)))
  {
    applesauce::CF::details::CFString_get_value<false>(v6, &v21);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "");
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kNLPModelExtension);
  has_suffix = CoreNLP::has_suffix(&v21, __p);
  v9 = has_suffix;
  if (SHIBYTE(__p[0].st_gid) < 0)
  {
    operator delete(*&__p[0].st_dev);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!has_suffix)
  {
LABEL_9:
    std::string::append(&v21, kNLPModelExtension);
  }

LABEL_10:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v21;
  }

  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "");
    nlp::temporaryFile(v18, __p);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    *&v20.__r_.__value_.__l.__data_ = *&__p[0].st_dev;
    v20.__r_.__value_.__r.__words[2] = *&__p[0].st_uid;
    HIBYTE(__p[0].st_gid) = 0;
    LOBYTE(__p[0].st_dev) = 0;
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    goto LABEL_24;
  }

  if ((a3 & 2) == 0 || ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = &v20) : (v10 = v20.__r_.__value_.__r.__words[0]), stat(v10, __p)))
  {
LABEL_24:
    std::ofstream::basic_ofstream(&__p[0].st_dev, &v20);
    v11 = 0;
    if (__p[0].st_qspare[0])
    {
      CoreNLP::ModelContainer::writeContainerData(this, __p);
      if ((a3 & 1) == 0 || ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v13 = &v20) : (v13 = v20.__r_.__value_.__r.__words[0]), (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v14 = &v21) : (v14 = v21.__r_.__value_.__r.__words[0]), rename(v13, v14, v12), !v15))
      {
        v11 = 1;
      }
    }

    *&__p[0].st_dev = *MEMORY[0x1E69E54D0];
    *(&__p[0].st_dev + *(*&__p[0].st_dev - 24)) = *(MEMORY[0x1E69E54D0] + 24);
    MEMORY[0x19EAF8960](&__p[0].st_ino);
    std::ostream::~ostream();
    MEMORY[0x19EAF8C10](v23);
    goto LABEL_36;
  }

  v11 = 0;
LABEL_36:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_19D1BA66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v5 = *(MEMORY[0x1E69E54D0] + 16);
  v6 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x1E69E5530] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x19EAF8950](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19D1BA8A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

uint64_t CoreNLP::ModelContainer::writeContainerData(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0x8E38E38E38E38E39 * ((a1[8] - a1[7]) >> 4);
  }

  CoreNLP::ModelContainer::writeContainerData(a1, a2, Count);
  return 1;
}

uint64_t CoreNLP::ModelContainer::writeContainerData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0x8E38E38E38E38E39 * ((*(a1 + 64) - *(a1 + 56)) >> 4);
  }

  LODWORD(v35) = kMagicNumber;
  std::ostream::write();
  LOWORD(v35) = *a1;
  std::ostream::write();
  LOWORD(v35) = *(a1 + 4);
  std::ostream::write();
  LOWORD(v35) = kContainerFormatVersion_1;
  std::ostream::write();
  LOWORD(v35) = *(a1 + 8);
  std::ostream::write();
  std::ostream::write();
  LODWORD(v35) = 8 * Count + 20;
  std::ostream::write();
  Data = CFPropertyListCreateData(0, *(a1 + 16), kCFPropertyListBinaryFormat_v1_0, 0, 0);
  theData = Data;
  if (!Data)
  {
    goto LABEL_53;
  }

  v8 = CFGetTypeID(Data);
  if (v8 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!theData)
  {
LABEL_53:
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Cannot serialize the info dictionary");
    v32->__vftable = &unk_1F10AD530;
  }

  LODWORD(v35) = CFDataGetLength(theData);
  std::ostream::write();
  Length = CFDataGetLength(theData);
  v10 = CFDataGetLength(theData);
  v11 = Length & 7;
  if (Count)
  {
    v12 = 0;
    if (v11)
    {
      v13 = 8 - v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = 8 * Count + v10 + v13 + 24;
    v15 = 136;
    do
    {
      LODWORD(v35) = v14;
      std::ostream::write();
      v16 = *(a1 + 24);
      if (v16)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v12);
        v18 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        cf = v18;
        applesauce::CF::TypeRef::operator applesauce::CF::DataRef(&cf, &v35);
        if (cf)
        {
          CFRelease(cf);
        }

        v19 = CFDataGetLength(v35);
        if (v35)
        {
          CFRelease(v35);
        }
      }

      else
      {
        v19 = *(*(a1 + 56) + v15);
      }

      LODWORD(v35) = v19;
      std::ostream::write();
      if (v19 <= 0)
      {
        v20 = -(-v19 & 7);
      }

      else
      {
        v20 = v19 & 7;
      }

      if (v20)
      {
        v14 = v19 + v14 - v20 + 8;
      }

      else
      {
        v14 += v19;
      }

      ++v12;
      v15 += 144;
    }

    while (Count != v12);
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  std::ostream::write();
  if (v11)
  {
    LOBYTE(cf) = 0;
    std::vector<char>::vector[abi:ne200100](&v35, 8 - v11);
    std::ostream::write();
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }

  if (a3 >= 1)
  {
    v21 = 0;
    do
    {
      cf = 0;
      v22 = *(a1 + 24);
      if (v22)
      {
        v23 = CFArrayGetValueAtIndex(v22, v21);
        v24 = v23;
        if (v23)
        {
          CFRetain(v23);
        }

        v35 = v24;
        applesauce::CF::TypeRef::operator applesauce::CF::DataRef(&v35, &v34);
        v25 = v34;
        cf = v34;
        if (v35)
        {
          CFRelease(v35);
          v25 = cf;
        }
      }

      else
      {
        v26 = CoreNLP::ModelContainer::copyModelDataAtIndex(a1, v21);
        v25 = v26;
        v35 = v26;
        if (v26)
        {
          v27 = CFGetTypeID(v26);
          if (v27 != CFDataGetTypeID())
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v31, "Could not construct");
            __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        cf = v25;
      }

      v28 = CFDataGetLength(v25);
      CFDataGetBytePtr(v25);
      std::ostream::write();
      if (v28 <= 0)
      {
        v29 = -(-v28 & 7);
      }

      else
      {
        v29 = v28 & 7;
      }

      if (v29)
      {
        LOBYTE(v34) = 0;
        std::vector<char>::vector[abi:ne200100](&v35, 8 - v29);
        std::ostream::write();
        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }
      }

      if (v25)
      {
        CFRelease(v25);
      }

      ++v21;
    }

    while (a3 != v21);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return 1;
}

void sub_19D1BAE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a15);
  _Unwind_Resume(a1);
}

CFIndex CoreNLP::ModelContainer::getModelDataCount(CFArrayRef *this)
{
  if (this[3])
  {
    return CFArrayGetCount(this[3]);
  }

  else
  {
    return 0x8E38E38E38E38E39 * ((this[8] - this[7]) >> 4);
  }
}

CFDataRef CoreNLP::ModelContainer::copyModelDataAtIndex(CoreNLP::ModelContainer *this, unint64_t a2)
{
  v36[19] = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4)
  {
    if (CFArrayGetCount(v4) > a2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(this + 3), a2);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      cf = v6;
      applesauce::CF::TypeRef::operator applesauce::CF::DataRef(&cf, theData);
      BytePtr = CFDataGetBytePtr(theData[0]);
      v8 = CFDataGetLength(theData[0]);
      v9 = CFDataCreateWithBytesNoCopy(0, BytePtr, v8, *MEMORY[0x1E695E498]);
      if (theData[0])
      {
        CFRelease(theData[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
LABEL_15:
    v18 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v10 = *(this + 7);
  if (0x8E38E38E38E38E39 * ((*(this + 8) - v10) >> 4) <= a2)
  {
    goto LABEL_14;
  }

  v11 = v10 + 144 * a2;
  v12 = *(this + 10);
  if (!v12)
  {
    std::ifstream::basic_ifstream(&cf, this + 4);
    std::vector<char>::vector[abi:ne200100](bytes, *(v11 + 136));
    v19 = *(v11 + 128);
    std::istream::seekg();
    v20 = *(v11 + 136);
    std::istream::read();
    if (length != *(v11 + 136))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](theData);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Failed to read the model data completely at index: ", 51);
      v22 = MEMORY[0x19EAF8AA0](v21, a2);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", only read ", 12);
      v24 = MEMORY[0x19EAF8A90](v23, length);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " vs expected ", 13);
      MEMORY[0x19EAF8AA0](v25, *(v11 + 136));
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      if (v29 >= 0)
      {
        v27 = &v28;
      }

      else
      {
        v27 = v28;
      }

      std::runtime_error::runtime_error(exception, v27);
      exception->__vftable = &unk_1F10AD4E0;
    }

    v9 = CFDataCreate(0, bytes[0], length);
    if (bytes[0])
    {
      bytes[1] = bytes[0];
      operator delete(bytes[0]);
    }

    cf = *MEMORY[0x1E69E54C8];
    *(&cf + *(cf - 3)) = *(MEMORY[0x1E69E54C8] + 24);
    MEMORY[0x19EAF8960](&v35);
    std::istream::~istream();
    MEMORY[0x19EAF8C10](v36);
    goto LABEL_15;
  }

  v13 = *(v11 + 136);
  v14 = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E695E498];
  v16 = (*(v12 + 16) + *(v11 + 128));

  return CFDataCreateWithBytesNoCopy(0, v16, v13, v15);
}

void sub_19D1BB2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v54 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15, MEMORY[0x1E69E54D8]);
      MEMORY[0x19EAF8C10](&a31);
      if (a50)
      {
        a51 = a50;
        operator delete(a50);
      }

      std::ifstream::~ifstream(&a53);
      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v53);
  goto LABEL_6;
}

CFDataRef CoreNLP::ModelContainer::copyContainerData(CoreNLP::ModelContainer *this)
{
  v32[19] = *MEMORY[0x1E69E9840];
  v1 = *(this + 10);
  if (!v1)
  {
    if ((*(this + 55) & 0x8000000000000000) != 0)
    {
      if (*(this + 5))
      {
        goto LABEL_7;
      }
    }

    else if (*(this + 55))
    {
LABEL_7:
      v8 = (this + 32);
      std::ifstream::basic_ifstream(&v27, this + 4);
      if (!v31[3])
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *&v25.st_dev = 1;
        v25.st_ino = std::iostream_category();
        std::ios_base::failure::failure(exception, "Failed to open the temp file", &v25);
        __cxa_throw(exception, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
      }

      if (*(this + 55) < 0)
      {
        v9 = *v8;
      }

      else
      {
        v9 = this + 32;
      }

      if (stat(v9, &v25))
      {
        v16 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v24, "Failed to get the file size of ");
        v17 = *(this + 55);
        if (v17 >= 0)
        {
          v18 = this + 32;
        }

        else
        {
          v18 = *(this + 4);
        }

        if (v17 >= 0)
        {
          v19 = *(this + 55);
        }

        else
        {
          v19 = *(this + 5);
        }

        v20 = std::string::append(&v24, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        *&__ec.__val_ = 1;
        __ec.__cat_ = std::iostream_category();
        std::ios_base::failure::failure(v16, &__p, &__ec);
        __cxa_throw(v16, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
      }

      std::vector<char>::vector[abi:ne200100](&__p, LODWORD(v25.st_size));
      std::istream::read();
      if (v28 != v25.st_size)
      {
        v22 = __cxa_allocate_exception(0x20uLL);
        v24.__r_.__value_.__r.__words[0] = 1;
        v24.__r_.__value_.__l.__size_ = std::iostream_category();
        std::ios_base::failure::failure(v22, "Open failed", &v24);
        __cxa_throw(v22, MEMORY[0x1E69E53D0], MEMORY[0x1E69E5360]);
      }

      v12 = CFDataCreate(0, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v27 = *MEMORY[0x1E69E54C8];
      *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54C8] + 24);
      MEMORY[0x19EAF8960](v29);
      std::istream::~istream();
      v13 = v32;
LABEL_30:
      MEMORY[0x19EAF8C10](v13);
      v14 = *MEMORY[0x1E69E9840];
      return v12;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v27, 4);
    CoreNLP::ModelContainer::writeContainerData(this, &v27);
    std::stringbuf::str();
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v25.st_gid & 0x80000000) == 0)
    {
      st_gid_high = HIBYTE(v25.st_gid);
    }

    else
    {
      st_gid_high = v25.st_ino;
    }

    v12 = CFDataCreate(0, p_p, st_gid_high);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.st_gid) < 0)
    {
      operator delete(*&v25.st_dev);
    }

    v27 = *MEMORY[0x1E69E54E8];
    *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v28 = MEMORY[0x1E69E5548] + 16;
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    v28 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v29);
    std::ostream::~ostream();
    v13 = v31;
    goto LABEL_30;
  }

  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E498];

  return CFDataCreateWithBytesNoCopy(0, v2, v3, v5);
}

void sub_19D1BB890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v46 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a45);
      _Unwind_Resume(a1);
    }
  }

  else if (!v46)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v45);
  goto LABEL_8;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1, int a2)
{
  a1[20] = 0;
  v4 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v6 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x1E69E5570] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[14] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), a2 | 0x10);
  return a1;
}

void sub_19D1BBACC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x19EAF8C10](a1 + 112);
  return a1;
}

CFArrayRef CoreNLP::ModelContainer::copySplitContainerData(CoreNLP::ModelContainer *this, int64_t a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    v6 = *(this + 3);
    if (v6)
    {
      v7 = CFArrayGetCount(v6);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0x8E38E38E38E38E39 * ((*(this + 8) - *(this + 7)) >> 4);
  }

  v7 = 0x8E38E38E38E38E39 * ((*(this + 8) - *(this + 7)) >> 4);
LABEL_6:
  if (v7 < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid info dictionary");
    __cxa_throw(exception, off_1E76245E0, MEMORY[0x1E69E5298]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v26, 4);
  CoreNLP::ModelContainer::writeContainerData(this, &v26, a2);
  std::stringbuf::str();
  std::stringbuf::str();
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v9 = v25;
  }

  else
  {
    v9 = v24;
  }

  v10 = CFDataCreate(0, p_p, v9);
  v22 = v10;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  Mutable = CFDataCreateMutable(0, 0);
  __p = Mutable;
  if (Count > a2)
  {
    do
    {
      v12 = CoreNLP::ModelContainer::copyModelDataAtIndex(this, a2);
      BytePtr = CFDataGetBytePtr(v12);
      Length = CFDataGetLength(v12);
      CFDataAppendBytes(Mutable, BytePtr, Length);
      if (v12)
      {
        CFRelease(v12);
      }

      ++a2;
    }

    while (Count != a2);
  }

  Copy = CFDataCreateCopy(0, Mutable);
  v16 = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v16, v10);
  CFArrayAppendValue(v16, Copy);
  v17 = CFArrayCreateCopy(0, v16);
  if (v16)
  {
    CFRelease(v16);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  MEMORY[0x19EAF8C10](&v30);
  return v17;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_19D1BC2B8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF8C10](v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
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

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void CoreNLP::NLModelContainerParseError::~NLModelContainerParseError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::NLModelContainerIncompatibleFormat::~NLModelContainerIncompatibleFormat(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x19EAF8CA0);
}

_BYTE *applesauce::CF::details::CFString_get_value<false>@<X0>(const __CFString *a1@<X0>, UInt8 *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v9.location = 0;
  v9.length = Length;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  std::string::basic_string[abi:ne200100](a2, maxBufLen, 0);
  if ((a2[23] & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v10.location = 0;
  v10.length = Length;
  return CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x19EAF8960](a1 + 1);

  return std::ostream::~ostream();
}

void CoreNLP::NLModelContainerSerializationError::~NLModelContainerSerializationError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAF8BA0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_19D1BC88C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EAF8A00](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19EAF8A10](v13);
  return a1;
}

void sub_19D1BC9F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x19EAF8A10](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x19D1BC9D4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      std::string::basic_string[abi:ne200100](__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_19D1BCBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1BCC3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CoreNLP::ModelContainerMMap *std::unique_ptr<CoreNLP::ModelContainerMMap>::reset[abi:ne200100](CoreNLP::ModelContainerMMap **a1, CoreNLP::ModelContainerMMap *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreNLP::ModelContainerMMap::~ModelContainerMMap(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void CoreNLP::ModelContainerMMap::~ModelContainerMMap(CoreNLP::ModelContainerMMap *this)
{
  v1 = *this;
  if (v1 != -1)
  {
    close(v1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::NLModelDataPosition>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1BCD9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D1BCE34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void nlp::CFScopedPtr<__CFArray *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t CoreNLP::_CFInit_GazetteerWrapper(uint64_t this, const void *a2)
{
  *(this + 16) = &unk_1F10AD558;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNLP::createGazetteerWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1ED6F2880 = 0;
    unk_1ED6F2890 = 0u;
    unk_1ED6F28A0 = 0u;
    CoreNLP::_CFGetTypeID_GazetteerWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = *a1;
  *a1 = 0;
  std::unique_ptr<CoreNLP::Gazetteer>::reset[abi:ne200100]((Instance + 24), v3);
  return Instance;
}

uint64_t CoreNLP::WordDispatchTagger::setLocale(CoreNLP::TaggerContext **this, const __CFLocale *a2)
{
  CoreNLP::Tagger::setLocale(this, a2);
  v3 = *(*this[6] + 16);

  return v3();
}

void CoreNLP::WordDispatchTagger::setLocaleConstraints(CoreNLP::WordDispatchTagger *this, const __CFArray *a2)
{
  CoreNLP::Tagger::setLocaleConstraints(this, a2);
  (*(**(this + 6) + 24))(*(this + 6), a2);
  __src = 0;
  v21 = 0;
  v22 = 0;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      LocaleLanguage = CoreNLP::getLocaleLanguage(ValueAtIndex, v7);
      if (LocaleLanguage != 1)
      {
        v9 = v21;
        if (v21 >= v22)
        {
          v11 = __src;
          v12 = v21 - __src;
          v13 = (v21 - __src) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v15 = v22 - __src;
          if ((v22 - __src) >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v16 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v16);
          }

          *(4 * v13) = LocaleLanguage;
          v10 = 4 * v13 + 4;
          memcpy(0, v11, v12);
          v17 = __src;
          __src = 0;
          v21 = v10;
          v22 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v21 = LocaleLanguage;
          v10 = (v9 + 4);
        }

        v21 = v10;
      }
    }

    v18 = __src;
    v19 = v21;
  }

  CoreNLP::NLLangid::setLanguageConstraints(*(this + 12), v18, (v19 - v18) >> 2);
}

void sub_19D1BD254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::WordDispatchTagger::setTokenizerOptions(CoreNLP::WordDispatchTagger *this, uint64_t a2)
{
  CoreNLP::Tagger::setTokenizerOptions(this, a2);
  v8 = 4;
  v4 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(this + 7, &v8);
  if (v4)
  {
    (*(*v4[3] + 128))(v4[3], a2);
  }

  v8 = 5;
  v5 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(this + 7, &v8);
  if (v5)
  {
    (*(*v5[3] + 128))(v5[3], a2);
  }

  v8 = 54;
  v6 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(this + 7, &v8);
  if (v6)
  {
    (*(*v6[3] + 128))(v6[3], a2);
  }

  return CoreNLP::NLLangid::setTokenizerOptions(*(this + 12), a2);
}

void CoreNLP::WordDispatchTagger::setStringInPossibleSubWordTaggers(uint64_t a1, const __CFString *a2, CFRange a3, unsigned int a4)
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v14 = *MEMORY[0x1E69E9840];
  *(a1 + 112) = *(a1 + 104);
  if (a4 <= 1)
  {
    TopHypothesesOfString = CoreNLP::NLLangid::getTopHypothesesOfString(*(a1 + 96), a2, a3, &v11, 2);
    if (TopHypothesesOfString)
    {
      v4 = v11;
      if (TopHypothesesOfString >= 2 && v11 <= 0x36 && ((1 << v11) & 0x40000000100030) != 0 && v12 <= 0x36 && ((1 << v12) & 0x40000000100030) != 0 && v13 >= 0.5)
      {
        CoreNLP::WordDispatchTagger::prepareSubWordTagger(a1, a2, location, length, v12);
      }
    }

    else
    {
      v4 = 10;
    }
  }

  *(*(a1 + 32) + 36) = v4;
  CoreNLP::WordDispatchTagger::prepareSubWordTagger(a1, a2, location, length, v4);
  v10 = *MEMORY[0x1E69E9840];
}

void CoreNLP::WordDispatchTagger::prepareSubWordTagger(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  SubWordTagger = CoreNLP::WordDispatchTagger::getSubWordTagger(a1, a5);
  (*(**SubWordTagger + 32))(*SubWordTagger, a2, a3, a4);
  v10 = *SubWordTagger;
  v12 = a1[14];
  v11 = a1[15];
  if (v12 >= v11)
  {
    v14 = a1[13];
    v15 = (v12 - v14) >> 3;
    if ((v15 + 1) >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v16 = v11 - v14;
    v17 = v16 >> 2;
    if (v16 >> 2 <= (v15 + 1))
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CoreNLP::SubWordTagger *>>((a1 + 13), v18);
    }

    v19 = (8 * v15);
    *v19 = v10;
    v13 = 8 * v15 + 8;
    v20 = a1[13];
    v21 = a1[14] - v20;
    v22 = v19 - v21;
    memcpy(v19 - v21, v20, v21);
    v23 = a1[13];
    a1[13] = v22;
    a1[14] = v13;
    a1[15] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v12 = v10;
    v13 = (v12 + 1);
  }

  a1[14] = v13;
}

uint64_t CoreNLP::WordDispatchTagger::enumerateTokensOfPartialString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[6];
  v11 = a1[4];
  v12 = a1[5];
  a1[5] = v10;
  (*(*v10 + 32))(v10, *(v11 + 8));
  result = (*(*a1[6] + 48))(a1[6], a2, a5, a6, &__block_literal_global_11);
  a1[5] = v12;
  return result;
}

void CoreNLP::WordDispatchTagger::fastEnumerateTokens(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2000000000;
    v7[0] = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN7CoreNLP18WordDispatchTagger19fastEnumerateTokensEmU13block_pointerFvP7NLTokenPbE_block_invoke;
    v5[3] = &unk_1E76249E8;
    v5[6] = a1;
    v5[7] = a2;
    v5[4] = a3;
    v5[5] = v6;
    (*(*v4 + 48))(v4, a2, v7, a3, v5);
    _Block_object_dispose(v6, 8);
  }
}

uint64_t CoreNLP::WordDispatchTagger::goToTokenAtIndexOfPartialString(CoreNLP::WordDispatchTagger *this, uint64_t a2, uint64_t a3, CFRange *a4)
{
  v7 = *(this + 6);
  v8 = *(this + 4);
  v9 = *(this + 5);
  *(this + 5) = v7;
  (*(*v7 + 32))(v7, *(v8 + 8), a4->location, a4->length);
  result = (*(**(this + 6) + 96))(*(this + 6), a2, a3, 0);
  *(this + 5) = v9;
  return result;
}

uint64_t CoreNLP::WordDispatchTagger::enumeratePossibleTokenSequences(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (*(v2 + 32) == 1 && v2[3])
  {
    v4 = result;
    v5 = *v2;
    if ((v5 & 0x20000) != 0)
    {
      if ((*(result + 160) & 1) != 0 || *(result + 161) == 1)
      {
        result = *(result + 48);
      }

      else
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      v10 = *(*result + 64);

      return v10();
    }

    else if ((v5 & 0x40000) != 0)
    {
      v11 = 0;
      v6 = *(result + 104);
      v7 = *(result + 112);
      if (v6 != v7)
      {
        v8 = v6 + 8;
        do
        {
          *(v4 + 40) = *(v8 - 8);
          result = (*(a2 + 16))(a2, &v11);
          if (v11)
          {
            break;
          }

          v9 = v8 == v7;
          v8 += 8;
        }

        while (!v9);
      }
    }
  }

  return result;
}

uint64_t CoreNLP::WordDispatchTagger::enumerateTokensOfCurrentTokenSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(a1 + 32);
  if ((v3 & 0x20000) == 0)
  {
    if ((v3 & 0x40000) != 0)
    {
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x2000000000;
      v9[0] = 0;
      v4 = *(a1 + 40);
      if (v4)
      {
        (*(*v4 + 48))(v4, a2, v9);
      }

      _Block_object_dispose(v8, 8);
    }

    return 1;
  }

  if (*(a1 + 161) == 1)
  {
    (*(**(a1 + 48) + 72))(*(a1 + 48), a2, a3);
    return 1;
  }

  if (*(a1 + 160) == 1)
  {
    CoreNLP::DefaultSubWordTagger::enumerateSpeciallyHandledPersonNames(*(a1 + 48), a3);
    return 1;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    return 1;
  }

  v6 = *(*v5 + 72);

  return v6();
}

uint64_t CoreNLP::WordDispatchTagger::enumerateDerivedSubTokensOfToken(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

uint64_t CoreNLP::WordDispatchTagger::copyTranscriptionOfCurrentToken(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    result = *(a1 + 136);
  }

  else
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }
  }

  return (*(*result + 104))();
}

uint64_t CoreNLP::WordDispatchTagger::getPartOfSpeechOfCurrentToken(CoreNLP::WordDispatchTagger *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  else
  {
    return 15;
  }
}

void *std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unique_ptr<CoreNLP::SubWordTagger>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t _nlpDefaultLog()
{
  if (_nlpDefaultLog::token != -1)
  {
    _nlpDefaultLog_cold_1();
  }

  return _nlpDefaultLog::log;
}

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.CoreNLPFramework", "Default");
  _nlpDefaultLog::log = result;
  return result;
}

void CoreNLP::Parser::Parser(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 20) = a3;
  operator new();
}

void sub_19D1BDFC8(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF8CA0](v2, 0x80C40803F642BLL);
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::Parser::getParseTree(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v8 = a3 + 1;
  std::vector<NLDepLabel>::vector[abi:ne200100](&v30, v8);
  std::vector<int>::vector[abi:ne200100](&v28, v8);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<NLDepLabel>::__init_with_size[abi:ne200100]<NLDepLabel*,NLDepLabel*>(a4, v30, v31, (v31 - v30) >> 2);
  a4[3] = 0;
  a4[4] = 0;
  a4[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a4 + 3), v28, v29, (v29 - v28) >> 2);
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  LODWORD(v25.__begin_) = 1;
  if (a3 >= 1)
  {
    do
    {
      std::deque<int>::push_back(v26, &v25);
      v9 = LODWORD(v25.__begin_)++;
    }

    while (v9 < a3);
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<int>::reserve(&v25, v8);
  end = v25.__end_;
  if (v25.__end_ >= v25.__end_cap_.__value_)
  {
    begin = v25.__begin_;
    v13 = v25.__end_ - v25.__begin_;
    v14 = v25.__end_ - v25.__begin_;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v16 = v25.__end_cap_.__value_ - v25.__begin_;
    if ((v25.__end_cap_.__value_ - v25.__begin_) >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v25, v18);
    }

    *(4 * v14) = 0;
    v11 = (4 * v14 + 4);
    memcpy(0, begin, v13);
    v19 = v25.__begin_;
    v25.__begin_ = 0;
    v25.__end_ = v11;
    v25.__end_cap_.__value_ = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v25.__end_ = 0;
    v11 = end + 1;
  }

  v25.__end_ = v11;
  std::vector<float>::vector[abi:ne200100](&__p, *(a1 + 32));
  while ((v25.__end_ - v25.__begin_) > 4 || *(&v27 + 1) != 0)
  {
    v21 = __p;
    if (v24 - __p >= 1)
    {
      bzero(__p, v24 - __p);
    }

    CoreNLP::Parser::getFeatures(a1, v21, *a2, v26, &v25);
    v22 = CoreNLP::Parser::predictTransition(a1, __p, v26, &v25);
    CoreNLP::Parser::updateState(a1, v22, v26, &v25, a4);
  }

  CoreNLP::MontrealModel::clear(*a1);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v25.__begin_)
  {
    v25.__end_ = v25.__begin_;
    operator delete(v25.__begin_);
  }

  std::deque<int>::~deque[abi:ne200100](v26);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_19D1BE29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a17);
  CoreNLP::Dependency::~Dependency(v24);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  v28 = *(v26 - 88);
  if (v28)
  {
    *(v25 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void *std::deque<int>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<int>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }
}

unsigned int *CoreNLP::Parser::getFeatures(unsigned int *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = result;
  v9 = result[3];
  if (v9 < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v11 = 0;
    v12 = -v9;
    v13 = result[3];
    do
    {
      v14 = a5[1] - *a5;
      v15 = v14 >> 2;
      if (v14 != 4 && v15 >= v13)
      {
        result = memcpy((a2 + 4 * (v8[2] * v11)), (a3 + 4 * (v8[2] * *(*a5 + 4 * (v12 + v15)))), 4 * v8[2]);
      }

      ++v11;
      --v13;
      ++v12;
    }

    while (v9 != v11);
  }

  v17 = v8[4];
  if (v17 >= 1)
  {
    v18 = v17 - 1;
    do
    {
      if (a4[5] > v18)
      {
        result = memcpy((a2 + 4 * (v8[2] * v9)), (a3 + 4 * (v8[2] * *(*(a4[1] + (((v18 + a4[4]) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v18 + a4[4]) & 0x3FF)))), 4 * v8[2]);
      }

      LODWORD(v9) = v9 + 1;
      v19 = v18-- + 1;
    }

    while (v19 > 1);
  }

  return result;
}

unint64_t CoreNLP::Parser::predictTransition(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 20);
  v8 = *a1;
  v9 = *(a1 + 40);
  v28[0] = *(a1 + 24);
  v28[1] = v9;
  CoreNLP::MontrealModel::setInputTensor(v8, v28, a2, @"input");
  CoreNLP::MontrealModel::predict(*a1);
  v10 = CoreNLP::MontrealModel::output(*a1, @"output");
  v11 = *(a3 + 40);
  v12 = v11 != 0;
  if (v11)
  {
    v10[1] = v10[1] + 100000.0;
  }

  v13 = (2 * v7) | 1;
  v14 = a4[1] - *a4;
  if (v14 >= 9)
  {
    *a4;
    if (*(a4[1] - 8) < *(a4[1] - 4))
    {
      v10[v13 - 1] = v10[v13 - 1] + 100000.0;
      v12 = 1;
    }
  }

  v15 = v13 - 1;
  if (v15 >= 3)
  {
    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14 == 8;
    }

    v17 = !v16;
    for (i = 2; v15 != i; ++i)
    {
      if (v14 < 9 || (i & 1) != 0)
      {
        if (v14 <= 8)
        {
          if (i)
          {
            v19 = v17;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            continue;
          }
        }

        else if ((i & 1) == 0)
        {
          continue;
        }
      }

      v10[i] = v10[i] + 100000.0;
      v12 = 1;
    }
  }

  if (!v12)
  {
    return 0;
  }

  if (v7)
  {
    v20 = v10 + 1;
    v21 = *v10;
    v22 = 4 * v15;
    v23 = v10;
    v24 = v10 + 1;
    do
    {
      v25 = *v24++;
      v26 = v25;
      if (v21 < v25)
      {
        v21 = v26;
        v23 = v20;
      }

      v20 = v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = v10;
  }

  return (v23 - v10) >> 2;
}

void CoreNLP::Parser::updateState(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 == 1)
  {
    v7 = *(a3 + 40);
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("deque");
    }

    v8 = *(a3 + 32);
    v21 = *(*(*(a3 + 8) + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF));
    *(a3 + 32) = v8 + 1;
    *(a3 + 40) = v7 - 1;
    std::deque<int>::__maybe_remove_front_spare[abi:ne200100](a3, 1);
    goto LABEL_4;
  }

  if (a2 == 2 * *(a1 + 20))
  {
    v9 = *(a4 + 8);
    v10 = v9 - *a4;
    if (v9 != *a4)
    {
      v21 = *(v9 - 4);
      if (v10 > 4)
      {
        v20 = *(v9 - 8);
        *(a4 + 8) = v9 - 8;
        std::vector<int>::push_back[abi:ne200100](a4, &v21);
        std::deque<int>::push_front(a3, &v20);
        return;
      }
    }

LABEL_18:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = a2 / 2;
  if (a2 % 2 == 1)
  {
    v16 = *(a4 + 8);
    if (v16 == *a4 || (v16 - *a4) <= 4)
    {
      goto LABEL_18;
    }

    *a4;
    v18 = (v16 - 8);
    v17 = *v18;
    v19 = v18[1];
    *(a4 + 8) = v16 - 4;
    *(*a5 + 4 * v19) = v11;
    *(a5[3] + 4 * v19) = v17;
  }

  else if (!(a2 % 2))
  {
    v12 = *(a4 + 8);
    v13 = v12 - *a4;
    if (v12 != *a4)
    {
      v14 = *(v12 - 4);
      v21 = v14;
      if (v13 > 4)
      {
        v15 = *(v12 - 8);
        *(*a5 + 4 * v15) = v11;
        *(a5[3] + 4 * v15) = v14;
        *(a4 + 8) = v12 - 8;
LABEL_4:
        std::vector<int>::push_back[abi:ne200100](a4, &v21);
        return;
      }
    }

    goto LABEL_18;
  }
}

const void **std::deque<int>::push_front(const void **result, _DWORD *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<int>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 10)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 4 * (v4 & 0x3FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 4) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

void CoreNLP::Dependency::~Dependency(CoreNLP::Dependency *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void *std::vector<NLDepLabel>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_19D1BEA64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_19D1BEB78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<NLDepLabel>::__init_with_size[abi:ne200100]<NLDepLabel*,NLDepLabel*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1BEBF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<char *>::~__split_buffer(a1);
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<char *>::emplace_back<char *&>(a1, &v10);
}