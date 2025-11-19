void sub_1B5784320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&__p);
  std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::destroy(v27 - 112, *(v27 - 104));
  _Unwind_Resume(a1);
}

void quasar::DoNotTranslateBlock::processBody(quasar::DoNotTranslateBlock *this)
{
  Value = quasar::ProcessingInput::getValue((this + 8));
  if (*Value != Value[1])
  {
    memset(&v12[3], 0, 24);
    v3 = quasar::ProcessingInput::getValue((this + 8));
    quasar::TranslationPhraseInternal::convertTokensToString(v12, *v3);
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v4 = quasar::ProcessingInput::getValue((this + 8));
    v5 = quasar::MetaInfo::get((*v4 + 256));
    std::string::basic_string[abi:ne200100]<0>(__p, "alignment-span-info");
    quasar::PTree::getChildOptional(v5, __p);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

uint64_t quasar::DoNotTranslateBlock::inputs@<X0>(quasar::DoNotTranslateBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 8;
  v3[1] = this + 64;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

void quasar::DoNotTranslateBlock::~DoNotTranslateBlock(quasar::DoNotTranslateBlock *this)
{
  *this = &unk_1F2D2F488;
  v2 = (this + 120);
  *(this + 15) = &unk_1F2D2F538;
  v3 = (this + 96);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v3 = (this + 40);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  *this = &unk_1F2D2F488;
  v2 = (this + 120);
  *(this + 15) = &unk_1F2D2F538;
  v3 = (this + 96);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v3 = (this + 40);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  quasar::ProcessingBlock::~ProcessingBlock(v2);
  MEMORY[0x1B8C85350](this, 0x10B3C408B4D3B57);
}

void virtual thunk toquasar::DoNotTranslateBlock::~DoNotTranslateBlock(quasar::DoNotTranslateBlock *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D2F488;
  *(v1 + 15) = &unk_1F2D2F538;
  v2 = (v1 + 96);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v1[87] < 0)
  {
    operator delete(*(v1 + 8));
  }

  v2 = (v1 + 40);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v1[31] < 0)
  {
    operator delete(*(v1 + 1));
  }

  quasar::ProcessingBlock::~ProcessingBlock(v1 + 15);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2D2F488;
  *(v1 + 15) = &unk_1F2D2F538;
  v2 = (v1 + 96);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v1[87] < 0)
  {
    operator delete(*(v1 + 8));
  }

  v2 = (v1 + 40);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (v1[31] < 0)
  {
    operator delete(*(v1 + 1));
  }

  quasar::ProcessingBlock::~ProcessingBlock(v1 + 15);
  MEMORY[0x1B8C85350](v1, 0x10B3C408B4D3B57);
}

void std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::__find_equal<std::pair<int,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::__find_equal<std::pair<int,int>>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::pair<int,int>>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int> const,std::pair<int,int>>>(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::map<std::pair<int,int>,std::pair<int,int>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::pair<int,int>,std::pair<int,int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__tree_node<std::__value_type<std::pair<int,int>,std::pair<int,int>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<std::pair<int,int>,std::pair<int,int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__tree_node<std::__value_type<std::pair<int,int>,std::pair<int,int>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::pair<int,int>>>>::__emplace_hint_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int> const,std::pair<int,int>> const&>(v5, (v5 + 8), v4 + 7);
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

uint64_t std::__tree<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::pair<int,int>>>>::__emplace_hint_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int> const,std::pair<int,int>> const&>(uint64_t **a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::pair<int,int>>>>::__find_equal<std::pair<int,int>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::pair<int,int>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::pair<int,int>>>>::__find_equal<std::pair<int,int>>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = *(a2 + 7);
  if (*a5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v13 = *a4 == v17;
        v17 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v18 = *(a4 + 7);
      if (v5 >= v18 && (v18 < v5 || a5[1] >= *(a4 + 8)))
      {
        return std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(a1, a3, a5);
      }
    }

    if (v10)
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

  v15 = a5[1];
  v16 = *(a2 + 8);
  if (v15 >= v16)
  {
    if (v16 >= v15)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = *(v9 + 7);
    if (v14 >= *a5 && (*a5 < v14 || *(v9 + 8) >= a5[1]))
    {
      return std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__find_equal<std::pair<int,int>>(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

double quasar::ResultStreamStabilizer::ResultStreamStabilizer(void *a1, void *a2, int a3, int a4, int a5, char a6, char a7, void *a8)
{
  v15 = quasar::RecogResultStreamBase::RecogResultStreamBase(a1);
  *v15 = &unk_1F2D2F6F8;
  v16 = a2[1];
  v15[3] = *a2;
  v15[4] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(v15 + 10) = a5;
  *(v15 + 44) = a7;
  v17 = a8[1];
  v15[6] = *a8;
  v15[7] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(v15 + 64) = a6 ^ 1 | a7;
  *(v15 + 18) = a3;
  *(v15 + 19) = a4;
  result = 0.0;
  *(v15 + 5) = 0u;
  *(v15 + 6) = 0u;
  *(v15 + 7) = 0u;
  *(v15 + 8) = 0u;
  *(v15 + 9) = 0u;
  *(v15 + 10) = 0u;
  *(v15 + 11) = 0u;
  *(v15 + 12) = 0u;
  *(v15 + 13) = 0u;
  *(v15 + 14) = 0u;
  *(v15 + 15) = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 17) = 0u;
  *(v15 + 18) = 0u;
  *(v15 + 19) = 0u;
  *(v15 + 20) = 0u;
  *(v15 + 21) = 0u;
  *(v15 + 22) = 0u;
  *(v15 + 23) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 25) = 0u;
  *(v15 + 26) = 0u;
  *(v15 + 27) = 0u;
  *(v15 + 224) = 0;
  *(v15 + 252) = 0;
  *(v15 + 59) = 0u;
  *(v15 + 61) = 0u;
  *(v15 + 57) = 0u;
  return result;
}

void quasar::ResultStreamStabilizer::setUpLogging(quasar::ResultStreamStabilizer *this)
{
  memset(v1, 0, sizeof(v1));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "This class is internal to Quasar, and this function is never called");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v1);
}

void quasar::ResultStreamStabilizer::prepareForNextUtterance(quasar::ResultStreamStabilizer *this)
{
  quasar::ResultStabilityHelper::reset((this + 72));
  std::vector<std::string>::clear[abi:ne200100](this + 22);
  if (*(this + 44) == 1)
  {
    v2 = *(this + 41);
    v3 = *(this + 42);
    if (v2 != v3)
    {
      v4 = *(this + 14);
      v5 = *(this + 344);
      v6 = *(this + 360);
      v7 = *(this + 15);
      *(this + 328) = *(this + 13);
      *(this + 344) = v4;
      *(this + 14) = v5;
      *(this + 15) = v6;
      v8 = *(this + 16);
      *(this + 16) = *(this + 376);
      *(this + 26) = v2;
      *(this + 27) = v3;
      *(this + 360) = v7;
      *(this + 376) = v8;
      v9 = *(this + 34);
      *(this + 34) = *(this + 49);
      *(this + 49) = v9;
      quasar::getTopChoice((this + 208), &v15);
      std::vector<std::string>::__vdeallocate((this + 280));
      *(this + 280) = v15;
      *(this + 37) = v16;
      v16 = 0;
      v15 = 0uLL;
      v17 = &v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
      quasar::formatResultTokensSimple(*(this + 26), 0);
      if (*(this + 327) < 0)
      {
        operator delete(*(this + 38));
      }

      *(this + 19) = v15;
      *(this + 40) = v16;
    }
  }

  v10 = *(this + 41);
  v11 = *(this + 42);
  while (v11 != v10)
  {
    v11 -= 24;
    *&v15 = v11;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  *(this + 42) = v10;
  *(this + 45) = *(this + 44);
  v13 = *(this + 47);
  v12 = *(this + 48);
  if (v12 != v13)
  {
    do
    {
      v14 = v12 - 24;
      std::__tree<std::string>::destroy(v12 - 24, *(v12 - 16));
      v12 = v14;
    }

    while (v14 != v13);
  }

  *(this + 48) = v13;
  std::vector<std::string>::clear[abi:ne200100](this + 50);
  std::vector<std::string>::clear[abi:ne200100](this + 53);
  if ((*(this + 449) & 1) == 0 && *(this + 448) == 1)
  {
    *(this + 449) = 1;
  }

  *(this + 448) = 0;
}

void quasar::ResultStabilityHelper::reset(quasar::ResultStabilityHelper *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v3 == v2)
  {
    v4 = (this + 48);
    v3 = *(this + 2);
  }

  else
  {
    v4 = (this + 48);
    v5 = *(this + 5);
    v6 = &v2[v5 / 0xAA];
    v7 = (*v6 + 24 * (v5 % 0xAA));
    v8 = v2[(*(this + 6) + v5) / 0xAA] + 24 * ((*(this + 6) + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        v15 = v7;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
        v7 += 3;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(this + 2);
      v3 = *(this + 3);
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = *(this + 3);
      v2 = (*(this + 2) + 8);
      *(this + 2) = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 85;
    goto LABEL_14;
  }

  if (v10 == 2)
  {
    v12 = 170;
LABEL_14:
    *(this + 5) = v12;
  }

  v14 = *(this + 7);
    ;
  }

  *(this + 8) = v14;
  std::vector<std::string>::clear[abi:ne200100](this + 10);
}

void quasar::ResultStreamStabilizer::writePartial(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12)
{
  v14 = a6;
  v15 = a5;
  if (a5)
  {
    if (a6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = *(a1 + 200);
    if (a6)
    {
      goto LABEL_8;
    }
  }

  if (v15 == *(a1 + 200))
  {
    v14 = *(a1 + 204);
  }

  else
  {
    v14 = 0;
  }

LABEL_8:
  *(a1 + 200) = v15;
  *(a1 + 204) = v14;
  v47[0] = 0;
  quasar::ResultStabilityHelper::computedBestResults((a1 + 72), a2, v47, &v45);
  v19 = quasar::ResultStabilityHelper::stabilityChanged(a1 + 72, &v45);
  v20 = a10;
  if (a10)
  {
    if (((*(**(a1 + 24) + 136))(*(a1 + 24)) & a11) != 1 || v45 == v46)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a1 + 504) ^ 1;
    }
  }

  if ((v19 | v20))
  {
    memset(&v44, 0, sizeof(v44));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v44, *(a1 + 280), *(a1 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 288) - *(a1 + 280)) >> 3));
    std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v44, v44.__end_, v45, v46, 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3));
    quasar::Token::tokenNamesWithCleanedMetadata(&v44.__begin_, v43);
    HIBYTE(v33) = v19 ^ 1;
    LOBYTE(v33) = a10;
    (*(**(a1 + 24) + 24))(*(a1 + 24), v43, a3, 1, v15, v14, a7, a8, a9, v33, a12);
    if (*(a1 + 64) == 1 && v44.__begin_ != v44.__end_ && v15 >= 1)
    {
      v36 = " ";
      v37 = 1;
      quasar::join<std::vector<std::string>>(&v44, &v36);
      *__p = *v38;
      v41 = v39;
      v38[1] = 0;
      v39 = 0;
      v38[0] = 0;
      v42 = v15;
      std::vector<std::pair<std::string,int>>::push_back[abi:ne200100](a1 + 456, __p);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }
    }

    *(a1 + 504) = v19 ^ 1;
    __p[0] = v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v21 = v14;
  v22 = a3;
  v34 = a8;
  v23 = *(a1 + 176);
  v35 = a2;
  v26 = a2;
  v24 = *a2;
  v25 = v26[1];
  if (v25 - v24 == *(a1 + 184) - v23)
  {
    if (v24 == v25)
    {
      v27 = 1;
    }

    else
    {
      do
      {
        v27 = std::equal_to<std::string>::operator()[abi:ne200100](__p, v24, v23);
        if (!v27)
        {
          break;
        }

        v24 += 3;
        v23 += 3;
      }

      while (v24 != v25);
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v22;
  if (a10)
  {
    v29 = v21;
    v30 = a9;
    if (((*(**(a1 + 24) + 136))(*(a1 + 24)) & a11) != 1 || v45 == v46)
    {
      v31 = 1;
    }

    else
    {
      v31 = *(a1 + 505);
    }
  }

  else
  {
    v31 = 1;
    v29 = v21;
    v30 = a9;
  }

  if ((v27 & v31 & 1) == 0)
  {
    memset(&v44, 0, sizeof(v44));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v44, *(a1 + 280), *(a1 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 288) - *(a1 + 280)) >> 3));
    std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v44, v44.__end_, *v35, v35[1], 0xAAAAAAAAAAAAAAABLL * ((v35[1] - *v35) >> 3));
    quasar::Token::tokenNamesWithCleanedMetadata(&v44.__begin_, v43);
    BYTE1(v32) = v27;
    LOBYTE(v32) = a10;
    (*(**(a1 + 24) + 24))(*(a1 + 24), v43, v28, 0, v15, v29, a7, v34, v30, v32, a12);
    if ((a1 + 176) != v35)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 176), *v35, v35[1], 0xAAAAAAAAAAAAAAABLL * ((v35[1] - *v35) >> 3));
    }

    if (*(a1 + 64) == 1 && v44.__begin_ != v44.__end_ && v15 >= 1)
    {
      v36 = " ";
      v37 = 1;
      quasar::join<std::vector<std::string>>(&v44, &v36);
      *__p = *v38;
      v41 = v39;
      v38[1] = 0;
      v39 = 0;
      v38[0] = 0;
      v42 = v15;
      std::vector<std::pair<std::string,int>>::push_back[abi:ne200100](a1 + 480, __p);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }
    }

    *(a1 + 505) = v27;
    __p[0] = v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  __p[0] = &v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5786350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  __p = &a34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v34 - 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v34 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::ResultStabilityHelper::computedBestResults(unsigned int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 6) > *a1)
  {
    v7 = (*(*(a1 + 2) + 8 * (*(a1 + 5) / 0xAAuLL)) + 24 * (*(a1 + 5) % 0xAAuLL));
    v8 = *v7;
    if (v7[1] != *v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 7);
        v13 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v12 + v9), (v8 + v10));
        if (v13)
        {
          v14 = *(v13 + 10);
          v15 = v14 != 0;
          v16 = v14 - 1;
          if (v16 != 0 && v15)
          {
            *(v13 + 10) = v16;
          }

          else
          {
            std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::erase((v12 + v9), v13);
          }
        }

        ++v11;
        v8 = *v7;
        v10 += 24;
        v9 += 40;
      }

      while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3));
    }

    std::deque<std::vector<std::string>>::pop_front((a1 + 2));
  }

  std::deque<std::vector<std::string>>::push_back(a1 + 1, a2);
  v18 = *a2;
  v17 = a2[1];
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a2) >> 3);
  v20 = (a1 + 14);
  v59 = a3;
  if (v19 > 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *(a1 + 7)) >> 3))
  {
    std::vector<std::unordered_map<std::string,unsigned int>>::resize(a1 + 7, v19);
    v18 = *a2;
    v17 = a2[1];
  }

  if (v17 != v18)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = (v18 + v22);
      v25 = *v20;
      v26 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((*v20 + v21), (v18 + v22));
      if (v26)
      {
        ++*(v26 + 10);
      }

      else
      {
        if (*(v24 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v61, *(v18 + v22), *(v18 + v22 + 8));
        }

        else
        {
          v27 = *v24;
          v61.__r_.__value_.__r.__words[2] = *(v24 + 2);
          *&v61.__r_.__value_.__l.__data_ = v27;
        }

        v62 = 1;
        std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>((v25 + v21), &v61.__r_.__value_.__l.__data_);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }

      ++v23;
      v18 = *a2;
      v22 += 24;
      v21 += 40;
    }

    while (v23 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v28 = v59;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v30 = *(a1 + 7);
  v29 = *(a1 + 8);
  if (v29 == v30)
  {
    goto LABEL_81;
  }

  v31 = 0;
  do
  {
    v32 = v30 + 40 * v31;
    if (!*(v32 + 24))
    {
      goto LABEL_57;
    }

    memset(&v61, 0, sizeof(v61));
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = 0;
      do
      {
        v35 = *(v33 + 10);
        if (v34 < v35)
        {
          std::string::operator=(&v61, (v33 + 2));
          v34 = v35;
        }

        v33 = *v33;
      }

      while (v33);
    }

    else
    {
      v34 = 0;
    }

    if (v34 >= a1[1])
    {
LABEL_54:
      std::vector<std::string>::push_back[abi:ne200100](a4, &v61);
      v45 = 1;
      if ((*(&v61.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    v36 = *(a1 + 10);
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    v38 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    if (v31 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 11) - v36) >> 3))
    {
      v39 = (v36 + 24 * v31);
      v40 = *(v39 + 23);
      if (v40 >= 0)
      {
        v41 = *(v39 + 23);
      }

      else
      {
        v41 = v39[1];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v61.__r_.__value_.__l.__size_;
      }

      if (v41 == size)
      {
        if (v40 >= 0)
        {
          v42 = v39;
        }

        else
        {
          v42 = *v39;
        }

        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v61;
        }

        else
        {
          v43 = v61.__r_.__value_.__r.__words[0];
        }

        if (!memcmp(v42, v43, v41) || v41 != 0)
        {
          goto LABEL_54;
        }
      }

      else if (v41)
      {
        goto LABEL_54;
      }
    }

    v45 = 0;
    if ((v38 & 0x80) == 0)
    {
      goto LABEL_56;
    }

LABEL_55:
    operator delete(v61.__r_.__value_.__l.__data_);
LABEL_56:
    v30 = *(a1 + 7);
    v29 = *(a1 + 8);
    if (!v45)
    {
      break;
    }

LABEL_57:
    ++v31;
  }

  while (v31 < 0xCCCCCCCCCCCCCCCDLL * ((v29 - v30) >> 3));
  v28 = v59;
  *v59 = 0;
  if (v29 != v30)
  {
    v47 = *a4;
    v46 = a4[1];
    v48 = v46 - *a4;
    v49 = *a2;
    if (v48 == a2[1] - *a2 && v46 != v47)
    {
      v51 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3);
      if (v51 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v51;
      }

      while (1)
      {
        v53 = *(v47 + 23);
        if (v53 >= 0)
        {
          v54 = *(v47 + 23);
        }

        else
        {
          v54 = *(v47 + 8);
        }

        v55 = *(v49 + 23);
        v56 = v55;
        if ((v55 & 0x80u) != 0)
        {
          v55 = *(v49 + 8);
        }

        if (v54 != v55)
        {
          break;
        }

        v57 = v53 >= 0 ? v47 : *v47;
        v58 = v56 >= 0 ? v49 : *v49;
        if (memcmp(v57, v58, v54))
        {
          break;
        }

        *v59 = 1;
        v47 += 24;
        v49 += 24;
        if (!--v52)
        {
          return;
        }
      }

LABEL_81:
      *v28 = 0;
    }
  }
}

