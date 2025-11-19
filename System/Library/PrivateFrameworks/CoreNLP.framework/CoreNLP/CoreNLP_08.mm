uint64_t CoreNLP::SentenceTagger::setTokenizerOptions(CoreNLP::SentenceTagger *this, uint64_t a2)
{
  v2 = a2;
  result = CoreNLP::Tagger::setTokenizerOptions(this, a2);
  *(this + 40) = (v2 & 2) != 0;
  return result;
}

uint64_t CoreNLP::_CFInit_NLEmbeddingSubwordVocabWrapper(uint64_t this, const void *a2)
{
  *(this + 16) = &unk_1F10AEED0;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNLP::createSPVocabWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1EE62C8B8 = 0;
    *algn_1EE62C8C8 = 0u;
    *&algn_1EE62C8C8[16] = 0u;
    CoreNLP::_CFGetTypeID_NLEmbeddingSubwordVocabWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = *a1;
  *a1 = 0;
  v4 = *(Instance + 24);
  *(Instance + 24) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return Instance;
}

void CoreNLP::NLEmbeddingSubwordVocabWrapper::~NLEmbeddingSubwordVocabWrapper(CoreNLP::NLEmbeddingSubwordVocabWrapper *this)
{
  v2 = *(this + 1);
  *this = &unk_1F10AEED0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  v2 = *(this + 1);
  *this = &unk_1F10AEED0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t corelm::LanguageModelSampler::reachedWordBoundary(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *((*(*a2 + 112))(a2) + 120);
  v8 = *(v7 + 55);
  if (v8 < 0)
  {
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
  }

  else
  {
    v9 = v7 + 32;
  }

  v10 = (*(*v7 + 32))(v7, v9, v8);
  v11 = *((*(*a2 + 112))(a2) + 120);
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = v11 + 8;
  }

  v14 = (*(*v11 + 32))(v11, v13, v12);
  v15 = *((*(*a2 + 112))(a2) + 120);
  v16 = *(v15 + 79);
  if (v16 < 0)
  {
    v17 = *(v15 + 56);
    v16 = *(v15 + 64);
  }

  else
  {
    v17 = v15 + 56;
  }

  v18 = (*(*v15 + 32))(v15, v17, v16);
  if (v10 == a4 || v14 == a4 || v18 == a4)
  {
    return 1;
  }

  v22 = (*(*a2 + 112))(a2);
  (*(**(v22 + 120) + 40))(&v30);
  if (*a3 == a3[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
  }

  else
  {
    v23 = (*(*a2 + 112))(a2);
    (*(**(v23 + 120) + 24))(&__p);
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    v25 = v28;
    if (!v28)
    {
      goto LABEL_30;
    }

    p_p = __p;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_30;
    }

    p_p = &__p;
    v25 = v29;
  }

  if (p_p[v25 - 1] != 32)
  {
LABEL_30:
    v21 = 0;
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v21 = 1;
  if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  operator delete(__p);
LABEL_32:
  if (v31 < 0)
  {
    operator delete(v30);
  }

  return v21;
}

void sub_19D1FCF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::GreedySampler::sampleWords(corelm::GreedySampler *this@<X0>, corelm::LanguageModelWithState *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  (*(*a2 + 120))(&v43, a2, *(this + 2));
  v7 = v43;
  v32 = v44;
  if (v43 == v44)
  {
    goto LABEL_44;
  }

  v30 = a3;
  v31 = a4;
  while (1)
  {
    v8 = *v7;
    v9 = *(v7 + 1);
    if (a3 != 1)
    {
      break;
    }

    v10 = (*(*a2 + 112))(a2);
    (*(**(v10 + 120) + 40))(v36);
    if (v37 < 0)
    {
      v11 = v36[1];
      operator delete(v36[0]);
      if (v11)
      {
        break;
      }
    }

    else if (v37)
    {
      break;
    }

LABEL_39:
    v7 += 4;
    if (v7 == v32)
    {
      goto LABEL_43;
    }
  }

  __src = 0;
  v41 = 0;
  v42 = 0;
  v39 = 1.0;
  corelm::LanguageModelWithState::LanguageModelWithState(v36, a2, 1);
  v12 = 1;
  while (a3)
  {
    if (v12 >= 2)
    {
      corelm::util::topKWithIndices<float,unsigned long>(v38, 1, &__p);
      v8 = *__p;
      v9 = *(__p + 1);
      v34 = __p;
      operator delete(__p);
    }

    v13 = *(v38[3] + 120);
    v14 = *(v13 + 55);
    if (v14 < 0)
    {
      v15 = *(v13 + 32);
      v14 = *(v13 + 40);
    }

    else
    {
      v15 = v13 + 32;
    }

    v16 = (*(*v13 + 32))(v13, v15, v14);
    if (v9 == v16)
    {
      v39 = v8 * v39;
      break;
    }

    v17 = v41;
    if (v41 >= v42)
    {
      v19 = __src;
      v20 = v41 - __src;
      v21 = (v41 - __src) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v23 = v42 - __src;
      if ((v42 - __src) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v24);
      }

      *(8 * v21) = v9;
      v18 = 8 * v21 + 8;
      memcpy(0, v19, v20);
      v16 = __src;
      __src = 0;
      v41 = v18;
      v42 = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v41 = v9;
      v18 = (v17 + 8);
    }

    v41 = v18;
    v39 = v8 * v39;
    --a3;
    ++v12;
    corelm::GreedySampler::sampleToWordBoundary(v16, v36, &__src, &v39);
  }

  v25 = (*(*a2 + 112))(a2);
  (*(**(v25 + 120) + 24))(&__p);
  v26 = v35;
  if ((v35 & 0x80u) != 0)
  {
    v26 = v34;
  }

  a3 = v30;
  if (v26)
  {
    v27 = v39;
    p_p = &__p;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v31, &__p) + 56) = v27;
    v28 = 2 * (*(v31 + 16) >= *(this + 2));
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v28 = 3;
  if ((v35 & 0x80) != 0)
  {
LABEL_34:
    operator delete(__p);
  }

LABEL_35:
  corelm::LanguageModelWithState::~LanguageModelWithState(v36);
  if (__src)
  {
    v41 = __src;
    operator delete(__src);
  }

  if (v28 == 3 || !v28)
  {
    goto LABEL_39;
  }

LABEL_43:
  v7 = v43;
LABEL_44:
  if (v7)
  {
    v44 = v7;
    operator delete(v7);
  }
}

void corelm::GreedySampler::sampleToWordBoundary(uint64_t a1, uint64_t a2, uint64_t *a3, float *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  for (i = 50; i > 1; --i)
  {
    if (*a3 != v7)
    {
      v9 = *(v7 - 8);
      v30 = 0;
      v31 = v9;
      __p = 0;
      v29 = 0;
      std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&__p, &v31, &v32, 1uLL);
      (*(*a2 + 24))(a2, &__p);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }
    }

    (*(*a2 + 120))(&__p, a2, 1);
    v10 = *__p;
    v11 = *(__p + 1);
    v29 = __p;
    operator delete(__p);
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v12 = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&v25, *a3, a3[1], (a3[1] - *a3) >> 3);
    v13 = corelm::LanguageModelSampler::reachedWordBoundary(v12, a2, &v25, v11);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v13)
    {
      break;
    }

    v15 = a3[1];
    v14 = a3[2];
    if (v15 >= v14)
    {
      v16 = *a3;
      v17 = v15 - *a3;
      v18 = v17 >> 3;
      v19 = (v17 >> 3) + 1;
      if (v19 >> 61)
      {
        std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
      }

      v20 = v14 - v16;
      if (v20 >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a3, v22);
      }

      *(8 * v18) = v11;
      v7 = 8 * v18 + 8;
      memcpy(0, v16, v17);
      v23 = *a3;
      *a3 = 0;
      a3[1] = v7;
      a3[2] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v15 = v11;
      v7 = (v15 + 1);
    }

    a3[1] = v7;
    *a4 = v10 * *a4;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_19D1FD610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::TopKSampler::sampleWords(corelm::TopKSampler *this@<X0>, corelm::LanguageModelWithState *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[1] = 0;
  *a4 = a4 + 1;
  v8 = -1;
  do
  {
    if (a4[2] >= *(this + 3))
    {
      break;
    }

    corelm::LanguageModelWithState::LanguageModelWithState(v14, a2, 1);
    corelm::TopKSampler::sampleWordsSingle(this, v14, a3, __p);
    v9 = v13;
    v10 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string,float> &>(a4, __p);
      v10 = v13;
    }

    v11 = *(this + 3);
    if ((v10 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    corelm::LanguageModelWithState::~LanguageModelWithState(v14);
    ++v8;
  }

  while (v8 < 2 * v11);
}

void sub_19D1FD724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, CFTypeRef a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  corelm::LanguageModelWithState::~LanguageModelWithState(&a16);
  std::__tree<std::string>::destroy(v16, *(v16 + 8));
  _Unwind_Resume(a1);
}

void corelm::TopKSampler::sampleWordsSingle(corelm::TopKSampler *this@<X0>, corelm::LanguageModelWithState *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  corelm::TokenIDSampler::TokenIDSampler(&v68);
  v7 = 0;
  __src = 0;
  v66 = 0;
  v67 = 0;
  v64 = 1.0;
  v62 = &unk_1F10AEF30;
  v63 = 1;
  while (v7 != a3)
  {
    (*(*a2 + 88))(v60, a2);
    corelm::util::topKWithIndices<float,long>(v60, *(this + 2), &v58);
    __p = 0;
    v56 = 0;
    v57 = 0;
    std::vector<std::pair<float,long>>::__init_with_size[abi:ne200100]<std::pair<float,long>*,std::pair<float,long>*>(&__p, v58, v59, (v59 - v58) >> 4);
    LODWORD(v8) = corelm::TokenIDSampler::sparseSample(&v68, &__p, *(this + 4));
    v10 = v9;
    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }

    v11 = *((*(*a2 + 112))(a2) + 120);
    v12 = *(v11 + 55);
    if (v12 < 0)
    {
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
    }

    else
    {
      v13 = v11 + 32;
    }

    v14 = (*(*v11 + 32))(v11, v13, v12);
    v15 = v14;
    ++v7;
    v16 = v8;
    if (v10 == v14)
    {
      v64 = v64 * v8;
    }

    else
    {
      if (v7 < 2)
      {
        v18 = v10;
      }

      else
      {
        v17 = 3;
        v18 = v10;
        while (1)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v19 = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&v52, __src, v66, (v66 - __src) >> 3);
          v20 = corelm::LanguageModelSampler::reachedWordBoundary(v19, a2, &v52, v18);
          v21 = v20;
          if (v17 < 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v20;
          }

          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }

          if (v22)
          {
            break;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          std::vector<std::pair<float,long>>::__init_with_size[abi:ne200100]<std::pair<float,long>*,std::pair<float,long>*>(&v49, v58, v59, (v59 - v58) >> 4);
          LODWORD(v23) = corelm::TokenIDSampler::sparseSample(&v68, &v49, *(this + 4));
          v18 = v24;
          v17 -= v21 ^ 1;
          v16 = v23;
          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }
        }

        v46 = 0;
        v47 = 0;
        v48 = 0;
        v25 = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&v46, __src, v66, (v66 - __src) >> 3);
        v26 = corelm::LanguageModelSampler::reachedWordBoundary(v25, a2, &v46, v18);
        v14 = v46;
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if ((v26 & 1) == 0)
        {
          corelm::util::topKWithIndices<float,long>(v60, 1, &v43);
          v16 = *v43;
          v18 = *(v43 + 1);
          v44 = v43;
          operator delete(v43);
        }
      }

      if (a3 != 1)
      {
LABEL_34:
        v29 = v66;
        if (v66 >= v67)
        {
          v31 = __src;
          v32 = v66 - __src;
          v33 = (v66 - __src) >> 3;
          v34 = v33 + 1;
          if ((v33 + 1) >> 61)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v35 = v67 - __src;
          if ((v67 - __src) >> 2 > v34)
          {
            v34 = v35 >> 2;
          }

          v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
          v37 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v36)
          {
            v37 = v34;
          }

          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v37);
          }

          v38 = (8 * v33);
          v39 = &v38[-((v66 - __src) >> 3)];
          *v38 = v18;
          v30 = (v38 + 1);
          memcpy(v39, v31, v32);
          v14 = __src;
          __src = v39;
          v66 = v30;
          v67 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        else
        {
          *v66 = v18;
          v30 = v29 + 8;
        }

        v66 = v30;
        v64 = v16 * v64;
        corelm::GreedySampler::sampleToWordBoundary(v14, a2, &__src, &v64);
        goto LABEL_46;
      }

      v27 = (*(*a2 + 112))(a2);
      v14 = (*(**(v27 + 120) + 40))(&v43);
      if (v45 < 0)
      {
        if (v44)
        {
          v28 = *v43;
          operator delete(v43);
          if (v28 == 95 || (v28 & 0xFFFFFFDF) - 65 < 0x1A)
          {
            goto LABEL_34;
          }
        }

        else
        {
          operator delete(v43);
        }
      }

      else if (v45 && (v43 == 95 || (v43 & 0xDFu) - 65 <= 0x19))
      {
        goto LABEL_34;
      }
    }

LABEL_46:
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v60[0])
    {
      v60[1] = v60[0];
      operator delete(v60[0]);
    }

    if (v10 == v15)
    {
      break;
    }
  }

  v40 = (*(*a2 + 112))(a2);
  (*(**(v40 + 120) + 24))(v60);
  if (SHIBYTE(v61) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v60[0], v60[1]);
    v41 = SHIBYTE(v61);
    *(a4 + 24) = v64;
    if (v41 < 0)
    {
      operator delete(v60[0]);
    }
  }

  else
  {
    *a4 = *v60;
    *(a4 + 16) = v61;
    *(a4 + 24) = v64;
  }

  if (__src)
  {
    v66 = __src;
    operator delete(__src);
  }

  std::random_device::~random_device(&v68);
}

void sub_19D1FDCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, std::random_device a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  std::random_device::~random_device(&a41);
  _Unwind_Resume(a1);
}

void corelm::util::topKWithIndices<float,long>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::vector<std::pair<float,long>>::vector[abi:ne200100](v7, a2);
  corelm::util::enumerate<float,unsigned long>(a1, &__p);
  _ZNSt3__119__partial_sort_copyB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEESJ_SJ_SJ_NS_10__identityESK_EENSG_IT1_T3_EESL_T2_SM_T4_OT0_OT5_OT6_(__p, v6, v7[0], v7[1], &v9);
  *a3 = *v7;
  *(a3 + 16) = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void sub_19D1FDE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::TokenIDSampler::sparseSample(uint64_t a1, float **a2, float a3)
{
  __src = 0;
  v30 = 0;
  v31 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v8 = 0;
    v20 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v5;
      a3 = a3 - *v5;
      if (a3 <= 0.0)
      {
        break;
      }

      if (v8 >= v31)
      {
        v10 = __src;
        v11 = v8 - __src;
        v12 = (v8 - __src) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v14 = v31 - __src;
        if ((v31 - __src) >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v15);
        }

        v16 = v12;
        v17 = (4 * v12);
        v18 = &v17[-v16];
        *v17 = v9;
        v8 = (v17 + 1);
        memcpy(v18, v10, v11);
        v19 = __src;
        __src = v18;
        v30 = v8;
        v31 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = v9;
        v8 += 4;
      }

      v30 = v8;
      v5 += 4;
    }

    while (v5 != v6);
    v20 = __src;
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v20, v8, (v8 - v20) >> 2);
  v21 = corelm::TokenIDSampler::sample(a1, &__p);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  v22 = &(*a2)[4 * v21];
  v23 = *v22;
  v24 = *(v22 + 1);
  if (__src)
  {
    v30 = __src;
    operator delete(__src);
  }

  return v23;
}

void sub_19D1FDFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