void sub_1B5786824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::ResultStabilityHelper::stabilityChanged(uint64_t a1, std::string **a2)
{
  v4 = *(a1 + 80);
  v3 = (a1 + 80);
  v5 = *a2;
  v6 = a2[1];
  if (v6 - *a2 == *(a1 + 88) - v4)
  {
    while (v5 != v6)
    {
      if (!std::equal_to<std::string>::operator()[abi:ne200100](&v8, &v5->__r_.__value_.__l.__data_, v4))
      {
        goto LABEL_5;
      }

      ++v5;
      v4 += 3;
    }

    return 0;
  }

  else
  {
LABEL_5:
    if (v3 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    }

    return 1;
  }
}

uint64_t std::vector<std::pair<std::string,int>>::push_back[abi:ne200100](uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(result, v11);
    }

    v12 = 32 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = *(a2 + 6);
    v7 = 32 * v8 + 32;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 6);
    v7 = v4 + 32;
  }

  v3[1] = v7;
  return result;
}

void quasar::ResultStreamStabilizer::writePartialFormatted()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This class is internal to Quasar, and this function is never called");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void quasar::ResultStreamStabilizer::writeFinalChoices(uint64_t a1, quasar::PTree *this, uint64_t a3)
{
  if (*(this + 45))
  {
    v6 = 1;
  }

  else
  {
    v6 = quasar::gLogLevel < 2;
  }

  if (!v6)
  {
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "recogResult.params is null. Should NEVER happen", 47);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v79);
  }

  *(a1 + 448) = a3 == 1;
  String = quasar::PTree::getString(this);
  quasar::getTopChoice(String, &v100);
  p_data = &v100->__r_.__value_.__l.__data_;
  v8 = v101;
  v10 = *(a1 + 400);
  if (v101 - v100 == *(a1 + 408) - v10)
  {
    if (v100 == v101)
    {
      v11 = 1;
    }

    else
    {
      do
      {
        v11 = std::equal_to<std::string>::operator()[abi:ne200100](&v79, p_data, v10);
        if (!v11)
        {
          break;
        }

        p_data += 3;
        v10 += 3;
      }

      while (p_data != v8);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 568) == 1 && (a1 + 424) != &v100)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 424), v100, v101, 0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3));
  }

  if (*(*(this + 45) + 625) == 1)
  {
    v13 = &v100->__r_.__value_.__l.__data_;
    v12 = v101;
    v14 = *(a1 + 424);
    if (v101 - v100 == *(a1 + 432) - v14)
    {
      while (v13 != v12)
      {
        if (!std::equal_to<std::string>::operator()[abi:ne200100](&v79, v13, v14))
        {
          goto LABEL_21;
        }

        v13 += 3;
        v14 += 3;
      }

      v15 = this + 396;
LABEL_28:
      if ((a1 + 400) != &v100)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 400), v100, v101, 0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3));
      }

      v16 = (a1 + 64);
      goto LABEL_31;
    }
  }

LABEL_21:
  if (v11 && (*(this + 396) & 1) == 0)
  {
    goto LABEL_99;
  }

  v15 = this + 396;
  if (!v11)
  {
    goto LABEL_28;
  }

  v16 = (a1 + 64);
  if (*(a1 + 64) != 1)
  {
LABEL_31:
    v17 = quasar::PTree::getString(this);
    v58 = 0uLL;
    *&v59 = 0;
    v18 = std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v58, *v17, v17[1], 0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 3));
    quasar::ResultStreamStabilizer::limitTokenTimestamp(v18, &v58, *(this + 98));
    if (*(a1 + 44) == 1)
    {
      std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 328, *(a1 + 208), *(a1 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 216) - *(a1 + 208)) >> 3));
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 352), *(a1 + 232), *(a1 + 240), (*(a1 + 240) - *(a1 + 232)) >> 3);
      BitmapRegion = quasar::GeoRegion::getBitmapRegion(this);
      quasar::concatNbest((a1 + 328), (a1 + 352), &v58, BitmapRegion, *(this + 97), *(a1 + 40), v20);
      v21 = *(this + 45);
      if (!v21)
      {
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "recogResult.params is null. Should NEVER happen", 47);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v79);
      }

      quasar::MuxHelper::finalizeResult(*(a1 + 48), (v21 + 344), a1 + 328, (a1 + 352), (a1 + 376));
    }

    else
    {
      if ((a1 + 328) != &v58)
      {
        std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 328, v58, *(&v58 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v58 + 1) - v58) >> 3));
      }

      v22 = quasar::GeoRegion::getBitmapRegion(this);
      if ((a1 + 352) != v22)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 352), *v22, v22[1], (v22[1] - *v22) >> 3);
      }

      DestToks = quasar::Align::getDestToks(this);
      if (a1 + 376 != DestToks)
      {
        std::vector<std::set<std::string>>::__assign_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(a1 + 376, *DestToks, *(DestToks + 8), 0xAAAAAAAAAAAAAAABLL * ((*(DestToks + 8) - *DestToks) >> 3));
      }
    }

    *&v79 = &v58;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v79);
    goto LABEL_41;
  }

  if (*(a1 + 328) == *(a1 + 336))
  {
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 328, *(a1 + 208), *(a1 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 216) - *(a1 + 208)) >> 3));
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 352), *(a1 + 232), *(a1 + 240), (*(a1 + 240) - *(a1 + 232)) >> 3);
    std::vector<std::set<std::string>>::__assign_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(a1 + 376, *(a1 + 256), *(a1 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 264) - *(a1 + 256)) >> 3));
  }

LABEL_41:
  if ((*v15 & 1) != 0 || (v24 = quasar::PTree::getString(this), *v24 != v24[1]) && (v25 = quasar::PTree::getString(this), **v25 != *(*v25 + 8)))
  {
    if (*v16 == 1)
    {
      quasar::extendEndTime(a1 + 328, *(this + 98) + *(this + 97));
    }

    if (*v15 == 1 && !a3 && (*(a1 + 449) & 1) != 0)
    {
      if (quasar::gLogLevel >= 3)
      {
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "Decoding for only the last utterance failed. Updating recogStatus to success", 76);
        quasar::QuasarProdInfoMessage::~QuasarProdInfoMessage(&v79);
      }

      a3 = 1;
    }

    quasar::RecogResult::RecogResult(&v79, this);
    v26 = quasar::Token::resetSpacing((a1 + 328));
    quasar::Token::tokensWithCleanedMetadata(v26, v78);
    v27 = quasar::RecogResult::setResultChoices(&v79, v78);
    v28 = quasar::RecogResult::setResultCosts(v27, (a1 + 352));
    quasar::RecogResult::setResultMuxIds(v28, a1 + 376);
    if (quasar::gLogLevel >= 5)
    {
      v29 = quasar::PTree::getString(&v79);
      v57 = quasar::Align::getDestToks(&v79);
      if (quasar::gLogLevel >= 5)
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v58);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "Quasar PreITN Result. isFinal=", 30);
        v31 = MEMORY[0x1B8C84BD0](v30, v97);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " utteranceStartMillis=", 22);
        MEMORY[0x1B8C84C10](v32, *(this + 97));
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v58);
      }

      v33 = -1431655765 * ((*(v29 + 8) - *v29) >> 3);
      if (v33)
      {
        quasar::tokens2Str(*v29, &v77);
        if (quasar::gLogLevel >= 5)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v58);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "PreITN 1-Best: ", 15);
          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &v77;
          }

          else
          {
            v35 = v77.__r_.__value_.__r.__words[0];
          }

          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v77.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, size);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v58);
        }

        v55 = a1;
        if (v33 >= 1)
        {
          v37 = 0;
          v56 = v33 & 0x7FFFFFFF;
          do
          {
            v38 = *v57;
            if (*(v29 + 8) - *v29 == v57[1] - *v57)
            {
              *&v58 = ",";
              *(&v58 + 1) = 1;
              quasar::join<std::set<std::string>>((v38 + 24 * v37), &v58);
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "");
            }

            if (quasar::gLogLevel >= 5)
            {
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v58 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v58);
              v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "PreITN Choice: ", 15);
              v40 = MEMORY[0x1B8C84C00](v39, v37);
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " muxIds: ", 9);
              if ((v76 & 0x80u) == 0)
              {
                v42 = __p;
              }

              else
              {
                v42 = __p[0];
              }

              if ((v76 & 0x80u) == 0)
              {
                v43 = v76;
              }

              else
              {
                v43 = __p[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v58);
            }

            v44 = (*v29 + 24 * v37);
            v46 = *v44;
            v45 = v44[1];
            if (v45 != *v44)
            {
              v47 = 0;
              v48 = 0;
              v49 = quasar::gLogLevel;
              do
              {
                if (v49 >= 5)
                {
                  v73 = 0u;
                  v74 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v65 = 0u;
                  v66 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v58 = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v58);
                  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "PreITN Token[", 13);
                  v51 = MEMORY[0x1B8C84C00](v50, v37);
                  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "][", 2);
                  v53 = MEMORY[0x1B8C84C00](v52, v48);
                  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "]: ", 3);
                  quasar::operator<<(v54, *v44 + v47);
                  quasar::QuasarDebugMessage::~QuasarDebugMessage(&v58);
                  v49 = quasar::gLogLevel;
                  v46 = *v44;
                  v45 = v44[1];
                }

                ++v48;
                v47 += 224;
              }

              while (0x6DB6DB6DB6DB6DB7 * ((v45 - v46) >> 5) > v48);
            }

            if (v76 < 0)
            {
              operator delete(__p[0]);
            }

            ++v37;
          }

          while (v37 != v56);
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        a1 = v55;
        a3 = a3;
      }
    }

    if (*(v96 + 625) == 1 && (v99 & 1) == 0 && (v98 & 1) == 0 && (v97 & 1) == 0 && !std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(&v100, a1 + 424))
    {
      if (quasar::gLogLevel >= 5)
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "Generating a missing voiceCommandCandidatePackage that the decoder did not generate", 83);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v58);
      }

      quasar::RecogResult::RecogResult(&v58, &v79);
      quasar::RecogResult::setIsVoiceCommandCandidatePackage(&v58, 1);
      if ((a1 + 424) != &v100)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 424), v100, v101, 0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3));
      }

      (*(**(a1 + 24) + 40))(*(a1 + 24), &v58, a3);
      quasar::RecogResult::~RecogResult(&v58);
    }

    (*(**(a1 + 24) + 40))(*(a1 + 24), &v79, a3);
    *&v58 = v78;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v58);
    quasar::RecogResult::~RecogResult(&v79);
  }

LABEL_99:
  *&v79 = &v100;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v79);
}

void sub_1B57874DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  JUMPOUT(0x1B578758CLL);
}

void sub_1B578753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &STACK[0x2D8];
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a13);
  quasar::RecogResult::~RecogResult(&STACK[0x2F0]);
  STACK[0x2F0] = v13 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void sub_1B5787544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  a13 = &STACK[0x2D8];
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a13);
  quasar::RecogResult::~RecogResult(&STACK[0x2F0]);
  STACK[0x2F0] = v13 - 112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void *quasar::ResultStreamStabilizer::limitTokenTimestamp(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  if (a3)
  {
    v12 = 0;
    result = quasar::Align::MakeMonotonic(a2, &v12 + 1, &v12);
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      v8 = vdup_n_s32(a3);
      do
      {
        v9 = *v6;
        v10 = v6[1];
        while (v9 != v10)
        {
          *(v9 + 28) = vmin_u32(*(v9 + 28), v8);
          v11 = *(v9 + 36);
          if (v11 >= a3)
          {
            v11 = a3;
          }

          *(v9 + 36) = v11;
          v9 += 224;
        }

        v6 += 3;
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t quasar::join<std::set<std::string>>(void *a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::set<std::string>>(&v7, a1, a2);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B57877F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::ResultStreamStabilizer::writeFinalWithFormattedResultChoices()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This class is internal to Quasar, and this function is never called");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

uint64_t quasar::ResultStreamStabilizer::getPartialResultsInfo@<X0>(quasar::ResultStreamStabilizer *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = 480;
  if (a2)
  {
    v3 = 456;
  }

  v4 = 488;
  if (a2)
  {
    v4 = 464;
  }

  return std::vector<std::pair<std::string,int>>::__init_with_size[abi:ne200100]<std::pair<std::string,int>*,std::pair<std::string,int>*>(a3, *(this + v3), *(this + v4), (*(this + v4) - *(this + v3)) >> 5);
}

uint64_t std::deque<std::vector<std::string>>::pop_front(int64x2_t *a1)
{
  v3 = (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0xAAuLL)) + 24 * (a1[2].i64[0] % 0xAAuLL));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);
  return std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<std::string>>::push_back(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::vector<std::string>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  ++a1[5];
  return result;
}

uint64_t std::vector<std::unordered_map<std::string,unsigned int>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_map<std::string,unsigned int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

void quasar::ResultStreamStabilizer::~ResultStreamStabilizer(quasar::ResultStreamStabilizer *this)
{
  quasar::ResultStreamStabilizer::~ResultStreamStabilizer(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D2F6F8;
  v6 = (this + 480);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 456);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 424);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 400);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 376);
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 45) = v2;
    operator delete(v2);
  }

  v6 = (this + 328);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  v6 = (this + 280);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 256);
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v6 = (this + 208);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 128);
  std::vector<std::unordered_map<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::deque<std::vector<std::string>>::~deque[abi:ne200100](this + 10);
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
}

uint64_t std::deque<std::vector<std::string>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = (*v6 + 24 * (v5 % 0xAA));
    v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        v14 = v7;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
        v7 += 3;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 170;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void std::vector<std::set<std::string>>::__assign_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(uint64_t a1, uint64_t a2, const void ***a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::set<std::string>>::__vdeallocate(a1);
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

      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v16 = (a2 + 8);
      do
      {
        if (v6 != v8)
        {
          std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v8, *v6, v16);
        }

        v6 += 3;
        v8 += 3;
        v16 += 3;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    for (; v11 != v8; v11 -= 24)
    {
      std::__tree<std::string>::destroy((v11 - 24), *(v11 - 2));
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = (a2 + 8);
      v14 = v12;
      v15 = a2;
      do
      {
        if (v15 != v8)
        {
          std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v8, *v15, v13);
        }

        v15 += 3;
        v8 += 3;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*,std::set<std::string>*,std::set<std::string>*>(a1, (v6 + v12), a3, v11);
  }
}

uint64_t std::vector<std::pair<std::string,int>>::__init_with_size[abi:ne200100]<std::pair<std::string,int>*,std::pair<std::string,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B57880E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*,std::pair<std::string,int>*,std::pair<std::string,int>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,int>>,std::pair<std::string,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::deque<std::vector<std::string>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B5788394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::unordered_map<std::string,unsigned int>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>>(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<std::string,unsigned long>>,std::unordered_map<std::string,unsigned long>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<std::unordered_map<std::string,unsigned long>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B5788548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unordered_map<std::string,unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B57888EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v15 = *v12;
  if (*v12)
  {
    *(v11 + 24) = v15;
    operator delete(v15);
  }

  _Block_object_dispose(va, 8);
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer((v13 + 48));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

void __Block_byref_object_dispose__14(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;

    operator delete(v3);
  }
}

void quasar::getPronunciationsFromOrthography(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  quasar::getPronunciationsFromOrthography(a1, a2, a3, a4, 0, v12);
  a5[2] = 0;
  a5[1] = 0;
  *a5 = a5 + 1;
  quasar::Bitmap::~Bitmap(v12);
  v7 = v6 + 1;
  v8 = *v6;
  if (*v6 != (v6 + 1))
  {
    do
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a5, v8 + 5);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v7);
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v12, v13);
}

void sub_1B5788FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  std::__tree<std::string>::destroy(v11, *(v11 + 8));
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