std::random_device *corelm::TokenIDSampler::TokenIDSampler(std::random_device *this)
{
  v2 = std::random_device::random_device[abi:ne200100](this);
  v3 = MEMORY[0x19EAF8AD0](v2);
  this[2].__padding_ = v3;
  v4 = 1;
  for (i = 3; i != 626; ++i)
  {
    v6 = 1812433253 * (v3 ^ (v3 >> 30));
    v3 = v6 + v4;
    this[i].__padding_ = i + v6 - 2;
    ++v4;
  }

  *&this[626].__padding_ = 0;
  return this;
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D1FE130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<float,long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1FE1A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::TokenIDSampler::sample(uint64_t a1, uint64_t *a2)
{
  std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(__p, *a2, a2[1]);
  v3 = std::discrete_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(__p, (a1 + 8), __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_19D1FE224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::discrete_distribution<int>::param_type::param_type[abi:ne200100]<std::__wrap_iter<float *>>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a1, a2, a3, (a3 - a2) >> 2);
  std::discrete_distribution<int>::param_type::__init(a1);
  return a1;
}

void sub_19D1FE280(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::discrete_distribution<int>::param_type::__init(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      std::vector<double>::shrink_to_fit(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      std::vector<double>::vector[abi:ne200100](&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1FE404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_19D1FE550(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string,float> &>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::pair<std::string,float> &>();
  }

  return result;
}

void sub_19D1FE728(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<float,long>>::__init_with_size[abi:ne200100]<std::pair<float,long>*,std::pair<float,long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1FE79C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *CoreNLP::ICUTextBreakWithBuiltInRules::goToTokenAtIndex(CoreNLP::ICUTextBreakWithBuiltInRules *this, unint64_t a2, uint64_t a3, BOOL *a4)
{
  if (!*(this + 1))
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = a3 - v5;
  if (a3 < v5 || *(this + 3) + v5 <= a3)
  {
    return 0;
  }

  v8 = this + 32;
  v7 = *(this + 4);
  if (v7 <= a3 && *(this + 5) + v7 > a3)
  {
    return v8;
  }

  CFStringGetRangeOfComposedCharactersAtIndex(*(this + 8), v6);
  v9 = *(this + 1);
  v10 = ubrk_preceding();
  if (v10 == -1)
  {
    return 0;
  }

  v11 = v10;
  v12 = *(this + 1);
  v13 = ubrk_next();
  if (v13 == -1)
  {
    return 0;
  }

  v14 = v13;
  v15 = *(this + 1);
  *(this + 4) = *(this + 2) + v11;
  *(this + 5) = v14 - v11;
  RuleStatus = ubrk_getRuleStatus();
  if (*(this + 21) == 1)
  {
    if (RuleStatus >= 0x64)
    {
      if (RuleStatus - 100 >= 0x64)
      {
        v17 = 128;
        if (((RuleStatus - 300 < 0xC8) & *(*(this + 7) + 2)) == 0)
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 8;
      }
    }

    else
    {
      v17 = 32;
    }
  }

  else
  {
    v17 = 0;
  }

  *(this + 6) = v17;
  *(this + 22) = v14;
  return v8;
}

uint64_t CoreNLP::ICUTextBreakWithBuiltInRules::getCJTextRange(CoreNLP::ICUTextBreakWithBuiltInRules *this, int a2, BOOL *a3)
{
  v5 = *(this + 3);
  StringBufferPtr = CoreNLP::ICUTextBreak::getStringBufferPtr(this);
  *a3 = 0;
  v7 = *(this + 1);
  v8 = ubrk_previous();
  v9 = *(this + 1);
  v10 = ubrk_following();
  v11 = *(this + 1);
  RuleStatus = ubrk_getRuleStatus();
  if (v10 != -1)
  {
    v13 = RuleStatus;
    if (!RuleStatus || RuleStatus >= 200)
    {
      v21 = StringBufferPtr;
      while (1)
      {
        v15 = v10;
        v16 = v13;
        v17 = *(this + 1);
        v10 = ubrk_next();
        v18 = *(this + 1);
        v19 = ubrk_getRuleStatus();
        v13 = v19;
        if (!*a3 && (v19 - 300) <= 0x63)
        {
          *a3 = 1;
        }

        if (v10 == -1 || v19 && v19 < 200)
        {
          break;
        }

        if (!v16)
        {
          v20 = v15 - 1;
          if (v5 > v20)
          {
            if (CoreNLP::ParagraphTagger::IsParagraphSeparatorTypeCharacter(*(v21 + 2 * v20)))
            {
              if (v5 > v15 && *(v21 + 2 * v20) == 13)
              {
                *(v21 + 2 * v15);
              }

              return v8;
            }
          }
        }
      }
    }
  }

  return v8;
}

void sub_19D1FEAE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFStringRef a10, CFDictionaryRef userInfo, uint64_t a12)
{
  std::unique_ptr<CoreNLP::Gazetteer>::~unique_ptr[abi:ne200100](&a12);
  v15 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v16 = v15;
    if (logger(void)::token != -1)
    {
      NLGazetteerCreate_cold_1();
    }

    v17 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_ERROR))
    {
      NLGazetteerCreate_cold_2(v16, v17);
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v12)
    {
LABEL_6:
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      userInfo = Mutable;
      v19 = (*(*v16 + 16))(v16);
      a10 = CFStringCreateWithCString(0, v19, 0x8000100u);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], a10);
      *v12 = CFErrorCreate(0, @"com.apple.CoreNLPFramework.Gazetteer", 0, userInfo);
      nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
      nlp::CFScopedPtr<__CFDictionary *>::reset(&userInfo, 0);
    }
  }

LABEL_7:
  __cxa_end_catch();
  JUMPOUT(0x19D1FEACCLL);
}

void sub_19D1FEC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<CoreNLP::Gazetteer>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    nlp::CFScopedPtr<void *>::reset((v2 + 56), 0);
    nlp::CFScopedPtr<__CFLocale const*>::reset((v2 + 48), 0);
    nlp::CFScopedPtr<__CFData const*>::reset((v2 + 40), 0);
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__tree<std::__value_type<std::string,BloomFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,BloomFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BloomFilter>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x19EAF8CA0](v2, 0x10E0C4067476CB6);
  }

  return a1;
}

CFTypeRef NLGazetteerCopyCompressedModel(CoreNLP *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CoreNLP::unwrapGazetteer(a1, a2);
  ModelData = CoreNLP::Gazetteer::getModelData(v2);
  if (!ModelData)
  {
    return 0;
  }

  return CFRetain(ModelData);
}

uint64_t NLGazetteerSaveCompressedModel(uint64_t result, void *a2)
{
  v11[19] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = CoreNLP::unwrapGazetteer(result, a2);
    result = CoreNLP::Gazetteer::getModelData(v3);
    if (result)
    {
      v4 = result;
      v5 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
      CoreNLP::getUTF8StringFromCFString(v5, __p);
      std::ofstream::basic_ofstream(&v9, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      CFDataGetBytePtr(v4);
      CFDataGetLength(v4);
      std::ostream::write();
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&v10[*(v9 - 24) - 8], *&v10[*(v9 - 24) + 24] | 4);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v9 = *MEMORY[0x1E69E54D0];
      *&v10[*(v9 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x19EAF8960](v10);
      std::ostream::~ostream();
      MEMORY[0x19EAF8C10](v11);
      result = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1FEEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x19D1FEEC8);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef NLGazetteerCopyLocale(CoreNLP *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CoreNLP::unwrapGazetteer(a1, a2);
  Locale = CoreNLP::Gazetteer::getLocale(v2);
  if (!Locale)
  {
    return 0;
  }

  return CFRetain(Locale);
}

__CFArray *NLGazetteerCopyAvailableLabels(CoreNLP *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v4 = CoreNLP::unwrapGazetteer(a1, v2);
    CoreNLP::Gazetteer::availableLabels(v4, &v12);
    v5 = v12;
    for (i = v13; v5 != i; v5 = (v5 + 24))
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__p.__r_.__value_.__l.__data_ = v7;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v9 = CFStringCreateWithCString(0, p_p, 0x8000100u);
      if (v9)
      {
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    __p.__r_.__value_.__r.__words[0] = &v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  return Mutable;
}

void sub_19D1FF0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

os_log_t ___ZL6loggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "NLGazetteer");
  logger(void)::log = result;
  return result;
}

void nlp::CFScopedPtr<__CFDictionary *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void BloomFilter::BloomFilter(BloomFilter *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 2;
}

uint64_t BloomFilter::loadFromBuffer(uint64_t this, const char *a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (logger(void)::token != -1)
    {
      BloomFilter::loadFromBuffer();
    }

    v9 = logger(void)::log;
    if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_ERROR))
    {
      BloomFilter::loadFromBuffer(a3, v9);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v17, "bloom filter loading too small buffer");
    CoreNLP::ResourceCreationException::ResourceCreationException(exception, v17);
  }

  v4 = this;
  v5 = *a2;
  *(this + 104) = *a2;
  *(this + 8) = 0;
  if (v5 == 2)
  {
    if (a3 <= 0x58)
    {
      if (logger(void)::token != -1)
      {
        BloomFilter::loadFromBuffer();
      }

      v14 = logger(void)::log;
      if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        BloomFilter::loadFromBuffer(v14);
      }

      v15 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v16, "bloom filter loading too small buffer");
      CoreNLP::ResourceCreationException::ResourceCreationException(v15, &v16);
    }

    v6 = *(a2 + 3);
    v18[0] = *(a2 + 2);
    v18[1] = v6;
    v18[2] = *(a2 + 4);
    v19 = *(a2 + 10);
    v7 = *(a2 + 1);
    v17[0] = *a2;
    v17[1] = v7;
    *(this + 24) = DWORD1(v17[0]);
    *(this + 32) = a2 + 88;
    *(this + 40) = a3 - 88;
    MEMORY[0x19EAF8860](this + 56, v18 + 12);
    this = MEMORY[0x19EAF8860](v4 + 80, v17 | 0xC);
    *(v4 + 48) = DWORD2(v17[0]);
  }

  else
  {
    if (v5 != 1)
    {
      v11 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v17, "unsupported bloom filter version");
      CoreNLP::ResourceCreationException::ResourceCreationException(v11, v17);
    }

    if (a3 <= 8)
    {
      if (logger(void)::token != -1)
      {
        BloomFilter::loadFromBuffer();
      }

      v12 = logger(void)::log;
      if (os_log_type_enabled(logger(void)::log, OS_LOG_TYPE_ERROR))
      {
        BloomFilter::loadFromBuffer(v12);
      }

      v13 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v17, "bloom filter loading too small buffer");
      CoreNLP::ResourceCreationException::ResourceCreationException(v13, v17);
    }

    *(this + 24) = *(a2 + 1);
    *(this + 32) = a2 + 8;
    *(this + 40) = a3 - 8;
  }

  v8 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_19D1FF46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void BloomFilter::init(uint64_t a1, unint64_t a2, std::string *__str, const std::string *a4, long double a5)
{
  std::string::operator=((a1 + 80), __str);
  std::string::operator=((a1 + 56), a4);
  v9 = 0;
  v10 = 1;
  v11 = 1.0;
  do
  {
    v12 = pow(a5, 1.0 / v11);
    v13 = (0.0 - v11 * a2) / log(1.0 - v12);
    v14 = v13 + 1;
    if (v13 != -1 && (v10 == 1 || v9 > v14))
    {
      *(a1 + 24) = v10;
      v9 = v14;
    }

    v11 = v11 + 1.0;
    ++v10;
  }

  while (v10 != 1000);
  std::vector<BOOL>::resize(a1, (v9 & 0xFFFFFFFFFFFFFFC0) + 64, 0);
  v15 = *(a1 + 8);
  *(a1 + 40) = v15 >> 3;
  if (v15 >= 1)
  {
    v16 = *a1;
    v17 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v16, v15);
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_19D1FF738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BloomFilter::add(uint64_t this, const char *a2, int a3)
{
  if (*(this + 24) >= 1)
  {
    v10[4] = v3;
    v10[5] = v4;
    v5 = this;
    if (*(this + 8))
    {
      this = MurmurHash3_x64_128(a2, a3, 0, v10);
      v6 = *(v5 + 24);
      if (v6 >= 1)
      {
        v7 = v10[0];
        v8 = v10[1];
        v9 = *v5;
        do
        {
          *(v9 + (((v7 % *(v5 + 8)) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v7 % *(v5 + 8));
          v7 += v8;
          --v6;
        }

        while (v6);
      }
    }
  }

  return this;
}

void *BloomFilter::saveToBuffer(BloomFilter *this, char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  bzero(v19, 0x58uLL);
  v4 = *(this + 6);
  LODWORD(v19[0]) = 2;
  DWORD1(v19[0]) = v4;
  DWORD2(v19[0]) = *(this + 12);
  v5 = *(this + 103);
  if (v5 < 0)
  {
    v6 = *(this + 10);
    v5 = *(this + 11);
  }

  else
  {
    v6 = this + 80;
  }

  if (v5 >= 31)
  {
    LODWORD(v5) = 31;
  }

  memcpy(v19 + 12, v6, v5);
  v7 = *(this + 79);
  if (v7 < 0)
  {
    v8 = *(this + 7);
    v7 = *(this + 8);
  }

  else
  {
    v8 = this + 56;
  }

  if (v7 >= 31)
  {
    LODWORD(v7) = 31;
  }

  result = memcpy(v20 + 12, v8, v7);
  v10 = v19[1];
  *a2 = v19[0];
  *(a2 + 1) = v10;
  *(a2 + 10) = v21;
  v11 = v20[2];
  *(a2 + 3) = v20[1];
  *(a2 + 4) = v11;
  *(a2 + 2) = v20[0];
  v12 = *(this + 1);
  if (v12)
  {
    if (v12 >= 8)
    {
      v13 = 0;
      do
      {
        for (i = 0; i != 8; ++i)
        {
          if ((*(*this + 8 * (v13 >> 3)) >> (8 * (v13 & 7u) + i)))
          {
            a2[v13 + 88] |= 1 << i;
          }
        }

        ++v13;
      }

      while (v13 < *(this + 1) >> 3);
    }

    goto LABEL_25;
  }

  v15 = *(this + 4);
  if (!v15 || (v16 = *(this + 5)) == 0)
  {
LABEL_25:
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  v17 = *MEMORY[0x1E69E9840];

  return memcpy(a2 + 88, v15, v16);
}

os_log_t ___ZL6loggerv_block_invoke_0()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "BloomFilter");
  logger(void)::log = result;
  return result;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19D1FFA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void CoreNLP::ProductQuantizer::runCompressing(CoreNLP::ProductQuantizer *this, int a2, const float *a3)
{
  v4 = *this;
  if (!(v4 % *(this + 1)))
  {
    v5 = a2;
    memset(&v25, 0, sizeof(v25));
    if (a2 <= 255)
    {
      std::vector<float>::resize(&v25, v4 << 8);
      memcpy(v25.__begin_, a3, 4 * v5);
      v5 = 256;
    }

    v21[0] = 0;
    std::vector<int>::vector[abi:ne200100](&v23, v5);
    if (v23 != v24)
    {
      v6 = 0;
      v7 = (v24 - v23 - 4) >> 2;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (v23 + 8);
      do
      {
        v11 = vdupq_n_s64(v6);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_19D27D560)));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_19D27D820)))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v10 += 4;
      }

      while (v9 != v6);
    }

    v13 = 111;
    v21[0] = 111;
    for (i = 1; i != 624; ++i)
    {
      v13 = i + 1812433253 * (v13 ^ (v13 >> 30));
      v21[i] = v13;
    }

    v22 = 0;
    *(this + 1);
    operator new[]();
  }

  v15 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x1E69E5300], "Improper sub-dimension ");
  v16 = MEMORY[0x19EAF8A70](v15, *(this + 1));
  v17 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, " , dimenion ");
  v18 = MEMORY[0x19EAF8A70](v17, *this);
  v19 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "must be devided by sub-dimention");
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v19);
  exit(1);
}

void sub_19D200278(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void CoreNLP::ProductQuantizer::runClustering(CoreNLP::ProductQuantizer *this, const float *a2, float *a3, int a4)
{
  v20[0] = 0;
  std::vector<int>::vector[abi:ne200100](&v22, a4);
  v7 = v22;
  v8 = v23;
  if (v22 != v23)
  {
    v9 = 0;
    v10 = (v23 - v22 - 4) >> 2;
    v11 = vdupq_n_s64(v10);
    v12 = (v10 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v13 = (v22 + 8);
    do
    {
      v14 = vdupq_n_s64(v9);
      v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_19D27D560)));
      if (vuzp1_s16(v15, *v11.i8).u8[0])
      {
        *(v13 - 2) = v9;
      }

      if (vuzp1_s16(v15, *&v11).i8[2])
      {
        *(v13 - 1) = v9 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_19D27D820)))).i32[1])
      {
        *v13 = v9 + 2;
        v13[1] = v9 + 3;
      }

      v9 += 4;
      v13 += 4;
    }

    while (v12 != v9);
  }

  v16 = 999;
  v20[0] = 999;
  for (i = 1; i != 624; ++i)
  {
    v16 = i + 1812433253 * (v16 ^ (v16 >> 30));
    v20[i] = v16;
  }

  v21 = 0;
  std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(v7, v8, v20);
  v18 = 0;
  v19 = v22;
  do
  {
    memcpy(&a3[*(this + 1) * v18], &a2[*(v19 + 4 * v18) * *(this + 1)], 4 * *(this + 1));
    ++v18;
  }

  while (v18 != 256);
  operator new[]();
}

void sub_19D2005F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::ProductQuantizer::recomputeCentroids(CoreNLP::ProductQuantizer *this, const float *a2, float *a3, const unsigned __int8 *a4, int a5)
{
  LODWORD(v5) = a5;
  std::vector<float>::vector[abi:ne200100](__p, 0x100uLL);
  bzero(a3, *(this + 1) << 10);
  v10 = *(this + 1);
  if (v5 <= 0)
  {
    LODWORD(v12) = *(this + 1);
  }

  else
  {
    v5 = v5;
    do
    {
      v11 = *a4++;
      MEMORY[0x19EAF9930](&a3[v10 * v11], 1, a2, 1, &a3[v10 * v11], 1, v10);
      *(__p[0] + v11) = *(__p[0] + v11) + 1.0;
      v12 = *(this + 1);
      a2 += v12;
      v10 = *(this + 1);
      --v5;
    }

    while (v5);
  }

  for (i = 0; i != 1024; i += 4)
  {
    vDSP_vsdiv(a3, 1, (__p[0] + i), a3, 1, v12);
    v12 = *(this + 1);
    a3 += v12;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_19D200740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::ProductQuantizer::chooseCentroid(CoreNLP::ProductQuantizer *this, const float *__A, const float *a3, unsigned __int8 *a4)
{
  v5 = a3;
  v8 = *(this + 1);
  __C = 0.0;
  v9 = 1;
  vDSP_distancesq(__A, 1, a3, 1, &__C, v8);
  v10 = __C;
  *a4 = 0;
  do
  {
    v11 = *(this + 1);
    v5 += v11;
    v14 = 0.0;
    vDSP_distancesq(__A, 1, v5, 1, &v14, v11);
    v12 = v14;
    if (v14 < v10)
    {
      *a4 = v9;
      v10 = v12;
    }

    ++v9;
  }

  while (v9 != 256);
}

void CoreNLP::ProductQuantizer::quantizeVectors(CoreNLP::ProductQuantizer *this, const float *a2, unsigned __int8 *a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      CoreNLP::ProductQuantizer::quantizeVector(this, &a2[*this * i], &a3[*(this + 2) * i]);
    }
  }
}