void quasar::getPronunciationsFromOrthography(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, quasar::LmeDataFactoryBase::PronSet *a6@<X8>)
{
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  quasar::TextSanitizer::sanitize(a2, a1);
  if (quasar::gLogLevel >= 4)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Sanitization returned empty string", 34);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v30);
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v11 = (*(*a3 + 16))(a3, v46, &v27);
  v12 = v27;
  v13 = v28;
  if (v27 == v28)
  {
    if (quasar::gLogLevel >= 4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(v30, 0, sizeof(v30));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Tokenizer returned empty tokens", 31);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v30);
    }

    quasar::LmeDataFactoryBase::PronSet::PronSet(a6);
  }

  else
  {
    do
    {
      v14 = *v12;
      v15 = v12[1];
      while (v14 != v15)
      {
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v30, *v14, *(v14 + 1));
        }

        else
        {
          v16 = *v14;
          *&v30[16] = *(v14 + 2);
          *v30 = v16;
        }

        v17 = quasar::QsrText::SingletonInstance(v11);
        v11 = quasar::QsrText::encodeTokenQsrTextWithMetadata(v17, v30, v14);
        if ((v30[23] & 0x80000000) != 0)
        {
          operator delete(*v30);
        }

        v14 += 2;
      }

      v12 += 4;
    }

    while (v12 != v13);
    quasar::PronGuessStats::PronGuessStats(v25);
    quasar::G2P::getProns(a4, &v27, v25, a5, v24);
    quasar::LmeDataFactoryBase::PronSet::PronSet(a6);
    quasar::LmeDataFactoryBase::PronSet::insert(a6, v24);
    v18 = quasar::LmeDataFactoryBase::PronSet::empty(a6);
    if (quasar::gLogLevel > 3 && v18)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(v30, 0, sizeof(v30));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Pronguesser returned empty prons for orthography ", 49);
      v21 = *(a1 + 23);
      if (v21 >= 0)
      {
        v22 = a1;
      }

      else
      {
        v22 = *a1;
      }

      if (v21 >= 0)
      {
        v23 = *(a1 + 23);
      }

      else
      {
        v23 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v30);
    }

    *v30 = v24;
    std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v30);
    std::__tree<std::string>::destroy(v26, v26[1]);
  }

  *v30 = &v27;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](v30);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }
}

void sub_1B57892E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  __p = &a22;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
  }

  _Unwind_Resume(a1);
}

void quasar::writeUserDataToJsonFile(uint64_t a1, void *a2)
{
  quasar::userDataToPtree(a2, a1, 0, v5);
  quasar::PTree::PTree(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "profile");
  quasar::PTree::putChild(v4, __p, v5, 1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::PTree::writeJsonToFile();
}

void sub_1B5789454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  quasar::PTree::~PTree(&a16);
  quasar::PTree::~PTree((v16 - 80));
  _Unwind_Resume(a1);
}

quasar::LmeConfig *quasar::LmeConfig::LmeConfig(quasar::LmeConfig *this, const quasar::SystemConfig *a2)
{
  *this = 0x1400000032;
  *(this + 2) = 2;
  __p[0] = quasar::SystemConfig::getConfigFileVersion(a2);
  quasar::result_handler::Range::Range(&v6, 218, 0);
  if (quasar::SystemConfig::Version::operator>=(__p, &v6))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "lme-create");
    quasar::SystemConfig::getPtreeOptional(a2, __p);
  }

  return this;
}

void quasar::LmeDataFactory::LmeDataFactory(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = quasar::LmeDataFactoryBase::LmeDataFactoryBase(a1);
  *v1 = &unk_1F2D2F7B0;
  *(v1 + 2) = 0;
  v1[2] = 0;
  v1[3] = 0;
  operator new();
}

void sub_1B57899D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = v17[11];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  fst::SymbolTable::~SymbolTable((v17 + 6));
  v19 = v17[5];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = v17[3];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  quasar::Bitmap::~Bitmap(v17);
  _Unwind_Resume(a1);
}

void quasar::LmeDataFactory::~LmeDataFactory(quasar::LmeDataFactory *this)
{
  *this = &unk_1F2D2F7B0;
  std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(this + 2760, *(this + 346));
  std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::destroy(this + 2736, *(this + 343));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 2712, *(this + 340));
  if (*(this + 2703) < 0)
  {
    operator delete(*(this + 335));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 2624);
  v5 = (this + 2600);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 2576);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 2552);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2512);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2472);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2432);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2392);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2352);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2312);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2272);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 2232);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 2208, *(this + 277));
  if (*(this + 2191) < 0)
  {
    operator delete(*(this + 271));
  }

  if (*(this + 2167) < 0)
  {
    operator delete(*(this + 268));
  }

  if (*(this + 2143) < 0)
  {
    operator delete(*(this + 265));
  }

  if (*(this + 2119) < 0)
  {
    operator delete(*(this + 262));
  }

  if (*(this + 2095) < 0)
  {
    operator delete(*(this + 259));
  }

  if (*(this + 2071) < 0)
  {
    operator delete(*(this + 256));
  }

  if (*(this + 2047) < 0)
  {
    operator delete(*(this + 253));
  }

  if (*(this + 2023) < 0)
  {
    operator delete(*(this + 250));
  }

  if (*(this + 1999) < 0)
  {
    operator delete(*(this + 247));
  }

  if (*(this + 1975) < 0)
  {
    operator delete(*(this + 244));
  }

  if (*(this + 1951) < 0)
  {
    operator delete(*(this + 241));
  }

  if (*(this + 1927) < 0)
  {
    operator delete(*(this + 238));
  }

  if (*(this + 1903) < 0)
  {
    operator delete(*(this + 235));
  }

  if (*(this + 1879) < 0)
  {
    operator delete(*(this + 232));
  }

  if (*(this + 1855) < 0)
  {
    operator delete(*(this + 229));
  }

  if (*(this + 1815) < 0)
  {
    operator delete(*(this + 224));
  }

  if (*(this + 1791) < 0)
  {
    operator delete(*(this + 221));
  }

  quasar::SystemConfig::~SystemConfig((this + 184));
  v5 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  fst::SymbolTable::~SymbolTable((this + 48));
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::LmeDataFactory::~LmeDataFactory(this);

  JUMPOUT(0x1B8C85350);
}

std::string *quasar::LmeDataFactory::AddConfigOverride(uint64_t a1, const void **a2, const std::string *a3)
{
  if (*(a1 + 8))
  {
    v6 = quasar::gLogLevel < 4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    memset(v9, 0, sizeof(v9));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "AddConfigOverride() can only be called before init()", 52);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v9);
  }

  *&v9[0] = a2;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 2624), a2);
  return std::string::operator=((v7 + 5), a3);
}

uint64_t quasar::LmeDataFactory::init(quasar::LmeDataFactory *this)
{
  if (*(this + 2))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "LmeDataFactory already initialized.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  std::unordered_map<std::string,std::string>::unordered_map(v4, this + 2624);
  JsonFile = quasar::SystemConfig::readJsonFile(this + 184, this + 96, this + 15, v4, 0, 0);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v4);
  if (JsonFile != 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "lme-create.");
    quasar::SystemConfig::setPrefix(this + 184, __p);
    if (SBYTE7(v6) < 0)
    {
      operator delete(__p[0]);
    }

    quasar::LmeDataFactory::registerParams(this);
    std::string::basic_string[abi:ne200100]<0>(__p, "lme-create");
    quasar::SystemConfig::readPtree(this + 184, __p);
  }

  return 2;
}

void sub_1B578BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a26 = &a45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  JUMPOUT(0x1B578BCF4);
}

void sub_1B578BBF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a31 < 0)
  {
    JUMPOUT(0x1B578BC24);
  }

  JUMPOUT(0x1B578BCF4);
}

void sub_1B578BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  JUMPOUT(0x1B578BCF4);
}

void sub_1B578BCA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char *a54)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  a54 = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a54);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  kaldi::Input::~Input(&a31);
  quasar::PTree::~PTree(&a38);
  a54 = &a46;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a54);
  if (a2 == 2 || a2 == 1)
  {
    v56 = __cxa_begin_catch(a1);
    v57 = fst::cout(v56);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Error reading JSON config file: ", 32);
    v59 = (*(*v56 + 16))(v56);
    v60 = strlen(v59);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v61);
    __cxa_end_catch();
    JUMPOUT(0x1B578A040);
  }

  JUMPOUT(0x1B578BABCLL);
}

uint64_t quasar::LmeDataFactory::registerParams(quasar::LmeDataFactory *this)
{
  quasar::QsrTextSymbolTable::Register(*(this + 4), this + 23, 2, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v5, "base-dict-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Base lexicon file");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1768, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "base-dict-mapped-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Base lexicon file, mmap-able (overrides text lexicon file)");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1792, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "lme-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for the LME FST");
  quasar::SystemConfig::Register<float>(this + 23, v5, this + 1816, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "lme-average-cost");
  std::string::basic_string[abi:ne200100]<0>(__p, "the cost of entering an LME FST");
  quasar::SystemConfig::Register<float>(this + 23, v5, this + 1820, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "lme-deviation-cost");
  std::string::basic_string[abi:ne200100]<0>(__p, "the cost of deviating from an average size LME class");
  quasar::SystemConfig::Register<float>(this + 23, v5, this + 1824, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "supported-lme-template-plist");
  std::string::basic_string[abi:ne200100]<0>(__p, "Comma-delimited LME template names, ordered by enrollment priority");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1832, __p, 1, 18, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "supported-lme-template-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "Comma-delimited LME template names");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1832, __p, 1, 0, 0, 17, 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "contacts-template-name");
  std::string::basic_string[abi:ne200100]<0>(__p, "Quasar template name for user's contact names");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1880, __p, 1, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "appcontacts-template-name");
  std::string::basic_string[abi:ne200100]<0>(__p, "Quasar template name for 3rd-party app contact names");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1904, __p, 1, 18, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "max-num-enumerated-contacts");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of contacts (e.g. in NT-contact and NT-appcontact) to allow in a user's profile");
  quasar::SystemConfig::Register<int>(this + 23, v5, this + 1828, __p, 0, 18, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "just-in-time-template-name");
  std::string::basic_string[abi:ne200100]<0>(__p, "Just in time LME template name");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1856, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "tropical-weight");
  std::string::basic_string[abi:ne200100]<0>(__p, "When it is set to true, we will use tropical weight in the LME FST.");
  quasar::SystemConfig::Register<BOOL>(this + 184, v5, this + 2666, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "min-phones-to-p2wp");
  std::string::basic_string[abi:ne200100]<0>(__p, "When pronunciations of an entity have fewer phones than this value, P2WP will be not used.");
  quasar::SystemConfig::Register<int>(this + 23, v5, this + 2668, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "p2wp-cost");
  std::string::basic_string[abi:ne200100]<0>(__p, "Extra cost applied to P2WP wordpiece representations.");
  quasar::SystemConfig::Register<float>(this + 23, v5, this + 2672, __p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "template-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Mapping from ACE category names to Quasar template names");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1928, __p, 1, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "name-enumerator-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Mapping from Quasar template names to enumerator names");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1952, __p, 1, 3, 2, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "max-prons-compound-word");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of pronunciations for compound words");
  quasar::SystemConfig::Register<unsigned int>(this + 23, v5, this + 2704, __p, 0, 14, 3, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "g2p-blacklist");
  std::string::basic_string[abi:ne200100]<0>(__p, "During G2P, empty prons will be returned for tokens listed in this file. File format: same as a lexicon text file (not hat encoded) with the prons removed so that only one column remains per line. Order does not matter.");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2120, __p, 0, 21, 0, 94, 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "g2p-rewrite-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File format: If a rule is in the form of 'A -> B' (whitespace optional), then rewrite token A to token B before doing G2P. If a rule is in the form of 'A', then rewrite A to an empty string. This 2nd rule has the same format and effect as g2p-blacklist entries and therefore makes g2p-rewrite-file a superset of g2p-blacklist.");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2144, __p, 0, 95, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "name-scale-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "LME scale for specific Quasar template names");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 1976, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "name-average-cost-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "the cost of entering an LME FST for a specific template");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2000, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "name-deviation-cost-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "the cost of deviating from an average size LME class for a specific template");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2024, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "max-entity-count-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Per-template map: If >= 0, maximum number of entities allowed. Additional entities are rejected.");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2048, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "max-orthography-length-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Per-template map: If >= 0, maximum orthography length. Entries with any words that have longer orthography lengths are rejected.");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2072, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "max-pronunciation-length-map");
  std::string::basic_string[abi:ne200100]<0>(__p, "Per-template map: If >= 0, maximum pronunciation length (# phonemes). Entries with longer pronunciations are rejected.");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2096, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v5, "symbol-format");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::SystemConfig::Register<std::string>(this + 23, v5, this + 2168, __p, 0, 25, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  MEMORY[0x1B8C84820](this + 1768, "");
  MEMORY[0x1B8C84820](this + 1792, "");
  *(this + 227) = 1065353216;
  *(this + 456) = 0;
  MEMORY[0x1B8C84820](this + 1832, "");
  MEMORY[0x1B8C84820](this + 1856, "\\NT-inline");
  MEMORY[0x1B8C84820](this + 1880, "\\NT-contact");
  MEMORY[0x1B8C84820](this + 1904, "\\NT-appcontact");
  MEMORY[0x1B8C84820](this + 1928, "");
  MEMORY[0x1B8C84820](this + 1976, "");
  MEMORY[0x1B8C84820](this + 2000, "");
  MEMORY[0x1B8C84820](this + 2024, "");
  MEMORY[0x1B8C84820](this + 2048, "");
  MEMORY[0x1B8C84820](this + 2072, "");
  MEMORY[0x1B8C84820](this + 2096, "");
  *(this + 676) = 32;
  *(this + 457) = 2000000000;
  return MEMORY[0x1B8C84820](this + 2120, "");
}

void sub_1B578CA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::WordpieceV2LmeSymbolFormat::getInstance(kaldi::quasar::WordpieceV2LmeSymbolFormat *this)
{
  {
    operator new();
  }

  return kaldi::quasar::WordpieceV2LmeSymbolFormat::getInstance(void)::singleton;
}

uint64_t kaldi::quasar::WordpieceV1LmeSymbolFormat::getInstance(kaldi::quasar::WordpieceV1LmeSymbolFormat *this)
{
  {
    operator new();
  }

  return kaldi::quasar::WordpieceV1LmeSymbolFormat::getInstance(void)::singleton;
}

uint64_t kaldi::quasar::BILmeSymbolFormat::getInstance(kaldi::quasar::BILmeSymbolFormat *this)
{
  {
    operator new();
  }

  return kaldi::quasar::BILmeSymbolFormat::getInstance(void)::singleton;
}

uint64_t kaldi::quasar::BIESLmeSymbolFormat::getInstance(kaldi::quasar::BIESLmeSymbolFormat *this)
{
  {
    operator new();
  }

  return kaldi::quasar::BIESLmeSymbolFormat::getInstance(void)::singleton;
}

void *std::shared_ptr<quasar::Lexicon>::operator=[abi:ne200100]<quasar::Lexicon,std::default_delete<quasar::Lexicon>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::Lexicon>::shared_ptr[abi:ne200100]<quasar::Lexicon,std::default_delete<quasar::Lexicon>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void quasar::LmeDataFactory::getNameEnumeratorFromAceCategory(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  quasar::SystemConfig::aceCatToQuasarTemplate(a1 + 184, a2, &__p);
  quasar::LmeDataFactory::getNameEnumerator(a1, &__p, 0, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B578CE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LmeDataFactory::getNameEnumerator(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v8 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 2208, a2);
  if (a1 + 2216 == v8)
  {
    if (a3 && quasar::gLogLevel >= 4)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Could not find enumerator for quasar template ", 46);
      v14 = *(a2 + 23);
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v14 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
      goto LABEL_26;
    }
  }

  else
  {
    v10 = *(v8 + 56);
    v9 = *(v8 + 64);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *a4 = v10;
    a4[1] = v9;
    if (a3 && quasar::gLogLevel >= 4)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Enumeration type:", 17);
      if (*(v10 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v10 + 8), *(v10 + 16));
      }

      else
      {
        v12 = *(v10 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v10 + 24);
        *&__p.__r_.__value_.__l.__data_ = v12;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_26:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
    }
  }
}

void sub_1B578D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::LmeDataFactory::getMaxEntityCountFromQuasarTemplate(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2432), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t quasar::LmeDataFactory::getMaxOrthographyLengthFromQuasarTemplate(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2472), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t quasar::LmeDataFactory::isSupportedCategory(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 8) != 1)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v26, "LmeDataFactory not initialized.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v26);
  }

  p_p = &__p;
  quasar::SystemConfig::aceCatToQuasarTemplate(a1 + 184, a2, &__p);
  v7 = *(a1 + 2552);
  v8 = *(a1 + 2560);
  if (v7 != v8)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v10 = *(v7 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v7 + 8);
      }

      if (v10 == size)
      {
        v12 = v11 >= 0 ? v7 : *v7;
        if (!memcmp(v12, p_p, size))
        {
          break;
        }
      }

      v7 += 24;
      if (v7 == v8)
      {
        goto LABEL_27;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_27:
    v13 = 0;
    if ((a3 & 1) == 0 && quasar::gLogLevel >= 4)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Checking category ", 19);
      v20 = *(a2 + 23);
      if (v20 >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      if (v20 >= 0)
      {
        v22 = *(a2 + 23);
      }

      else
      {
        v22 = *(a2 + 8);
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": Not supported", 16);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
    if ((a3 & 1) == 0 && quasar::gLogLevel >= 4)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Checking category ", 19);
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (v15 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = *(a2 + 8);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": Supported", 12);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

uint64_t quasar::LmeDataFactory::startNewSpeaker(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "LmeDataFactory not initialized.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v7);
  }

  *(a1 + 160) = 500000000;
  *(a1 + 144) = xmmword_1B5B23BC0;
  *(a1 + 176) = 0;
  if (quasar::gLogLevel >= 4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Starting LME for new speaker.", 29);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v7);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = quasar::LmeDataFactory::setAotLmeData(a1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

uint64_t quasar::LmeDataFactory::setAotLmeData(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "LmeDataFactory not initialized.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v2);
  }

  if (*(a1 + 176) != 1)
  {
    quasar::LmeData::LmeData(&v2);
  }

  if (quasar::gLogLevel >= 4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v2, "AOT LME data has already been provided.", 39);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v2);
  }

  return 6;
}

uint64_t quasar::LmeDataFactory::getLmeTypeFromUserData(uint64_t a1, void *a2)
{
  v39 = 0;
  v40 = 0;
  v38 = &v39;
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 == a2 + 1)
  {
LABEL_36:
    v18 = 4;
    goto LABEL_37;
  }

  v5 = (a1 + 1856);
  do
  {
    quasar::SystemConfig::aceCatToQuasarTemplate(a1 + 184, (v3 + 4), __p);
    v6 = SBYTE7(v21);
    v7 = __p[1];
    if ((SBYTE7(v21) & 0x80u) == 0)
    {
      v8 = BYTE7(v21);
    }

    else
    {
      v8 = __p[1];
    }

    v9 = *(a1 + 1879);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 1864);
    }

    if (v8 == v9 && ((SBYTE7(v21) & 0x80u) == 0 ? (v11 = __p) : (v11 = __p[0]), v10 >= 0 ? (v12 = v5) : (v12 = *v5), !memcmp(v11, v12, v8)))
    {
      v37 = 1;
      v41 = &v37;
      v14 = std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>>>::__emplace_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::piecewise_construct_t const&,std::tuple<quasar::LmeDataFactoryBase::LmeType&&>,std::tuple<>>(&v38, &v37);
    }

    else
    {
      if (v6 < 0)
      {
        if (v7 != 8)
        {
          goto LABEL_22;
        }

        v13 = __p[0];
      }

      else
      {
        if (v6 != 8)
        {
          goto LABEL_22;
        }

        v13 = __p;
      }

      if (*v13 != 0x7A7A75622D544E5CLL)
      {
LABEL_22:
        v37 = 0;
        v41 = &v37;
        v14 = std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>>>::__emplace_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::piecewise_construct_t const&,std::tuple<quasar::LmeDataFactoryBase::LmeType&&>,std::tuple<>>(&v38, &v37);
        goto LABEL_25;
      }

      v37 = 2;
      v41 = &v37;
      v14 = std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>>>::__emplace_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::piecewise_construct_t const&,std::tuple<quasar::LmeDataFactoryBase::LmeType&&>,std::tuple<>>(&v38, &v37);
    }

LABEL_25:
    *(v14 + 32) = 1;
    if (SBYTE7(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v3[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = v3[2];
        v17 = *v16 == v3;
        v3 = v16;
      }

      while (!v17);
    }

    v3 = v16;
  }

  while (v16 != v2);
  if (v40 > 1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Multipe LmeType in single user data is not supported.", 53);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  if (!v40)
  {
    goto LABEL_36;
  }

  v18 = *(v38 + 7);
LABEL_37:
  std::__tree<int>::destroy(&v38, v39);
  return v18;
}

uint64_t quasar::LmeDataFactory::getLmeData(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t *a12)
{
  if (a1[2] != 1)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v35, "LmeDataFactory not initialized.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v35);
  }

  quasar::getUserDataTemplateNames(a2, a11, v34);
  LmeTypeFromUserData = quasar::LmeDataFactory::getLmeTypeFromUserData(a1, v34);
  *a8 = LmeTypeFromUserData;
  if (LmeTypeFromUserData == 4)
  {
    if (quasar::gLogLevel >= 4)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      memset(v37, 0, sizeof(v37));
      v35 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "is UserData empty? not able to tell which lmeType from userData which has size: ", 80);
      MEMORY[0x1B8C84C30](v21, *(a2 + 16));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v35);
    }

    v22 = 5;
  }

  else
  {
    if (quasar::gLogLevel >= 5)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      memset(v37, 0, sizeof(v37));
      v35 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "generate Lme Data for lmeType: ", 31);
      quasar::operator<<(v23, *a8);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v35);
    }

    v35 = 0u;
    v36 = 0u;
    LODWORD(v37[0]) = 1065353216;
    memset(v37 + 8, 0, 32);
    DWORD2(v37[2]) = 1065353216;
    v24 = *a9;
    *a9 = 0;
    v25 = a10[1];
    v31 = *a10;
    v32 = v25;
    v33 = v24;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *a12;
    *a12 = 0;
    v30 = v26;
    v22 = (*(*a1 + 56))(a1, a2, a3, a8, &v35, a4, a5, a6, a7, &v33, &v31, a11, &v30);
    v27 = v30;
    v30 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v28 = v33;
    v33 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v37 + 8);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v35);
  }

  std::__tree<std::string>::destroy(v34, v34[1]);
  return v22;
}

const void ***quasar::getUserDataTemplateNames@<X0>(const void ***result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a2)
  {
    v4 = *(a2 + 16);
    v5 = (a2 + 24);
    if (v4 != (a2 + 24))
    {
      do
      {
        result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, v4 + 4);
        v6 = v4[1];
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
            v7 = v4[2];
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    v9 = result + 1;
    v10 = *result;
    if (*result != (result + 1))
    {
      do
      {
        result = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, v10 + 4);
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v8 = *v12 == v10;
            v10 = v12;
          }

          while (!v8);
        }

        v10 = v12;
      }

      while (v12 != v9);
    }
  }

  return result;
}

uint64_t quasar::LmeDataFactory::getLmeData(uint64_t a1, const void ***a2, int a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t *a13)
{
  if (*(a1 + 8) != 1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *__p = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    __str_16 = 0u;
    v33 = 0u;
    __str = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__str);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__str, "LmeDataFactory not initialized.");
    goto LABEL_44;
  }

  if ((quasar::LmeDataFactory::isWordpieceAllowed & 1) == 0 && *(a1 + 1744) == 1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *__p = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    __str_16 = 0u;
    v33 = 0u;
    __str = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__str);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__str, "Wordpiece LME is disallowed");
LABEL_44:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__str);
  }

  if (!*a4)
  {
    *(a1 + 176) = 1;
  }

  if (!*a11)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN6quasar7LmeDataENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  quasar::getUserDataTemplateNames(a2, a12, &v53);
  if (v54[1])
  {
    *(*a11 + 264) = a3;
    SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo((a1 + 184));
    std::string::operator=((*a11 + 176), SpeechModelInfo + 6);
    *(*a11 + 392) = *(a1 + 1744);
    quasar::SystemConfig::getLmeCompatibilityKey((a1 + 184), &__str);
    std::string::operator=((*a11 + 296), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    v17 = v53;
    if (v53 != v54)
    {
      do
      {
        quasar::SystemConfig::aceCatToQuasarTemplate(a1 + 184, (v17 + 4), &__str);
        quasar::LmeDataFactory::getNameEnumerator(a1, &__str, 0, &v51);
        if (v51)
        {
          if (*(v51 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v30, *(v51 + 8), *(v51 + 16));
          }

          else
          {
            v18 = *(v51 + 8);
            v30.__r_.__value_.__r.__words[2] = *(v51 + 24);
            *&v30.__r_.__value_.__l.__data_ = v18;
          }

          v19 = *a11;
          v54[3] = (v17 + 4);
          v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v19 + 240, v17 + 4);
          v21 = v20;
          if (*(v20 + 79) < 0)
          {
            operator delete(*(v20 + 56));
          }

          *(v21 + 56) = v30;
        }

        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (SBYTE7(__str_16) < 0)
        {
          operator delete(__str);
        }

        v22 = v17[1];
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
            v23 = v17[2];
            v24 = *v23 == v17;
            v17 = v23;
          }

          while (!v24);
        }

        v17 = v23;
      }

      while (v23 != v54);
    }

    if ((*(a1 + 1744) & 1) != 0 || *(a1 + 1760))
    {
      if (a12)
      {
        v25 = *(a12 + 8);
        *&__str = &unk_1F2D06B30;
        *(&__str + 1) = v25;
        ++*(v25 + 168);
        std::map<std::string,std::vector<std::vector<quasar::LmePackedWord>>>::map[abi:ne200100](&__str_16, (a12 + 16));
      }

      else
      {
        quasar::LmePackedUserData::LmePackedUserData(&__str, a2);
      }

      v26 = *a10;
      *a10 = 0;
      v27 = *a13;
      *a13 = 0;
      v48 = v27;
      v49 = v26;
      quasar::LmeDataFactory::getLmeDataImplV2();
    }

    if (a12)
    {
      quasar::LmePackedUserData::unpacked(a12, &__str);
    }

    else
    {
      std::map<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::map[abi:ne200100](&__str, a2);
    }

    v28 = *a10;
    *a10 = 0;
    v50 = v28;
    quasar::LmeDataFactory::getLmeDataImplV1();
  }

  if (quasar::gLogLevel >= 4)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *__p = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    __str_16 = 0u;
    v33 = 0u;
    __str = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__str);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "User data is empty", 18);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__str);
  }

  std::__tree<std::string>::destroy(&v53, v54[0]);
  return 5;
}

void sub_1B578FACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a59);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a19);
  fst::SymbolTable::~SymbolTable(&a24);
  std::ostringstream::~ostringstream(&a26);
  quasar::WordPronCache::~WordPronCache(&STACK[0x2B0]);
  kaldi::quasar::Lexicon::~Lexicon(&STACK[0x2F8]);
  STACK[0x2F8] = v59 - 240;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F8]);
  STACK[0x2F8] = v59 - 216;
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F8]);
  v61 = *(v59 - 144);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  _Unwind_Resume(a1);
}

void quasar::LmeDataFactory::getLmeDataImplV2()
{
  if (quasar::gLogLevel >= 5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Build start", 11);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
  }

  fst::SymbolTable::SymbolTable(v0);
}

void sub_1B5791114()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1B5791510);
}

void sub_1B5791128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::locale a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::WordPronCache::~WordPronCache(&STACK[0x310]);
  a58 = *MEMORY[0x1E69E54E8];
  *(&a58 + *(a58 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a59 = MEMORY[0x1E69E5548] + 16;
  if (a72 < 0)
  {
    operator delete(a67);
  }

  a59 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a60);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&a73);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&STACK[0x2B8], STACK[0x2C0]);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x2D0]);
  fst::SymbolTable::~SymbolTable(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void sub_1B5791164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  MEMORY[0x1B8C85350](a26, 0x10E1C407A581DE7);
  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  JUMPOUT(0x1B5791404);
}

void sub_1B57911A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, char a40, char *a41)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&STACK[0x310]);
  v42 = *(v41 - 168);
  *(v41 - 168) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  std::__tree<std::string>::destroy(&a40, a41);
  (*(*a26 + 8))(a26);
  JUMPOUT(0x1B57913F4);
}

void sub_1B57911D0()
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  v1 = *(v0 - 168);
  *(v0 - 168) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B57913B4);
}

void sub_1B5791224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::locale a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  a58 = *MEMORY[0x1E69E54E8];
  *(&a58 + *(a58 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a59 = MEMORY[0x1E69E5548] + 16;
  if (a72 < 0)
  {
    operator delete(a67);
  }

  a59 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a60);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&a73);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&STACK[0x2B8], STACK[0x2C0]);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x2D0]);
  fst::SymbolTable::~SymbolTable(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void sub_1B579123C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::locale a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!v73)
  {
    v75 = MEMORY[0x1E69E54E8];
    a58 = *MEMORY[0x1E69E54E8];
    *(&a58 + *(a58 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    a59 = MEMORY[0x1E69E5548] + 16;
    if (a72 < 0)
    {
      operator delete(a67);
    }

    a59 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&a60);
    std::ostream::~ostream(&a58, v75 + 8);
    MEMORY[0x1B8C85200](&a73);
    std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&STACK[0x2B8], STACK[0x2C0]);
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x2D0]);
    fst::SymbolTable::~SymbolTable(&STACK[0x300]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B57913FCLL);
}

void sub_1B579128C()
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  JUMPOUT(0x1B5791508);
}

void sub_1B57912A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&STACK[0x310], STACK[0x318]);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  STACK[0x310] = &a35;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  JUMPOUT(0x1B57913B4);
}

void sub_1B57912B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::locale a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = MEMORY[0x1E69E54E8];
  a58 = *MEMORY[0x1E69E54E8];
  *(&a58 + *(a58 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a59 = MEMORY[0x1E69E5548] + 16;
  if (a72 < 0)
  {
    operator delete(a67);
  }

  a59 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a60);
  std::ostream::~ostream(&a58, v74 + 8);
  MEMORY[0x1B8C85200](&a73);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&STACK[0x2B8], STACK[0x2C0]);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x2D0]);
  fst::SymbolTable::~SymbolTable(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void sub_1B57912B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::locale a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::LmeDataFactoryBase::Word::~Word(&STACK[0x310]);
  a58 = *MEMORY[0x1E69E54E8];
  *(&a58 + *(a58 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a59 = MEMORY[0x1E69E5548] + 16;
  if (a72 < 0)
  {
    operator delete(a67);
  }

  a59 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a60);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&a73);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&STACK[0x2B8], STACK[0x2C0]);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(&STACK[0x2D0]);
  fst::SymbolTable::~SymbolTable(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void sub_1B57912C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  STACK[0x310] = &a32;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  JUMPOUT(0x1B57913A4);
}

void sub_1B57912F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  std::__tree<std::string>::destroy(&a40, a41);
  (*(*a26 + 8))(a26);
  JUMPOUT(0x1B57913F4);
}

void sub_1B5791300()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  *(v0 - 192) = v0 - 168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v0 - 192));
  JUMPOUT(0x1B579133CLL);
}

void sub_1B5791338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 - 168) = &a32;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100]((v36 - 168));
  std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(&STACK[0x310], STACK[0x318]);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  STACK[0x310] = &a35;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  JUMPOUT(0x1B57913B4);
}

void sub_1B5791350()
{
  *(v0 - 192) = v0 - 168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v0 - 192));
  JUMPOUT(0x1B579138CLL);
}

void quasar::LmePackedUserData::~LmePackedUserData(quasar::LmePackedUserData *this)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::destroy(this + 16, *(this + 3));

  fst::SymbolTable::~SymbolTable(this);
}

void quasar::WordPronCache::setPronCache(uint64_t a1)
{
  v1 = (a1 + 32);
  std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(a1 + 24, *(a1 + 32));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  fst::SymbolTable::SymbolTable(&v2);
}