void CoreNLP::ProductQuantizer::quantizeVector(CoreNLP::ProductQuantizer *this, const float *a2, unsigned __int8 *a3)
{
  if (*(this + 2) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      CoreNLP::ProductQuantizer::chooseCentroid(this, &a2[*(this + 1) * v7], (*(this + 2) + 4 * v6 * *(this + 1)), &a3[v7]);
      ++v7;
      v6 += 256;
    }

    while (v7 < *(this + 2));
  }
}

uint64_t std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 2;
  if (v4 >= 2)
  {
    v5 = a1;
    v14 = xmmword_19D27EF60;
    v6 = a2 - 4;
    if (a2 - 4 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v14, a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 4 * v10);
          *(v5 + 4 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 4;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

uint64_t std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

CoreNLP *CoreNLP::CompositeTagger::joinNames@<X0>(CoreNLP *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a2;
  v6 = a2[1];
  *(a5 + 16) = a2[2];
  v7 = *(result + 92);
  v8 = *(result + 93);
  v9 = v8 + v7;
  if (a3 + a4 <= v8 + v7)
  {
    v10 = a4;
  }

  else
  {
    v10 = *(result + 93);
  }

  if (a3 + a4 <= v8 + v7)
  {
    v11 = a3;
  }

  else
  {
    v11 = *(result + 92);
  }

  v12 = *a2;
  v13 = *a2 == -1 || v7 == -1;
  v14 = v6 + v12;
  if (!v13 && v12 >= v7 && v14 <= v9)
  {
    v17 = *(result + 113);
    v18 = (result + 872);
    if ((result + 872) != v17 && *(v17 + 16) == v12 && *(v17 + 24) == v6)
    {
      v19 = v11 + v10;
      v20 = *(v17 + 120) == 1 && v11 <= v14;
      if (v20 && v19 > v14)
      {
        v22 = *(v17 + 8);
        if (v22 == v18)
        {
          v28 = *(a5 + 8);
        }

        else
        {
          do
          {
            result = (v22 + 16);
            v24 = *(v22 + 24) + *(v22 + 16);
            v25 = *a2;
            v26 = v24;
            if ((*(v22 + 120) & 1) == 0)
            {
              result = CoreNLP::skipTokenForOptions(result, 4uLL);
              if (!result)
              {
                break;
              }

              v26 = *(v22 + 24) + *(v22 + 16);
            }

            if (v11 > v26 || v19 <= v26)
            {
              break;
            }

            v22 = *(v22 + 8);
          }

          while (v22 != v18);
          v28 = v24 - v25;
        }

        *(a5 + 8) = v28;
      }
    }
  }

  return result;
}

CoreNLP *CoreNLP::CompositeTagger::joinContractions@<X0>(CoreNLP *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a2;
  v6 = a2[1];
  *(a5 + 16) = a2[2];
  v7 = *(result + 92);
  v8 = *(result + 93);
  if (a3 + a4 <= v8 + v7)
  {
    v9 = a4;
  }

  else
  {
    v9 = *(result + 93);
  }

  if (a3 + a4 <= v8 + v7)
  {
    v10 = a3;
  }

  else
  {
    v10 = *(result + 92);
  }

  v11 = *a2;
  if (*a2 != -1 && v7 != -1 && v11 >= v7 && v6 + v11 <= v8 + v7)
  {
    v15 = *(result + 113);
    v16 = (result + 872);
    if ((result + 872) != v15)
    {
      v17 = (v15 + 2);
      if (v15[2] == v11)
      {
        v19 = v15[3];
        result = CoreNLP::skipTokenForOptions(v17, 1uLL);
        if (v19 <= v6 && result != 0)
        {
          v21 = v10 + v9;
          while (1)
          {
            result = (v15 + 2);
            if (v15[3] + v15[2] >= a2[1] + *a2)
            {
              if (v15 == v16)
              {
                break;
              }

              result = CoreNLP::skipTokenForOptions(result, 1uLL);
              if (!result)
              {
                break;
              }

              v22 = v15[2];
              v23 = v15[3] + v22;
              if (v22 == *(a5 + 8) + *a5)
              {
                *(a5 + 8) = v23 - *a2;
              }

              if (v10 > v23 || v21 <= v23)
              {
                break;
              }
            }

            v15 = v15[1];
          }
        }
      }

      else
      {

        return CoreNLP::skipTokenForOptions(v17, 1uLL);
      }
    }
  }

  return result;
}

__CFDictionary *CoreNLP::CompositeTagger::copyTagAndProbabilityForCurrentToken(CoreNLP::CompositeTagger **this, const __CFString *a2)
{
  v4 = CoreNLP::CompositeTagger::schemeType(this, a2);
  v5 = v4;
  v29 = v4;
  if ((v4 - 8) < 2)
  {
    goto LABEL_4;
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 == 12)
  {
LABEL_4:
    v6 = (this + 92);
  }

  else
  {
    v12 = this[113];
    if (v12 == (this + 109))
    {
      return 0;
    }

    v6 = (v12 + 16);
  }

  key = CoreNLP::CompositeTagger::createTag(this, 0, v6, a2);
  if (!key)
  {
    return 0;
  }

  valuePtr = 0x3FF0000000000000;
  if ((v5 - 5) > 0xFFFFFFFD)
  {
    goto LABEL_8;
  }

  v7 = CFEqual(a2, kNLTagSchemeLemma[0]);
  if (v7)
  {
    goto LABEL_8;
  }

  v15 = v6 + 4;
  v14 = v6[4];
  for (i = v29; v14; v14 = *v14)
  {
    v17 = *(v14 + 32);
    if (v29 >= v17)
    {
      if (v17 >= v29)
      {
        v30 = &v29;
        v7 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v6 + 3), &v29);
        valuePtr = v7[6];
        i = v29;
        break;
      }

      v14 += 8;
    }
  }

  if (i != 7)
  {
    goto LABEL_32;
  }

  v18 = *v15;
  if (!*v15)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v19 = *(v18 + 8);
    if (v19 <= 6)
    {
      break;
    }

LABEL_28:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_32;
    }
  }

  if (v19 != 6)
  {
    ++v18;
    goto LABEL_28;
  }

  if (!CoreNLP::CompositeTagger::isNERTag(v7, key))
  {
    v26 = 6;
    v30 = &v26;
    valuePtr = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v6 + 3), &v26)[6];
  }

LABEL_32:
  if (*(this + 234) == 4)
  {
    valuePtr = 0x3FF0000000000000;
    if (v29 == 7)
    {
      v20 = this[114];
      v21 = this[115];
      if (v20 != v21)
      {
        while (*v20 != *v6)
        {
          v20 = (v20 + 112);
          if (v20 == v21)
          {
            goto LABEL_39;
          }
        }

        v30 = &v29;
        valuePtr = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>(v20 + 24, &v29)[6];
      }
    }
  }

LABEL_39:
  if (CFEqual(a2, kNLTagSchemeNamedEntityOrLexicalClass[0]))
  {
    v22 = 212;
  }

  else
  {
    v23 = CFEqual(a2, kNLTagSchemeLemma[0]);
    v22 = v29 + 201;
    if (v23)
    {
      v22 = 211;
    }
  }

  v24 = *v15;
  if (*v15)
  {
    v25 = v6 + 4;
    do
    {
      if (*(v24 + 32) >= v22)
      {
        v25 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v22));
    }

    while (v24);
    if (v25 != v15 && v22 >= *(v25 + 8))
    {
      valuePtr = 0x3FF0000000000000;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFNumberCreate(v8, kCFNumberDoubleType, &valuePtr);
  v30 = v10;
  v11 = key;
  CFDictionaryAddValue(Mutable, key, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return Mutable;
}

void sub_19D201218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFDictionary *CoreNLP::CompositeTagger::copyLanguageMapAtIndex(CoreNLP::CompositeTagger *this, int a2, CFIndex a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  v5 = *(*(this + 2) + 8);
  if (v5)
  {
    if (CFStringGetLength(v5) <= a3)
    {
      return 0;
    }
  }

  AttributedTokenAtIndex = CoreNLP::CompositeTagger::getAttributedTokenAtIndex(this);
  if (a2 != 3 && !AttributedTokenAtIndex)
  {
    return 0;
  }

  return CoreNLP::CompositeTagger::copyLanguageMap(this, a2, AttributedTokenAtIndex);
}

__CFDictionary *CoreNLP::CompositeTagger::copyLanguageMap(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 1) < 2)
  {
    v5 = CoreNLP::TaggerContext::copyLanguageMap(*(a1 + 16));
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      if (a2 == 3)
      {
        v6 = *(a1 + 16);
        v13.location = *(v6 + 24);
        v13.length = *(a1 + 724);
        CoreNLP::Orthography::createOrthography(*(v6 + 8), *(v6 + 16), v13);
      }

      return v5;
    }
  }

  if ((*(a3 + 72) & 8) != 0)
  {
    keys = CoreNLP::TaggerContext::getCurrentDominantScriptForString(*(a1 + 16), *(*(a1 + 16) + 8), *a3);
    CurrentDominantLanguageForString = CoreNLP::TaggerContext::getCurrentDominantLanguageForString(*(a1 + 16), *(*(a1 + 16) + 8), *a3);
    values = CurrentDominantLanguageForString;
    if (keys && CurrentDominantLanguageForString != 0)
    {
      cf = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
      v5 = CFDictionaryCreate(0, &keys, &cf, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      CFRelease(cf);
    }
  }

  return v5;
}

void sub_19D2014B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CoreNLP::TaggerContext::TaggerContext(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::CompositeTagger::createLemmaTag(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 1) < 3 || (*(a3 + 72) & 8) == 0)
  {
    return 0;
  }

  if (!*(a1 + 728))
  {
    operator new();
  }

  v4 = *(a3 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = a3 + 32;
  do
  {
    if (*(v4 + 32) >= 6)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < 6));
  }

  while (v4);
  if (v5 == a3 + 32 || *(v5 + 32) > 6)
  {
    return 0;
  }

  v6 = *(a1 + 728);
  v7 = *(v5 + 40);

  return CoreNLP::LemmaTagger::createLemmaTag(v6, a3, v7);
}

__CFString *CoreNLP::CompositeTagger::getEmotionLabelFromTagID(CoreNLP::CompositeTagger *this, int a2)
{
  if ((a2 - 238) > 5)
  {
    v2 = NLEmotionNeutral;
  }

  else
  {
    v2 = off_1E76254E8[a2 - 238];
  }

  return *v2;
}

void CoreNLP::CompositeTagger::updateChineseWordBoundaries(CoreNLP::CompositeTagger *this)
{
  v1 = *(this + 114);
  v2 = *(this + 115);
  if (v1 != v2)
  {
    v4 = this + 872;
    v5 = *(this + 110);
    v26 = *(this + 115);
    do
    {
      v7 = *v1;
      v6 = v1[1];
      LODWORD(v29) = 7;
      v32[0] = &v29;
      v8 = std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v1 + 3), &v29);
      if (v5 != v4)
      {
        v28 = v6;
        v9 = v6 + v7;
        v10 = *(v8 + 10);
        while (1)
        {
          v11 = *(v5 + 2);
          if (v7 >= v11)
          {
            v12 = *(v5 + 3);
            v13 = v12 + v11;
            v14 = v12 + v11 - v7;
            if (v12 + v11 > v7)
            {
              break;
            }
          }

          v5 = *(v5 + 1);
          if (v5 == v4)
          {
            goto LABEL_26;
          }
        }

        v15 = __OFSUB__(v7, v11);
        v16 = v7 - v11;
        if (!((v16 < 0) ^ v15 | (v16 == 0)))
        {
          v17 = *(v8 + 10);
          *(v5 + 3) = v16;
          v18 = *(v5 + 1);
          v29 = v7;
          v30 = v14;
          v31 = 0;
          CoreNLP::NLAttributedToken::NLAttributedToken(v32, &v29);
          std::list<CoreNLP::NLAttributedToken>::insert();
        }

        if (v9 > v13)
        {
          v27 = *(v8 + 10);
          v19 = *(v5 + 1);
          if (v19 != v4)
          {
            do
            {
              v20 = *(v19 + 3);
              v12 += v20;
              v21 = *(v19 + 2) + v20;
              v22 = *v19;
              v23 = *(v19 + 1);
              *(v22 + 8) = v23;
              *v23 = v22;
              --*(this + 111);
              CoreNLP::NLAttributedToken::~NLAttributedToken((v19 + 16));
              operator delete(v19);
              v24 = v9 <= v21 || v23 == v4;
              v19 = v23;
            }

            while (!v24);
          }

          if (v12 != *(v5 + 3))
          {
            *(v5 + 3) = v12;
          }

          v2 = v26;
          v10 = v27;
        }

        if (v7 == *(v5 + 2))
        {
          if (v12 == v28)
          {
            LODWORD(v29) = 7;
            v32[0] = &v29;
            *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v5 + 40), &v29) + 10) = v10;
            v5 = *(v5 + 1);
          }

          else if (v12 > v28)
          {
            *(v5 + 2) = v7;
            *(v5 + 3) = v28;
            LODWORD(v29) = 7;
            v32[0] = &v29;
            *(std::__tree<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::__map_value_compare<CoreNLP::NLTagSchemeType,std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>,std::less<CoreNLP::NLTagSchemeType>,true>,std::allocator<std::__value_type<CoreNLP::NLTagSchemeType,std::pair<int,double>>>>::__emplace_unique_key_args<CoreNLP::NLTagSchemeType,std::piecewise_construct_t const&,std::tuple<CoreNLP::NLTagSchemeType&&>,std::tuple<>>((v5 + 40), &v29) + 10) = v10;
            v25 = *(v5 + 1);
            v29 = v9;
            v30 = v12 - v28;
            v31 = 0;
            CoreNLP::NLAttributedToken::NLAttributedToken(v32, &v29);
            std::list<CoreNLP::NLAttributedToken>::insert();
          }
        }
      }

LABEL_26:
      if (v5 == v4)
      {
        break;
      }

      v1 += 14;
    }

    while (v1 != v2);
  }
}

void sub_19D201878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CoreNLP::NLAttributedToken::~NLAttributedToken(va);
  _Unwind_Resume(a1);
}

CFIndex CoreNLP::CompositeTagger::setGazetteers(CoreNLP::CompositeTagger *this, const __CFArray *a2, const __CFString *cf1)
{
  if (CFEqual(cf1, kNLTagSchemeNamedEntityOrLexicalClass[0]))
  {
    v6 = 212;
  }

  else if (CFEqual(cf1, kNLTagSchemeLemma[0]))
  {
    v6 = 211;
  }

  else
  {
    v6 = CoreNLP::CompositeTagger::schemeType(this, cf1) + 201;
  }

  return CoreNLP::TaggingModelManager::setCustomGazetteers(this + 24, a2, v6);
}

void CoreNLP::CompositeTagger::ParagraphCache::~ParagraphCache(CoreNLP::CompositeTagger::ParagraphCache *this)
{
  v2 = (this + 176);
  std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 17);
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 14);
  CoreNLP::NLAttributedToken::~NLAttributedToken(this);
}