uint64_t quasar::LmeDataFactory::processUserData(uint64_t a1, const void ***a2, void **a3, void ***a4, const quasar::LmeDataFactoryBase::Word *a5, quasar::WordPronCache *a6, uint64_t **a7, uint64_t a8, unint64_t *a9)
{
  v14 = (a8 + 8);
  std::__tree<std::string>::destroy(a8, *(a8 + 8));
  *a8 = v14;
  v55 = a8;
  *(a8 + 16) = 0;
  *v14 = 0;
  v15 = *a3;
  v16 = a3[1];
  while (v16 != v15)
  {
    v16 -= 24;
    *&v65 = v16;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v65);
  }

  a3[1] = v15;
  std::vector<std::string>::clear[abi:ne200100](a4);
  v87[0] = 0;
  v87[1] = 0;
  v85 = 0;
  v86 = v87;
  v83 = 0;
  v84 = 0;
  quasar::LmeDataFactory::getPrioritizedUserDataKeys(a1, a2, &v83);
  v17 = v83;
  v18 = v84;
  v59 = a1;
  if (v83 != v84)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(a7, v17);
      v17 += 3;
    }

    while (v17 != v18);
    v17 = v83;
    v18 = v84;
  }

  if (v17 == v18)
  {
LABEL_58:
    v45 = v86;
    if (v86 != v87)
    {
      do
      {
        std::vector<std::vector<std::string>>::vector[abi:ne200100]<std::__tree_const_iterator<std::vector<std::string>,std::__tree_node<std::vector<std::string>,void *> *,long>,0>(&v65, *(v45 + 7), (v45 + 4));
        std::vector<std::string>::push_back[abi:ne200100](a4, v45 + 2);
        std::vector<std::vector<std::vector<std::string>>>::push_back[abi:ne200100](a3, &v65);
        v82.__r_.__value_.__r.__words[0] = &v65;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v82);
        v46 = *(v45 + 1);
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = *(v45 + 2);
            v48 = *v47 == v45;
            v45 = v47;
          }

          while (!v48);
        }

        v45 = v47;
      }

      while (v47 != v87);
    }

    if (v17 == v18)
    {
      if (quasar::gLogLevel >= 4)
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v65);
        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "No supported templates were found in userData. Only the templates specified under ", 82);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "supported-lme-template-list in the json config file are supported.", 68);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v65);
      }

      v49 = 5;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v52 = 0;
    v54 = a4;
    v19 = v17;
    v53 = a3;
    while (1)
    {
      quasar::SystemConfig::aceCatToQuasarTemplate(v59 + 184, v19, &v82);
      if (quasar::gLogLevel >= 4)
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v65);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Getting LME data for userDataKey = ", 35);
        v21 = *(v19 + 23);
        if (v21 >= 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = *v19;
        }

        if (v21 >= 0)
        {
          v23 = *(v19 + 23);
        }

        else
        {
          v23 = *(v19 + 8);
        }

        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " quasarTemplateName = ", 22);
        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v82;
        }

        else
        {
          v26 = v82.__r_.__value_.__r.__words[0];
        }

        if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v82.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, size);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v65);
      }

      v28 = a7;
      quasar::LmeDataFactory::getNameEnumerator(v59, &v82, 1, &v63);
      v29 = v63;
      if (v63)
      {
        v65 = 0u;
        v66 = 0u;
        LODWORD(v67) = 1065353216;
        v60.__r_.__value_.__r.__words[0] = &v82;
        v30 = std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v86, &v82.__r_.__value_.__l.__data_);
        if ((*(*v29 + 24))(v29))
        {
          v31 = std::map<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::at(a2, v19);
          v32 = v64;
          v62[0] = v29;
          v62[1] = v64;
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v59 + 2512), &v82.__r_.__value_.__l.__data_);
          if (v33)
          {
            v34 = *(v33 + 10);
          }

          else
          {
            v34 = -1;
          }

          isContactTemplate = quasar::LmeDataFactory::isContactTemplate(v59, &v82.__r_.__value_.__l.__data_);
          if (isContactTemplate)
          {
            v38 = (*(v59 + 1828) - v52) & ~((*(v59 + 1828) - v52) >> 31);
          }

          else
          {
            v38 = -1;
          }

          Enumerations = quasar::LmeDataFactory::getEnumerations(isContactTemplate, v31, a6, a5, &v65, v30 + 56, v62, v34, v38, a9);
          v60.__r_.__value_.__r.__words[0] = v19;
          *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, v19) + 56) = Enumerations;
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }
        }

        else
        {
          v36 = std::map<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::at(a2, v19);
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
          }

          else
          {
            v61 = v82;
          }

          v40 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v59 + 2512), &v82.__r_.__value_.__l.__data_);
          if (v40)
          {
            v42 = *(v40 + 10);
          }

          else
          {
            v42 = -1;
          }

          appended = quasar::LmeDataFactory::appendNames(v40, v36, v41, a6, a5, &v65, v30 + 56, v42, a9);
          v60.__r_.__value_.__r.__words[0] = v19;
          *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, v19) + 56) = appended;
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }
        }

        if (quasar::LmeDataFactory::isContactTemplate(v59, &v82.__r_.__value_.__l.__data_))
        {
          v52 = *(v30 + 72);
        }

        a4 = v54;
        if (*(v29 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, *(v29 + 8), *(v29 + 16));
        }

        else
        {
          v44 = *(v29 + 8);
          v60.__r_.__value_.__r.__words[2] = *(v29 + 24);
          *&v60.__r_.__value_.__l.__data_ = v44;
        }

        a3 = v53;
        a7 = v28;
        v35 = quasar::EnumerationTypes::insert(v28, v19, &v60);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v65);
      }

      else
      {
        v35 = 0;
        a7 = v28;
      }

      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (!v35)
      {
        break;
      }

      v19 += 24;
      if (v19 == v18)
      {
        goto LABEL_58;
      }
    }

    v49 = 1;
  }

  *&v65 = &v83;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
  std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::destroy(&v86, v87[0]);
  return v49;
}

void sub_1B5791BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a39 = v39 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a39);
  std::__tree<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>>>>::destroy(v39 - 120, *(v39 - 112));
  _Unwind_Resume(a1);
}

float quasar::LmeDataFactory::getClassSizeCost(uint64_t a1, const void **a2, void *a3)
{
  v6 = *(a1 + 1820);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a3 + 5, a2))
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a3 + 5, a2);
  }

  else
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2272), a2))
    {
      goto LABEL_6;
    }

    v7 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 2272), a2);
  }

  v6 = *(v7 + 5);
LABEL_6:
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a3, a2))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a3, a2);
  }

  else if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2392), a2))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 2392), a2);
  }

  return v6;
}

void quasar::LmeDataFactory::finishGetLmeDataImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void ***a5)
{
  v6 = a5 + 1;
  v7 = *a5;
  if (*a5 != (a5 + 1))
  {
    do
    {
      v9 = *(a1 + 1816);
      if (v9 != 1.0)
      {
        fst::ApplyProbabilityScale<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v7[7], v9);
      }

      v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2232), v7 + 4);
      if (v10)
      {
        v11 = *(v10 + 5);
        fst::ApplyProbabilityScale<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v7[7], v11);
      }

      *&v19 = v7 + 4;
      v12 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 200, v7 + 4);
      v14 = v7[7];
      v13 = v7[8];
      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
      }

      v15 = *(v12 + 64);
      *(v12 + 56) = v14;
      *(v12 + 64) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v16 = v7[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v7[2];
          v18 = *v17 == v7;
          v7 = v17;
        }

        while (!v18);
      }

      v7 = v17;
    }

    while (v17 != v6);
  }

  if (*(a2 + 168) > 0)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst11SymbolTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  LODWORD(v20) = 3;
  std::allocate_shared[abi:ne200100]<quasar::QsrTextSymbolTable,std::allocator<quasar::QsrTextSymbolTable>,fst::SymbolTable const&,quasar::TextEncoding,0>();
}

void quasar::LmeDataFactory::encodeAndFilterEntity(std::string **a1@<X0>, const quasar::LmeDataFactoryBase::Word *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, v3->__r_.__value_.__l.__data_, v3->__r_.__value_.__l.__size_);
      }

      else
      {
        v7 = *&v3->__r_.__value_.__l.__data_;
        v24.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
        *&v24.__r_.__value_.__l.__data_ = v7;
      }

      if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, v3[1].__r_.__value_.__l.__data_, v3[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v8 = *&v3[1].__r_.__value_.__l.__data_;
        v25.__r_.__value_.__r.__words[2] = v3[1].__r_.__value_.__r.__words[2];
        *&v25.__r_.__value_.__l.__data_ = v8;
      }

      data = v3[2].__r_.__value_.__l.__data_;
      v9 = std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v27, &v3[2].__r_.__value_.__l.__size_);
      v10 = quasar::QsrText::SingletonInstance(v9);
      if (quasar::QsrText::encodeTokenQsrTextWithMetadata(v10, v3, &v24))
      {
        if (quasar::LmeDataFactory::wordIsLegal(&v24, a2))
        {
          v11 = a3[1];
          if (v11 >= a3[2])
          {
            v22 = std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word>(a3, &v24);
          }

          else
          {
            v12 = *&v24.__r_.__value_.__l.__data_;
            *(v11 + 16) = *(&v24.__r_.__value_.__l + 2);
            *v11 = v12;
            memset(&v24, 0, sizeof(v24));
            v13 = v25.__r_.__value_.__r.__words[2];
            *(v11 + 24) = *&v25.__r_.__value_.__l.__data_;
            *(v11 + 40) = v13;
            memset(&v25, 0, sizeof(v25));
            *(v11 + 48) = data;
            *(v11 + 56) = v27;
            v14 = v28;
            *(v11 + 64) = v28;
            v15 = v11 + 64;
            v16 = v29;
            *(v11 + 72) = v29;
            if (v16)
            {
              *(v14 + 2) = v15;
              v27 = &v28;
              v28 = 0;
              v29 = 0;
            }

            else
            {
              *(v11 + 56) = v15;
            }

            v22 = v11 + 80;
          }

          a3[1] = v22;
        }
      }

      else if (quasar::gLogLevel >= 5)
      {
        memset(v23, 0, sizeof(v23));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Skipping illegal word: ", 24);
        v18 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
        if (v18 >= 0)
        {
          v19 = v3;
        }

        else
        {
          v19 = v3->__r_.__value_.__r.__words[0];
        }

        if (v18 >= 0)
        {
          size = HIBYTE(v3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v3->__r_.__value_.__l.__size_;
        }

        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "", 1);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v23);
      }

      std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v27, v28);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 80);
    }

    while (v3 != v4);
  }
}

void sub_1B5792400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  quasar::LmeDataFactoryBase::Word::~Word((v9 - 160));
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t quasar::LmeDataFactory::wordIsLegal(quasar::LmeDataFactory *this, const quasar::LmeDataFactoryBase::Word *a2)
{
  v2 = *(this + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(this + 1);
  }

  if (v2)
  {
    v25 = a2;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v46);
    v4 = *(this + 23);
    v26 = this;
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = *this;
    }

    if (v4 >= 0)
    {
      v6 = *(this + 23);
    }

    else
    {
      v6 = *(this + 1);
    }

    for (; v6; --v6)
    {
      v7 = v47;
      v8 = &v48[-2] + *(v47 - 24);
      if (*(v8 + 36) == -1)
      {
        std::ios_base::getloc((&v48[-2] + *(v47 - 24)));
        v9 = std::locale::use_facet(v29, MEMORY[0x1E69E5318]);
        (v9->__vftable[2].~facet_0)(v9, 32);
        std::locale::~locale(v29);
        v7 = v47;
      }

      *(v8 + 36) = 48;
      *(&v48[1].__locale_ + *(v7 - 24)) = 2;
      *(&v48[-1].__locale_ + *(v7 - 24)) = *(&v48[-1].__locale_ + *(v7 - 24)) & 0xFFFFFFB5 | 8;
      v10 = MEMORY[0x1B8C84C10](&v47, *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v5 = (v5 + 1);
    }

    if ((*(this + 12) & 0x80000000) != 0)
    {
      if (quasar::gLogLevel >= 2)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        *&v29[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Word with hex sequence ", 23);
        std::stringbuf::str();
        if ((v28 & 0x80u) == 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        if ((v28 & 0x80u) == 0)
        {
          v18 = v28;
        }

        else
        {
          v18 = __p[1];
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "has frequency ", 14);
        MEMORY[0x1B8C84C00](v20, *(v26 + 12));
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        quasar::QuasarWarnMessage::~QuasarWarnMessage(v29);
      }
    }

    else
    {
      if (!quasar::LmeDataFactoryBase::PronSet::empty((this + 56)))
      {
        if ((v25 & 0x80000000) == 0)
        {
          quasar::Bitmap::~Bitmap((this + 56));
          v22 = *v21;
          if (*v21 != v21 + 1)
          {
            std::string::basic_string[abi:ne200100]<0>(v29, ".");
            quasar::splitStringSimple((v22 + 5), v29, __p);
          }
        }

        v15 = 1;
        goto LABEL_42;
      }

      if (quasar::gLogLevel >= 5)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        *&v29[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Word has no prons, orthography=", 31);
        v12 = *(this + 23);
        if (v12 >= 0)
        {
          v13 = this;
        }

        else
        {
          v13 = *this;
        }

        if (v12 >= 0)
        {
          v14 = *(this + 23);
        }

        else
        {
          v14 = *(this + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v29);
      }
    }

    v15 = 0;
LABEL_42:
    *&v46 = *MEMORY[0x1E69E54D8];
    v23 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v46 + *(v46 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    *&v47 = v23;
    *(&v47 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(*(&v49 + 1));
    }

    *(&v47 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v48);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](v52);
    return v15;
  }

  if (quasar::gLogLevel >= 2)
  {
    v51 = 0u;
    memset(v52, 0, 144);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    memset(v48, 0, sizeof(v48));
    v46 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "Word has empty orthography", 26);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v46);
  }

  return 0;
}

void sub_1B5792AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  a18.__locale_ = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a55);
  _Unwind_Resume(a1);
}

double quasar::LmeDataFactory::getLengthPenalty(uint64_t a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2312), a2);
  if (v3)
  {
    return *(v3 + 5);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "default");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2312), __p);
  v3 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return *(v3 + 5);
    }

    return 0.0;
  }

  if (!v4)
  {
    return 0.0;
  }

  return *(v3 + 5);
}

void sub_1B5792BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double quasar::LmeDataFactory::getLengthPenaltyCutoff(uint64_t a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2352), a2);
  if (v3)
  {
    return *(v3 + 5);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "default");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2352), __p);
  v3 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      return *(v3 + 5);
    }

    return 0.0;
  }

  if (!v4)
  {
    return 0.0;
  }

  return *(v3 + 5);
}

void sub_1B5792C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LmeDataFactory::getMaxPronLen(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2512), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *std::shared_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::operator=[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::default_delete<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::shared_ptr[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::default_delete<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void quasar::LmeDataFactory::getPrioritizedUserDataKeys(uint64_t a1, const void ***a2, void ***a3)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v23, v6 + 4);
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v5);
  }

  std::vector<std::string>::clear[abi:ne200100](a3);
  v10 = *(a1 + 2600);
  v11 = *(a1 + 2608);
  while (v10 != v11)
  {
    v12 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v23, v10);
    v13 = v12;
    if (&v24 != v12)
    {
      std::vector<std::string>::push_back[abi:ne200100](a3, (v12 + 32));
      std::__tree<std::string>::erase(&v23, v13);
    }

    v10 += 3;
  }

  if (v25)
  {
    v14 = v23;
    if (v23 != &v24)
    {
      v15 = quasar::gLogLevel;
      do
      {
        if (v15 >= 5)
        {
          memset(v22, 0, sizeof(v22));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Ignoring user data key ", 23);
          v17 = *(v14 + 55);
          if (v17 >= 0)
          {
            v18 = (v14 + 4);
          }

          else
          {
            v18 = v14[4];
          }

          if (v17 >= 0)
          {
            v19 = *(v14 + 55);
          }

          else
          {
            v19 = v14[5];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v22);
          v15 = quasar::gLogLevel;
        }

        v20 = v14[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v14[2];
            v9 = *v21 == v14;
            v14 = v21;
          }

          while (!v9);
        }

        v14 = v21;
      }

      while (v21 != &v24);
    }
  }

  std::__tree<std::string>::destroy(&v23, v24);
}

uint64_t quasar::LmeDataFactory::getEnumerations(uint64_t a1, uint64_t **a2, quasar::WordPronCache *a3, const quasar::LmeDataFactoryBase::Word *a4, void *a5, uint64_t a6, void *a7, int a8, int a9, unint64_t *a10)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = *(a6 + 16);
  v23[0] = &unk_1F2D2FB58;
  v23[1] = quasar::LmeDataFactory::wordIsNotLegal;
  v24 = a8;
  v25 = 0;
  v26 = v23;
  v11 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (a9 < 0)
    {
      LODWORD(v10) = 0;
    }

    v18 = (v10 + a9);
    while (1)
    {
      memset(v22, 0, sizeof(v22));
      std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(v22, *v11, v11[1], 0xCCCCCCCCCCCCCCCDLL * ((v11[1] - *v11) >> 4));
      if (quasar::LmeDataFactory::processName(v22, a3, a4, a5, v23, a10))
      {
        (*(**a7 + 16))(*a7, v22, a6);
        v17 = (v17 + 1);
      }

      if ((v18 & 0x80000000) == 0 && *(a6 + 16) > v18)
      {
        break;
      }

      *&v21[0] = v22;
      std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](v21);
      v11 += 3;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }

    if (quasar::gLogLevel >= 4)
    {
      memset(v21, 0, sizeof(v21));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Exceeded enumeration limit. Stopped enumerating.", 48);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v21);
    }

    *&v21[0] = v22;
    std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](v21);
  }

LABEL_15:
  std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::~__value_func[abi:ne200100](v23);
  return v17;
}

void sub_1B5793144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a11);
  a11.__locale_ = (v11 - 152);
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::~__value_func[abi:ne200100](v11 - 128);
  _Unwind_Resume(a1);
}

uint64_t quasar::LmeDataFactory::appendNames(uint64_t a1, uint64_t **a2, uint64_t a3, quasar::WordPronCache *a4, const quasar::LmeDataFactoryBase::Word *a5, void *a6, uint64_t a7, unsigned int a8, unint64_t *a9)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v24[0] = &unk_1F2D2FB58;
  v24[1] = quasar::LmeDataFactory::wordIsNotLegal;
  v24[2] = a8;
  v24[3] = v24;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(&v21, *v9, v9[1], 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 4));
      if (quasar::LmeDataFactory::processName(&v21, a4, a5, a6, v24, a9))
      {
        v16 = v21;
        v15 = v22;
        while (v16 != v15)
        {
          memset(v20, 0, sizeof(v20));
          std::to_string(&v19, *(v16 + 48));
          std::vector<std::string>::push_back[abi:ne200100](v20, &v19);
          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }

          std::vector<std::string>::push_back[abi:ne200100](v20, v16);
          std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::__emplace_unique_key_args<std::vector<std::string>,std::vector<std::string> const&>(a7, v20);
          v14 = (v14 + 1);
          v19.__r_.__value_.__r.__words[0] = v20;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
          v16 += 80;
        }
      }

      v20[0] = &v21;
      std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](v20);
      v9 += 3;
    }

    while (v9 != v10);
  }

  std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::~__value_func[abi:ne200100](v24);
  return v14;
}

void **std::vector<std::vector<std::vector<std::string>>>::push_back[abi:ne200100](void **result, uint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
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
    result = std::__split_buffer<std::vector<std::vector<std::string>>>::~__split_buffer(v16);
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

uint64_t quasar::LmeDataFactory::processName(uint64_t a1, quasar::WordPronCache *a2, const quasar::LmeDataFactoryBase::Word *a3, void *a4, uint64_t a5, unint64_t *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::__value_func[abi:ne200100](v47, a5);
  v13 = std::remove_if[abi:ne200100]<std::__wrap_iter<quasar::LmeDataFactoryBase::Word *>,std::function<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>>(v11, v12, v47);
  std::vector<quasar::LmeDataFactoryBase::Word>::erase(a1, v13, *(a1 + 8));
  v14 = std::__function::__value_func<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>::~__value_func[abi:ne200100](v47);
  v15 = *a1;
  v16 = *(a1 + 8);
  if (*a1 != v16)
  {
    while (1)
    {
      memset(&__str, 0, sizeof(__str));
      v17 = quasar::QsrText::SingletonInstance(v14);
      if (!quasar::QsrText::encodeTokenQsrTextWithMetadata(v17, v15, &__str))
      {
        break;
      }

      std::string::operator=(v15, &__str);
      v18 = quasar::LmeDataFactoryBase::PronSet::size((v15 + 56));
      v19 = *a6;
      if (*a6 <= v18)
      {
        v19 = v18;
      }

      *a6 = v19;
      if (a2)
      {
        quasar::WordPronCache::addWord(a2, v15, 3);
      }

      v20 = *(v15 + 47);
      if (v20 >= 0)
      {
        v21 = v15 + 24;
      }

      else
      {
        v21 = *(v15 + 3);
      }

      if (v20 >= 0)
      {
        v22 = *(v15 + 47);
      }

      else
      {
        v22 = *(v15 + 4);
      }

      std::string::append(v15, v21, v22);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, v15 + 3);
      v14 = quasar::LmeDataFactory::addWordToPronLexicon(v15, a3, v23);
      if ((v14 & 1) == 0)
      {
        if (quasar::gLogLevel >= 2)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Skipping name containing bad word", 33);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(&v29);
        }

        goto LABEL_28;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v15 += 5;
      if (v15 == v16)
      {
        return 1;
      }
    }

    if (quasar::gLogLevel >= 4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Skipping name containing bad word:", 34);
      v26 = *(v15 + 23);
      if (v26 >= 0)
      {
        v27 = v15;
      }

      else
      {
        v27 = *v15;
      }

      if (v26 >= 0)
      {
        v28 = *(v15 + 23);
      }

      else
      {
        v28 = *(v15 + 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v29);
    }

LABEL_28:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1B5793754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a9);
  if (*(v9 - 105) < 0)
  {
    operator delete(*(v9 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::LmeDataFactoryBase::Word *,quasar::LmeDataFactoryBase::Word *,quasar::LmeDataFactoryBase::Word *>(&v7, a3, *(a1 + 8), a2);
    std::vector<quasar::LmeDataFactoryBase::Word>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

__int128 *std::remove_if[abi:ne200100]<std::__wrap_iter<quasar::LmeDataFactoryBase::Word *>,std::function<BOOL ()(quasar::LmeDataFactoryBase::Word const&)>>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
LABEL_19:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v7 + 48))(v7, v3))
      {
        break;
      }

      v3 += 5;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 5; i != a2; i += 5)
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          goto LABEL_19;
        }

        if (((*(*v9 + 48))(v9, i) & 1) == 0)
        {
          if (*(v3 + 23) < 0)
          {
            operator delete(*v3);
          }

          v10 = *i;
          *(v3 + 2) = *(i + 2);
          *v3 = v10;
          *(i + 23) = 0;
          *i = 0;
          if (*(v3 + 47) < 0)
          {
            operator delete(*(v3 + 3));
          }

          v11 = *(i + 24);
          *(v3 + 5) = *(i + 5);
          *(v3 + 24) = v11;
          *(i + 47) = 0;
          *(i + 24) = 0;
          *(v3 + 12) = *(i + 12);
          std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::__move_assign(v3 + 56, i + 7);
          v3 += 5;
        }
      }
    }
  }

  return v3;
}

uint64_t quasar::LmeDataFactory::addWordToPronLexicon(quasar::LmeDataFactory *this, const quasar::LmeDataFactoryBase::Word *a2, kaldi::quasar::Lexicon *a3)
{
  quasar::Bitmap::~Bitmap((this + 56));
  v4 = *v3;
  if (*v3 != v3 + 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ".");
    quasar::splitStringSimple((v4 + 5), __p, v7);
  }

  return 1;
}

uint64_t quasar::LmeDataFactory::lookUpProns(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  v6 = quasar::Lexicon::lookUpProns(v5, a2, a3, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1B5793B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::LmeDataFactory::applyG2PRewrite(uint64_t a1, uint64_t a2)
{
  result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 2712, a2);
  if ((a1 + 2720) != result)
  {
    v5 = result;
    if (quasar::gLogLevel >= 5)
    {
      memset(v15, 0, sizeof(v15));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Rewriting from=", 15);
      v7 = *(a2 + 23);
      if (v7 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v7 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " to=", 4);
      v12 = v5[3].__r_.__value_.__s.__data_[7];
      if (v12 >= 0)
      {
        p_size = &v5[2].__r_.__value_.__l.__size_;
      }

      else
      {
        p_size = v5[2].__r_.__value_.__l.__size_;
      }

      if (v12 >= 0)
      {
        v14 = v5[3].__r_.__value_.__s.__data_[7];
      }

      else
      {
        v14 = v5[2].__r_.__value_.__r.__words[2];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_size, v14);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v15);
    }

    return std::string::operator=(a2, (v5 + 56));
  }

  return result;
}

uint64_t **quasar::LmeDataFactory::setPronCache(uint64_t a1, uint64_t a2)
{
  result = (a1 + 2736);
  if (result != a2)
  {
    return std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__assign_multi<std::__tree_const_iterator<quasar::LmeDataFactoryBase::Word,std::__tree_node<quasar::LmeDataFactoryBase::Word,void *> *,long>>(result, *a2, (a2 + 8));
  }

  return result;
}

uint64_t **quasar::LmeDataFactory::setEmbeddingCache(uint64_t a1, uint64_t a2)
{
  result = (a1 + 2760);
  if (result != a2)
  {
    return std::__tree<quasar::LmeDataFactoryBase::Word,quasar::LmeDataFactoryBase::WordOrthoComparator,std::allocator<quasar::LmeDataFactoryBase::Word>>::__assign_multi<std::__tree_const_iterator<quasar::LmeDataFactoryBase::Word,std::__tree_node<quasar::LmeDataFactoryBase::Word,void *> *,long>>(result, *a2, (a2 + 8));
  }

  return result;
}

void kaldi::quasar::WordpieceV2LmeSymbolFormat::~WordpieceV2LmeSymbolFormat(kaldi::quasar::WordpieceV2LmeSymbolFormat *this)
{
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

BOOL kaldi::quasar::WordpieceV2LmeSymbolFormat::IsWordPhoneOrDisambigSym(uint64_t a1, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "/bpe-");
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    v6 = v28;
    if (v4 < v28)
    {
      v7 = 0;
      goto LABEL_36;
    }

LABEL_9:
    if ((v3 & 0x80) != 0)
    {
      if (v6 != -1)
      {
        if (a2[1] >= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = a2[1];
        }

        v9 = *a2;
LABEL_20:
        if (v29 >= 0)
        {
          v10 = &v27;
        }

        else
        {
          v10 = v27;
        }

        v11 = memcmp(v9, v10, v8);
        v7 = 0;
        if (v8 != v6 || v11)
        {
LABEL_35:
          if ((v5 & 0x80) == 0)
          {
            return v7;
          }

LABEL_36:
          operator delete(v27);
          return v7;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "_S/");
        v12 = *(a2 + 23);
        v13 = a2[1];
        if ((v12 & 0x80u) == 0)
        {
          v14 = *(a2 + 23);
        }

        else
        {
          v14 = a2[1];
        }

        v15 = v26;
        if ((v26 & 0x80u) == 0)
        {
          v16 = v26;
        }

        else
        {
          v16 = __p[1];
        }

        v17 = v14 >= v16;
        v18 = v14 - v16;
        if (!v17)
        {
          v7 = 0;
          if ((v26 & 0x80000000) == 0)
          {
LABEL_34:
            v5 = v29;
            goto LABEL_35;
          }

LABEL_33:
          operator delete(__p[0]);
          goto LABEL_34;
        }

        if ((v12 & 0x80) != 0)
        {
          if (v16 == -1 || v13 < v18)
          {
LABEL_63:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (v13 - v18 >= v16)
          {
            v21 = v16;
          }

          else
          {
            v21 = v13 - v18;
          }

          a2 = *a2;
        }

        else
        {
          if (v16 == -1)
          {
            goto LABEL_63;
          }

          v17 = v12 >= v18;
          v20 = v12 - v18;
          if (!v17)
          {
            goto LABEL_63;
          }

          if (v20 >= v16)
          {
            v21 = v16;
          }

          else
          {
            v21 = v20;
          }
        }

        if ((v26 & 0x80u) == 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        v23 = memcmp(a2 + v18, v22, v21);
        v7 = v21 == v16 && v23 == 0;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else if (v6 != -1)
    {
      if (v3 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = *(a2 + 23);
      }

      v9 = a2;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v29;
  if (v4 >= v29)
  {
    goto LABEL_9;
  }

  return 0;
}

void sub_1B5793EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::WordpieceV2LmeSymbolFormat::IsDisambigSym(uint64_t a1, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "/bpe-disambig-");
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    v6 = v28;
    if (v4 < v28)
    {
      v7 = 0;
      goto LABEL_36;
    }

LABEL_9:
    if ((v3 & 0x80) != 0)
    {
      if (v6 != -1)
      {
        if (a2[1] >= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = a2[1];
        }

        v9 = *a2;
LABEL_20:
        if (v29 >= 0)
        {
          v10 = &v27;
        }

        else
        {
          v10 = v27;
        }

        v11 = memcmp(v9, v10, v8);
        v7 = 0;
        if (v8 != v6 || v11)
        {
LABEL_35:
          if ((v5 & 0x80) == 0)
          {
            return v7;
          }

LABEL_36:
          operator delete(v27);
          return v7;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "_S/");
        v12 = *(a2 + 23);
        v13 = a2[1];
        if ((v12 & 0x80u) == 0)
        {
          v14 = *(a2 + 23);
        }

        else
        {
          v14 = a2[1];
        }

        v15 = v26;
        if ((v26 & 0x80u) == 0)
        {
          v16 = v26;
        }

        else
        {
          v16 = __p[1];
        }

        v17 = v14 >= v16;
        v18 = v14 - v16;
        if (!v17)
        {
          v7 = 0;
          if ((v26 & 0x80000000) == 0)
          {
LABEL_34:
            v5 = v29;
            goto LABEL_35;
          }

LABEL_33:
          operator delete(__p[0]);
          goto LABEL_34;
        }

        if ((v12 & 0x80) != 0)
        {
          if (v16 == -1 || v13 < v18)
          {
LABEL_63:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (v13 - v18 >= v16)
          {
            v21 = v16;
          }

          else
          {
            v21 = v13 - v18;
          }

          a2 = *a2;
        }

        else
        {
          if (v16 == -1)
          {
            goto LABEL_63;
          }

          v17 = v12 >= v18;
          v20 = v12 - v18;
          if (!v17)
          {
            goto LABEL_63;
          }

          if (v20 >= v16)
          {
            v21 = v16;
          }

          else
          {
            v21 = v20;
          }
        }

        if ((v26 & 0x80u) == 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        v23 = memcmp(a2 + v18, v22, v21);
        v7 = v21 == v16 && v23 == 0;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else if (v6 != -1)
    {
      if (v3 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = *(a2 + 23);
      }

      v9 = a2;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v29;
  if (v4 >= v29)
  {
    goto LABEL_9;
  }

  return 0;
}

void sub_1B57940A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::WordpieceV2LmeSymbolFormat::BasePhonesToPosWordPhones(uint64_t a1, uint64_t *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      std::operator+<char>();
      v4 = std::string::append(&__p, "_S/");
      v5 = v4->__r_.__value_.__r.__words[0];
      v9[0] = v4->__r_.__value_.__l.__size_;
      *(v9 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
      v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      v7 = v9[0];
      *v2 = v5;
      *(v2 + 8) = v7;
      *(v2 + 15) = *(v9 + 7);
      *(v2 + 23) = v6;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v2 += 24;
    }

    while (v2 != v3);
  }
}

void kaldi::quasar::WordpieceV1LmeSymbolFormat::~WordpieceV1LmeSymbolFormat(kaldi::quasar::WordpieceV1LmeSymbolFormat *this)
{
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

BOOL kaldi::quasar::WordpieceV1LmeSymbolFormat::IsWordPhoneOrDisambigSym(uint64_t a1, uint64_t **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "\\bpe");
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = __p[1];
  }

  v11 = v5 >= v7;
  v8 = v5 - v7;
  if (v11)
  {
    if ((v3 & 0x80) != 0)
    {
      if (v7 == -1 || v4 < v8)
      {
LABEL_40:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v4 - v8 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v4 - v8;
      }

      a2 = *a2;
    }

    else
    {
      v11 = v7 != -1 && v3 >= v8;
      if (!v11)
      {
        goto LABEL_40;
      }

      v12 = v3 - v8;
      if (v12 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v12;
      }
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = memcmp(a2 + v8, v15, v13);
    v9 = v13 == v7 && v16 == 0;
    if (v6 < 0)
    {
      goto LABEL_9;
    }

    return v9;
  }

  v9 = 0;
  if (v19 < 0)
  {
LABEL_9:
    operator delete(__p[0]);
  }

  return v9;
}

BOOL kaldi::quasar::WordpieceV1LmeSymbolFormat::IsDisambigSym(uint64_t a1, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "disambig-");
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    v6 = v28;
    if (v4 < v28)
    {
      v7 = 0;
      goto LABEL_36;
    }

LABEL_9:
    if ((v3 & 0x80) != 0)
    {
      if (v6 != -1)
      {
        if (a2[1] >= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = a2[1];
        }

        v9 = *a2;
LABEL_20:
        if (v29 >= 0)
        {
          v10 = &v27;
        }

        else
        {
          v10 = v27;
        }

        v11 = memcmp(v9, v10, v8);
        v7 = 0;
        if (v8 != v6 || v11)
        {
LABEL_35:
          if ((v5 & 0x80) == 0)
          {
            return v7;
          }

LABEL_36:
          operator delete(v27);
          return v7;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "\\bpe");
        v12 = *(a2 + 23);
        v13 = a2[1];
        if ((v12 & 0x80u) == 0)
        {
          v14 = *(a2 + 23);
        }

        else
        {
          v14 = a2[1];
        }

        v15 = v26;
        if ((v26 & 0x80u) == 0)
        {
          v16 = v26;
        }

        else
        {
          v16 = __p[1];
        }

        v17 = v14 >= v16;
        v18 = v14 - v16;
        if (!v17)
        {
          v7 = 0;
          if ((v26 & 0x80000000) == 0)
          {
LABEL_34:
            v5 = v29;
            goto LABEL_35;
          }

LABEL_33:
          operator delete(__p[0]);
          goto LABEL_34;
        }

        if ((v12 & 0x80) != 0)
        {
          if (v16 == -1 || v13 < v18)
          {
LABEL_63:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (v13 - v18 >= v16)
          {
            v21 = v16;
          }

          else
          {
            v21 = v13 - v18;
          }

          a2 = *a2;
        }

        else
        {
          if (v16 == -1)
          {
            goto LABEL_63;
          }

          v17 = v12 >= v18;
          v20 = v12 - v18;
          if (!v17)
          {
            goto LABEL_63;
          }

          if (v20 >= v16)
          {
            v21 = v16;
          }

          else
          {
            v21 = v20;
          }
        }

        if ((v26 & 0x80u) == 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        v23 = memcmp(a2 + v18, v22, v21);
        v7 = v21 == v16 && v23 == 0;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else if (v6 != -1)
    {
      if (v3 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = *(a2 + 23);
      }

      v9 = a2;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v29;
  if (v4 >= v29)
  {
    goto LABEL_9;
  }

  return 0;
}

void sub_1B57944D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *kaldi::quasar::WordpieceV1LmeSymbolFormat::BasePhonesToPosWordPhones(uint64_t a1, std::string **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      result = std::string::append(v2++, "\\bpe");
    }

    while (v2 != v3);
  }

  return result;
}

void kaldi::quasar::BILmeSymbolFormat::~BILmeSymbolFormat(kaldi::quasar::BILmeSymbolFormat *this)
{
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

BOOL kaldi::quasar::OriginalLmeSymbolFormatBase::IsWordPhoneOrDisambigSym(int a1, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size < 3)
  {
    return 0;
  }

  if (*std::string::at(this, 0) != 47)
  {
    return 0;
  }

  v4 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x80u) != 0)
  {
    v4 = this->__r_.__value_.__l.__size_;
  }

  return *std::string::at(this, v4 - 1) == 47;
}

BOOL kaldi::quasar::OriginalLmeSymbolFormatBase::IsDisambigSym(uint64_t a1, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "/WORD-DIS-");
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v17;
  if ((v17 & 0x8000000000000000) != 0)
  {
    v6 = v16;
    if (v4 < v16)
    {
      v7 = 0;
      v8 = __p;
LABEL_30:
      operator delete(v8);
      return v7;
    }
  }

  else
  {
    v6 = v17;
    if (v4 < v17)
    {
      return 0;
    }
  }

  v8 = __p;
  if ((v3 & 0x80) == 0)
  {
    if (v6 != -1)
    {
      if (v3 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = *(a2 + 23);
      }

      v10 = a2;
      goto LABEL_20;
    }

LABEL_32:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v6 == -1)
  {
    goto LABEL_32;
  }

  if (a2[1] >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = a2[1];
  }

  v10 = *a2;
LABEL_20:
  if (v17 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v12 = memcmp(v10, p_p, v9);
  v7 = 0;
  if (v9 == v6 && !v12)
  {
    if ((v3 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v7 = v13[v4 - 1] == 47;
  }

  if (v5 < 0)
  {
    goto LABEL_30;
  }

  return v7;
}

void kaldi::quasar::BILmeSymbolFormat::BasePhonesToPosWordPhones(uint64_t a1, uint64_t *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2[1] != *a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (v4)
      {
        std::operator+<char>();
        v5 = std::string::append(&__p, "_I/");
        v6 = v5->__r_.__value_.__r.__words[0];
        v12[0] = v5->__r_.__value_.__l.__size_;
        *(v12 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
        v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v4)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v8 = *a2 + v3;
      }

      else
      {
        std::operator+<char>();
        v9 = std::string::append(&__p, "_B/");
        v6 = v9->__r_.__value_.__r.__words[0];
        v12[0] = v9->__r_.__value_.__l.__size_;
        *(v12 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
        v7 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        v8 = *a2;
        if (a2[1] == *a2)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }
      }

      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v10 = v12[0];
      *v8 = v6;
      *(v8 + 8) = v10;
      *(v8 + 15) = *(v12 + 7);
      *(v8 + 23) = v7;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v4;
      v3 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v4);
  }
}

void sub_1B57948E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::BIESLmeSymbolFormat::~BIESLmeSymbolFormat(kaldi::quasar::BIESLmeSymbolFormat *this)
{
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::BIESLmeSymbolFormat::BasePhonesToPosWordPhones(uint64_t a1, void *a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  if (v4 - v3 == 24)
  {
    std::operator+<char>();
    v6 = std::string::append(&__p, "_S/");
    v7 = v6->__r_.__value_.__r.__words[0];
    v28[0] = v6->__r_.__value_.__l.__size_;
    *(v28 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
    v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v10 = a2;
    v9 = *a2;
    if (v10[1] == v9)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    v11 = v28[0];
    *v9 = v7;
    *(v9 + 8) = v11;
    *(v9 + 15) = *(v28 + 7);
    *(v9 + 23) = v8;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else if (v4 != v3)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    do
    {
      if (v12)
      {
        v14 = v12 + 1;
        if (v13 == v12 + 1)
        {
          std::operator+<char>();
          v15 = std::string::append(&__p, "_E/");
          v16 = v15->__r_.__value_.__r.__words[0];
          v28[0] = v15->__r_.__value_.__l.__size_;
          *(v28 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
          v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v18 = *a2;
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v12)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          std::operator+<char>();
          v24 = std::string::append(&__p, "_I/");
          v16 = v24->__r_.__value_.__r.__words[0];
          v28[0] = v24->__r_.__value_.__l.__size_;
          *(v28 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
          v17 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v18 = *a2;
          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v12)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }
        }

        v25 = v18 + 24 * v12;
        if (*(v25 + 23) < 0)
        {
          operator delete(*v25);
        }

        v26 = v28[0];
        *v25 = v16;
        *(v25 + 8) = v26;
        *(v25 + 15) = *(v28 + 7);
        *(v25 + 23) = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::operator+<char>();
        v19 = std::string::append(&__p, "_B/");
        v20 = v19->__r_.__value_.__r.__words[0];
        v28[0] = v19->__r_.__value_.__l.__size_;
        *(v28 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v22 = *a2;
        if (a2[1] == *a2)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        if (*(v22 + 23) < 0)
        {
          operator delete(*v22);
        }

        v23 = v28[0];
        *v22 = v20;
        *(v22 + 8) = v23;
        *(v22 + 15) = *(v28 + 7);
        *(v22 + 23) = v21;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v14 = 1;
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      v12 = v14;
    }

    while (v13 > v14);
  }
}

void sub_1B5794C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::vector<std::vector<quasar::LmePackedWord>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::vector<quasar::LmePackedWord>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::vector<std::vector<quasar::LmePackedWord>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::__construct_node<std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::vector<quasar::LmePackedWord>>::__init_with_size[abi:ne200100]<std::vector<quasar::LmePackedWord>*,std::vector<quasar::LmePackedWord>*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1B5794F48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<quasar::LmePackedWord>>::__init_with_size[abi:ne200100]<std::vector<quasar::LmePackedWord>*,std::vector<quasar::LmePackedWord>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5794FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<quasar::LmePackedWord>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::LmePackedWord>>,std::vector<quasar::LmePackedWord>*,std::vector<quasar::LmePackedWord>*,std::vector<quasar::LmePackedWord>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<quasar::LmePackedWord>::__init_with_size[abi:ne200100]<quasar::LmePackedWord*,quasar::LmePackedWord*>(v4, *v6, v6[1], 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 4));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmePackedWord>>,std::vector<quasar::LmePackedWord>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<quasar::LmePackedWord>::__init_with_size[abi:ne200100]<quasar::LmePackedWord*,quasar::LmePackedWord*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::LmePackedWord>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5795114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::LmePackedWord>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmePackedWord>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmePackedWord>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*,quasar::LmePackedWord*,quasar::LmePackedWord*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      v9 = *(v6 + 12);
      v4[2].__r_.__value_.__l.__size_ = 0;
      LODWORD(v4[2].__r_.__value_.__l.__data_) = v9;
      v4[2].__r_.__value_.__r.__words[2] = 0;
      v4[3].__r_.__value_.__r.__words[0] = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v4[2].__r_.__value_.__l.__size_, *(v6 + 7), *(v6 + 8), (*(v6 + 8) - *(v6 + 7)) >> 1);
      v6 += 5;
      v4 = (v14 + 80);
      v14 = (v14 + 80);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_1B57952D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmePackedWord>,quasar::LmePackedWord*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::LmePackedWord>,std::reverse_iterator<quasar::LmePackedWord*>,std::reverse_iterator<quasar::LmePackedWord*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::LmePackedWord>,std::reverse_iterator<quasar::LmePackedWord*>,std::reverse_iterator<quasar::LmePackedWord*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 3);
      if (v7)
      {
        *(v6 - 2) = v7;
        operator delete(v7);
      }

      if (*(v6 - 33) < 0)
      {
        operator delete(*(v6 - 7));
      }

      v8 = v6 - 10;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v8);
      }

      v6 -= 10;
    }

    while (v8 != a5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmePackedWord>>,std::vector<quasar::LmePackedWord>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmePackedWord>>,std::vector<quasar::LmePackedWord>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmePackedWord>>,std::vector<quasar::LmePackedWord>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void sub_1B57954E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmePackedWord,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::insert[abi:ne200100]<std::__tree_const_iterator<quasar::LmePackedWord,std::__tree_node<quasar::LmePackedWord,void *> *,long>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::set<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::insert[abi:ne200100]<std::__tree_const_iterator<quasar::LmePackedWord,std::__tree_node<quasar::LmePackedWord,void *> *,long>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__emplace_hint_unique_key_args<quasar::LmePackedWord,quasar::LmePackedWord const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__emplace_hint_unique_key_args<quasar::LmePackedWord,quasar::LmePackedWord const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__construct_node<quasar::LmePackedWord const&>();
  }

  return result;
}

void *std::vector<std::vector<std::string>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::default_delete<quasar::Lexicon>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = a2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t *std::shared_ptr<quasar::Lexicon>::shared_ptr[abi:ne200100]<quasar::Lexicon,std::default_delete<quasar::Lexicon>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::Lexicon  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::Lexicon  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN5kaldi6quasar7LexiconENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F0A0;
  kaldi::quasar::Lexicon::Lexicon((a1 + 3));
}

void kaldi::quasar::Lexicon::Lexicon(kaldi::quasar::Lexicon *this)
{
  *(this + 8) = 0u;
  *this = &unk_1F2D03FD0;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 12) = 0;
  *(this + 51) = 0;
  operator new();
}

void sub_1B5795A74(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,BOOL>>>::__emplace_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::piecewise_construct_t const&,std::tuple<quasar::LmeDataFactoryBase::LmeType&&>,std::tuple<>>(uint64_t a1, int *a2)
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

void std::__shared_ptr_emplace<kaldi::quasar::LmeFst>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::LexiconItf const*,fst::SymbolTable *,long long const&,BOOL,BOOL &,std::allocator<kaldi::quasar::LmeFst>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, char *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F9D0;
  std::allocator<kaldi::quasar::LmeFst>::construct[abi:ne200100]<kaldi::quasar::LmeFst,kaldi::quasar::LexiconItf const*,fst::SymbolTable *,long long const&,BOOL,BOOL &>(&v6, (a1 + 3), a2, a3, a4, a5, a6);
}

void std::__shared_ptr_emplace<kaldi::quasar::LmeFst>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D2F9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::LmeFst>::__on_zero_shared(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 256, *(a1 + 264));
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  fst::SymbolTable::~SymbolTable((a1 + 216));
  std::__tree<std::string>::destroy(a1 + 176, *(a1 + 184));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 136);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  fst::SymbolTable::~SymbolTable((a1 + 64));
  v2 = (a1 + 24);
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::allocator<kaldi::quasar::LmeFst>::construct[abi:ne200100]<kaldi::quasar::LmeFst,kaldi::quasar::LexiconItf const*,fst::SymbolTable *,long long const&,BOOL,BOOL &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, char *a6, char *a7)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  std::string::basic_string[abi:ne200100]<0>(&v14, "sil");
  std::string::basic_string[abi:ne200100]<0>(&__p, "^20");
  kaldi::quasar::LmeFst::LmeFst(a2, v8, v9, v10, v11, v12, &v14, 32);
}