uint64_t std::__tree<std::__value_type<std::string,CoreNLP::NLTagSchemeType>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::NLTagSchemeType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::NLTagSchemeType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::__map_value_compare<std::string,std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CoreNLP::ReadOnlyFile<unsigned short> *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void nlp::CFScopedPtr<__CFNumber const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t getMLCTensorDataClass(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__159;
  v0 = getMLCTensorDataClass(void)::softClass;
  v7 = __Block_byref_object_dispose__160;
  v8 = getMLCTensorDataClass(void)::softClass;
  if (!getMLCTensorDataClass(void)::softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL21getMLCTensorDataClassv_block_invoke;
    v2[3] = &unk_1E76248C8;
    v2[4] = &v3;
    ___ZL21getMLCTensorDataClassv_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19D201D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D202014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMLCActivationDescriptorClass(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__159;
  v0 = getMLCActivationDescriptorClass(void)::softClass;
  v7 = __Block_byref_object_dispose__160;
  v8 = getMLCActivationDescriptorClass(void)::softClass;
  if (!getMLCActivationDescriptorClass(void)::softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL31getMLCActivationDescriptorClassv_block_invoke;
    v2[3] = &unk_1E76248C8;
    v2[4] = &v3;
    ___ZL31getMLCActivationDescriptorClassv_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19D20210C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMLCTensorClass(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__159;
  v0 = getMLCTensorClass(void)::softClass;
  v7 = __Block_byref_object_dispose__160;
  v8 = getMLCTensorClass(void)::softClass;
  if (!getMLCTensorClass(void)::softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL17getMLCTensorClassv_block_invoke;
    v2[3] = &unk_1E76248C8;
    v2[4] = &v3;
    ___ZL17getMLCTensorClassv_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19D202364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMLCTensorDescriptorClass(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__159;
  v0 = getMLCTensorDescriptorClass(void)::softClass;
  v7 = __Block_byref_object_dispose__160;
  v8 = getMLCTensorDescriptorClass(void)::softClass;
  if (!getMLCTensorDescriptorClass(void)::softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL27getMLCTensorDescriptorClassv_block_invoke;
    v2[3] = &unk_1E76248C8;
    v2[4] = &v3;
    ___ZL27getMLCTensorDescriptorClassv_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19D202654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMLCConvolutionDescriptorClass(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__159;
  v0 = getMLCConvolutionDescriptorClass(void)::softClass;
  v7 = __Block_byref_object_dispose__160;
  v8 = getMLCConvolutionDescriptorClass(void)::softClass;
  if (!getMLCConvolutionDescriptorClass(void)::softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL32getMLCConvolutionDescriptorClassv_block_invoke;
    v2[3] = &unk_1E76248C8;
    v2[4] = &v3;
    ___ZL32getMLCConvolutionDescriptorClassv_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19D202740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getMLCConvolutionLayerClass(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__159;
  v0 = getMLCConvolutionLayerClass(void)::softClass;
  v7 = __Block_byref_object_dispose__160;
  v8 = getMLCConvolutionLayerClass(void)::softClass;
  if (!getMLCConvolutionLayerClass(void)::softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL27getMLCConvolutionLayerClassv_block_invoke;
    v2[3] = &unk_1E76248C8;
    v2[4] = &v3;
    ___ZL27getMLCConvolutionLayerClassv_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19D20282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D202BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](void **result, uint64_t a2)
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
    result = std::__split_buffer<std::vector<std::vector<int>>>::~__split_buffer(v16);
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

void sub_19D202FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D20331C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D203738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D203A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  a19 = (v20 - 88);
  std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::assign(uint64_t *a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<long>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = *a1 + 24 * a2;
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

void std::vector<std::vector<int>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<int>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void sub_19D204140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, char *);
  v12 = va_arg(va1, void);
  std::__tree<std::string>::destroy(va, v11);
  v5 = &STACK[0x33F];
  v6 = -64;
  v7 = &STACK[0x33F];
  while (1)
  {
    v8 = *v7;
    v7 -= 4;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 32;
    if (!v6)
    {
      std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](va1);
      *(v3 + 728) = &STACK[0x2F0];
      std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x308]);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v9 = 0x2FD2FD2FD2FD2FD3 * ((v5 - *a1) >> 3);
    if ((v9 + 1) > 0x5A05A05A05A05ALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x2FD2FD2FD2FD2FD3 * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2D02D02D02D02DLL)
    {
      v12 = 0x5A05A05A05A05ALL;
    }

    else
    {
      v12 = v11;
    }

    v19[4] = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MRLNeuralNetworkNodeParameter>>>(a1, v12);
    }

    v13 = 728 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    memcpy((728 * v9 + 24), a2 + 24, 0x2C0uLL);
    v8 = 728 * v9 + 728;
    v15 = *(a1 + 8) - *a1;
    v16 = v13 - v15;
    memcpy((v13 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v8;
    v18 = *(a1 + 16);
    *(a1 + 16) = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::~__split_buffer(v19);
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    result = memcpy((v5 + 24), a2 + 24, 0x2C0uLL);
    v8 = v5 + 728;
  }

  *(a1 + 8) = v8;
  return result;
}

void std::vector<void *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, v10);
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

void sub_19D204A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19D205258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D2055AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19D20616C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a2)
  {
    _Block_object_dispose((v57 - 224), 8);
    if (__p)
    {
      operator delete(__p);
    }

    *(v57 - 224) = &a35;
    std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>::__destroy_vector::operator()[abi:ne200100]((v57 - 224));
    if (a40)
    {
      a41 = a40;
      operator delete(a40);
    }

    if (a43)
    {
      a44 = a43;
      operator delete(a43);
    }

    if (a46)
    {
      a47 = a46;
      operator delete(a46);
    }

    if (a49)
    {
      a50 = a49;
      operator delete(a49);
    }

    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      (*(a25 + 16))(a25, [MEMORY[0x1E696AEC0] stringWithFormat:@"Training Sequence Tagger model Failed."], &a55);
      objc_end_catch();
      JUMPOUT(0x19D206124);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2071A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  STACK[0x210] = &STACK[0x230];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x210]);
  v73 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v73;
    operator delete(v73);
  }

  STACK[0x210] = &STACK[0x260];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x210]);
  STACK[0x210] = &STACK[0x278];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x210]);
  STACK[0x210] = v71 - 256;
  std::vector<std::vector<std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x210]);
  STACK[0x210] = v71 - 232;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<MLCTensorData *>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<MLCTensorData *>>::__emplace_back_slow_path<std::vector<MLCTensorData *> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<MLCTensorData *>>::__construct_one_at_end[abi:ne200100]<std::vector<MLCTensorData *> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_19D207634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_19D2079D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D20801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, char a35, void *a36)
{
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a27, a28);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a32, a33);
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(&a35, a36);
  _Unwind_Resume(a1);
}

void sub_19D208840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(&a35, a36);
  std::__tree<std::__value_type<NLLanguageID,__CFString const*>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,__CFString const*>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,__CFString const*>>>::destroy(v42 - 256, *(v42 - 248));
  std::__tree<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::__map_value_compare<NLLanguageID,std::__value_type<NLLanguageID,std::map<long,__CFString const*>>,std::less<NLLanguageID>,true>,std::allocator<std::__value_type<NLLanguageID,std::map<long,__CFString const*>>>>::destroy(v42 - 232, *(v42 - 224));
  _Unwind_Resume(a1);
}

void sub_19D2089FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL21getMLCTensorDataClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("MLCTensorData");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCTensorDataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    ___ZL21getMLCTensorDataClassv_block_invoke_cold_1();
    MLComputeLibrary();
  }
}