void sub_1B5795E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::LmeFst::LmeFst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, __int128 *a7, uint64_t a8)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = &unk_1F2D06B30;
  v12 = *(a3 + 8);
  *(a1 + 48) = v12;
  ++*(v12 + 168);
  *(a1 + 56) = a6;
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a7, *(a7 + 1));
  }

  else
  {
    v13 = *a7;
    *(a1 + 80) = *(a7 + 2);
    *(a1 + 64) = v13;
  }

  *(a1 + 112) = 0u;
  *(a1 + 88) = a8;
  *(a1 + 104) = 0x100000000;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 176) = a5;
  *(a1 + 184) = a4;
  fst::SymbolTable::SymbolTable((a1 + 192));
}

void sub_1B579617C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  fst::SymbolTable::~SymbolTable((v17 + 80));
  std::__tree<std::string>::destroy(v18, *(v15 + 160));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v17);
  if (*(v15 + 87) < 0)
  {
    operator delete(*(v15 + 64));
  }

  fst::SymbolTable::~SymbolTable(v16);
  a15 = v15;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_1B5796290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5796344(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::__shared_ptr_emplace[abi:ne200100]<fst::SymbolTable const&,quasar::TextEncoding,std::allocator<quasar::QsrTextSymbolTable>,0>(void *a1, const fst::SymbolTable *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD0D0;
  quasar::QsrTextSymbolTable::QsrTextSymbolTable((a1 + 3), a2);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<quasar::LmeDataFactoryBase::Word>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v24 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v6);
  }

  v7 = 80 * v2;
  v21 = 0;
  v22 = v7;
  *(&v23 + 1) = 0;
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
  v10 = *(a2 + 12);
  *(v7 + 56) = *(a2 + 7);
  v11 = a2 + 4;
  v12 = *(a2 + 8);
  *(v7 + 48) = v10;
  *(80 * v2 + 0x40) = v12;
  v13 = 80 * v2 + 64;
  v14 = *(a2 + 9);
  *(v7 + 72) = v14;
  if (v14)
  {
    *(v12 + 16) = v13;
    *(a2 + 7) = v11;
    *v11 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(80 * v2 + 0x38) = v13;
  }

  *&v23 = v7 + 80;
  v15 = a1[1];
  v16 = v7 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v21);
  return v20;
}

void sub_1B57965B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::CompoundLmeEnumerationsProcessor::CompoundLmeEnumerationsProcessor(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D2FA20;
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 56) = *(a2 + 6);
  v4 = *(a2 + 7);
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 120) = *(a2 + 28);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 128) = 0;
  std::vector<std::vector<std::vector<std::string>>>::vector[abi:ne200100]((a1 + 136), 1uLL);
  v8 = 0u;
  v9 = 0u;
  v10 = 1065353216;
  operator new();
}

void sub_1B5796738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  MEMORY[0x1B8C85350](v10, 0x10A1C40C81CB56BLL);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = *(v9 + 16);
  *(v9 + 16) = 0;
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }

  v13 = *(v9 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void quasar::CompoundLmeEnumerationsProcessor::~CompoundLmeEnumerationsProcessor(quasar::CompoundLmeEnumerationsProcessor *this)
{
  *this = &unk_1F2D2FA20;
  v4 = (this + 136);
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D2FA20;
  v4 = (this + 136);
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::Bitmap::~Bitmap(this);
  MEMORY[0x1B8C85350]();
}

std::vector<std::wstring> *quasar::CompoundLmeEnumerationsProcessor::add(uint64_t a1, quasar::LmeDataFactory **a2, kaldi::quasar::Lexicon *a3)
{
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    quasar::LmeDataFactory::addWordToPronLexicon(v5, *(a1 + 128), a3);
    v5 = (v5 + 80);
  }

  v7 = *(a1 + 136);
  v8 = v7[1];
  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 3);

  return std::vector<std::vector<std::string>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<std::string> const*>,std::__wrap_iter<std::vector<std::string> const*>>(v7, v8, v9, v10, v11);
}

void quasar::CompoundLmeEnumerationsProcessor::buildFst(quasar::CompoundLmeEnumerationsProcessor *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = -1;
  v6 = 1;
  v2 = *(this + 2);
  __p[0] = *(this + 1);
  v4 = v2;
  v5 = 0;
  std::allocate_shared[abi:ne200100]<kaldi::quasar::LmeFst,std::allocator<kaldi::quasar::LmeFst>,kaldi::quasar::LexiconItf const*,fst::SymbolTable const*,long long const&,BOOL,BOOL &,0>();
}

void sub_1B5796BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  *v23 = 0;
  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<std::vector<std::string>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

std::vector<std::wstring> *std::vector<std::vector<std::string>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<std::string> const*>,std::__wrap_iter<std::vector<std::string> const*>>(void *a1, std::vector<std::wstring> *a2, std::string **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<std::string>>::__move_range(a1, a2, a1[1], &a2[a5]);
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string> const*,std::vector<std::string> const*,std::vector<std::string>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<std::string>>::__move_range(a1, v5, v10, &v5[a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<std::string>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<std::string> const*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}

void *std::vector<std::vector<std::string>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 3;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(&v11, a2, v7, v6);
}

uint64_t std::__split_buffer<std::vector<std::string>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<std::string> const*>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string> const*,std::vector<std::string> const*,std::vector<std::string>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 24);
    v7 = a3;
    do
    {
      std::vector<std::string>::__vdeallocate(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *&v6->__begin_ = v8;
      v6->__end_cap_.__value_ = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      --v6;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::__shared_ptr_emplace<kaldi::quasar::LmeFst>::__shared_ptr_emplace[abi:ne200100]<kaldi::quasar::LexiconItf const*,fst::SymbolTable const*,long long const&,BOOL,BOOL &,std::allocator<kaldi::quasar::LmeFst>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, char *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F9D0;
  std::allocator<kaldi::quasar::LmeFst>::construct[abi:ne200100]<kaldi::quasar::LmeFst,kaldi::quasar::LexiconItf const*,fst::SymbolTable const*,long long const&,BOOL,BOOL &>(&v6, (a1 + 3), a2, a3, a4, a5, a6);
}

void std::allocator<kaldi::quasar::LmeFst>::construct[abi:ne200100]<kaldi::quasar::LmeFst,kaldi::quasar::LexiconItf const*,fst::SymbolTable const*,long long const&,BOOL,BOOL &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, char *a6, char *a7)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  std::string::basic_string[abi:ne200100]<0>(&v14, "sil");
  std::string::basic_string[abi:ne200100]<0>(&__p, "^20");
  kaldi::quasar::LmeFst::LmeFst(a2, v8, v9, v10, v11, v12, &v14, 32);
}

void sub_1B5797370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OriginalSimpleLmeEnumerationsProcessor::OriginalSimpleLmeEnumerationsProcessor(uint64_t a1, __int128 *a2)
{
  quasar::SimpleLmeEnumerationsProcessorBase::SimpleLmeEnumerationsProcessorBase(a1, a2);
  *v3 = &unk_1F2D2FA68;
  quasar::CompoundLmeEnumerationsProcessor::CompoundLmeEnumerationsProcessor((v3 + 22), a2);
}

__n128 quasar::SimpleLmeEnumerationsProcessorBase::SimpleLmeEnumerationsProcessorBase(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D06BE8;
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  v4 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 120) = *(a2 + 28);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = result;
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 136) = *(a2 + 16);
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 168) = 0;
  return result;
}

void quasar::OriginalSimpleLmeEnumerationsProcessor::~OriginalSimpleLmeEnumerationsProcessor(quasar::OriginalSimpleLmeEnumerationsProcessor *this)
{
  *this = &unk_1F2D2FA68;
  v2 = (this + 176);
  *(this + 22) = &unk_1F2D2FA20;
  v5 = (this + 312);
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 38);
  *(this + 38) = 0;
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::Bitmap::~Bitmap(v2);
  quasar::SimpleLmeEnumerationsProcessorBase::~SimpleLmeEnumerationsProcessorBase(this);
}

{
  *this = &unk_1F2D2FA68;
  v2 = (this + 176);
  *(this + 22) = &unk_1F2D2FA20;
  v5 = (this + 312);
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 38);
  *(this + 38) = 0;
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::Bitmap::~Bitmap(v2);
  quasar::SimpleLmeEnumerationsProcessorBase::~SimpleLmeEnumerationsProcessorBase(this);
  MEMORY[0x1B8C85350]();
}

void quasar::OriginalSimpleLmeEnumerationsProcessor::add(quasar::OriginalSimpleLmeEnumerationsProcessor *this, float a2, const quasar::LmeDataFactoryBase::Word *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a3, *(a3 + 1));
  }

  else
  {
    v13 = *a3;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    __p = *(a3 + 1);
  }

  v15 = *(a3 + 12);
  std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](v16, a3 + 56);
  memset(v8, 0, sizeof(v8));
  std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word const*,quasar::LmeDataFactoryBase::Word const*>(v8, &v13, v17, 1uLL);
  std::to_string(&v10, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
  }

  memset(v12, 0, sizeof(v12));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v12, &v10, v12, 2uLL);
  memset(v7, 0, sizeof(v7));
  std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string> const*,std::vector<std::string> const*>(v7, v12, &v13, 1uLL);
  quasar::CompoundLmeEnumerationsProcessor::add(this + 176, v8, v7);
  v9 = v7;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v11.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v10 + i * 8 + 24));
    }
  }

  v10.__r_.__value_.__r.__words[0] = v8;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v16, v16[1]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1B5797838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __p = &a12;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&__p);
  quasar::LmeDataFactoryBase::Word::~Word(&a28);
  _Unwind_Resume(a1);
}

void sub_1B57978EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a27) < 0)
  {
    operator delete(a25);
  }

  JUMPOUT(0x1B57978DCLL);
}

uint64_t std::vector<std::vector<std::string>>::__init_with_size[abi:ne200100]<std::vector<std::string> const*,std::vector<std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B579797C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t quasar::CompactSimpleLmeEnumerationsProcessor::CompactSimpleLmeEnumerationsProcessor(uint64_t a1, uint64_t a2)
{
  quasar::SimpleLmeEnumerationsProcessorBase::SimpleLmeEnumerationsProcessorBase(a1, a2);
  *v4 = &unk_1F2D2FAB8;
  if (*(a2 + 16))
  {
    v5 = " ";
  }

  else
  {
    v5 = ".";
  }

  std::string::basic_string[abi:ne200100]<0>((v4 + 176), v5);
  *(a1 + 200) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 216) = 0u;
  v6 = *(a2 + 32);
  if (v6 < 1 || v6 > *(a2 + 40))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(params.disambigSymStart > 0) && (params.disambigSymEnd > 0) && (params.disambigSymStart <= params.disambigSymEnd)", 114);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return a1;
}

void sub_1B5797AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *(v9 + 344);
  if (v12)
  {
    *(v9 + 352) = v12;
    operator delete(v12);
  }

  v13 = *(v9 + 320);
  if (v13)
  {
    *(v9 + 328) = v13;
    operator delete(v13);
  }

  v14 = *(v9 + 296);
  if (v14)
  {
    *(v9 + 304) = v14;
    operator delete(v14);
  }

  v15 = *(v9 + 272);
  if (v15)
  {
    *(v9 + 280) = v15;
    operator delete(v15);
  }

  v16 = *(v9 + 248);
  if (v16)
  {
    *(v9 + 256) = v16;
    operator delete(v16);
  }

  v17 = *(v9 + 224);
  if (v17)
  {
    *(v9 + 232) = v17;
    operator delete(v17);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 199) < 0)
  {
    operator delete(*v10);
  }

  quasar::SimpleLmeEnumerationsProcessorBase::~SimpleLmeEnumerationsProcessorBase(v9);
  _Unwind_Resume(a1);
}

void quasar::CompactSimpleLmeEnumerationsProcessor::~CompactSimpleLmeEnumerationsProcessor(quasar::CompactSimpleLmeEnumerationsProcessor *this)
{
  quasar::CompactSimpleLmeEnumerationsProcessor::~CompactSimpleLmeEnumerationsProcessor(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D2FAB8;
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    *(this + 35) = v5;
    operator delete(v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  v7 = *(this + 28);
  if (v7)
  {
    *(this + 29) = v7;
    operator delete(v7);
  }

  v8 = (this + 200);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  quasar::SimpleLmeEnumerationsProcessorBase::~SimpleLmeEnumerationsProcessorBase(this);
}

void quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(quasar::CompactSimpleLmeEnumerationsProcessor *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = -1;
  kaldi::quasar::LmeFstBuilderCompact::LmeFstBuilderCompact(&v35, *(this + 10), *(this + 12), *(this + 104));
  v3 = *(this + 31);
  v4 = *(this + 32);
  v5 = 126 - 2 * __clz((v4 - v3) >> 2);
  __p = this;
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,false>(v3, v4, &__p, v6, 1);
  v7 = *(this + 42);
  if (v7 == 0.0)
  {
    *(this + 42) = 1065353216;
    v7 = 1.0;
  }

  v8 = *(this + 22);
  v9 = *(this + 23);
  v10 = logf(v7);
  v11 = *(this + 31);
  v12 = *(this + 32);
  if (v11 != v12)
  {
    v13 = v8 + (1.0 - v9) * v10;
    do
    {
      v14 = *v11;
      v15 = *(*(this + 28) + 4 * v14);
      v16 = *(this + 12);
      v17 = *(this + 25);
      v18 = (*(*v16 + 112))(v16);
      if (*(this + 10) <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = *(this + 10);
      }

      v20 = (*(*v16 + 24))(v16, v17 + 24 * v15, v19);
      v21 = *(this + 34);
      if (v14 >= (*(this + 35) - v21) >> 2 || (v22 = *(this + 37), v14 >= (*(this + 38) - v22) >> 2))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = v20;
      v24 = logf(*(v21 + 4 * v14));
      v25 = *(v22 + 4 * v14);
      v26 = *(*(this + 43) + 4 * v14);
      __p = 0;
      v33 = 0;
      v34 = 0;
      v27 = *(this + 40);
      v28 = 0.0;
      if (v26 < (*(this + 41) - v27) >> 2)
      {
        v29 = 4 * v26;
        do
        {
          if (!*(v27 + v29))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](&__p, (v27 + v29));
          ++v26;
          v27 = *(this + 40);
          v29 += 4;
        }

        while (v26 < (*(this + 41) - v27) >> 2);
        v28 = ((v33 - __p) >> 2);
      }

      v30 = v25 + (v13 - v24);
      v31 = *(this + 28);
      if (v31 < v28)
      {
        v30 = v30 + ((v28 - v31) * *(this + 27));
      }

      kaldi::quasar::LmeFstBuilderCompact::AddPath(&v35, &__p, v23, v30);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  *(this + 41) = *(this + 40);
  std::vector<int>::shrink_to_fit((this + 320));
  operator new();
}

void sub_1B5797E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, kaldi::quasar::LmeTrie *a12)
{
  kaldi::quasar::LmeFstBuilderCompact::~LmeFstBuilderCompact(&a12);
  v14 = *v12;
  *v12 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(a1);
}

void quasar::CompactSimpleLmeEnumerationsProcessor::add(quasar::CompactSimpleLmeEnumerationsProcessor *this, float a2, const quasar::LmeDataFactoryBase::Word *a3)
{
  v39[0] = a2;
  v6 = *(this + 25);
  v7 = *(this + 26);
  v5 = (this + 200);
  std::vector<std::string>::push_back[abi:ne200100](this + 200, a3);
  quasar::Bitmap::~Bitmap((a3 + 56));
  v9 = v8 + 1;
  v10 = *v8;
  if (*v8 != v8 + 1)
  {
    v11 = -1431655765 * ((v7 - v6) >> 3);
    do
    {
      quasar::splitAndTrimNoEmpty((v10 + 5), this + 176, &v37);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      (*(**(this + 4) + 32))(*(this + 4), &v37);
      v12 = v37;
      v13 = v38;
      while (v12 != v13)
      {
        v14 = (*(**(this + 2) + 96))(*(this + 2), v12);
        if (v14 < 1 || *(this + 5) <= v14 && *(this + 6) >= v14)
        {
          if (quasar::gLogLevel >= 5)
          {
            memset(v33, 0, sizeof(v33));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Skipping bad unit ", 18);
            v16 = *(v12 + 23);
            if (v16 >= 0)
            {
              v17 = v12;
            }

            else
            {
              v17 = *v12;
            }

            if (v16 >= 0)
            {
              v18 = *(v12 + 23);
            }

            else
            {
              v18 = *(v12 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v33);
          }

          break;
        }

        LODWORD(v33[0]) = v14;
        std::vector<int>::push_back[abi:ne200100](&v34, v33);
        v12 += 24;
      }

      v19 = v34;
      if (0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3) == (v35 - v34) >> 2)
      {
        LODWORD(v33[0]) = v11;
        std::vector<int>::push_back[abi:ne200100](this + 28, v33);
        LODWORD(v33[0]) = (*(this + 41) - *(this + 40)) >> 2;
        std::vector<int>::push_back[abi:ne200100](this + 43, v33);
        std::vector<float>::push_back[abi:ne200100](this + 34, v39);
        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(this + 320, *(this + 41), v34, v35, (v35 - v34) >> 2);
        LODWORD(v33[0]) = 0;
        std::vector<int>::push_back[abi:ne200100](this + 40, v33);
        v20 = *(this + 32) - *(this + 31);
        LODWORD(v33[0]) = v20 >> 2;
        std::vector<int>::push_back[abi:ne200100](this + 31, v33);
        v21 = 0;
        if (*(v10 + 8) == 2)
        {
          v21 = *(this + 30);
        }

        v32 = v21;
        std::vector<float>::push_back[abi:ne200100](this + 37, &v32);
        v22 = *v5 + 24 * *(*(this + 28) + v20);
        v23 = *(v22 + 23);
        if (v23 >= 0)
        {
          v24 = *(v22 + 23);
        }

        else
        {
          v24 = *(v22 + 8);
        }

        v25 = *(a3 + 23);
        v26 = v25;
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(a3 + 1);
        }

        if (v24 != v25 || (v23 >= 0 ? (v27 = (*v5 + 24 * *(*(this + 28) + v20))) : (v27 = *v22), v26 >= 0 ? (v28 = a3) : (v28 = *a3), memcmp(v27, v28, v24)))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "syms[symsOffsets[order]] == word.orthography", 44);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
        }

        v19 = v34;
      }

      if (v19)
      {
        v35 = v19;
        operator delete(v19);
      }

      *&v33[0] = &v37;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v33);
      v29 = v10[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v10[2];
          v31 = *v30 == v10;
          v10 = v30;
        }

        while (!v31);
      }

      v10 = v30;
    }

    while (v30 != v9);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,false>(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
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
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v32 = *(a2 - 1);
        v33 = *v9;
        v34 = *(*a3 + 224);
        v35 = *(*a3 + 200);
        v36 = (v35 + 24 * *(v34 + 4 * v32));
        v37 = (v35 + 24 * *(v34 + 4 * v33));
        v38 = *(v37 + 23);
        v39 = *(v36 + 23);
        if (v39 >= 0)
        {
          v40 = *(v36 + 23);
        }

        else
        {
          v40 = v36[1];
        }

        if (v39 >= 0)
        {
          v41 = v36;
        }

        else
        {
          v41 = *v36;
        }

        if (v38 >= 0)
        {
          v42 = *(v37 + 23);
        }

        else
        {
          v42 = v37[1];
        }

        if (v38 >= 0)
        {
          v43 = v37;
        }

        else
        {
          v43 = *v37;
        }

        if (v42 >= v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v42;
        }

        result = memcmp(v41, v43, v44);
        v45 = v40 < v42;
        if (result)
        {
          v45 = result < 0;
        }

        if (v45)
        {
          *v9 = v32;
          *(a2 - 1) = v33;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v9, v9 + 1, v9 + 2, a2 - 1, a3);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(&v9[v12 >> 1], v9, a2 - 1, a3);
      if (a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v9, &v9[v12 >> 1], a2 - 1, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v9 + 1, v14 - 1, a2 - 2, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v9 + 2, &v9[v13 + 1], a2 - 3, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v14 - 1, v14, &v9[v13 + 1], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_35;
      }
    }

    v16 = *(*a3 + 224);
    v17 = *(*a3 + 200);
    v18 = (v17 + 24 * *(v16 + 4 * *(v9 - 1)));
    v19 = (v17 + 24 * *(v16 + 4 * *v9));
    v20 = *(v19 + 23);
    v21 = *(v18 + 23);
    if (v21 >= 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v18[1];
    }

    if (v21 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v20 >= 0)
    {
      v24 = *(v19 + 23);
    }

    else
    {
      v24 = v19[1];
    }

    if (v20 >= 0)
    {
      v25 = v19;
    }

    else
    {
      v25 = *v19;
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

    if (!v28)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_40;
    }

LABEL_35:
    v29 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &>(v9, a2, a3);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(v9, v29, a3);
    v9 = v29 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *>(v29 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v31)
    {
LABEL_38:
      result = std::__introsort<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,false>(v8, v29, a3, -v11, a5 & 1);
      v9 = v29 + 1;
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(v9, v9 + 1, a2 - 1, a3);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::CompactSimpleLmeEnumerationsProcessor::buildFst(void)::{lambda(int,int)#1} &,int *,0>(int *a1, int *a2, int *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(*a4 + 224);
  v7 = *(*a4 + 200);
  v54 = *a1;
  v8 = v7 + 24 * *(v6 + 4 * v5);
  v9 = v7 + 24 * *(v6 + 4 * *a1);
  v10 = *(v9 + 23);
  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  if (v11 >= 0)
  {
    v13 = (v7 + 24 * *(v6 + 4 * v5));
  }

  else
  {
    v13 = *v8;
  }

  if (v10 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  if (v10 >= 0)
  {
    v15 = (v7 + 24 * *(v6 + 4 * v54));
  }

  else
  {
    v15 = *v9;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  if (v17)
  {
    v18 = v17 < 0;
  }

  else
  {
    v18 = v12 < v14;
  }

  v19 = a3;
  v20 = *a3;
  v21 = v7 + 24 * *(v6 + 4 * v20);
  v22 = *(v21 + 23);
  if (v22 >= 0)
  {
    v23 = *(v21 + 23);
  }

  else
  {
    v23 = *(v21 + 8);
  }

  if (v22 >= 0)
  {
    v24 = (v7 + 24 * *(v6 + 4 * v20));
  }

  else
  {
    v24 = *v21;
  }

  if (v12 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v12;
  }

  v26 = memcmp(v24, v13, v25);
  v27 = v23 < v12;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v18)
  {
    if (v27)
    {
      *a1 = v20;
      *a3 = v54;
    }

    else
    {
      *a1 = v5;
      *a2 = v54;
      v41 = *a3;
      v42 = v7 + 24 * *(v6 + 4 * v41);
      v43 = v7 + 24 * *(v6 + 4 * v54);
      v44 = *(v43 + 23);
      v45 = *(v42 + 23);
      if (v45 >= 0)
      {
        v46 = *(v42 + 23);
      }

      else
      {
        v46 = *(v42 + 8);
      }

      if (v45 >= 0)
      {
        v47 = (v7 + 24 * *(v6 + 4 * v41));
      }

      else
      {
        v47 = *v42;
      }

      if (v44 >= 0)
      {
        v48 = *(v43 + 23);
      }

      else
      {
        v48 = *(v43 + 8);
      }

      if (v44 >= 0)
      {
        v49 = (v7 + 24 * *(v6 + 4 * v54));
      }

      else
      {
        v49 = *v43;
      }

      if (v48 >= v46)
      {
        v50 = v46;
      }

      else
      {
        v50 = v48;
      }

      v51 = memcmp(v47, v49, v50);
      v52 = v46 < v48;
      if (v51)
      {
        v52 = v51 < 0;
      }

      if (v52)
      {
        *a2 = v41;
        *v19 = v54;
      }
    }

    return 1;
  }

  if (v27)
  {
    *a2 = v20;
    *a3 = v5;
    v28 = *a2;
    v29 = *a1;
    v30 = v7 + 24 * *(v6 + 4 * v28);
    v31 = v7 + 24 * *(v6 + 4 * v29);
    v32 = *(v31 + 23);
    v33 = *(v30 + 23);
    if (v33 >= 0)
    {
      v34 = *(v30 + 23);
    }

    else
    {
      v34 = *(v30 + 8);
    }

    if (v33 >= 0)
    {
      v35 = (v7 + 24 * *(v6 + 4 * v28));
    }

    else
    {
      v35 = *v30;
    }

    if (v32 >= 0)
    {
      v36 = *(v31 + 23);
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if (v32 >= 0)
    {
      v37 = (v7 + 24 * *(v6 + 4 * v29));
    }

    else
    {
      v37 = *v31;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v39 = memcmp(v35, v37, v38);
    v40 = v34 < v36;
    if (v39)
    {
      v40 = v39 < 0;
    }

    if (v40)
    {
      *a1 = v28;
      *a2 = v29;
    }

    return 1;
  }

  return 0;
}