void MLComputeLibrary(void)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MLComputeLibraryCore(char **)::frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = ___ZL20MLComputeLibraryCorePPc_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7625568;
    v4 = 0;
    MLComputeLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MLComputeLibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL20MLComputeLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MLComputeLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class ___ZL25getMLCLSTMDescriptorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCLSTMDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCLSTMDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL25getMLCLSTMDescriptorClassv_block_invoke_cold_1();
    return ___ZL31getMLCActivationDescriptorClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL31getMLCActivationDescriptorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCActivationDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCActivationDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL31getMLCActivationDescriptorClassv_block_invoke_cold_1();
    return ___ZL20getMLCLSTMLayerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL20getMLCLSTMLayerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCLSTMLayer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCLSTMLayerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL20getMLCLSTMLayerClassv_block_invoke_cold_1();
    return ___ZL17getMLCTensorClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL17getMLCTensorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCTensor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCTensorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL17getMLCTensorClassv_block_invoke_cold_1();
    return ___ZL27getMLCTensorDescriptorClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL27getMLCTensorDescriptorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCTensorDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCTensorDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL27getMLCTensorDescriptorClassv_block_invoke_cold_1();
    return ___ZL32getMLCConvolutionDescriptorClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL32getMLCConvolutionDescriptorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCConvolutionDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCConvolutionDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL32getMLCConvolutionDescriptorClassv_block_invoke_cold_1();
    return ___ZL27getMLCConvolutionLayerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL27getMLCConvolutionLayerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCConvolutionLayer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCConvolutionLayerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL27getMLCConvolutionLayerClassv_block_invoke_cold_1();
    return ___ZL26getMLCArithmeticLayerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL26getMLCArithmeticLayerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCArithmeticLayer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCArithmeticLayerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL26getMLCArithmeticLayerClassv_block_invoke_cold_1();
    return ___ZL23getMLCDropoutLayerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL23getMLCDropoutLayerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCDropoutLayer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCDropoutLayerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL23getMLCDropoutLayerClassv_block_invoke_cold_1();
    return ___ZL25getMLCLossDescriptorClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL25getMLCLossDescriptorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCLossDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCLossDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL25getMLCLossDescriptorClassv_block_invoke_cold_1();
    return ___ZL20getMLCLossLayerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL20getMLCLossLayerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCLossLayer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCLossLayerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL20getMLCLossLayerClassv_block_invoke_cold_1();
    return ___ZL30getMLCOptimizerDescriptorClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL30getMLCOptimizerDescriptorClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCOptimizerDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCOptimizerDescriptorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL30getMLCOptimizerDescriptorClassv_block_invoke_cold_1();
    return ___ZL24getMLCAdamOptimizerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL24getMLCAdamOptimizerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCAdamOptimizer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCAdamOptimizerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL24getMLCAdamOptimizerClassv_block_invoke_cold_1();
    return ___ZL24getMLCTrainingGraphClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL24getMLCTrainingGraphClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCTrainingGraph");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCTrainingGraphClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL24getMLCTrainingGraphClassv_block_invoke_cold_1();
    return ___ZL26getMLCTensorParameterClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL26getMLCTensorParameterClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCTensorParameter");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCTensorParameterClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL26getMLCTensorParameterClassv_block_invoke_cold_1();
    return ___ZL23getMLCSoftmaxLayerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL23getMLCSoftmaxLayerClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCSoftmaxLayer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCSoftmaxLayerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL23getMLCSoftmaxLayerClassv_block_invoke_cold_1();
    return ___ZL25getMLCInferenceGraphClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL25getMLCInferenceGraphClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCInferenceGraph");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCInferenceGraphClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL25getMLCInferenceGraphClassv_block_invoke_cold_1();
    return ___ZL17getMLCDeviceClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL17getMLCDeviceClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCDevice");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCDeviceClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = ___ZL17getMLCDeviceClassv_block_invoke_cold_1();
    return ___ZL16getMLCGraphClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL16getMLCGraphClassv_block_invoke(uint64_t a1)
{
  MLComputeLibrary();
  result = objc_getClass("MLCGraph");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getMLCGraphClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    ___ZL16getMLCGraphClassv_block_invoke_cold_1();
    return std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<int>*>,std::__wrap_iter<std::vector<int>*>>(v3, v4, v5, v6);
  }

  return result;
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<int>*>,std::__wrap_iter<std::vector<int>*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D209424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(void *a1, char *__src, int *a3, int *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 2)
  {
    v16 = (v10 - __src) >> 2;
    if (v16 >= a5)
    {
      v20 = &__src[4 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[4 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19++ = v37;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[4 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[4 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 2);
  if (v12 >> 62)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
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

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
  }

  v27 = 4 * (v13 >> 2);
  v28 = 4 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 4;
  }

  while (v28);
  memcpy((v27 + 4 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 4 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

size_t *std::vector<std::vector<int>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
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

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<int>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<long>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_19D2097EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<int>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 728;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 728;
    }

    while (v4 + 728 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MRLNeuralNetworkNodeParameter>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5A05A05A05A05BLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,MRLNeuralNetworkNodeParameter>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 91;
      *(a1 + 16) = v2 - 91;
      if (*(v2 - 705) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
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
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::pair<std::string,float> &>();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
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

void sub_19D209CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<MLCTensorData *>>::__construct_one_at_end[abi:ne200100]<std::vector<MLCTensorData *> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<MLCTensorData *>::__init_with_size[abi:ne200100]<MLCTensorData **,MLCTensorData **>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<MLCTensorData *>>::__emplace_back_slow_path<std::vector<MLCTensorData *> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<MLCTensorData *>::__init_with_size[abi:ne200100]<MLCTensorData **,MLCTensorData **>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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

void sub_19D209ECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MLCTensorData *>::__init_with_size[abi:ne200100]<MLCTensorData **,MLCTensorData **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MLCTensorData *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D209F40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MLCTensorData *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<MLCTensorData *,MLCTensorData *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<void *>::__init_with_size[abi:ne200100]<void **,void **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MLCTensorData *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D20A040(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<float,float>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_19D20A0C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

void *std::map<int,int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<int,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,int>,std::__tree_node<std::__value_type<int,int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<int,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,int>,std::__tree_node<std::__value_type<int,int>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_hint_unique_key_args<int,std::pair<int const,int> const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_hint_unique_key_args<int,std::pair<int const,int> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

_BYTE *OUTLINED_FUNCTION_1_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void *CoreNLP::_CFInit_ModelContainerWrapper(void *this, const void *a2)
{
  this[3] = 0;
  this[4] = 0;
  this[2] = &unk_1F10AF110;
  return this;
}

uint64_t CoreNLP::createModelContainerWrapper(uint64_t *a1)
{
  CFAllocatorGetDefault();
  {
    qword_1EE62C7F8 = 0;
    *algn_1EE62C808 = 0u;
    *&algn_1EE62C808[16] = 0u;
    CoreNLP::_CFGetTypeID_ModelContainerWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(Instance + 32);
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void CoreNLP::ModelContainerWrapper::~ModelContainerWrapper(CoreNLP::ModelContainerWrapper *this)
{
  *this = &unk_1F10AF110;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);
}

{
  *this = &unk_1F10AF110;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  CoreNLP::SubWordTagger::~SubWordTagger(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t CoreNLP::WordEmbedding::fillWordVectors(CoreNLP::WordEmbedding *this, const __CFArray *a2, unsigned int a3, unsigned int a4, float *a5, const float *a6, const float *a7)
{
  v12 = (*(*this + 64))(this);
  bzero(a5, 4 * a4 * a3 * v12);
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = a4;
    v16 = 4 * v12;
    v35 = 4 * v12 * v15;
    v36 = a3;
    v40 = a5;
    v38 = v15;
    do
    {
      v39 = v14;
      v17 = [(__CFArray *)a2 objectAtIndexedSubscript:?];
      v18 = v15;
      if ([v17 count] <= v15)
      {
        v18 = [v17 count];
      }

      if (v18)
      {
        v19 = 0;
        v20 = v40;
        do
        {
          v42 = 0;
          if (CoreNLP::WordEmbedding::getWordID(this, [objc_msgSend(v17 objectAtIndexedSubscript:{v19), "UTF8String"}], &v42))
          {
            v21 = *(this + 672);
            if (v21 >= 1)
            {
              v22 = 0;
              v23 = *(this + 340) + v42 * v21;
              v24 = *(this + 337);
              v25 = *(this + 671);
              v26 = *(this + 9);
              v27 = v20;
              do
              {
                if (v26 >= 1)
                {
                  v28 = (v24 + 4 * v25 * (*(v23 + v22) | (v22 << 8)));
                  v29 = v26;
                  v30 = v27;
                  do
                  {
                    v31 = *v28++;
                    *v30 = v31 + *v30;
                    ++v30;
                    --v29;
                  }

                  while (v29);
                }

                ++v22;
                v27 += v26;
              }

              while (v22 != v21);
            }
          }

          else
          {
            memcpy(&a5[(v19 + v39 * v38) * v12], a6, 4 * v12);
          }

          ++v19;
          v20 = (v20 + v16);
        }

        while (v19 != v18);
      }

      v15 = v38;
      v32 = v38 - v18;
      if (v38 > v18)
      {
        v33 = a5 + v16 * (v18 + v13);
        do
        {
          memcpy(v33, a7, 4 * v12);
          v33 += v16;
          --v32;
        }

        while (v32);
      }

      v14 = v39 + 1;
      v40 = (v40 + v35);
      v13 += v38;
    }

    while (v39 + 1 != v36);
  }

  return 1;
}

void CoreNLP::NLModelTrainer::~NLModelTrainer(CoreNLP::NLModelTrainer *this)
{
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 19, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 18, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 17, 0);
  nlp::CFScopedPtr<__CFData const*>::reset(this + 16, 0);
  CoreNLP::TaggerContext::~TaggerContext((this + 56));
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 4);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

void CoreNLP::NLModelTrainer::NLModelTrainer(CoreNLP::NLModelTrainer *this, const __CFData *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = this + 32;
  *(this + 5) = this + 32;
  *(this + 6) = 0;
  CoreNLP::TaggerContext::TaggerContext((this + 56));
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 42) = 1;
  operator new();
}

void sub_19D20AD58(_Unwind_Exception *a1)
{
  v6 = v1[20];
  v1[20] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  nlp::CFScopedPtr<__CFLocale const*>::reset(v3 + 3, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v4, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(v3 + 1, 0);
  nlp::CFScopedPtr<__CFData const*>::reset(v3, 0);
  CoreNLP::TaggerContext::~TaggerContext((v1 + 7));
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(v2);
  v7 = v1[2];
  v1[2] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[1];
  v1[1] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v1;
  *v1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::NLModelTrainer::NLModelTrainer(CoreNLP::NLModelTrainer *this, const __CFDictionary *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = this + 32;
  *(this + 5) = this + 32;
  *(this + 6) = 0;
  CoreNLP::TaggerContext::TaggerContext((this + 56));
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 42) = 1;
  v4 = (this + 168);
  *(this + 20) = 0;
  v5 = @"en";
  v50 = @"en";
  if (a2)
  {
    if (CFDictionaryContainsKey(a2, kNLModelTrainerModelMethodTypeKey))
    {
      v6 = CFDictionaryGetValue(a2, kNLModelTrainerModelMethodTypeKey);
      CFNumberGetValue(v6, kCFNumberCFIndexType, this + 168);
    }

    v7 = CFDictionaryContainsKey(a2, kNLModelTrainerLanguageKey);
    v8 = MEMORY[0x1E695E480];
    if (v7)
    {
      v5 = CFDictionaryGetValue(a2, kNLModelTrainerLanguageKey);
      CFRelease(@"en");
      v50 = v5;
      CoreNLP::languageIdForLanguage(v5, v9);
      v10 = CFLocaleCreate(*v8, v5);
      nlp::CFScopedPtr<__CFLocale const*>::reset(this + 19, v10);
    }

    if (CFDictionaryContainsKey(a2, kNLModelTrainerModelMetadataKey))
    {
      v11 = CFDictionaryGetValue(a2, kNLModelTrainerModelMetadataKey);
      v12 = CFRetain(v11);
      nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 18, v12);
    }

    if (CFDictionaryContainsKey(a2, kNLModelTrainerModelDataKey))
    {
      v13 = CFDictionaryGetValue(a2, kNLModelTrainerModelDataKey);
      v14 = CFRetain(v13);
      nlp::CFScopedPtr<__CFData const*>::reset(this + 16, v14);
    }

    if (CFDictionaryContainsKey(a2, kNLModelTrainerModelDataArrayKey))
    {
      v15 = CFDictionaryGetValue(a2, kNLModelTrainerModelDataArrayKey);
      v16 = CFRetain(v15);
      nlp::CFScopedPtr<__CFArray const*>::reset(this + 17, v16);
    }

    if (*v4 == 9)
    {
      Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v51 = Mutable;
      if (Mutable)
      {
        v18 = CFGetTypeID(Mutable);
        if (v18 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v19 = v51;
      }

      else
      {
        v19 = 0;
      }

      LODWORD(__p[0]) = 32;
      value = CFNumberCreate(0, kCFNumberIntType, __p);
      if (value)
      {
        LODWORD(cf[0]) = 30;
        __p[0] = CFNumberCreate(0, kCFNumberIntType, cf);
        if (__p[0])
        {
          valuePtr = 25;
          cf[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (cf[0])
          {
            CFDictionarySetValue(v19, @"batchSize", value);
            CFDictionarySetValue(v19, @"maxLength", __p[0]);
            CFDictionarySetValue(v19, kNLModelTrainerMaxIterationNumberKey, cf[0]);
            if (CFDictionaryContainsKey(a2, kNLModelTrainerMaxIterationNumberKey))
            {
              v20 = CFDictionaryGetValue(a2, kNLModelTrainerMaxIterationNumberKey);
              v21 = v20;
              if (v20)
              {
                v22 = CFGetTypeID(v20);
                if (v22 == CFNumberGetTypeID())
                {
                  CFDictionarySetValue(v19, kNLModelTrainerMaxIterationNumberKey, v21);
                }
              }
            }

            if (CFDictionaryContainsKey(a2, kNLModelTrainerModelDeviceTypeKey))
            {
              v23 = CFDictionaryGetValue(a2, kNLModelTrainerModelDeviceTypeKey);
              v24 = v23;
              if (v23)
              {
                v25 = CFGetTypeID(v23);
                if (v25 == CFNumberGetTypeID())
                {
                  CFDictionarySetValue(v19, kNLModelTrainerModelDeviceTypeKey, v24);
                }
              }
            }

            CFDictionarySetValue(v19, kNLModelTrainerLanguageKey, v5);
            if (CFDictionaryContainsKey(a2, kNLModelTrainerLanguageKey))
            {
              v26 = CFDictionaryGetValue(a2, kNLModelTrainerLanguageKey);
              v27 = v26;
              if (v26)
              {
                v28 = CFGetTypeID(v26);
                if (v28 == CFStringGetTypeID())
                {
                  CFDictionarySetValue(v19, kNLModelTrainerLanguageKey, v27);
                }
              }
            }

            CFDictionarySetValue(v19, kNLModelTrainerEmbeddingArchitectureKey, kNLModelTrainerEmbeddingArchitectureELMo);
            if (CFDictionaryContainsKey(a2, kNLModelTrainerEmbeddingArchitectureKey))
            {
              v29 = CFDictionaryGetValue(a2, kNLModelTrainerEmbeddingArchitectureKey);
              v30 = v29;
              if (v29)
              {
                v31 = CFGetTypeID(v29);
                if (v31 == CFStringGetTypeID() && CFStringCompare(v30, kNLModelTrainerEmbeddingArchitectureMultilingualBERT, 0) == kCFCompareEqualTo)
                {
                  CFDictionarySetValue(v19, kNLModelTrainerEmbeddingArchitectureKey, kNLModelTrainerEmbeddingArchitectureMultilingualBERT);
                  CFDictionarySetValue(v19, kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey, @"mul_Latn");
                  if (CFDictionaryContainsKey(a2, kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey))
                  {
                    v37 = CFDictionaryGetValue(a2, kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey);
                    v38 = v37;
                    if (v37)
                    {
                      v39 = CFGetTypeID(v37);
                      if (v39 == CFStringGetTypeID())
                      {
                        CFDictionarySetValue(v19, kNLModelTrainerMultilingualEmbeddingLocaleIdentifierKey, v38);
                      }
                    }
                  }
                }
              }
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (__p[0])
            {
              CFRelease(__p[0]);
            }

            if (value)
            {
              CFRelease(value);
            }

            v49[0] = 0;
            v49[1] = 0;
            value = v49;
            if (CFDictionaryContainsKey(a2, kNLModelSampleDataLabelTypesArrayKey))
            {
              v32 = CFDictionaryGetValue(a2, kNLModelSampleDataLabelTypesArrayKey);
              Count = CFArrayGetCount(v32);
              if (Count >= 1)
              {
                for (i = 0; i != Count; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v32, i);
                  CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
                  std::string::basic_string[abi:ne200100]<0>(__p, CStringPtr);
                  cf[0] = __p;
                  *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&value, __p) + 56) = i;
                  if (v47 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }
            }

            operator new();
          }

          v43 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v43, "Could not construct");
          __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v42 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v42, "Could not construct");
        __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v41 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v41, "Could not construct");
      __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (*v4 != 1)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Unsupported Model Method Type");
      __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  operator new();
}

void sub_19D20BE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, const void **a11, const void **a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, uint64_t a27, uint64_t a28, const void *a29)
{
  applesauce::CF::NumberRef::~NumberRef(&__p);
  applesauce::CF::NumberRef::~NumberRef(&a20);
  applesauce::CF::NumberRef::~NumberRef(&a26);
  applesauce::CF::DictionaryRef::~DictionaryRef((v32 - 96));
  nlp::CFScopedPtr<__CFString const*>::reset(&a29, 0);
  v34 = v29[20];
  v29[20] = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  nlp::CFScopedPtr<__CFLocale const*>::reset(a11, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v31, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(a12, 0);
  nlp::CFScopedPtr<__CFData const*>::reset(v30, 0);
  CoreNLP::TaggerContext::~TaggerContext((v29 + 7));
  std::__list_imp<CoreNLP::NLAttributedToken>::clear(a10);
  v35 = v29[2];
  v29[2] = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = v29[1];
  v29[1] = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *v29;
  *v29 = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  _Unwind_Resume(a1);
}

void CoreNLP::NLModelTrainer::readSample(uint64_t a1, const __CFString *a2, void *a3, void *a4, int a5)
{
  v5 = a4[1] - *a4;
  if (v5 >= 24)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v7 == (a3[1] - *a3) >> 4)
    {
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2000000000;
      v18[3] = 0;
      std::__list_imp<CoreNLP::NLAttributedToken>::clear((a1 + 32));
      CoreNLP::CompositeTagger::setString(*(a1 + 16), a2);
      v12 = *(a1 + 152);
      if (v12)
      {
        v13 = *(a1 + 16);
        v19.length = CFStringGetLength(a2);
        v19.location = 0;
        CoreNLP::CompositeTagger::setLocaleForRange(v13, v12, v19);
      }

      v14 = *(a1 + 16);
      Length = CFStringGetLength(a2);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZN7CoreNLP14NLModelTrainer10readSampleEPK10__CFStringRKNSt3__16vectorI7CFRangeNS4_9allocatorIS6_EEEERKNS5_INS4_12basic_stringIcNS4_11char_traitsIcEENS7_IcEEEENS7_ISG_EEEENS_17NLTrainerDataTypeE_block_invoke;
      v16[3] = &unk_1E7625588;
      v16[4] = v18;
      v16[5] = a1;
      v16[6] = a2;
      v16[7] = v7;
      v16[8] = a3;
      v16[9] = a4;
      v17 = a5;
      CoreNLP::CompositeTagger::enumerateTokens(v14, 2, 0, Length, 4uLL, v16);
      _Block_object_dispose(v18, 8);
    }
  }
}

void sub_19D20C3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN7CoreNLP14NLModelTrainer10readSampleEPK10__CFStringRKNSt3__16vectorI7CFRangeNS4_9allocatorIS6_EEEERKNS5_INS4_12basic_stringIcNS4_11char_traitsIcEENS7_IcEEEENS7_ISG_EEEENS_17NLTrainerDataTypeE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[2];
  v4 = v3 + 872;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v5 = *(v3 + 880);
  if (v5 != v3 + 872)
  {
    while (CoreNLP::skipTokenForOptions((v5 + 16), 4uLL))
    {
      v5 = *(v5 + 8);
LABEL_44:
      if (v5 == v4)
      {
        goto LABEL_45;
      }
    }

    if ((*(v5 + 119) & 0x8000000000000000) != 0)
    {
      if (*(v5 + 104))
      {
        goto LABEL_11;
      }
    }

    else if (*(v5 + 119))
    {
      goto LABEL_11;
    }

    v6 = *(v5 + 16);
    v54 = *(v5 + 32);
    v53 = v6;
    CoreNLP::extractLowercaseUTF8(*(a1 + 48), &v53, *(v2[2] + 936), &v61);
    if (*(v5 + 119) < 0)
    {
      operator delete(*(v5 + 96));
    }

    *(v5 + 96) = v61;
LABEL_11:
    v7 = v2[1];
    if (v7)
    {
      if ((*(v7 + 68) & 1) == 0)
      {
        v8 = *(v5 + 48);
        if (v8)
        {
          v9 = v5 + 48;
          do
          {
            if (*(v8 + 32) >= 6)
            {
              v9 = v8;
            }

            v8 = *(v8 + 8 * (*(v8 + 32) < 6));
          }

          while (v8);
          if (v9 != v5 + 48 && *(v9 + 32) <= 6)
          {
            *(v7 + 68) = 1;
          }
        }
      }
    }

    v61.__r_.__value_.__r.__words[0] = v5 + 16;
    std::vector<CoreNLP::NLAttributedToken *>::push_back[abi:ne200100](&v58, &v61);
    v5 = *(v5 + 8);
    v10 = v56;
    if (v56 >= v57)
    {
      v11 = std::vector<std::string>::__emplace_back_slow_path<char const(&)[9]>(&v55, "SYS_NONE");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "SYS_NONE");
      v11 = v10 + 1;
    }

    v56 = v11;
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    v16 = *(v13 + 24);
    v14 = (v13 + 24);
    v15 = v16;
    if (v16 < *(a1 + 56))
    {
      v17 = **(a1 + 64);
      v18 = *(v59 - 1);
      while (1)
      {
        v19 = (v17 + 16 * v15);
        v20 = *v19;
        v21 = v19[1];
        v22 = *v18;
        if (v18[1] + *v18 <= v21 + v20)
        {
          break;
        }

        *v14 = v15 + 1;
        v12 = *(a1 + 32);
        v23 = *(v12 + 8);
        v24 = *(v23 + 24);
        v14 = (v23 + 24);
        v15 = v24;
        if (v24 >= *(a1 + 56))
        {
          goto LABEL_44;
        }
      }

      if (v20 != -1 && v22 != -1 && v22 >= v20)
      {
        p_data = &v11[-1].__r_.__value_.__l.__data_;
        if (SHIBYTE(v11[-1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(*p_data);
          v12 = *(a1 + 32);
        }

        v56 = v11 - 1;
        v28 = **(a1 + 72) + 24 * *(*(v12 + 8) + 24);
        if (p_data >= v57)
        {
          v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v55, v28);
        }

        else if (*(v28 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v11 - 1, *v28, *(v28 + 8));
        }

        else
        {
          v29 = *v28;
          v11[-1].__r_.__value_.__r.__words[2] = *(v28 + 16);
          *p_data = v29;
        }

        v56 = v11;
      }
    }

    goto LABEL_44;
  }

LABEL_45:
  v30 = v2[1];
  if (v30)
  {
    memset(&v61, 0, sizeof(v61));
    if (v59 != v58)
    {
      v31 = 0;
      do
      {
        v32 = *(v2[1] + 64);
        v33 = *(v2[2] + 936);
        v34 = *(a1 + 48);
        (*(**v2 + 24))(&v53);
        std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v61.__r_.__value_.__l.__data_, &v53);
        v50 = &v53;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v50);
        ++v31;
      }

      while (v31 < v59 - v58);
      v30 = v2[1];
    }

    (*(*v30 + 16))(v30, &v61, &v55, *(a1 + 80));
    *&v53 = &v61;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v53);
  }

  else
  {
    v35 = v2[20];
    if (v35)
    {
      v53 = 0uLL;
      v54 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v36 = v58;
      v37 = v59;
      if (v58 != v59)
      {
        do
        {
          v38 = CFStringCreateWithSubstring(0, *(a1 + 48), **v36);
          cf = v38;
          if (!v38)
          {
            goto LABEL_80;
          }

          v39 = CFGetTypeID(v38);
          if (v39 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          if (!cf)
          {
LABEL_80:
            v42 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v42, "Could not construct");
            __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          std::string::basic_string[abi:ne200100]<0>(&v44, "");
          v40 = cf;
          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
          }

          else
          {
            v61 = v44;
          }

          if (v40 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v40)))
          {
            applesauce::CF::details::CFString_get_value<false>(v40, &__p);
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            __p = v61;
          }

          std::vector<std::string>::push_back[abi:ne200100](&v53, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          LODWORD(v61.__r_.__value_.__l.__data_) = (*v36)->location;
          std::vector<int>::push_back[abi:ne200100](&v50, &v61);
          LODWORD(v61.__r_.__value_.__l.__data_) = (*v36)->length;
          std::vector<int>::push_back[abi:ne200100](&v47, &v61);
          ++v36;
        }

        while (v36 != v37);
        v35 = v2[20];
      }

      CoreNLP::TransferSeqTagModel::readSample(v35, &v53, &v55, &v50, &v47, *(a1 + 80));
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      v61.__r_.__value_.__r.__words[0] = &v53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
    }
  }

  v61.__r_.__value_.__r.__words[0] = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_19D20C9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  *(v34 - 112) = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v34 - 112));
  *(v34 - 112) = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v34 - 112));
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

__CFData *CoreNLP::NLModelTrainer::copyTrainedModelData(CoreNLP::NLModelTrainer *this)
{
  v2 = tmpfile();
  if (*(this + 42) == 9)
  {
    return 0;
  }

  v4 = v2;
  (*(**(this + 1) + 32))(*(this + 1), v2);
  Mutable = CFDataCreateMutable(0, 0);
  fseek(v4, 0, 2);
  v5 = MEMORY[0x19EAF9190](v4);
  fseek(v4, 0, 0);
  v6 = malloc_type_malloc(v5, 0xB60380ABuLL);
  fread(v6, v5, 1uLL, v4);
  CFDataAppendBytes(Mutable, v6, v5);
  free(v6);
  fclose(v4);
  return Mutable;
}

__CFDictionary *CoreNLP::NLModelTrainer::copyTrainedModelDict(CoreNLP::NLModelTrainer *this)
{
  if (*(this + 42) == 9)
  {
    CoreNLP::TransferSeqTagModel::copyTrainedDict(*(this + 20));
  }

  v2 = CoreNLP::NLModelTrainer::copyTrainedModelData(this);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, kNLModelTrainerModelDataKey, v2);
  v4 = kNLModelTrainerModelMetadataKey;
  v9[0] = 0;
  v9[1] = 0;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v9);
  v9[2] = CFDictionaryRef;
  CFDictionaryAddValue(Mutable, v4, CFDictionaryRef);
  if (CFDictionaryRef)
  {
    CFRelease(CFDictionaryRef);
  }

  CFRelease(v2);
  Value = CFDictionaryGetValue(Mutable, kNLModelTrainerModelDataKey);
  v7 = CFRetain(Value);
  nlp::CFScopedPtr<__CFData const*>::reset(this + 16, v7);
  return Mutable;
}

void sub_19D20CD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

__CFDictionary *CoreNLP::NLModelTrainer::copyPredictedLabels(CoreNLP::NLModelTrainer *this, const __CFString *a2, int a3, uint64_t a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v8 = MEMORY[0x1E695E9C0];
  v9 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v10 = CFArrayCreateMutable(0, 0, v8);
  v11 = CFArrayCreateMutable(0, 0, v8);
  v12 = 0;
  if (a3)
  {
    v12 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  std::__list_imp<CoreNLP::NLAttributedToken>::clear(this + 4);
  CoreNLP::CompositeTagger::setString(*(this + 2), a2);
  v13 = *(this + 19);
  if (v13)
  {
    v14 = *(this + 2);
    v21.length = CFStringGetLength(a2);
    v21.location = 0;
    CoreNLP::CompositeTagger::setLocaleForRange(v14, v13, v21);
  }

  v15 = *(this + 2);
  Length = CFStringGetLength(a2);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZN7CoreNLP14NLModelTrainer19copyPredictedLabelsEPK10__CFStringbm_block_invoke;
  v19[3] = &__block_descriptor_tmp_26;
  v19[4] = this;
  v19[5] = a2;
  v20 = a3;
  v19[6] = a4;
  v19[7] = v9;
  v19[8] = v10;
  v19[9] = v11;
  v19[10] = v12;
  CoreNLP::CompositeTagger::enumerateTokens(v15, 2, 0, Length, 4uLL, v19);
  if (a3)
  {
    CFDictionaryAddValue(Mutable, kNLModelSampleDataLabelsArrayKey, v9);
    CFDictionaryAddValue(Mutable, kNLModelSampleDataProbabilitiesArrayKey, v12);
    CFRelease(v12);
  }

  else
  {
    CFDictionaryAddValue(Mutable, kNLModelSampleDataLabelArrayKey, v9);
  }

  CFDictionaryAddValue(Mutable, kNLModelSampleDataRangeLocationArrayKey, v10);
  CFDictionaryAddValue(Mutable, kNLModelSampleDataRangeLengthArrayKey, v11);
  CFRelease(v9);
  CFRelease(v10);
  CFRelease(v11);
  return Mutable;
}

void ___ZN7CoreNLP14NLModelTrainer19copyPredictedLabelsEPK10__CFStringbm_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(v57, 0, sizeof(v57));
  v5 = *(v4 + 110);
  memset(&v56, 0, sizeof(v56));
  v6 = *a2;
  CoreNLP::CompositeTagger::getTokenAtIndex(v4, &v56);
  v48 = (v4 + 872);
  v7 = v5;
  v8 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v49 = v7;
    if (v7 == v48)
    {
      break;
    }

    v9 = v7->__r_.__value_.__r.__words[2];
    if (v9 == -1 || v56.__r_.__value_.__r.__words[0] == -1)
    {
      break;
    }

    if (v9 < v56.__r_.__value_.__l.__data_ || (v7[1].__r_.__value_.__r.__words[0] + v9) > (v56.__r_.__value_.__l.__size_ + v56.__r_.__value_.__r.__words[0]))
    {
      break;
    }

LABEL_77:
    v42 = &v7->__r_.__value_.__r.__words[2];
    v43 = CoreNLP::skipTokenForOptions(&v7->__r_.__value_.__r.__words[2], 4uLL);
    v44 = v49;
    if (v43)
    {
      goto LABEL_86;
    }

    if ((SHIBYTE(v49[4].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!v49[4].__r_.__value_.__l.__size_)
      {
LABEL_82:
        v45 = *v42;
        v55.__r_.__value_.__r.__words[2] = *(v42 + 16);
        *&v55.__r_.__value_.__l.__data_ = v45;
        CoreNLP::extractLowercaseUTF8(*(a1 + 40), &v55, *(*(v3 + 16) + 936), &v61);
        if (SHIBYTE(v49[4].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49[4].__r_.__value_.__l.__data_);
        }

        v49[4] = v61;
      }
    }

    else if (!*(&v49[4].__r_.__value_.__s + 23))
    {
      goto LABEL_82;
    }

    v61.__r_.__value_.__r.__words[0] = v42;
    std::vector<CoreNLP::NLAttributedToken *>::push_back[abi:ne200100](&v58, &v61);
    v44 = v49;
LABEL_86:
    v7 = v44->__words[1];
  }

  memset(&v55, 0, sizeof(v55));
  v12 = *(v3 + 8);
  if (v12)
  {
    memset(&v61, 0, sizeof(v61));
    if (v59 != v58)
    {
      v13 = 0;
      do
      {
        v14 = *(*(v3 + 8) + 64);
        v15 = *(*(v3 + 16) + 936);
        v16 = *(a1 + 40);
        (*(**v3 + 24))(&v54);
        std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v61.__r_.__value_.__l.__data_, &v54);
        __p.__r_.__value_.__r.__words[0] = &v54;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        ++v13;
      }

      while (v13 < v59 - v58);
      v12 = *(v3 + 8);
    }

    v26 = *(a1 + 48);
    (*(*v12 + 88))(&v54);
    std::vector<std::vector<int>>::__vdeallocate(&v55);
    v55 = v54;
    memset(&v54, 0, sizeof(v54));
    __p.__r_.__value_.__r.__words[0] = &v54;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v54.__r_.__value_.__r.__words[0] = &v61;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v54);
  }

  else
  {
    v17 = *(v3 + 160);
    if (v17)
    {
      memset(&v54, 0, sizeof(v54));
      v18 = v58;
      v19 = v59;
      if (v58 == v59)
      {
        size = 0;
        v24 = 0;
      }

      else
      {
        do
        {
          v20 = CFStringCreateWithSubstring(0, *(a1 + 40), **v18);
          cf = v20;
          if (!v20)
          {
            goto LABEL_90;
          }

          v21 = CFGetTypeID(v20);
          if (v21 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          if (!cf)
          {
LABEL_90:
            v46 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v46, "Could not construct");
            __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          std::string::basic_string[abi:ne200100]<0>(&v51, "");
          v22 = cf;
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
          }

          else
          {
            v61 = v51;
          }

          if (v22 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v22)))
          {
            applesauce::CF::details::CFString_get_value<false>(v22, &__p);
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            __p = v61;
          }

          std::vector<std::string>::push_back[abi:ne200100](&v54, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v18;
        }

        while (v18 != v19);
        v17 = *(v3 + 160);
        size = v54.__r_.__value_.__l.__size_;
        v24 = v54.__r_.__value_.__r.__words[0];
      }

      memset(v50, 0, sizeof(v50));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v50, v24, size, 0xAAAAAAAAAAAAAAABLL * ((size - v24) >> 3));
      v8 = MEMORY[0x1E695E9C0];
      CoreNLP::TransferSeqTagModel::inference(v17, v50, *(a1 + 48), &v61);
      std::vector<std::vector<int>>::__vdeallocate(&v55);
      v55 = v61;
      memset(&v61, 0, sizeof(v61));
      __p.__r_.__value_.__r.__words[0] = &v61;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      v61.__r_.__value_.__r.__words[0] = &v54;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
    }
  }

  if (v55.__r_.__value_.__l.__size_ != v55.__r_.__value_.__r.__words[0])
  {
    v27 = 0;
    while (1)
    {
      Mutable = CFArrayCreateMutable(0, 0, v8);
      v29 = CFArrayCreateMutable(0, 0, v8);
      v30 = *(v55.__r_.__value_.__r.__words[0] + 24 * v27);
      if (*(v55.__r_.__value_.__r.__words[0] + 24 * v27 + 8) != v30)
      {
        break;
      }

LABEL_64:
      v39 = CFNumberCreate(0, kCFNumberCFIndexType, v58[v27]);
      v61.__r_.__value_.__r.__words[0] = v39;
      CFArrayAppendValue(*(a1 + 64), v39);
      v40 = CFNumberCreate(0, kCFNumberCFIndexType, v58[v27] + 8);
      v54.__r_.__value_.__r.__words[0] = v40;
      CFArrayAppendValue(*(a1 + 72), v40);
      if (*(a1 + 88) == 1)
      {
        CFArrayAppendValue(*(a1 + 56), Mutable);
        CFArrayAppendValue(*(a1 + 80), v29);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      ++v27;
      v8 = MEMORY[0x1E695E9C0];
      if (0xAAAAAAAAAAAAAAABLL * ((v55.__r_.__value_.__l.__size_ - v55.__r_.__value_.__r.__words[0]) >> 3) <= v27)
      {
        goto LABEL_75;
      }
    }

    v31 = 0;
    v32 = 0;
    while (2)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v34 = *(v30 + v31);
        (*(*v33 + 72))(&v61);
      }

      else
      {
        CoreNLP::TransferSeqTagModel::tagToLabel(*(v3 + 160), *(v30 + v31), &v61);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        v36 = v61.__r_.__value_.__r.__words[0];
        if (v61.__r_.__value_.__l.__size_ != 8 || *v61.__r_.__value_.__l.__data_ != 0x454E4F4E5F535953)
        {
LABEL_55:
          v37 = CFStringCreateWithCString(0, v36, 0x8000100u);
          if (*(a1 + 88) == 1)
          {
            CFArrayAppendValue(Mutable, v37);
            v38 = CFNumberCreate(0, kCFNumberDoubleType, (*(v55.__r_.__value_.__r.__words[0] + 24 * v27) + v31 + 8));
            v54.__r_.__value_.__r.__words[0] = v38;
            CFArrayAppendValue(v29, v38);
            if (v38)
            {
              CFRelease(v38);
            }
          }

          else
          {
            CFArrayAppendValue(*(a1 + 56), v37);
          }

          if (v37)
          {
            CFRelease(v37);
          }
        }
      }

      else if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) != 8 || v61.__r_.__value_.__r.__words[0] != 0x454E4F4E5F535953)
      {
        v36 = &v61;
        goto LABEL_55;
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      ++v32;
      v30 = *(v55.__r_.__value_.__r.__words[0] + 24 * v27);
      v31 += 16;
      if (v32 >= (*(v55.__r_.__value_.__r.__words[0] + 24 * v27 + 8) - v30) >> 4)
      {
        goto LABEL_64;
      }

      continue;
    }
  }

LABEL_75:
  v59 = v58;
  if (v49 != v48)
  {
    v41 = v49->__r_.__value_.__r.__words[2];
    CoreNLP::CompositeTagger::getTokenAtIndex(*(v3 + 16), &v61);
    v56 = v61;
    v61.__r_.__value_.__r.__words[0] = &v55;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v61);
    v7 = v49;
    goto LABEL_77;
  }

  v61.__r_.__value_.__r.__words[0] = &v55;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v61);
  v61.__r_.__value_.__r.__words[0] = v57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_19D20D754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v33 - 128) = v33 - 176;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v33 - 128));
  v35 = *(v33 - 152);
  if (v35)
  {
    *(v33 - 144) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNLP::NLModelTrainer::setLogBlock(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return (*(*v3 + 80))();
  }

  result = *(a1 + 160);
  if (result)
  {
    return CoreNLP::TransferSeqTagModel::setTrainingLogBlock(result, a2);
  }

  return result;
}

CFTypeRef CoreNLP::NLModelTrainer::copyModelData(CoreNLP::NLModelTrainer *this)
{
  result = *(this + 16);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

__CFDictionary *CoreNLP::NLModelTrainer::copyModelDict(CoreNLP::NLModelTrainer *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(this + 16);
  if (v3)
  {
    Copy = CFDataCreateCopy(0, v3);
    CFDictionaryAddValue(Mutable, kNLModelTrainerModelDataKey, Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  v5 = *(this + 17);
  if (v5)
  {
    v6 = CFArrayCreateCopy(0, v5);
    CFDictionaryAddValue(Mutable, kNLModelTrainerModelDataArrayKey, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(this + 18);
  if (v7)
  {
    v8 = CFDictionaryCreateCopy(0, v7);
    CFDictionaryAddValue(Mutable, kNLModelTrainerModelMetadataKey, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return Mutable;
}

void sub_19D20DAB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::NLModelTrainer::endReadSamples(CoreNLP::NLModelTrainer *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    CoreNLP::TransferSeqTagModel::endReadSamples(v1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const(&)[9]>(uint64_t a1, char *a2)
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

void CoreNLP::SmartTokenizer::~SmartTokenizer(CoreNLP::SmartTokenizer *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 480);
  std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 456);
  std::vector<CoreNLP::NLAttributedToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  CoreNLP::NLAttributedToken::~NLAttributedToken((this + 328));
  CoreNLP::NLAttributedToken::~NLAttributedToken((this + 216));
  CoreNLP::NLAttributedToken::~NLAttributedToken((this + 104));
  std::unique_ptr<CoreNLP::PunctClassifier>::reset[abi:ne200100](this + 8, 0);
  std::unique_ptr<CoreNLP::SmartWordBreak>::reset[abi:ne200100](this + 7, 0);
  std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::~__hash_table(this + 16);
}

CFTypeRef *CoreNLP::SmartTokenizer::setString(CoreNLP::SmartTokenizer *this, const __CFString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  CoreNLP::SmartTokenizer::clearAll(this);
  *(this + 13) = -1;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = -1;
  v7 = *(this + 9);
  if (v7)
  {
    CFRelease(v7);
    *(this + 9) = 0;
  }

  if (a2)
  {
    v8 = CFRetain(a2);
    *(this + 9) = v8;
  }

  else
  {
    v8 = 0;
  }

  *(this + 10) = location;
  *(this + 11) = length;
  *(this + 104) = *(this + 5);
  *(this + 15) = 0;
  v9 = *(this + 8);
  if (v9)
  {
    CoreNLP::PunctClassifier::setString(v9, v8);
  }

  result = *(this + 7);
  if (result)
  {
    result = CoreNLP::SmartWordBreak::setString(result, *(this + 9), *(this + 5));
  }

  for (i = *(this + 4); i; i = *i)
  {
    result = (*(*i[3] + 40))(i[3], *(this + 9), *(this + 10), *(this + 11), 0);
  }

  return result;
}

void CoreNLP::SmartTokenizer::clearAll(CoreNLP::SmartTokenizer *this)
{
  v2 = *(this + 61);
  v3 = *(this + 60);
  while (v2 != v3)
  {
    CoreNLP::NLAttributedToken::~NLAttributedToken((v2 - 112));
  }

  *(this + 61) = v3;
  v5 = *(this + 57);
    ;
  }

  *(this + 58) = v5;
  *(this + 12) = 0;
}

CoreNLP::SmartWordBreak *std::unique_ptr<CoreNLP::SmartWordBreak>::reset[abi:ne200100](CoreNLP::SmartWordBreak **a1, CoreNLP::SmartWordBreak *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreNLP::SmartWordBreak::~SmartWordBreak(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

CoreNLP::PunctClassifier *std::unique_ptr<CoreNLP::PunctClassifier>::reset[abi:ne200100](CoreNLP::PunctClassifier **a1, CoreNLP::PunctClassifier *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreNLP::PunctClassifier::~PunctClassifier(result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unique_ptr<CoreNLP::Tagger>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
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

void CoreNLP::DepParserManager::DepParserManager(CoreNLP::DepParserManager *this, const __CFDictionary *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = 0;
  v4[0] = kNLTagSchemeTokenType[0];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = kNLStringEmbeddingModelLocale[0];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en"];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:&v2 count:1];
  NLTaggerCreate();
}

void sub_19D20E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, const void *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MEMORY[0x19EAF8CA0](v37, 0x1020C402EB40689);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  nlp::CFScopedPtr<__CFURL const*>::reset(&a27, 0);
  std::unique_ptr<CoreNLP::PosTagger>::reset[abi:ne200100](v35, 0);
  std::unique_ptr<CoreNLP::Parser>::reset[abi:ne200100](v36, 0);
  nlp::CFScopedPtr<void *>::reset(v34, 0);
  nlp::CFScopedPtr<void *>::reset(v33, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::DepParserManager::getParse(CoreNLP **this, __CFString *a2)
{
  NLTaggerSetString(this[1], a2);
  [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x4812000000;
  v2[3] = __Block_byref_object_copy__3;
  v2[4] = __Block_byref_object_dispose__3;
  v2[5] = "";
  memset(v3, 0, 24);
  std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(v3, 1uLL);
}

void sub_19D20EE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, char *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  v50 = *v47;
  if (*v47)
  {
    *(a9 + 10) = v50;
    operator delete(v50);
  }

  v51 = *v46;
  if (*v46)
  {
    *(a9 + 7) = v51;
    operator delete(v51);
  }

  v52 = *v45;
  if (*v45)
  {
    *(a9 + 4) = v52;
    operator delete(v52);
  }

  a10 = a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  CoreNLP::Dependency::~Dependency(&a22);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  nlp::CFScopedPtr<__CFData const*>::reset((v48 - 232), 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v48 - 224), 0);
  _Block_object_dispose((v48 - 160), 8);
  v53 = *(v48 - 112);
  if (v53)
  {
    *(v48 - 104) = v53;
    operator delete(v53);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN7CoreNLP16DepParserManager8getParseEPK10__CFString_block_invoke(uint64_t a1, CFRange *a2)
{
  v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 48), *a2);
  [*(a1 + 32) addObject:v4];
  v5 = *(*(a1 + 40) + 8);
  v7 = v5[7];
  v6 = v5[8];
  if (v7 >= v6)
  {
    v20 = *a2;
    v9 = v5[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF0;
    v15 = 0xFFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>((v5 + 6), v15);
    }

    v16 = (v7 - v9) >> 4;
    v17 = (16 * v11);
    v18 = (16 * v11 - 16 * v16);
    *v17 = v20;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = v5[6];
    v5[6] = v18;
    v5[7] = v8;
    v5[8] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = *a2;
    v8 = (v7 + 16);
  }

  v5[7] = v8;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_19D20F190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void CoreNLP::DepParserManager::fillWordEmbeddingsAveragedTokenEmbeddings(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int *a4@<X3>, std::vector<int> *a5@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a5, *(a1 + 16) + *(a1 + 16) * *a4);
  v10 = *a4;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *a3;
    begin = a5->__begin_;
    while (1)
    {
      v14 = (v12 + 8 * v11);
      v15 = v14[1];
      if (!v15)
      {
        break;
      }

      ++v11;
      if (v15 >= 1)
      {
        v16 = *v14;
        v17 = *(a1 + 16);
        v18 = v17 * v11;
        v19 = &begin[v18];
        v20 = v16 + v15;
        do
        {
          if (v17)
          {
            v21 = (a2 + 4 * v16 * v17);
            v22 = &begin[v18];
            do
            {
              v23 = *v21++;
              *v22 = *v22 + v23;
              ++v22;
            }

            while (v22 != &v19[v17]);
          }

          ++v16;
        }

        while (v16 < v20);
        if (v15 != 1)
        {
          v24 = v18 + v17;
          if (4 * v18 != 4 * v24)
          {
            v25 = &begin[v24];
            do
            {
              *v19 = *v19 / v15;
              ++v19;
            }

            while (v19 != v25);
          }
        }
      }

      if (v11 == v10)
      {
        return;
      }
    }

    *a4 = v11;
    std::vector<float>::resize(a5, *(a1 + 16) + *(a1 + 16) * v11);
  }
}

void sub_19D20F2E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CoreNLP::MontrealModel **std::unique_ptr<CoreNLP::Parser>::reset[abi:ne200100](CoreNLP::MontrealModel ***a1, CoreNLP::MontrealModel **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

CoreNLP::MontrealModel **std::unique_ptr<CoreNLP::PosTagger>::reset[abi:ne200100](CoreNLP::MontrealModel ***a1, CoreNLP::MontrealModel **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](result);

    JUMPOUT(0x19EAF8CA0);
  }

  return result;
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::tuple<int,int>>::__init_with_size[abi:ne200100]<std::tuple<int,int>*,std::tuple<int,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D20F478(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CFRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D20F4F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CFRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<NLPosTag>::__init_with_size[abi:ne200100]<NLPosTag*,NLPosTag*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D20F5AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::getPathRelativeToPlatformRoot(CoreNLP *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, this);
    v4 = HIBYTE(v6);
    if (v6 < 0)
    {
      v4 = __p[1];
    }

    if (v4)
    {
      *a2 = *__p;
      *(a2 + 16) = v6;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(a2, "");
      if (SHIBYTE(v6) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void sub_19D20F714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *CoreNLP::convertLanguageIDToCode(int a1)
{
  v3 = a1;
  if (CoreNLP::convertLanguageIDToCode(NLLanguageID)::onceToken != -1)
  {
    CoreNLP::convertLanguageIDToCode();
  }

  v1 = std::__hash_table<std::__hash_value_type<NLLanguageID,char const*>,std::__unordered_map_hasher<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::hash<int>,std::equal_to<NLLanguageID>,true>,std::__unordered_map_equal<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::equal_to<NLLanguageID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLLanguageID,char const*>>>::find<NLLanguageID>(CoreNLP::convertLanguageIDToCode(NLLanguageID)::langIdToCode, &v3);
  if (v1)
  {
    return v1[3];
  }

  else
  {
    return "--";
  }
}

uint64_t CoreNLP::paddingOffset(CoreNLP *this, unsigned int *a2)
{
  v2 = -*this & 7;
  *this += v2;
  return v2;
}

uint64_t CoreNLP::getUNormalizer2(int a1)
{
  if (a1 == 5)
  {
    if (CoreNLP::getNFKCNormalizer(void)::onceToken != -1)
    {
      CoreNLP::getUNormalizer2();
    }

    v1 = &CoreNLP::getNFKCNormalizer(void)::norm2;
    return *v1;
  }

  if (a1 == 3)
  {
    if (CoreNLP::getNFKDNormalizer(void)::onceToken != -1)
    {
      CoreNLP::getUNormalizer2();
    }

    v1 = &CoreNLP::getNFKDNormalizer(void)::norm2;
    return *v1;
  }

  return 0;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t ___ZN7CoreNLPL17getNFKDNormalizerEv_block_invoke()
{
  result = unorm2_getNFKDInstance();
  CoreNLP::getNFKDNormalizer(void)::norm2 = result;
  return result;
}

uint64_t ___ZN7CoreNLPL17getNFKCNormalizerEv_block_invoke()
{
  result = unorm2_getNFKCInstance();
  CoreNLP::getNFKCNormalizer(void)::norm2 = result;
  return result;
}

uint64_t std::unordered_map<NLLanguageID,char const*>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<NLLanguageID,char const*>,std::__unordered_map_hasher<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::hash<int>,std::equal_to<NLLanguageID>,true>,std::__unordered_map_equal<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::equal_to<NLLanguageID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLLanguageID,char const*>>>::__emplace_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,char const*> const&>(a1, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<NLLanguageID,char const*>,std::__unordered_map_hasher<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::hash<int>,std::equal_to<NLLanguageID>,true>,std::__unordered_map_equal<NLLanguageID,std::__hash_value_type<NLLanguageID,char const*>,std::equal_to<NLLanguageID>,std::hash<int>,true>,std::allocator<std::__hash_value_type<NLLanguageID,char const*>>>::__emplace_unique_key_args<NLLanguageID,std::pair<NLLanguageID const,char const*> const&>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void CoreNLP::EmotionModel::CreateModel(int a1@<W0>, void *a2@<X8>)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v3 = CoreNLP::copyLocaleForLanguageID(a1);
  if ([NLResourceWrapper copyAssetURLWithLocale:v3 contentType:@"Emotion" contentName:@"emotion.dat"])
  {
    operator new();
  }

  if (CoreNLP::logger(void)::sOnce != -1)
  {
    CoreNLP::EmotionModel::CreateModel();
  }

  v4 = CoreNLP::logger(void)::sLogger;
  if (os_log_type_enabled(CoreNLP::logger(void)::sLogger, OS_LOG_TYPE_ERROR))
  {
    CoreNLP::EmotionModel::CreateModel([-[__CFLocale localeIdentifier](v3 "localeIdentifier")], __p, v4);
  }

  *a2 = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void CoreNLP::EmotionModel::EmotionModel(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *CoreNLP::AbstractModel::AbstractModel(a1) = &unk_1F10AF2B0;
  operator new();
}

void sub_19D210040(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<void *>::reset(v3, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](v2);
  CoreNLP::AbstractModel::~AbstractModel(v1);
  _Unwind_Resume(a1);
}

void CoreNLP::EmotionModel::~EmotionModel(CoreNLP::EmotionModel *this)
{
  *this = &unk_1F10AF2B0;
  v2 = *(this + 10);
  if (v2)
  {
    NLTokenizerRelease(v2);
  }

  nlp::CFScopedPtr<void *>::reset(this + 11, 0);
  std::unique_ptr<CoreNLP::MontrealModel>::~unique_ptr[abi:ne200100](this + 9);

  CoreNLP::AbstractModel::~AbstractModel(this);
}

{
  CoreNLP::EmotionModel::~EmotionModel(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::EmotionModel::vinference(uint64_t a1@<X0>, uint64_t a2@<X1>, CoreNLP *a3@<X2>, void *a4@<X8>)
{
  v62[3] = *MEMORY[0x1E69E9840];
  __src = 0;
  v49 = 0;
  v50 = 0;
  if (*(a1 + 88))
  {
    v5 = *a2;
    if (*(a2 + 8) == *a2 || (v7 = *v5, v5[1] == *v5))
    {
      if (CoreNLP::logger(void)::sOnce != -1)
      {
        CoreNLP::EmotionModel::CreateModel();
      }

      v38 = CoreNLP::logger(void)::sLogger;
      if (os_log_type_enabled(CoreNLP::logger(void)::sLogger, OS_LOG_TYPE_ERROR))
      {
        *v59 = 0;
        _os_log_error_impl(&dword_19D184000, v38, OS_LOG_TYPE_ERROR, "Empty input", v59, 2u);
        v40 = __src;
        v39 = v49;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *v59 = 0;
      v60 = 0;
      v61 = 0;
      std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v59, v40, v39, (v39 - v40) >> 4);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(a4, v59, v62, 1uLL);
      if (*v59)
      {
        v60 = *v59;
        operator delete(*v59);
      }
    }

    else
    {
      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      *v59 = 0;
      v60 = v59;
      v61 = 0x3052000000;
      v62[0] = __Block_byref_object_copy__4;
      v62[1] = __Block_byref_object_dispose__4;
      v62[2] = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
      v9 = *(a1 + 80);
      [v8 length];
      NLTokenizerSetString(v9);
      v10 = *(a1 + 80);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = ___ZN7CoreNLP12EmotionModel10vinferenceERKNSt3__16vectorINS2_INS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEENS6_ISA_EEEEm_block_invoke;
      v47[3] = &unk_1E7625898;
      v47[4] = v8;
      v47[5] = v59;
      NLTokenizerEnumerateTokens(v10, v47);
      if (CoreNLP::logger(void)::sOnce != -1)
      {
        CoreNLP::EmotionModel::vinference();
      }

      v11 = CoreNLP::logger(void)::sLogger;
      if (os_log_type_enabled(CoreNLP::logger(void)::sLogger, OS_LOG_TYPE_DEBUG))
      {
        CoreNLP::EmotionModel::vinference([objc_msgSend(v60[5] componentsJoinedByString:{@" ", "UTF8String"}], v58, v11);
      }

      v57 = v60[5];
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      Dimension = NLStringEmbeddingGetDimension(*(a1 + 88), v13);
      LODWORD(__p) = 0;
      std::vector<float>::vector[abi:ne200100](v46, 50 * Dimension);
      LODWORD(__p) = 0;
      std::vector<float>::vector[abi:ne200100](v45, Dimension);
      NLStringEmbeddingFillWordVectors(*(a1 + 88), v12, 1, 50, v46[0], v45[0], v45[0]);
      v15 = *(a1 + 72);
      v56 = 0x100000001;
      LODWORD(v54) = 1;
      v17 = NLStringEmbeddingGetDimension(*(a1 + 88), v16);
      v55 = 0x3200000001;
      HIDWORD(v54) = v17;
      HIDWORD(__p) = 5;
      LOWORD(__p) = 256;
      CoreNLP::MontrealModel::setInputTensor(v15, &__p, v46[0], 0);
      CoreNLP::MontrealModel::predict(*(a1 + 72));
      v18 = CoreNLP::MontrealModel::output(*(a1 + 72), 0);
      v19 = CoreNLP::MontrealModel::outputSize(*(a1 + 72));
      CoreNLP::getTopNIndices(a3, v19, v18, &__p);
      v20 = __p;
      v21 = v54;
      if (__p != v54)
      {
        do
        {
          v22 = *v20;
          v23 = *v20 + 237;
          v24 = v18[*v20];
          v25 = v49;
          if (v49 >= v50)
          {
            v27 = __src;
            v28 = v49 - __src;
            v29 = (v49 - __src) >> 4;
            v30 = v29 + 1;
            if ((v29 + 1) >> 60)
            {
              std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
            }

            v31 = v50 - __src;
            if ((v50 - __src) >> 3 > v30)
            {
              v30 = v31 >> 3;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF0)
            {
              v30 = 0xFFFFFFFFFFFFFFFLL;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(&__src, v30);
            }

            v32 = (v49 - __src) >> 4;
            v33 = 16 * v29;
            *v33 = v23;
            *(v33 + 8) = v24;
            v26 = (16 * v29 + 16);
            v34 = (v33 - 16 * v32);
            memcpy(v34, v27, v28);
            v35 = __src;
            __src = v34;
            v49 = v26;
            v50 = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v49 = v23;
            *(v25 + 1) = v24;
            v26 = v25 + 16;
          }

          v49 = v26;
          if (CoreNLP::logger(void)::sOnce != -1)
          {
            CoreNLP::EmotionModel::vinference();
          }

          v36 = CoreNLP::logger(void)::sLogger;
          if (os_log_type_enabled(CoreNLP::logger(void)::sLogger, OS_LOG_TYPE_DEBUG))
          {
            v37 = v18[v22];
            *buf = 134218240;
            *&buf[4] = v22;
            *&buf[12] = 2048;
            *&buf[14] = v37;
            _os_log_debug_impl(&dword_19D184000, v36, OS_LOG_TYPE_DEBUG, "Model assigned %lu label with %.2f score", buf, 0x16u);
          }

          ++v20;
        }

        while (v20 != v21);
      }

      CoreNLP::MontrealModel::clear(*(a1 + 72));
      memset(buf, 0, sizeof(buf));
      std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(buf, __src, v49, (v49 - __src) >> 4);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(a4, buf, &v52, 1uLL);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (__p)
      {
        v54 = __p;
        operator delete(__p);
      }

      if (v45[0])
      {
        v45[1] = v45[0];
        operator delete(v45[0]);
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }

      _Block_object_dispose(v59, 8);
    }
  }

  else
  {
    v41 = CoreNLP::copyLocaleForLanguageID(*(a1 + 12));
    v46[0] = v41;
    if (CoreNLP::logger(void)::sOnce != -1)
    {
      CoreNLP::EmotionModel::CreateModel();
    }

    v42 = CoreNLP::logger(void)::sLogger;
    if (os_log_type_enabled(CoreNLP::logger(void)::sLogger, OS_LOG_TYPE_ERROR))
    {
      CoreNLP::EmotionModel::vinference([-[__CFLocale localeIdentifier](v41 "localeIdentifier")], &__p, v42);
    }

    *v59 = 0;
    v60 = 0;
    v61 = 0;
    std::vector<std::pair<int,double>>::__init_with_size[abi:ne200100]<std::pair<int,double>*,std::pair<int,double>*>(v59, __src, v49, (v49 - __src) >> 4);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<std::vector<std::pair<int,double>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,double>> const*,std::vector<std::pair<int,double>> const*>(a4, v59, v62, 1uLL);
    if (*v59)
    {
      v60 = *v59;
      operator delete(*v59);
    }

    if (v41)
    {
      CFRelease(v41);
    }
  }

  if (__src)
  {
    v49 = __src;
    operator delete(__src);
  }

  v43 = *MEMORY[0x1E69E9840];
}

void sub_19D2107B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ___ZN7CoreNLP12EmotionModel10vinferenceERKNSt3__16vectorINS2_INS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEENS6_ISA_EEEEm_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [*(*(*(a1 + 40) + 8) + 40) addObject:{objc_msgSend(*(a1 + 32), "substringWithRange:", *a2, a2[1])}];
  result = [*(*(*(a1 + 40) + 8) + 40) count];
  if (result >= 0x32)
  {
    *a3 = 1;
  }

  return result;
}

os_log_t ___ZN7CoreNLPL6loggerEv_block_invoke()
{
  result = os_log_create("com.apple.CoreNLP", "EmotionModel");
  CoreNLP::logger(void)::sLogger = result;
  return result;
}

void CoreNLP::L2Normalize(uint64_t a1)
{
  __C = 0.0;
  vDSP_dotpr(*a1, 1, *a1, 1, &__C, (*(a1 + 8) - *a1) >> 2);
  if (fabsf(__C) > 0.00000011921)
  {
    vDSP_vsdiv(*a1, 1, &__C, *a1, 1, (*(a1 + 8) - *a1) >> 2);
  }
}

void CoreNLP::Serializer::getSerialized(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4);
  operator new[]();
}

void CoreNLP::KDTree::buildForest(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  std::vector<int>::vector[abi:ne200100]<CoreNLP::NumRange<int>::iterator,0>(&v30, 0x100000000, 0, *(a1 + 64) & ~(*(a1 + 64) >> 31) | 0x100000000, 0);
  __src = 0;
  v33 = 0;
  v34 = 0;
  v8 = v30;
  v9 = v31;
  if (v30 != v31)
  {
    v10 = 0;
    v11 = (a3 + 8);
    do
    {
      v12 = *v8;
      v13 = *v11;
      if (!*v11)
      {
        goto LABEL_10;
      }

      v14 = v11;
      do
      {
        if (*(v13 + 28) >= v12)
        {
          v14 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v12));
      }

      while (v13);
      if (v14 == v11 || *(v14 + 7) > v12)
      {
LABEL_10:
        if (v10 >= v34)
        {
          v15 = __src;
          v16 = v10 - __src;
          v17 = (v10 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v19 = v34 - __src;
          if ((v34 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v20);
          }

          v21 = (v10 - __src) >> 2;
          v22 = (4 * v17);
          v23 = (4 * v17 - 4 * v21);
          *v22 = v12;
          v10 = (v22 + 1);
          memcpy(v23, v15, v16);
          v24 = __src;
          __src = v23;
          v33 = v10;
          v34 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v10 = v12;
          v10 += 4;
        }

        v33 = v10;
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v30;
  }

  if (v8)
  {
    v31 = v8;
    operator delete(v8);
  }

  std::vector<float>::resize((a1 + 40), a2);
  if (a2 <= 0)
  {
    v28 = *(a1 + 40);
  }

  else
  {
    v25 = 0;
    v26 = 4 * a2;
    do
    {
      v27 = CoreNLP::KDTree::buildTree(a1, &__src, a4);
      v28 = *(a1 + 40);
      *(v28 + v25) = v27;
      v25 += 4;
    }

    while (v26 != v25);
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v28, *(a1 + 48), (*(a1 + 48) - v28) >> 2);
  CoreNLP::KDTree::createGroupNode(a1, __p);
}

void sub_19D210E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNLP::KDTree::buildTree(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = (v5 - v4) >> 2;
  v8 = 1055531163 * a1[16];
  if (v7 > ((v8 >> 45) + (v8 >> 63)))
  {
    if (v7 > a1[20])
    {
      LODWORD(v30.__begin_) = (v5 - v4) >> 2;
      LODWORD(v29.__begin_) = a1[17];
      CoreNLP::KDTree::createNode<int &,int>();
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, v4, v5, v7);
    __src = 0;
    v35 = 0;
    v36 = 0;
    v10 = v31;
    v11 = v32;
    if (v31 != v32)
    {
      v12 = 0;
      v13 = (a3 + 8);
      do
      {
        v14 = *v10;
        v15 = *v13;
        if (!*v13)
        {
          goto LABEL_14;
        }

        v16 = v13;
        do
        {
          if (*(v15 + 28) >= v14)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * (*(v15 + 28) < v14));
        }

        while (v15);
        if (v16 == v13 || *(v16 + 7) > v14)
        {
LABEL_14:
          v16 = v13;
        }

        if (v16 == v13)
        {
          v17 = *v10;
        }

        else
        {
          v17 = -v14;
        }

        if (v12 >= v36)
        {
          v18 = __src;
          v19 = v12 - __src;
          v20 = (v12 - __src) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v22 = v36 - __src;
          if ((v36 - __src) >> 1 > v21)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v23);
          }

          v24 = (v12 - __src) >> 2;
          v25 = (4 * v20);
          v26 = (4 * v20 - 4 * v24);
          *v25 = v17;
          v12 = v25 + 1;
          memcpy(v26, v18, v19);
          v27 = __src;
          __src = v26;
          v35 = v12;
          v36 = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v12++ = v17;
        }

        v35 = v12;
        ++v10;
      }

      while (v10 != v11);
    }

    CoreNLP::KDTree::createGroupNode(a1, &__src);
  }

  return 0xFFFFFFFFLL;
}

void sub_19D211298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::KDTree::createGroupNode(uint64_t a1, void *a2)
{
  v2 = *(a1 + 68);
  v3 = (a2[1] - *a2) >> 2;
  CoreNLP::KDTree::createNode<int,int>();
}

void CoreNLP::KDTree::calculateHyperplane(void *a1, unint64_t *a2, void *a3)
{
  v6 = a2[1];
  v7 = (v6 - *a2) >> 2;
  if (v7 >= 200)
  {
    v8 = 200;
  }

  else
  {
    v8 = (v6 - *a2) >> 2;
  }

  std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(*a2, v6, (a1 + 11));
  v9 = *(*a1 + 8 * **a2);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v32, *(v9 + 16), *(v9 + 24), (*(v9 + 24) - *(v9 + 16)) >> 2);
  v10 = *(*a1 + 8 * *(*a2 + 4));
  v30 = 0;
  v31 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v10 + 16), *(v10 + 24), (*(v10 + 24) - *(v10 + 16)) >> 2);
  CoreNLP::L2Normalize(&v32);
  CoreNLP::L2Normalize(&__p);
  if (v8 <= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v8;
  }

  if (v7 >= 3)
  {
    v12 = 1;
    v13 = 2;
    v14 = 1;
    do
    {
      v15 = *(*a1 + 8 * *(*a2 + 4 * v13));
      __B[1] = 0;
      v28 = 0;
      __B[0] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__B, *(v15 + 16), *(v15 + 24), (*(v15 + 24) - *(v15 + 16)) >> 2);
      CoreNLP::L2Normalize(__B);
      __C = 0.0;
      vDSP_distancesq(v32, 1, __B[0], 1, &__C, (v33 - v32) >> 2);
      v16 = __C;
      __C = 0.0;
      vDSP_distancesq(__p, 1, __B[0], 1, &__C, (v30 - __p) >> 2);
      if ((v16 * v12) >= (__C * v14))
      {
        CoreNLP::KDTree::updateCentroid(v17, &__p, __B, v14++);
      }

      else
      {
        CoreNLP::KDTree::updateCentroid(v17, &v32, __B, v12++);
      }

      if (__B[0])
      {
        __B[1] = __B[0];
        operator delete(__B[0]);
      }

      ++v13;
    }

    while (v11 != v13);
  }

  std::vector<float>::vector[abi:ne200100](__B, (v33 - v32) >> 2);
  v18 = v32;
  if (v33 != v32)
  {
    v19 = (v33 - v32) >> 2;
    v20 = __p;
    v21 = (v30 - __p) >> 2;
    v22 = __B[0];
    if (v19 <= 1)
    {
      v19 = 1;
    }

    do
    {
      if (!v21)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = *v18++;
      v24 = v23;
      v25 = *v20++;
      *v22++ = v24 - v25;
      --v21;
      --v19;
    }

    while (v19);
  }

  v26 = a3[2];
  if (v26)
  {
    a3[3] = v26;
    operator delete(v26);
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = 0;
  }

  *(a3 + 1) = *__B;
  a3[4] = v28;
  CoreNLP::L2Normalize((a3 + 2));
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_19D211608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::KDTree::assignSplits(void *a1, std::vector<int> *this, std::vector<int> *a3, int **a4, uint64_t a5)
{
  std::vector<int>::reserve(this, (a4[1] - *a4) >> 1);
  std::vector<int>::reserve(a3, (a4[1] - *a4) >> 1);
  v11 = *a4;
  v10 = a4[1];
  if (*a4 != v10)
  {
    v12 = 0;
    v42 = a4[1];
    do
    {
      v13 = *v11;
      if (*v11 >= ((a1[1] - *a1) >> 3))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *(a5 + 16);
      v15 = *(a5 + 24);
      if (v14 != v15)
      {
        v16 = *(*(*a1 + 8 * v13) + 16);
        v17 = 0.0;
        do
        {
          v18 = *v14++;
          v19 = v18;
          v20 = *v16++;
          v17 = v17 + (v19 * v20);
        }

        while (v14 != v15);
        if (v17 < -0.00000011921)
        {
          goto LABEL_12;
        }

        if (v17 > 0.00000011921)
        {
          goto LABEL_10;
        }
      }

      if ((v12 & 1) == 0)
      {
LABEL_10:
        end = a3->__end_;
        value = a3->__end_cap_.__value_;
        if (end >= value)
        {
          begin = a3->__begin_;
          v35 = end - a3->__begin_;
          v36 = v35 >> 2;
          v37 = (v35 >> 2) + 1;
          if (v37 >> 62)
          {
LABEL_39:
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v38 = value - begin;
          if (v38 >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          v32 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
          v39 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v32)
          {
            v39 = v37;
          }

          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v39);
          }

          *(4 * v36) = v13;
          v23 = 4 * v36 + 4;
          memcpy(0, begin, v35);
          v41 = a3->__begin_;
          a3->__begin_ = 0;
          a3->__end_ = v23;
          a3->__end_cap_.__value_ = 0;
          if (v41)
          {
            operator delete(v41);
          }

          v10 = v42;
        }

        else
        {
          *end = v13;
          v23 = (end + 4);
        }

        a3->__end_ = v23;
        goto LABEL_36;
      }

LABEL_12:
      v25 = this->__end_;
      v24 = this->__end_cap_.__value_;
      if (v25 >= v24)
      {
        v27 = this->__begin_;
        v28 = v25 - this->__begin_;
        v29 = v28 >> 2;
        v30 = (v28 >> 2) + 1;
        if (v30 >> 62)
        {
          goto LABEL_39;
        }

        v31 = v24 - v27;
        if (v31 >> 1 > v30)
        {
          v30 = v31 >> 1;
        }

        v32 = v31 >= 0x7FFFFFFFFFFFFFFCLL;
        v33 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v32)
        {
          v33 = v30;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v33);
        }

        *(4 * v29) = v13;
        v26 = (4 * v29 + 4);
        memcpy(0, v27, v28);
        v40 = this->__begin_;
        this->__begin_ = 0;
        this->__end_ = v26;
        this->__end_cap_.__value_ = 0;
        if (v40)
        {
          operator delete(v40);
        }

        v10 = v42;
      }

      else
      {
        *v25 = v13;
        v26 = v25 + 1;
      }

      this->__end_ = v26;
LABEL_36:
      ++v12;
      ++v11;
    }

    while (v11 != v10);
  }
}

void CoreNLP::KDTree::updateCentroid(uint64_t a1, void *a2, void *a3, int a4)
{
  __B = a4;
  MEMORY[0x19EAF9950](*a2, 1, &__B, *a2, 1, (a2[1] - *a2) >> 2);
  MEMORY[0x19EAF9930](*a2, 1, *a3, 1, *a2, 1, (a2[1] - *a2) >> 2);
  __B = __B + 1.0;
  vDSP_vsdiv(*a2, 1, &__B, *a2, 1, (a2[1] - *a2) >> 2);
  CoreNLP::L2Normalize(a2);
}

void CoreNLP::KDTree::getPossibleNNs(uint64_t a1, float *a2, const void **a3)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = (v5 - v6) >> 2;
    __src[0] = 0;
    __src[1] = 0;
    v83 = 0;
    if (v5 != v6)
    {
      v8 = 0;
      do
      {
        v9 = *(a1 + 40);
        v10 = __src[1];
        if (__src[1] >= v83)
        {
          v12 = __src[0];
          v13 = __src[1] - __src[0];
          v14 = (__src[1] - __src[0]) >> 3;
          v15 = v14 + 1;
          if ((v14 + 1) >> 61)
          {
            std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
          }

          v16 = v83 - __src[0];
          if ((v83 - __src[0]) >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v17);
          }

          v18 = (8 * v14);
          *v18 = 2139095040;
          v18[1] = *(v9 + 4 * v8);
          v11 = (8 * v14 + 8);
          memcpy(0, v12, v13);
          v19 = __src[0];
          __src[0] = 0;
          __src[1] = v11;
          v83 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *__src[1] = 2139095040;
          v10[1] = *(v9 + 4 * v8);
          v11 = v10 + 2;
        }

        __src[1] = v11;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__src[0], v11, &v81, (v11 - __src[0]) >> 3);
        ++v8;
      }

      while (v7 != v8);
    }

    v20 = 5 * v7;
    if (v20 >= 1)
    {
      do
      {
        if ((a3[1] - *a3) >> 6 > 0x7C)
        {
          break;
        }

        v21 = __src[1];
        v22 = __src[0];
        if (__src[0] == __src[1])
        {
          goto LABEL_87;
        }

        v23 = *__src[0];
        v24 = *(__src[0] + 1);
        v25 = (__src[1] - __src[0]) >> 3;
        if (v25 >= 2)
        {
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__src[0], &v81, v25);
          if (v21 - 2 == v26)
          {
            *v26 = v23;
            *(v26 + 1) = v24;
          }

          else
          {
            *v26 = *(v21 - 2);
            v26[1] = *(v21 - 1);
            *(v21 - 2) = v23;
            *(v21 - 1) = v24;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(v22, (v26 + 2), &v81, ((v26 + 2) - v22) >> 3);
          }
        }

        v27 = __src[1];
        v28 = __src[1] - 8;
        __src[1] = __src[1] - 8;
        v29 = (v24 - *(a1 + 64));
        if (v29 >= 0)
        {
          LODWORD(v30) = *(a1 + 32);
          if (!v30)
          {
            v30 = (*(a1 + 8) - *a1) >> 3;
          }

          if (v29 < v30)
          {
            v31 = (*(a1 + 24) + *(a1 + 36) * v29);
            v32 = *v31;
            if (v32 <= *(a1 + 80))
            {
              if (v32 >= 1)
              {
                v40 = (v31 + 1);
                v41 = a3[1];
                do
                {
                  v43 = *v40++;
                  v42 = v43;
                  v44 = a3[2];
                  if (v41 >= v44)
                  {
                    v45 = *a3;
                    v46 = v41 - *a3;
                    v47 = v46 >> 2;
                    v48 = (v46 >> 2) + 1;
                    if (v48 >> 62)
                    {
                      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                    }

                    v49 = v44 - v45;
                    if (v49 >> 1 > v48)
                    {
                      v48 = v49 >> 1;
                    }

                    if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v50 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v50 = v48;
                    }

                    if (v50)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v50);
                    }

                    *(4 * v47) = v42;
                    v41 = (4 * v47 + 4);
                    memcpy(0, v45, v46);
                    v51 = *a3;
                    *a3 = 0;
                    a3[1] = v41;
                    a3[2] = 0;
                    if (v51)
                    {
                      operator delete(v51);
                    }
                  }

                  else
                  {
                    *v41 = v42;
                    v41 += 4;
                  }

                  a3[1] = v41;
                  --v32;
                }

                while (v32);
              }

              --v20;
            }

            else
            {
              v33 = *(a1 + 68);
              if (v33)
              {
                v34 = (v31 + 3);
                v35 = 0.0;
                v36 = a2;
                do
                {
                  v37 = *v34++;
                  v38 = v37;
                  v39 = *v36++;
                  v35 = v35 + (v38 * v39);
                  --v33;
                }

                while (v33);
              }

              else
              {
                v35 = 0.0;
              }

              v52 = v31[2];
              if (v28 >= v83)
              {
                v54 = __src[0];
                v55 = v28 - __src[0];
                v56 = (v28 - __src[0]) >> 3;
                v57 = v56 + 1;
                if ((v56 + 1) >> 61)
                {
                  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                }

                v58 = v83 - __src[0];
                if ((v83 - __src[0]) >> 2 > v57)
                {
                  v57 = v58 >> 2;
                }

                if (v58 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v57 = 0x1FFFFFFFFFFFFFFFLL;
                }

                if (v57)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v57);
                }

                v59 = v56;
                v60 = (8 * v56);
                if (v35 >= v23)
                {
                  v61 = v23;
                }

                else
                {
                  v61 = v35;
                }

                *v60 = v61;
                *(8 * v56 + 4) = v52;
                v27 = v60 + 2;
                v62 = &v60[-2 * v59];
                memcpy(v62, v54, v55);
                v63 = __src[0];
                __src[0] = v62;
                __src[1] = v27;
                v83 = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                if (v35 >= v23)
                {
                  v53 = v23;
                }

                else
                {
                  v53 = v35;
                }

                *(v27 - 2) = v53;
                *(v27 - 1) = v52;
              }

              __src[1] = v27;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__src[0], v27, &v81, (v27 - __src[0]) >> 3);
              v64 = -v35;
              v65 = v31[1];
              v66 = __src[1];
              if (__src[1] >= v83)
              {
                v69 = __src[0];
                v70 = __src[1] - __src[0];
                v71 = (__src[1] - __src[0]) >> 3;
                v72 = v71 + 1;
                if ((v71 + 1) >> 61)
                {
                  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                }

                v73 = v83 - __src[0];
                if ((v83 - __src[0]) >> 2 > v72)
                {
                  v72 = v73 >> 2;
                }

                if (v73 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v72 = 0x1FFFFFFFFFFFFFFFLL;
                }

                if (v72)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v72);
                }

                v74 = (__src[1] - __src[0]) >> 3;
                v75 = (8 * v71);
                if (v23 <= v64)
                {
                  v76 = v23;
                }

                else
                {
                  v76 = v64;
                }

                *v75 = v76;
                *(8 * v71 + 4) = v65;
                v68 = v75 + 2;
                v77 = &v75[-2 * v74];
                memcpy(v77, v69, v70);
                v78 = __src[0];
                __src[0] = v77;
                __src[1] = v68;
                v83 = 0;
                if (v78)
                {
                  operator delete(v78);
                }
              }

              else
              {
                if (v23 <= v64)
                {
                  v67 = v23;
                }

                else
                {
                  v67 = v64;
                }

                *__src[1] = v67;
                v66[1] = v65;
                v68 = v66 + 2;
              }

              __src[1] = v68;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(__src[0], v68, &v81, (v68 - __src[0]) >> 3);
            }
          }
        }
      }

      while (v20 > 0);
    }

    v22 = __src[0];
LABEL_87:
    if (v22)
    {
      __src[1] = v22;
      operator delete(v22);
    }
  }

  v79 = *MEMORY[0x1E69E9840];
}

void sub_19D211F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreNLP::KDTree::readDataPoint(CoreNLP::KDTree *this, const float *a2)
{
  v2 = *(this + 17);
  ++*(this + 16);
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, a2, &a2[v2], v2);
  v4 = 1;
  CoreNLP::KDTree::createNode<int,std::vector<float> &>();
}

void sub_19D211FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CoreNLP::KDTree::fillGroupNode(uint64_t a1, uint64_t a2, int **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v5 = v4 - v3;
    v6 = *v3;
    if (v5 == 4)
    {
      *(a2 + 4) = v6;
    }

    else
    {
      v7 = v3[1];
      *(a2 + 4) = v6;
      *(a2 + 8) = v7;
      v8 = a3[1] - *a3;
      if (v8 != 8)
      {
        return memcpy(*(a2 + 16), *a3 + 2, v8 - 8);
      }
    }
  }

  return result;
}

void *std::vector<int>::vector[abi:ne200100]<CoreNLP::NumRange<int>::iterator,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = HIDWORD(a4) * a5 + a4;
  v8 = a2 + HIDWORD(a2) * a3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v8 != v7)
  {
    v6 = 0;
    v9 = v7 - v8;
    do
    {
      ++v6;
      v9 -= HIDWORD(a2);
    }

    while (v9);
  }

  std::vector<int>::__init_with_size[abi:ne200100]<CoreNLP::NumRange<int>::iterator,CoreNLP::NumRange<int>::iterator>(a1, a2, a3, a4, a5, v6);
  return a1;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<CoreNLP::NumRange<int>::iterator,CoreNLP::NumRange<int>::iterator>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a6);
  }

  return result;
}

void sub_19D2124D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,int>> &,std::__wrap_iter<std::pair<float,int>*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 8 * (v4 >> 1);
  v7 = *v6;
  v8 = *(a2 - 8);
  if (*v6 >= v8)
  {
    if (v8 < v7)
    {
      return result;
    }

    v10 = *(v6 + 4);
    v9 = *(a2 - 4);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 - 4);
    v10 = *(v6 + 4);
  }

  *(a2 - 8) = v7;
  *(a2 - 4) = v10;
  if (v4 < 2)
  {
    goto LABEL_16;
  }

  v11 = result + 8 * (v4 >> 1);
  while (1)
  {
    v12 = v5 - 1;
    v5 = (v5 - 1) >> 1;
    v6 = result + 8 * v5;
    v13 = *v6;
    if (*v6 >= v8)
    {
      break;
    }

    v14 = *(v6 + 4);
LABEL_10:
    *v11 = v13;
    *(v11 + 4) = v14;
    v11 = result + 8 * v5;
    if (v12 <= 1)
    {
      goto LABEL_16;
    }
  }

  if (v8 >= v13)
  {
    v14 = *(v6 + 4);
    if (v14 < v9)
    {
      goto LABEL_10;
    }
  }

  v6 = v11;
LABEL_16:
  *v6 = v8;
  *(v6 + 4) = v9;
  return result;
}