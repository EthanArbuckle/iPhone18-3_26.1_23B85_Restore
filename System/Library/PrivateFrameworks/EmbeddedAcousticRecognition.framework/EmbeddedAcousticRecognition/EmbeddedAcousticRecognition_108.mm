void sub_1B582763C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::InitBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "compose");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v6 = (*(*a3 + 112))(a3);
  v7 = (*(*a2 + 120))(a2);
  if (!fst::CompatSymbols(v6, v7, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
    }

    v8 = fst::LogMessage::LogMessage(&v14, &__str);
    v9 = fst::cerr(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ComposeFst: output symbol table of 1st argument ", 48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "does not match input symbol table of 2nd argument", 49);
    fst::LogMessage::~LogMessage(&v14);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v11);
  v12 = (*(*a3 + 120))(a3);
  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v12);
}

void sub_1B582784C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D335B0;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D335E8;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B5827A98(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__list_imp<char *>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(*(v2 + 8 * v3++));
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<char *>::clear(a1 + 4);
}

void fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(uint64_t a1)
{
  if (a1)
  {
    v3 = (a1 + 56);
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D33498;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~CacheBaseImpl(a1);
}

uint64_t *fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~SequenceComposeFilter(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1B5827F08(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D335E8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D335B0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B58281A0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_1B5828584(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5828608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const*,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const*,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, v4, v6);
      v6 += 56;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  v4 = *(a3 + 12);
  *(a2 + 24) = 0;
  v5 = a2 + 24;
  *(a2 + 12) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 24, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 2);
  *(v5 + 24) = *(a3 + 48);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SequenceComposeFilter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = (*(**a2 + 16))(*a2, a3);
  *(a1 + 8) = (*(*a2[1] + 16))(a2[1], a3);
  *(a1 + 16) = (*(**a1 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

void fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetState(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (*(a1 + 24) != a2 || *(a1 + 28) != a3 || *a4 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    v7 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
    (*(**(a1 + 16) + 32))(&v14);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v9);
    v21 = v14;
    v20 = v9;
    v8 = *&v14 == v9 && (v21 = HIDWORD(v14), v20 = v15, v19 = v10, v18 = v11, *(&v14 + 1) == v10) && v20 == v18 && v17 - v16 == v13 - __p && memcmp(v16, __p, v17 - v16) == 0;
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    *(a1 + 33) = v6 == v7 && v8;
    *(a1 + 34) = v7 == 0;
  }
}

void sub_1B5828AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(*(a1 + 144) + 8) + 40))(*(*(a1 + 144) + 8));
  v8 = (*(**(*(a1 + 152) + 8) + 40))(*(*(a1 + 152) + 8), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B5828C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetState(a7, a4);
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v15);
  LODWORD(v19) = a8 - 1;
  HIDWORD(v19) = a8 << 31 >> 31;
  v20 = v15;
  v21 = *(&v15 + 4);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, __p, v17, (v17 - __p) >> 2);
  v25 = a6;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, &v15);
  while (1)
  {
    if (!v15)
    {
      if (v18 >= __p)
      {
        goto LABEL_15;
      }

LABEL_9:
      v14 = (*(&v15 + 1) + 56 * v18);
      goto LABEL_10;
    }

    if ((*(*v15 + 24))(v15))
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_9;
    }

    v14 = (*(*v15 + 32))();
LABEL_10:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(a1, a2, a7, v14, a8);
    if (v15)
    {
      (*(*v15 + 40))(v15);
    }

    else
    {
      ++v18;
    }
  }

  if (v15)
  {
    (*(*v15 + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

LABEL_17:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetArcs(a1, a2);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_1B5828ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Find(a3, *(a4 + v10));
  if (result)
  {
    for (result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a3); (result & 1) == 0; result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a3))
    {
      v12 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Value(a3);
      v31 = *v12;
      v32 = *(v12 + 8);
      v33 = *(v12 + 12);
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 2);
      v37 = *(v12 + 48);
      v24 = *a4;
      v25 = *(a4 + 2);
      v26 = *(a4 + 12);
      v28 = 0;
      v29 = 0;
      v13 = a4[3];
      v14 = a4[4];
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13, v14, (v14 - v13) >> 2);
      v30 = *(a4 + 12);
      if (a5)
      {
        v15 = *(a1 + 136);
        if (HIDWORD(v24) != -1)
        {
          if (v31 == -1)
          {
            v19 = v15[32];
            if (v19)
            {
              v20 = -1;
            }

            else
            {
              v20 = 0;
            }

            v23 = v20;
            if (v19)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (HIDWORD(v24))
            {
              v16 = 0;
            }

            else
            {
              v16 = -1;
            }

            v23 = v16;
            if (!HIDWORD(v24))
            {
              goto LABEL_34;
            }
          }

          goto LABEL_28;
        }

        if ((v15[33] & 1) == 0)
        {
          v23 = v15[34] ^ 1;
LABEL_28:
          fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, &v24, &v31, &v23);
        }
      }

      else
      {
        v17 = *(a1 + 136);
        if (HIDWORD(v31) != -1)
        {
          if (v24 == -1)
          {
            v21 = v17[32];
            if (v21)
            {
              v22 = -1;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;
            if (v21)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (HIDWORD(v31))
            {
              v18 = 0;
            }

            else
            {
              v18 = -1;
            }

            v23 = v18;
            if (!HIDWORD(v31))
            {
              goto LABEL_34;
            }
          }

          goto LABEL_33;
        }

        if ((v17[33] & 1) == 0)
        {
          v23 = v17[34] ^ 1;
LABEL_33:
          fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, &v31, &v24, &v23);
        }
      }

LABEL_34:
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Next(a3);
    }
  }

  return result;
}

void sub_1B5829160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 56);
  v6 = *(MutableState + 64) - v5;
  if (v6)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 48);
    do
    {
      v11 = *v9;
      v9 += 14;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 80) |= 0xAu;
  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(uint64_t a1, int a2, int *a3, uint64_t a4, char *a5)
{
  v7 = *(a4 + 48);
  LODWORD(v22) = a3[12];
  HIDWORD(v22) = v7;
  v23 = *a5;
  v8 = *a3;
  v9 = *(a4 + 4);
  fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((a3 + 2), a4 + 8, &v12);
  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(a1 + 176), &v22, 1);
  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v12;
  v17 = v13;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, __p, v15, (v15 - __p) >> 2);
  v21 = Id;
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::push_back[abi:ne200100]((MutableState + 56), v16);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1B5829334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = NAN;
  if (*a1 != -INFINITY)
  {
    v8 = *a2;
    v7 = NAN;
    if (*a2 != -INFINITY)
    {
      v9 = v8 == INFINITY || v6 == INFINITY;
      v10 = v6 + v8;
      if (v9)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v10;
      }
    }
  }

  v19 = vadd_f32(*(a1 + 4), *(a2 + 4));
  v11 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero();
  *&v20.__begin_ = v7;
  v23 = *v11;
  if (v7 == v23 && (v23 = v19.f32[1], LODWORD(v20.__begin_) = v19.i32[0], v12 = *(v11 + 8), v22 = *(v11 + 4), v21 = v12, v19.f32[0] == v22) && v23 == v21)
  {

    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(a3);
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
    std::vector<int>::resize(&v20, ((*(a2 + 24) - *(a2 + 16)) >> 2) + ((*(a1 + 24) - *(a1 + 16)) >> 2));
    begin = v20.__begin_;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = v15 - v14;
    if (v15 != v14)
    {
      memmove(v20.__begin_, v14, v15 - v14);
    }

    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    if (v18 != v17)
    {
      memmove(begin + v16, v17, v18 - v17);
    }

    *a3 = v7;
    *(a3 + 4) = v19;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, v20.__begin_, v20.__end_, v20.__end_ - v20.__begin_);
    if (v20.__begin_)
    {
      v20.__end_ = v20.__begin_;
      operator delete(v20.__begin_);
    }
  }
}

void sub_1B5829524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero(void)::zero;
}

void sub_1B58295CC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1000C403E1C8BA9);
  _Unwind_Resume(a1);
}

uint64_t fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 80);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 80) = v5 | 4;
      v6 = *(MutableState + 64) - *(MutableState + 56) + *(a1 + 112) + 88;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 84))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 80);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 64) - *(MutableState + 56) + 88;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 80);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 80) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B5829BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Reset(uint64_t a1)
{
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v2);
  *a1 = v2;
  *(a1 + 4) = v3;
  if (&v2 != a1)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 16), __p, v5, (v5 - __p) >> 2);
  }

  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100]((a1 + 56));
}

void sub_1B5829CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5829DC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
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
      std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, a4, v7);
      v7 += 56;
      a4 = v13 + 56;
      v13 += 56;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 24);
      if (v8)
      {
        *(v5 + 32) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  }

  return a1;
}

void fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::Delete(void *a1)
{
  v1 = *(a1[7] + 16);
  if (!v1 || v1 - 1 == *(a1 + 19))
  {
    *(a1 + 19) = -1;
    a1[10] = 0;
  }

  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Delete(a1);
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Delete(void *a1)
{
  fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(*(a1[1] + 8 * *(a1[7] + 16)));
  v2 = a1[6];
  *(a1[1] + 8 * *(a1[7] + 16)) = 0;
  v3 = a1[7];
  v5 = *v3;
  v4 = v3[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  a1[6] = v2 - 1;
  a1[7] = v4;

  operator delete(v3);
}

uint64_t std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__emplace_back_slow_path<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__emplace_back_slow_path<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, 56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B582A1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D33620;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v8);
  *(a1 + 80) = 0;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, __p, v11, (v11 - __p) >> 2);
  *(a1 + 104) = -1;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  if (a4 == 1)
  {
    *(a1 + 56) = vrev64_s32(*(a1 + 56));
  }

  return a1;
}

void sub_1B582A3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (result != 3)
  {
    result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != 4 || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
      {
        if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) == 4 && (*(**(a1 + 40) + 24))(*(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28) || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
        {
          if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 168))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetState(*(result + 32), *v3);
    result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetState(*(v2 + 40), v4);
    *(v2 + 104) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, int a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(*(a1 + 32)))
  {
    return 0;
  }

  v2 = *(a1 + 40);

  return fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(v2);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 112;
  if (*(a1 + 48))
  {
    v1 = 56;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D33620;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[17];
  if (v4)
  {
    a1[18] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D33620;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(v10);
  *(a1 + 80) = 0;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 64) = *v10;
  *(a1 + 68) = *&v10[4];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, __p, v12, (v12 - __p) >> 2);
  *(a1 + 104) = -1;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = *(a2 + 168);
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v9, v10);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v9);
    if (SHIBYTE(__p) < 0)
    {
      operator delete(*v10);
    }

    *(a1 + 168) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 56) = vrev64_s32(*(a1 + 56));
  }

  return a1;
}

void sub_1B582AAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v19 + 144) = v23;
    operator delete(v23);
  }

  v24 = *v20;
  if (*v20)
  {
    *(v19 + 88) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Find(a3, a2);
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Value(a3);
    fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Find(a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a2) || !fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a3))
  {
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a3))
    {
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Next(a2);
      while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a2))
      {
        v6 = *(a1 + 28) == 0;
        v7 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Value(a2);
        if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Find(a3, *(v7 + 4 * v6)))
        {
          break;
        }

        fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Next(a2);
      }
    }

    while (!fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(a3))
    {
      v8 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Value(a2);
      v9 = fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Value(a3);
      fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Next(a3);
      v10 = *(a1 + 24);
      if (*(a1 + 28))
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      v21 = *v11;
      v22 = *(v11 + 8);
      v23 = *(v11 + 12);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, *(v11 + 24), *(v11 + 32), (*(v11 + 32) - *(v11 + 24)) >> 2);
      v27 = *(v11 + 48);
      if (!*(a1 + 28))
      {
        v8 = v9;
      }

      v14 = *v8;
      v15 = *(v8 + 8);
      v16 = *(v8 + 12);
      v18 = 0;
      v19 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 2);
      v20 = *(v8 + 48);
      matched = fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, &v21, &v14);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (matched)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1B582ADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v5 = *(*(a1 + 16) + 136);
  v6 = a3[1];
  if (v6 == -1)
  {
    if ((v5[33] & 1) == 0)
    {
      LOBYTE(v5) = (v5[34] & 1) == 0;
      goto LABEL_9;
    }

    return 0;
  }

  if (*a4 == -1)
  {
    LODWORD(v5) = v5[32];
    if (!v5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  LOBYTE(v5) = 0;
LABEL_9:
  v8 = a4[12];
  LODWORD(v15) = a3[12];
  HIDWORD(v15) = v8;
  v16 = v5;
  v9 = a4[1];
  *(a1 + 112) = *a3;
  *(a1 + 116) = v9;
  fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((a3 + 2), (a4 + 2), &v11);
  *(a1 + 120) = v11;
  *(a1 + 124) = v12;
  if ((a1 + 120) != &v11)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 136), __p, v14, (v14 - __p) >> 2);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v7 = 1;
  *(a1 + 160) = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*(a1 + 16) + 176), &v15, 1);
  return v7;
}

void sub_1B582AF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Type()
{
  {
    operator new();
  }

  return fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Type(void)::type;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 64))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 72))(&v12, a1, a2);
    v7 = v12;
    v8 = v13;
    v10 = 0;
    v11 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v14, v15, (v15 - v14) >> 2);
    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetFinal(a1, a2, &v7);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Final(a1, a2, a3);
}

void sub_1B582B1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  v5 = *a3;
  v6 = *(a3 + 1);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 2);
  *MutableState = v5;
  *(MutableState + 4) = v6;
  if (MutableState != &v5)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((MutableState + 16), __p, v8, (v8 - __p) >> 2);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  *(MutableState + 80) |= 9u;
}

void sub_1B582B2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 120);
  if (*(v5 + 76) == a2)
  {
    v6 = (v5 + 80);
  }

  else
  {
    v6 = (*(v5 + 8) + 8 * a2 + 8);
  }

  v7 = *v6;
  *a3 = *v7;
  *(a3 + 4) = *(v7 + 4);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2, a3, 1);
  }
}

void sub_1B582B62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v74 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v68 = 0;
      v69[0] = 0;
      v69[1] = 0;
      v70 = &v74;
      fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(v7, &v68);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_139;
    }

    v12 = a2 & 0xC0000;
    v13 = 0x10425A810000;
    if ((a2 & 0xC0000) != 0)
    {
      v13 = 0x10425A850000;
    }

    v14 = v9 | v13;
    v15 = a2 & 0x300000;
    if ((a2 & 0x300000) != 0)
    {
      v14 |= 0x100000uLL;
    }

    v74 = v14;
    memset(&v67, 0, sizeof(v67));
    memset(&v66, 0, sizeof(v66));
    v65 = 0;
    (*(*v7 + 128))(v7, &v63);
    v16 = 0;
    v47 = v7;
LABEL_12:
    if (!v63)
    {
      if (v65 >= v64)
      {
        goto LABEL_131;
      }

      goto LABEL_17;
    }

    if (!(*(*v63 + 16))(v63))
    {
      if (v63)
      {
        v17 = (*(*v63 + 24))();
LABEL_18:
        v18 = (*(*v7 + 40))(v7, v17);
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v67.__end_ = v67.__begin_;
        v66.__end_ = v66.__begin_;
        if (v12)
        {
          std::vector<int>::reserve(&v67, v18);
        }

        if (v15)
        {
          std::vector<int>::reserve(&v66, v18);
        }

        v62 = 0;
        (*(*v7 + 136))(v7, v17, &v58);
        v19 = 1;
        while (1)
        {
          if (v58)
          {
            if ((*(*v58 + 24))(v58))
            {
              if (v58)
              {
                (*(*v58 + 8))();
                goto LABEL_80;
              }

LABEL_78:
              if (v61)
              {
                --*v61;
              }

LABEL_80:
              v7 = v47;
              if (!v12 || (std::__sort<std::__less<int,int> &,int *>(), v34 = v67.__end_ - v67.__begin_, v34 < 2))
              {
LABEL_85:
                if (!v15)
                {
                  goto LABEL_94;
                }

LABEL_86:
                std::__sort<std::__less<int,int> &,int *>();
                v37 = v66.__end_ - v66.__begin_;
                if (v37 >= 2)
                {
                  v38 = v37 - 1;
                  v39 = v66.__begin_ + 1;
                  while (*v39 != *(v39 - 1))
                  {
                    ++v39;
                    if (!--v38)
                    {
                      goto LABEL_94;
                    }
                  }

                  v74 = v74 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                }

                goto LABEL_94;
              }

              v35 = v34 - 1;
              v36 = v67.__begin_ + 1;
              while (*v36 != *(v36 - 1))
              {
                ++v36;
                if (!--v35)
                {
                  goto LABEL_85;
                }
              }

              v74 = v74 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
              if (v15)
              {
                goto LABEL_86;
              }

LABEL_94:
              if (v16 >= 1)
              {
                v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              (*(*v47 + 32))(&v58, v47, v17);
              fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v53);
              v48 = *&v58;
              v78 = v53;
              v40.n128_u32[0] = v58;
              if (*&v58 != v53 || (v48 = *(&v58 + 1), v78 = *&v59, v77 = v54, v76 = v55, v40.n128_u32[0] = HIDWORD(v58), *(&v58 + 1) != v54) || (v40.n128_f32[0] = v78, v78 != v76))
              {
                v41 = 1;
                goto LABEL_100;
              }

              v42 = v56;
              if (v61 - v60 == v57 - v56)
              {
                v41 = memcmp(v60, v56, v61 - v60) != 0;
LABEL_100:
                v42 = v56;
                if (v56)
                {
LABEL_101:
                  v57 = v42;
                  operator delete(v42);
                }
              }

              else
              {
                v41 = 1;
                if (v56)
                {
                  goto LABEL_101;
                }
              }

              if (v41)
              {
                fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v53);
                v48 = *&v58;
                v78 = v53;
                v43.n128_u32[0] = v58;
                if (*&v58 != v53 || (v48 = *(&v58 + 1), v78 = *&v59, v77 = v54, v76 = v55, v43.n128_u32[0] = HIDWORD(v58), *(&v58 + 1) != v54) || (v43.n128_f32[0] = v78, v78 != v76))
                {
                  v44 = 1;
                  goto LABEL_107;
                }

                v45 = v56;
                if (v61 - v60 == v57 - v56)
                {
                  v44 = memcmp(v60, v56, v61 - v60) != 0;
LABEL_107:
                  v45 = v56;
                  if (v56)
                  {
LABEL_108:
                    v57 = v45;
                    operator delete(v45);
                  }
                }

                else
                {
                  v44 = 1;
                  if (v56)
                  {
                    goto LABEL_108;
                  }
                }

                if (v44)
                {
                  v74 = v74 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }

                ++v16;
              }

              else if ((*(*v47 + 40))(v47, v17, v40) != 1)
              {
                v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              if (v60)
              {
                v61 = v60;
                operator delete(v60);
              }

              if (v70)
              {
                v71 = v70;
                operator delete(v70);
              }

              if (v63)
              {
                (*(*v63 + 32))(v63, v43);
              }

              else
              {
                ++v65;
              }

              goto LABEL_12;
            }

            if (v58)
            {
              v20 = (*(*v58 + 32))();
              goto LABEL_29;
            }
          }

          else if (v62 >= v60)
          {
            goto LABEL_78;
          }

          v20 = v59 + 56 * v62;
LABEL_29:
          v21 = *v20;
          v22 = *v20;
          if (*v20 != *(v20 + 4))
          {
            v74 = v74 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
            v22 = *(v20 + 4);
          }

          if (v21 | v22)
          {
            if (v21)
            {
              if (!v22)
              {
                goto LABEL_39;
              }

              goto LABEL_35;
            }

            v23 = v74;
          }

          else
          {
            v23 = v74 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
          }

          v74 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
          if (!v22)
          {
LABEL_39:
            v74 = v74 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
            if (v19)
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          }

LABEL_35:
          if (v19)
          {
            goto LABEL_44;
          }

LABEL_40:
          if (v21 < v68)
          {
            v74 = v74 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
          }

          if (v22 < SHIDWORD(v68))
          {
            v74 = v74 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
          }

LABEL_44:
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v53);
          v48 = *(v20 + 8);
          v78 = v53;
          if (v48 != v53 || (v24 = *(v20 + 16), v48 = *(v20 + 12), v78 = v24, v77 = v54, v76 = v55, v48 != v54) || v78 != v76 || (v25 = *(v20 + 24), v26 = *(v20 + 32) - v25, v27 = v56, v26 != v57 - v56) || memcmp(v25, v56, v26))
          {
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v48);
            v78 = *(v20 + 8);
            v77 = v48;
            if (v78 != v48 || (v28 = *(v20 + 16), v78 = *(v20 + 12), v77 = v28, v76 = v49, v75 = v50, v78 != v49) || v77 != v75)
            {
              v29 = 1;
              goto LABEL_53;
            }

            v32 = *(v20 + 24);
            v33 = *(v20 + 32) - v32;
            v30 = __p;
            if (v33 == v52 - __p)
            {
              v29 = memcmp(v32, __p, v33) != 0;
LABEL_53:
              v30 = __p;
              if (__p)
              {
LABEL_54:
                v52 = v30;
                operator delete(v30);
              }
            }

            else
            {
              v29 = 1;
              if (__p)
              {
                goto LABEL_54;
              }
            }

            v27 = v56;
            if (!v56)
            {
              goto LABEL_57;
            }

LABEL_56:
            v57 = v27;
            operator delete(v27);
            goto LABEL_57;
          }

          v29 = 0;
          if (v27)
          {
            goto LABEL_56;
          }

LABEL_57:
          if (v29)
          {
            v74 = v74 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
          }

          v31 = *(v20 + 48);
          if (v31 <= v17)
          {
            v74 = v74 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          }

          if (v31 != v17 + 1)
          {
            v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v68 = *v20;
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v69, v20 + 8);
          v73 = *(v20 + 48);
          if (v12)
          {
            std::vector<int>::push_back[abi:ne200100](&v67.__begin_, v20);
          }

          if (v15)
          {
            std::vector<int>::push_back[abi:ne200100](&v66.__begin_, (v20 + 4));
          }

          if (v58)
          {
            (*(*v58 + 40))(v58);
            v19 = 0;
          }

          else
          {
            v19 = 0;
            ++v62;
          }
        }
      }

LABEL_17:
      v17 = v65;
      goto LABEL_18;
    }

    if (v63)
    {
      (*(*v63 + 8))();
    }

LABEL_131:
    if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
    {
      v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    if (v66.__begin_)
    {
      v66.__end_ = v66.__begin_;
      operator delete(v66.__begin_);
    }

    if (v67.__begin_)
    {
      v67.__end_ = v67.__begin_;
      operator delete(v67.__begin_);
    }

    v9 = v74;
LABEL_139:
    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B582C0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B582C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B582CD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>();
  }

  _Unwind_Resume(exception_object);
}

void fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v26);
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v21);
  v33 = v26;
  v32 = v21;
  v6 = *&v26 != v21 || (v33 = HIDWORD(v26), v32 = v27, v31 = v22, v30 = v23, *(&v26 + 1) != v22) || v32 != v30 || v29 - v28 != v25 - __p || memcmp(v28, __p, v29 - v28) != 0;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v6)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_26;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_25;
    }

LABEL_23:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_23;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_25:
  ++*(a1 + 48);
LABEL_26:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * a2);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void sub_1B582CFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D33768;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D33768;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D337A8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B582D190(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D337A8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B582D49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 56 * v27;
    *(a1 + 16) = v26;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(56 * v24, 0x10100407878D4B7uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[7 * v13];
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
  }

  v20 = 0;
LABEL_13:
  v15 += 7;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    *(v15 - 7) = *v23;
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v15 - 6), v23 + 8);
    *(v15 - 2) = *(v23 + 48);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 7;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 56 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B582D778(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

void *fst::ComposeFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::ComposeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D333A8;
  a1[1] = 0;
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1[1];
    if (v6)
    {
      v7 = v6[14] - 1;
      v6[14] = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    a1[1] = v5;
  }

  else
  {
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

_DWORD *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    ++*(a2 + 56);
  }

  result = *(a1 + 8);
  if (result)
  {
    v6 = result[14] - 1;
    result[14] = v6;
    if (!v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) = a2;
  return result;
}

void *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D336B8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::ComposeFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v19 + 64) - v7) >> 3);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 56 * v20 + 48);
      do
      {
        v14 = *v12;
        v12 += 14;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 84);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D338A8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B582DEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::quasar::ScoreTuple>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<kaldi::quasar::WordConf>::__emplace_back_slow_path<kaldi::quasar::WordConf const&>(uint64_t a1, const kaldi::quasar::WordConf *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>>(a1, v6);
  }

  v13 = 0;
  v14 = 264 * v2;
  kaldi::quasar::WordConf::WordConf((264 * v2), a2);
  v15 = (264 * v2 + 264);
  v7 = *(a1 + 8);
  v8 = 264 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>,kaldi::quasar::WordConf*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::WordConf>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5830200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::WordConf>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>,kaldi::quasar::WordConf*>(uint64_t a1, kaldi::quasar::WordConf *a2, kaldi::quasar::WordConf *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = *(v6 + 3);
      *(a4 + 64) = *(v6 + 8);
      *(a4 + 48) = v9;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 6) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 11);
      *(a4 + 72) = v10;
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      v11 = *(v6 + 6);
      *(a4 + 112) = *(v6 + 14);
      *(a4 + 96) = v11;
      *(v6 + 12) = 0;
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 17);
      *(a4 + 120) = v12;
      *(v6 + 15) = 0;
      *(v6 + 16) = 0;
      *(v6 + 17) = 0;
      v13 = *(v6 + 20);
      *(a4 + 144) = *(v6 + 9);
      *(a4 + 160) = v13;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 23);
      *(v6 + 21) = 0;
      *(v6 + 22) = 0;
      *(v6 + 23) = 0;
      v14 = *(v6 + 12);
      *(a4 + 208) = *(v6 + 52);
      *(a4 + 192) = v14;
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 216) = 0;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 29);
      *(v6 + 27) = 0;
      *(v6 + 28) = 0;
      *(v6 + 29) = 0;
      *(a4 + 240) = 0;
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 240) = *(v6 + 15);
      *(a4 + 256) = *(v6 + 32);
      *(v6 + 30) = 0;
      *(v6 + 31) = 0;
      *(v6 + 32) = 0;
      v6 = (v6 + 264);
      a4 += 264;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      kaldi::quasar::WordConf::~WordConf(v5);
      v5 = (v15 + 264);
    }
  }
}

uint64_t std::__split_buffer<kaldi::quasar::WordConf>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    kaldi::quasar::WordConf::~WordConf((i - 264));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::vector<kaldi::quasar::WordConf>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::quasar::WordConf> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<kaldi::quasar::WordConf>::__init_with_size[abi:ne200100]<kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(v3, *a2, a2[1], 0xF83E0F83E0F83E1 * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<kaldi::quasar::WordConf>>::__emplace_back_slow_path<std::vector<kaldi::quasar::WordConf> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<kaldi::quasar::WordConf>::__init_with_size[abi:ne200100]<kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(24 * v2, *a2, a2[1], 0xF83E0F83E0F83E1 * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<kaldi::quasar::WordConf>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5830560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<kaldi::quasar::WordConf>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<kaldi::quasar::WordConf>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<kaldi::quasar::WordConf>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<kaldi::quasar::WordConf>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<kaldi::quasar::WordConf>>::__assign_with_size[abi:ne200100]<std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*>(uint64_t a1, kaldi::quasar::WordConf **a2, kaldi::quasar::WordConf **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<kaldi::quasar::WordConf>>::__vdeallocate(a1);
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

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<kaldi::quasar::WordConf> *,std::vector<kaldi::quasar::WordConf> *,std::vector<kaldi::quasar::WordConf> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<kaldi::quasar::WordConf> *,std::vector<kaldi::quasar::WordConf> *,std::vector<kaldi::quasar::WordConf> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<kaldi::quasar::WordConf>>,std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*,std::vector<kaldi::quasar::WordConf>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

kaldi::quasar::WordConf **std::__copy_impl::operator()[abi:ne200100]<std::vector<kaldi::quasar::WordConf> *,std::vector<kaldi::quasar::WordConf> *,std::vector<kaldi::quasar::WordConf> *>(int a1, kaldi::quasar::WordConf **a2, kaldi::quasar::WordConf **a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<kaldi::quasar::WordConf>::__assign_with_size[abi:ne200100]<kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(a4, *v5, v5[1], 0xF83E0F83E0F83E1 * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<kaldi::quasar::WordConf>::__assign_with_size[abi:ne200100]<kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(uint64_t a1, kaldi::quasar::WordConf *a2, kaldi::quasar::WordConf *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<kaldi::quasar::WordConf>::__vdeallocate(a1);
    if (a4 <= 0xF83E0F83E0F83ELL)
    {
      v9 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
      {
        v10 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::quasar::WordConf>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xF83E0F83E0F83E1 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        kaldi::quasar::WordConf::operator=(v8, v6);
        v6 += 264;
        v8 = (v8 + 264);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 264);
      kaldi::quasar::WordConf::~WordConf(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        kaldi::quasar::WordConf::operator=(v8, v14);
        v14 += 264;
        v8 = (v8 + 264);
        v13 -= 264;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::WordConf>,kaldi::quasar::WordConf*,kaldi::quasar::WordConf*,kaldi::quasar::WordConf*>(a1, (v6 + v12), a3, v11);
  }
}

void std::vector<kaldi::quasar::WordConf>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        kaldi::quasar::WordConf::~WordConf((v3 - 264));
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

uint64_t *std::__hash_table<std::__hash_value_type<int,kaldi::quasar::ScoreTuple>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::quasar::ScoreTuple>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::quasar::ScoreTuple>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::quasar::ScoreTuple>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void *std::__hash_table<std::__hash_value_type<long long,std::string>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::string>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::string>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::string>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::ChosenArc>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::ChosenArc>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 104)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<kaldi::ChosenArc>::__construct_one_at_end[abi:ne200100]<kaldi::ChosenArc const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(v3 + 60) = *(a2 + 60);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  *(v3 + 16) = v4;
  *v3 = *a2;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *(a1 + 8) = v3 + 104;
  return result;
}

uint64_t std::vector<kaldi::ChosenArc>::__emplace_back_slow_path<kaldi::ChosenArc const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::ChosenArc>>(a1, v6);
  }

  v7 = 104 * v2;
  v17 = 0;
  v18 = v7;
  v19 = (104 * v2);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(104 * v2 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *&v19 = v19 + 104;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<kaldi::ChosenArc>::~__split_buffer(&v17);
  return v16;
}

void sub_1B58310F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::ChosenArc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::ChosenArc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(a4 + 60) = *(v6 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v10 = *(v5 + 80);
      if (v10)
      {
        *(v5 + 88) = v10;
        operator delete(v10);
      }

      v5 += 104;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 104;
  }
}

uint64_t std::__split_buffer<kaldi::ChosenArc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::ChosenArc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::ChosenArc>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 104;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 104;
    }
  }
}

uint64_t std::vector<std::vector<kaldi::ChosenArc>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::ChosenArc> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<kaldi::ChosenArc>::__init_with_size[abi:ne200100]<kaldi::ChosenArc*,kaldi::ChosenArc*>(v3, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<kaldi::ChosenArc>>::__emplace_back_slow_path<std::vector<kaldi::ChosenArc> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<kaldi::ChosenArc>::__init_with_size[abi:ne200100]<kaldi::ChosenArc*,kaldi::ChosenArc*>(24 * v2, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<kaldi::ChosenArc>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B58314F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<kaldi::ChosenArc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::ChosenArc>::__init_with_size[abi:ne200100]<kaldi::ChosenArc*,kaldi::ChosenArc*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::ChosenArc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5831570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::ChosenArc>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::ChosenArc>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*,kaldi::ChosenArc*,kaldi::ChosenArc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(v4 + 60) = *(v6 + 60);
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 16) = v7;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 80) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 80, *(v6 + 80), *(v6 + 88), (*(v6 + 88) - *(v6 + 80)) >> 2);
      v6 += 104;
      v4 = v14 + 104;
      v14 += 104;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ChosenArc>,kaldi::ChosenArc*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void **std::__split_buffer<std::vector<kaldi::ChosenArc>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<kaldi::ChosenArc>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<kaldi::ChosenArc>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v66 = *(a2 - 1);
        v67 = v9[1];
        if (v66 > v67)
        {
          v68 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v68;
          v9[1] = v66;
          *(a2 - 1) = v67;
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
      v69 = v9 + 3;
      v70 = v9[3];
      v71 = v9 + 1;
      v72 = v9[1];
      v73 = v9[5];
      if (v70 <= v72)
      {
        if (v73 > v70)
        {
          v79 = *(v9 + 2);
          v80 = *(v9 + 4);
          *(v9 + 2) = v80;
          *(v9 + 4) = v79;
          v9[3] = v73;
          v9[5] = v70;
          if (v73 > v72)
          {
            v81 = *v9;
            *v9 = v80;
            *(v9 + 2) = v81;
            goto LABEL_108;
          }

LABEL_109:
          v73 = v70;
        }
      }

      else
      {
        v74 = *v9;
        if (v73 > v70)
        {
          *v9 = v9[4];
          *(v9 + 4) = v74;
          goto LABEL_107;
        }

        *v9 = v9[2];
        *(v9 + 2) = v74;
        v9[1] = v70;
        v9[3] = v72;
        if (v73 > v72)
        {
          v9[2] = v9[4];
          *(v9 + 4) = v74;
          v71 = v9 + 3;
LABEL_107:
          v69 = v9 + 5;
          v70 = v72;
LABEL_108:
          *v71 = v73;
          *v69 = v72;
          goto LABEL_109;
        }
      }

      v83 = *(a2 - 1);
      if (v83 <= v73)
      {
        return result;
      }

      v84 = *(v9 + 4);
      v9[4] = *(a2 - 2);
      *(a2 - 2) = v84;
      v9[5] = v83;
      *(a2 - 1) = v73;
      v76 = v9[5];
      v85 = v9[3];
      if (v76 <= v85)
      {
        return result;
      }

      v86 = *(v9 + 2);
      v87 = *(v9 + 4);
      *(v9 + 2) = v87;
      *(v9 + 4) = v86;
      v9[3] = v76;
      v9[5] = v85;
      v77 = v9[1];
      if (v76 <= v77)
      {
        return result;
      }

      v88 = *v9;
      *v9 = v87;
      *(v9 + 2) = v88;
LABEL_114:
      v9[1] = v76;
      v9[3] = v77;
      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,std::pair<int,float> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v15 = v13[1];
      v16 = v9[1];
      if (v15 <= v16)
      {
        if (v14 > v15)
        {
          v21 = *v13;
          *v13 = *(a2 - 2);
          *(a2 - 2) = v21;
          v13[1] = v14;
          *(a2 - 1) = v15;
          v22 = v13[1];
          v23 = v9[1];
          if (v22 > v23)
          {
            v24 = *v9;
            *v9 = *v13;
            *v13 = v24;
            v9[1] = v22;
            v13[1] = v23;
          }
        }
      }

      else
      {
        v17 = *v9;
        if (v14 > v15)
        {
          *v9 = *(a2 - 2);
          *(a2 - 2) = v17;
          v9[1] = v14;
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v17;
        v9[1] = v15;
        v13[1] = v16;
        v29 = *(a2 - 1);
        if (v29 > v16)
        {
          *v13 = *(a2 - 2);
          *(a2 - 2) = v17;
          v13[1] = v29;
LABEL_29:
          *(a2 - 1) = v16;
        }
      }

      v30 = v13 - 2;
      v31 = *(v13 - 1);
      v32 = v9[3];
      v33 = *(a2 - 3);
      if (v31 <= v32)
      {
        if (v33 > v31)
        {
          v35 = *v30;
          *v30 = *(a2 - 4);
          *(a2 - 4) = v35;
          *(v13 - 1) = v33;
          *(a2 - 3) = v31;
          v36 = *(v13 - 1);
          v37 = v9[3];
          if (v36 > v37)
          {
            v38 = *(v9 + 2);
            v9[2] = *v30;
            *v30 = v38;
            v9[3] = v36;
            *(v13 - 1) = v37;
          }
        }
      }

      else
      {
        v34 = *(v9 + 2);
        if (v33 > v31)
        {
          v9[2] = *(a2 - 4);
          *(a2 - 4) = v34;
          v9[3] = v33;
          goto LABEL_43;
        }

        v9[2] = *v30;
        *v30 = v34;
        v9[3] = v31;
        *(v13 - 1) = v32;
        v40 = *(a2 - 3);
        if (v40 > v32)
        {
          *v30 = *(a2 - 4);
          *(a2 - 4) = v34;
          *(v13 - 1) = v40;
LABEL_43:
          *(a2 - 3) = v32;
        }
      }

      v41 = v13 + 2;
      v42 = v13[3];
      v43 = v9[5];
      v44 = *(a2 - 5);
      if (v42 <= v43)
      {
        if (v44 > v42)
        {
          v46 = *v41;
          *v41 = *(a2 - 6);
          *(a2 - 6) = v46;
          v13[3] = v44;
          *(a2 - 5) = v42;
          v47 = v13[3];
          v48 = v9[5];
          if (v47 > v48)
          {
            v49 = *(v9 + 4);
            v9[4] = *v41;
            *v41 = v49;
            v9[5] = v47;
            v13[3] = v48;
          }
        }
      }

      else
      {
        v45 = *(v9 + 4);
        if (v44 > v42)
        {
          v9[4] = *(a2 - 6);
          *(a2 - 6) = v45;
          v9[5] = v44;
          goto LABEL_52;
        }

        v9[4] = *v41;
        *v41 = v45;
        v9[5] = v42;
        v13[3] = v43;
        v50 = *(a2 - 5);
        if (v50 > v43)
        {
          *v41 = *(a2 - 6);
          *(a2 - 6) = v45;
          v13[3] = v50;
LABEL_52:
          *(a2 - 5) = v43;
        }
      }

      v51 = v13[1];
      v52 = *(v13 - 1);
      v53 = v13[3];
      if (v51 <= v52)
      {
        v54 = *v13;
        if (v53 <= v51)
        {
LABEL_59:
          v52 = v51;
        }

        else
        {
          v55 = *v41;
          *v13 = *v41;
          *v41 = v54;
          v13[1] = v53;
          v13[3] = v51;
          if (v53 <= v52)
          {
            v52 = v53;
            v54 = v55;
          }

          else
          {
            v54 = *v30;
            *v30 = v55;
            *v13 = v54;
            *(v13 - 1) = v53;
            v13[1] = v52;
          }
        }
      }

      else
      {
        v54 = *v30;
        if (v53 > v51)
        {
          *v30 = *v41;
          *v41 = v54;
          *(v13 - 1) = v53;
          v13[3] = v52;
          v54 = *v13;
          goto LABEL_59;
        }

        *v30 = *v13;
        *v13 = v54;
        *(v13 - 1) = v51;
        v13[1] = v52;
        if (v53 > v52)
        {
          v61 = *v41;
          *v13 = *v41;
          *v41 = v54;
          v13[1] = v53;
          v13[3] = v52;
          v52 = v53;
          v54 = v61;
        }
      }

      v56 = *v9;
      *v9 = v54;
      *v13 = v56;
      v57 = *(v9 + 1);
      v9[1] = v52;
      *(v13 + 1) = v57;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = v9[1];
    v19 = v13[1];
    if (v18 > v19)
    {
      v20 = *v13;
      if (v14 > v18)
      {
        *v13 = *(a2 - 2);
        *(a2 - 2) = v20;
        v13[1] = v14;
        goto LABEL_38;
      }

      *v13 = *v9;
      *v9 = v20;
      v13[1] = v18;
      v9[1] = v19;
      v39 = *(a2 - 1);
      if (v39 > v19)
      {
        *v9 = *(a2 - 2);
        *(a2 - 2) = v20;
        v9[1] = v39;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v14 <= v18)
    {
      goto LABEL_39;
    }

    v25 = *v9;
    *v9 = *(a2 - 2);
    *(a2 - 2) = v25;
    v9[1] = v14;
    *(a2 - 1) = v18;
    v26 = v9[1];
    v27 = v13[1];
    if (v26 <= v27)
    {
      goto LABEL_39;
    }

    v28 = *v13;
    *v13 = *v9;
    *v9 = v28;
    v13[1] = v26;
    v9[1] = v27;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) <= v9[1])
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::quasar::SortPred &>(v9, a2);
      v9 = result;
      goto LABEL_71;
    }

LABEL_62:
    v58 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::quasar::SortPred &>(v9, a2);
    if ((v59 & 1) == 0)
    {
      goto LABEL_69;
    }

    v60 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(v9, v58);
    v9 = v58 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(v58 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v58;
      if (v60)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v60)
    {
LABEL_69:
      result = std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(v8, v58, a3, -v11, a5 & 1);
      v9 = v58 + 2;
LABEL_71:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v62 = v9[3];
  v63 = v9[1];
  v64 = *(a2 - 1);
  if (v62 <= v63)
  {
    if (v64 <= v62)
    {
      return result;
    }

    v75 = *(v9 + 2);
    v9[2] = *(a2 - 2);
    *(a2 - 2) = v75;
    v9[3] = v64;
    *(a2 - 1) = v62;
    v76 = v9[3];
    v77 = v9[1];
    if (v76 <= v77)
    {
      return result;
    }

    v78 = *v9;
    *v9 = v9[2];
    v9[2] = v78;
    goto LABEL_114;
  }

  v65 = *v9;
  if (v64 <= v62)
  {
    *v9 = v9[2];
    v9[2] = v65;
    v9[1] = v62;
    v9[3] = v63;
    v82 = *(a2 - 1);
    if (v82 <= v63)
    {
      return result;
    }

    v9[2] = *(a2 - 2);
    *(a2 - 2) = v65;
    v9[3] = v82;
  }

  else
  {
    *v9 = *(a2 - 2);
    *(a2 - 2) = v65;
    v9[1] = v64;
  }

  *(a2 - 1) = v63;
  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(uint64_t result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 8);
    if ((result + 8) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 > v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            v9 = result + v8;
            *(v9 + 8) = *(result + v8);
            *(v9 + 12) = *(result + v8 + 4);
            if (!v8)
            {
              break;
            }

            v8 -= 8;
            if (v5 <= *(v9 - 4))
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          *(v10 + 4) = v5;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = (result + 3);
      do
      {
        v4 = *(result + 3);
        v5 = *(result + 1);
        result = v2;
        if (v4 > v5)
        {
          v6 = *v2;
          v7 = v3;
          do
          {
            v8 = v7;
            *(v7 - 1) = *(v7 - 3);
            v9 = *(v7 - 2);
            v7 -= 2;
            *v8 = v9;
          }

          while (v4 > *(v8 - 4));
          *(v7 - 1) = v6;
          *v7 = v4;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::quasar::SortPred &>(float *a1, float *a2)
{
  v2 = a1[1];
  if (v2 <= *(a2 - 1))
  {
    v6 = (a1 + 2);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 4);
      v6 += 8;
    }

    while (v2 <= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v2 <= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v2 > v9);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v11 = *v4;
    *v4 = *v8;
    *v8 = v11;
    v12 = *(v4 + 4);
    *(v4 + 4) = v8[1];
    *(v8 + 1) = v12;
    do
    {
      v13 = *(v4 + 12);
      v4 += 8;
    }

    while (v2 <= v13);
    do
    {
      v14 = *(v8 - 1);
      v8 -= 2;
    }

    while (v2 > v14);
  }

  if ((v4 - 8) != a1)
  {
    *a1 = *(v4 - 8);
    a1[1] = *(v4 - 4);
  }

  *(v4 - 8) = v10;
  *(v4 - 4) = v2;
  return v4;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::quasar::SortPred &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 > v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 > v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 <= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      v13 = *(v10 + 4);
      *(v10 + 4) = v11[1];
      *(v11 + 1) = v13;
      do
      {
        v14 = *(v10 + 12);
        v10 += 8;
      }

      while (v14 > v4);
      do
      {
        v15 = *(v11 - 1);
        v11 -= 2;
      }

      while (v15 <= v4);
    }

    while (v10 < v11);
  }

  if ((v10 - 8) != a1)
  {
    *a1 = *(v10 - 8);
    a1[1] = *(v10 - 4);
  }

  *(v10 - 8) = v3;
  *(v10 - 4) = v4;
  return v10 - 8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 <= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_33;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 > v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 16);
        v40[7] = *(a1 + v39 + 20);
        if (v39 == -16)
        {
          break;
        }

        v39 -= 8;
        if (v37 <= v40[3])
        {
          v41 = a1 + v39 + 24;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 4) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 8;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,std::pair<int,float> *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(a1, a4, v8, v11);
        v11 -= 2;
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
        v13 = v12[1];
        v14 = a1[1];
        if (v13 > v14)
        {
          v15 = *v12;
          *v12 = *a1;
          *a1 = v15;
          v12[1] = v14;
          a1[1] = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v16 = 0;
        v17 = *a1;
        v18 = *(a1 + 1);
        v19 = a1;
        do
        {
          v20 = &v19[2 * v16];
          v21 = v20 + 2;
          v22 = (2 * v16) | 1;
          v16 = 2 * v16 + 2;
          if (v16 >= v8)
          {
            v16 = v22;
          }

          else
          {
            v23 = v20[3];
            v24 = v20[5];
            v25 = v20 + 4;
            if (v23 <= v24)
            {
              v16 = v22;
            }

            else
            {
              v21 = v25;
            }
          }

          *v19 = *v21;
          v19[1] = v21[1];
          v19 = v21;
        }

        while (v16 <= ((v8 - 2) >> 1));
        if (v21 == v6 - 2)
        {
          *v21 = v17;
          *(v21 + 1) = v18;
        }

        else
        {
          *v21 = *(v6 - 2);
          v21[1] = *(v6 - 1);
          *(v6 - 2) = v17;
          *(v6 - 1) = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(a1, (v21 + 2), a4, ((v21 + 2) - a1) >> 3);
        }

        v6 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
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
      if (v9 < a3 && v8[1] > v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = v8[1];
      v11 = a4[1];
      if (v10 <= v11)
      {
        v12 = *a4;
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          v13[1] = v10;
          if (v5 < v7)
          {
            break;
          }

          v14 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v15 = v14 + 2;
          if (v15 < a3 && v8[1] > v8[3])
          {
            v8 += 2;
            v7 = v15;
          }

          v10 = v8[1];
        }

        while (v10 <= v11);
        *a4 = v12;
        a4[1] = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 8 * v4;
    v6 = *(v5 + 4);
    v7 = *(a2 - 4);
    if (v6 > v7)
    {
      v10 = *(a2 - 8);
      v8 = a2 - 8;
      v9 = v10;
      do
      {
        v11 = v8;
        v8 = v5;
        *v11 = *v5;
        *(v11 + 4) = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 8 * v4;
        v6 = *(v5 + 4);
      }

      while (v6 > v7);
      *v8 = v9;
      *(v8 + 4) = v7;
    }
  }

  return result;
}

uint64_t std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__init_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(v3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__emplace_back_slow_path<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__init_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(24 * v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5832C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::__map_value_compare<int,std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

uint64_t std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__emplace_back_slow_path<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5832EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](a4, v6);
      v6 += 56;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        *(v5 + 32) = v7;
        operator delete(v7);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*>,std::__wrap_iter<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 56 * a5;
        std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__move_range(a1, a2, a1[1], a2 + 56 * a5);
        v17 = v18 + v7;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__move_range(a1, v5, v10, v5 + 56 * a5);
        v17 = v16 + v7;
      }

      std::__copy_impl::operator()[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
    if (v12 > 0x492492492492492)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>(a1, v15);
    }

    v19 = 8 * (v13 >> 3);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = 56 * a5;
    v21 = v19 + 56 * a5;
    do
    {
      std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](v19, v7);
      v19 += 56;
      v7 += 56;
      v20 -= 56;
    }

    while (v20);
    v24 = v21;
    v5 = std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = v7 + v10;
      v12 = v6 + v10;
      *v12 = *(v7 + v10);
      *(v12 + 8) = *(v7 + v10 + 8);
      v13 = *(v7 + v10 + 16);
      *(v6 + v10 + 24) = 0;
      v14 = v6 + v10 + 24;
      *(v14 - 8) = v13;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v14, *(v7 + v10 + 24), *(v7 + v10 + 32), (*(v7 + v10 + 32) - *(v7 + v10 + 24)) >> 2);
      *(v12 + 48) = *(v7 + v10 + 48);
      v10 += 56;
    }

    while (v11 + 56 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *>(&v16, a2, v7, v6);
}

uint64_t std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(a1, v7, a3, v9);
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

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](v4, v6);
      v6 += 56;
      v4 = v11 + 56;
      v11 += 56;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(v8 - 56) = *(a3 + v7 - 56);
      *(v8 - 48) = *(a3 + v7 - 48);
      fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a4 + v7 - 40), a3 + v7 - 40);
      *(v8 - 8) = *(a3 + v7 - 8);
      v7 -= 56;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    *(a4 + 8) = *(v5 + 8);
    fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=((a4 + 16), v5 + 16);
    *(a4 + 48) = *(v5 + 48);
    a4 += 56;
    v5 += 56;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__init_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5833678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](v4, v6);
      v6 += 56;
      v4 = v11 + 56;
      v11 += 56;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
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

void sub_1B58339E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[13];
      if (v4)
      {
        v2[14] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,kaldi::ChosenArc>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[13];
    if (v3)
    {
      __p[14] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5833DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__init_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(v4, *v6, v6[1], 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t std::unordered_map<unsigned long,short>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,short>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,short>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,short>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,short>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,short> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,short>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,short>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,short>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,short>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,short> const&>(void *a1, unint64_t *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::vector<std::pair<int,float>>>::__assign_with_size[abi:ne200100]<std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(uint64_t *a1, uint64_t **a2, uint64_t **a3, unint64_t a4)
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

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *>(&v19, a2, a3, v8);
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
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,float>>>,std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__assign_with_size[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__vdeallocate(a1);
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

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__vdeallocate(void ***a1)
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
        std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
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

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__assign_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(a4, *v5, v5[1], 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__assign_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__vdeallocate(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 32);
        if (v15)
        {
          *(v14 - 24) = v15;
          operator delete(v15);
        }

        v14 -= 56;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(&v16, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(a1, a2 + v11, a3, a1[1]);
  }
}

void std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,short>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,short>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,short>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,short>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::vector<std::vector<kaldi::ChosenArc>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 56);
  v4 = *v5;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 3);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[5] = 0;
  v5[6] = 0;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v5 + 7);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D335E8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D33BB8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B58352C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D33C20;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D335E8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D33BB8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a2);
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))(v9);
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  v3 = *(*(a1 + 64) + 8 * a2);
  v4 = *a3;
  v5 = *(a3 + 1);
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 2);
  *v3 = v4;
  *(v3 + 4) = v5;
  if (v3 != &v4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v3 + 16), __p, v7, (v7 - __p) >> 2);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1B5835C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>(void *a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v37 = 0;
  v38 = 0;
  v36 = -1;
  v36 = (*(*a1 + 24))(a1);
  v37 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v37 = fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) != 0)
  {
    v7 = 1;
    v6 = -1;
  }

  else
  {
    (*(**(v8 + 5) + 32))(&__p);
    v6 = v41;
    if (v41 != -1)
    {
      goto LABEL_3;
    }

    v7 = 1;
  }

LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::WriteFstHeader(a1, a2, a3, 2, &__p, v9 | 3, v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = 0;
    v13 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(&__p, a1, v12);
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Write(&__p, a2);
      if (__p.__r_.__value_.__r.__words[2])
      {
        v40 = __p.__r_.__value_.__r.__words[2];
        operator delete(__p.__r_.__value_.__r.__words[2]);
      }

      __p.__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v12);
      std::ostream::write();
      v14 = *(*(a1[1] + 64) + 8 * v12);
      v16 = *(v14 + 56);
      v15 = *(v14 + 64);
      if (v15 == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v14 + 56);
      }

      if (v15 != v16)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 3)) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 3);
        }

        do
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p.__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Write((v17 + 2), a2);
          LODWORD(__p.__r_.__value_.__l.__data_) = v17[12];
          std::ostream::write();
          v17 += 14;
          --v18;
        }

        while (v18);
      }

      ++v12;
    }

    while (v12 != v13);
    v7 = v11;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v19 = fst::LogMessage::LogMessage(&v30, &__p);
    v20 = fst::cerr(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "VectorFst::Write: write failed: ", 32);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
LABEL_31:
    fst::LogMessage::~LogMessage(&v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_34;
  }

  if (!v7)
  {
    if (v37 == v13)
    {
      updated = 1;
      goto LABEL_34;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&v30, &__p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_31;
  }

  v37 = v13;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::UpdateFstHeader(a1, a2, a3, 2, &__p, v9 | 3, v31, v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_34:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v33[0]) < 0)
  {
    operator delete(v32[0]);
  }

  return updated;
}

void sub_1B5836128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write();
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

void *fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Write(uint64_t a1, void *a2)
{
  v4 = a1 + 4;
  std::ostream::write();
  fst::LatticeWeightTpl<float>::Write(v4, a2);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
  {
    v5 = *(a1 + 24) - *(a1 + 16);
    std::ostream::write();
    if ((v5 >> 2) >= 1)
    {
      v6 = 0;
      v7 = (v5 >> 2) & 0x7FFFFFFF;
      do
      {
        std::ostream::write();
        ++v6;
      }

      while (v7 != v6);
    }
  }

  return a2;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B8C84B80](v32);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    v35 = 0u;
    v42 = a8;
    (*(*v17 + 40))(v33);
    if (v33[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v32);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v33, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v33, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x1B8C84B80](v33, a2);
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v42 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1B8C84B90](v33);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v33, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v33);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>::Type(void)::type;
}

void sub_1B58369C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  MEMORY[0x1B8C85350](v21, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::WriteFile(fst *a1, uint64_t a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
LABEL_5:
      std::ofstream::basic_ofstream(&v20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 40);
      v18 = *(v16 + 64) - *(v16 + 56);
      if (v18)
      {
        v19 = *(v16 + 56);
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 48);
        do
        {
          v23 = *(__p[0] + *v22);
          if (v23 == -1)
          {
            v25 = *(v22 - 6);
            v26.i64[0] = v25;
            v26.i64[1] = HIDWORD(v25);
            v17 = vaddq_s64(v17, vceqzq_s64(v26));
          }

          else
          {
            *v22 = v23;
            if (v20 != v21)
            {
              v34 = v17;
              v24 = (v19 + 56 * v21);
              *v24 = *(v22 - 6);
              fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v24 + 1), (v22 - 10));
              *(v19 + 56 * v21 + 48) = *v22;
              v14 = *v4;
              v17 = v34;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v27 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
        }

        while (v20 < v27);
        v28 = v17.i64[1];
        v29 = v17.i64[0];
      }

      else
      {
        v21 = 0;
        v27 = 0;
        v28 = *(v16 + 48);
        v29 = *(v16 + 40);
      }

      fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(v16, v27 - v21);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 40) = v29;
      *(v31 + 48) = v28;
      ++v15;
    }

    while (v15 < (v30 - v14) >> 3);
  }

  v32 = *(a1 + 88);
  if (v32 == -1)
  {
    v33 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v33 = __p[0];
    *(a1 + 88) = *(__p[0] + v32);
  }

  __p[1] = v33;
  operator delete(v33);
}

void sub_1B5837010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = a1[8] - 56;
    do
    {
      if (!*v4)
      {
        --a1[5];
      }

      if (!*(v4 + 4))
      {
        --a1[6];
      }

      v5 = *(v4 + 24);
      if (v5)
      {
        *(v4 + 32) = v5;
        operator delete(v5);
      }

      a1[8] = v4;
      v4 -= 56;
      --v2;
    }

    while (v2);
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 64);
    }

    while (v3 < (*(a1 + 72) - v2) >> 3);
  }

  *(a1 + 72) = v2;
  *(a1 + 88) = -1;
}

void fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::SetValue(uint64_t a1, float *a2)
{
  v4 = *(*(a1 + 8) + 56) + 56 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v37);
  v32 = *(v4 + 8);
  v45 = v37;
  if (v32 == v37 && (v32 = *(v4 + 12), v45 = *(v4 + 16), v44 = v38, v43 = v39, v32 == v38) && v45 == v43 && (v10 = *(v4 + 24), v11 = *(v4 + 32) - v10, v12 = v40, v11 == v41 - v40) && !memcmp(v10, v40, v11))
  {
    v15 = 0;
    if (v12)
    {
LABEL_23:
      v41 = v12;
      operator delete(v12);
    }
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v32);
    v45 = *(v4 + 8);
    v44 = v32;
    v15 = v45 != v32 || (v45 = *(v4 + 12), v44 = *(v4 + 16), v43 = v33, v42 = v34, v45 != v33) || v44 != v42 || (v13 = *(v4 + 24), v14 = *(v4 + 32) - v13, v14 != v36 - __p) || memcmp(v13, __p, v14) != 0;
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v12 = v40;
    if (v40)
    {
      goto LABEL_23;
    }
  }

  if (v15)
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v16 = 0x30FC30007;
  if (*a2 == *v4 && *(a2 + 1) == *(v4 + 4) && *(a2 + 12) == *(v4 + 48))
  {
    v16 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v17 = *a2;
  v18 = *(a2 + 1);
  if (*a2 != v18)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v17 == 0.0)
  {
    v19 = *(a1 + 16);
    v21 = *v19 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v19 = v21;
    if (!v18)
    {
      v20 = v21 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v19 = v20;
      goto LABEL_37;
    }
  }

  else if (!v18)
  {
    v19 = *(a1 + 16);
    v20 = *v19;
LABEL_37:
    *v19 = v20 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v37);
  v32 = a2[2];
  v45 = v37;
  if (v32 == v37 && (v22 = a2[4], v32 = a2[3], v45 = v22, v44 = v38, v43 = v39, v32 == v38) && v45 == v43 && (v23 = *(a2 + 3), v24 = *(a2 + 4) - v23, v25 = v40, v24 == v41 - v40) && !memcmp(v23, v40, v24))
  {
    v29 = 0;
    if (v25)
    {
LABEL_52:
      v41 = v25;
      operator delete(v25);
    }
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v32);
    v45 = a2[2];
    v44 = v32;
    v29 = v45 != v32 || (v26 = a2[4], v45 = a2[3], v44 = v26, v43 = v33, v42 = v34, v45 != v33) || v44 != v42 || (v27 = *(a2 + 3), v28 = *(a2 + 4) - v27, v28 != v36 - __p) || memcmp(v27, __p, v28) != 0;
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v25 = v40;
    if (v40)
    {
      goto LABEL_52;
    }
  }

  v30 = *(a1 + 16);
  v31 = *v30;
  if (v29)
  {
    v31 = v31 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    *v30 = v31;
  }

  *v30 = v31 & v16;
}

void sub_1B58375D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetArc(void *a1, _DWORD *a2, uint64_t a3)
{
  v4 = (a1[7] + 56 * a3);
  if (!*v4)
  {
    --a1[5];
  }

  if (!v4[1])
  {
    --a1[6];
  }

  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  *v4 = *a2;
  result = fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v4 + 2), (a2 + 2));
  v4[12] = a2[12];
  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 64);
  if (v6 == *(*(a1[8] + 8 * a2) + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 56);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = *(a3 + 1);
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v7 == 0.0)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= SLODWORD(v7))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v27);
  v22 = a3[2];
  v35 = v27;
  if (v22 == v27 && (v12 = a3[4], v22 = a3[3], v35 = v12, v34 = v28, v33 = v29, v22 == v28) && v35 == v33 && (v13 = *(a3 + 3), v14 = *(a3 + 4) - v13, v15 = v30, v14 == v31 - v30) && !memcmp(v13, v30, v14))
  {
    v19 = 0;
    if (v15)
    {
LABEL_31:
      v31 = v15;
      operator delete(v15);
    }
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v22);
    v35 = a3[2];
    v34 = v22;
    v19 = v35 != v22 || (v16 = a3[4], v35 = a3[3], v34 = v16, v33 = v23, v32 = v24, v35 != v23) || v34 != v32 || (v17 = *(a3 + 3), v18 = *(a3 + 4) - v17, v18 != v26 - __p) || memcmp(v17, __p, v18) != 0;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    v15 = v30;
    if (v30)
    {
      goto LABEL_31;
    }
  }

  v20 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  if (!v19)
  {
    v20 = v10;
  }

  if (*(a3 + 12) <= a2)
  {
    v20 = v20 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v20 & 0x4000000000) != 0)
  {
    return v20 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v20 & 0x5D7FFEB0007;
  }
}

void sub_1B5837968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(void *a1, int a2, uint64_t a3)
{
  v6 = *(a1[8] + 8 * a2);
  v23 = *v6;
  v24 = *(v6 + 1);
  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *(v6 + 2), *(v6 + 3), (*(v6 + 3) - *(v6 + 2)) >> 2);
  v18 = *a3;
  v19 = *(a3 + 4);
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(a1, a2, &v18);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  v7 = (*(*a1 + 24))(a1);
  v13 = v23;
  v14 = v24;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, v25, v26, (v26 - v25) >> 2);
  v8 = *a3;
  v9 = *(a3 + 4);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(v7, &v13, &v8);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_1B5837B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SetFinalProperties<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v29);
  v24 = *a2;
  v37 = v29;
  if (v24 == v29)
  {
    v6 = *(a2 + 8);
    v24 = *(a2 + 4);
    v37 = v6;
    v36 = v30;
    v35 = v31;
    if (v24 == v30 && v37 == v35)
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 24) - v7;
      v9 = v32;
      if (v8 == v33 - v32 && !memcmp(v7, v32, v8))
      {
        v13 = 0;
        if (!v9)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v24);
  v37 = *a2;
  v36 = v24;
  v13 = v37 != v24 || (v10 = *(a2 + 8), v37 = *(a2 + 4), v36 = v10, v35 = v25, v34 = v26, v37 != v25) || v36 != v34 || (v11 = *(a2 + 16), v12 = *(a2 + 24) - v11, v12 != v28 - __p) || memcmp(v11, __p, v12) != 0;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  v9 = v32;
  if (v32)
  {
LABEL_15:
    v33 = v9;
    operator delete(v9);
  }

LABEL_16:
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v29);
  v24 = *a3;
  v37 = v29;
  if (v24 == v29 && (v14 = *(a3 + 8), v24 = *(a3 + 4), v37 = v14, v36 = v30, v35 = v31, v24 == v30) && v37 == v35 && (v15 = *(a3 + 16), v16 = *(a3 + 24) - v15, v17 = v32, v16 == v33 - v32) && !memcmp(v15, v32, v16))
  {
    v21 = 0;
    if (v17)
    {
LABEL_30:
      v33 = v17;
      operator delete(v17);
    }
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v24);
    v37 = *a3;
    v36 = v24;
    v21 = v37 != v24 || (v18 = *(a3 + 8), v37 = *(a3 + 4), v36 = v18, v35 = v25, v34 = v26, v37 != v25) || v36 != v34 || (v19 = *(a3 + 16), v20 = *(a3 + 24) - v19, v20 != v28 - __p) || memcmp(v19, __p, v20) != 0;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    v17 = v32;
    if (v32)
    {
      goto LABEL_30;
    }
  }

  v22 = a1 & 0xFFFFFFFEFFFFFFFFLL;
  if (!v13)
  {
    v22 = a1;
  }

  if (v21)
  {
    v22 = v22 & 0x3FCFFFF0007 | 0x100000000;
  }

  return v22 & 0x3FFFFFF0007;
}

void sub_1B5837E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0x6DB6DB6DB6DB6DB7 * ((a2[3] - v9) >> 3))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 56 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(v10);
        (*(*a1 + 184))(a1, v7, v10);
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }

        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B5838150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](a1 + 2);
  v4 = (*(**a1 + 40))(*a1, a2);
  std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::reserve(a1 + 2, v4);
  v5 = *a1;
  v13 = 0;
  (*(*v5 + 136))(v5, a2, v11);
  while (1)
  {
    if (!v11[0])
    {
      if (v13 >= v11[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v6 = v11[1] + 56 * v13;
      goto LABEL_8;
    }

    if ((*(*v11[0] + 24))(v11[0]))
    {
      break;
    }

    if (!v11[0])
    {
      goto LABEL_7;
    }

    v6 = (*(*v11[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::push_back[abi:ne200100](a1 + 2, v6);
    if (v11[0])
    {
      (*(*v11[0] + 40))(v11[0]);
    }

    else
    {
      ++v13;
    }
  }

  if (v11[0])
  {
    (*(*v11[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v12)
  {
    --*v12;
  }

LABEL_15:
  v7 = a1[2];
  v8 = a1[3];
  v9 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,false>(v7, v8, v11, v10, 1);
}

void sub_1B5838360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,false>(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v30 = (a2 - 7);
  v10 = a1;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = ((a2 - v10) >> 3) * v9;
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(v10, v10 + 56, v30);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(v10, v10 + 56, v10 + 112, v30);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(v10, v10 + 56, v10 + 112, v10 + 168, v30);
          return;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v27 = *(a2 - 7);
        v26 = a2 - 7;
        v50 = v27;
        v51 = *(v26 + 2);
        v52 = *(v26 + 12);
        v54 = 0;
        v55 = 0;
        v53 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v53, v26[3], v26[4], (v26[4] - v26[3]) >> 2);
        v56 = *(v26 + 12);
        v43 = *v10;
        v44 = *(v10 + 8);
        v45 = *(v10 + 12);
        v47 = 0;
        v48 = 0;
        v46 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 2);
        v49 = *(v10 + 48);
        v28 = v50;
        v29 = v43;
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        if (v28 < v29)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v10, v26);
        }

        return;
      }
    }

    if (v13 <= 1343)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(v10, a2);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      break;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 56 * (v14 >> 1));
    if (v13 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(v16, v10, v30);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(v10, v16, v30);
      v17 = v10 + 56;
      v18 = v9;
      v19 = 56 * v15;
      v20 = 56 * v15 + a1 - 56;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1 + 56, v20, (a2 - 14));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1 + 112, v17 + v19, (a2 - 21));
      v21 = v17 + v19;
      v9 = v18;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(v20, v16, v21);
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, v16);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v36 = *(a1 - 56);
    v37 = *(a1 - 48);
    v38 = *(a1 - 44);
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, *(a1 - 32), *(a1 - 24), (*(a1 - 24) - *(a1 - 32)) >> 2);
    v42 = *(a1 - 8);
    v31 = *a1;
    v33 = 0;
    v34 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    v35 = *(a1 + 48);
    v22 = v36;
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v22 >= v31)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &>(a1, a2);
      goto LABEL_27;
    }

LABEL_22:
    v23 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &>(a1, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, v23);
    v10 = v23 + 56;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(v23 + 56, a2))
    {
      a4 = -v12;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v25)
    {
LABEL_25:
      std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,false>(a1, v23, a3, -v12, a5 & 1);
      v10 = v23 + 56;
LABEL_27:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v10 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(v10, a2, a2, a3);
  }
}

void sub_1B58387AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = *a2;
  v86 = *(a2 + 8);
  v87 = *(a2 + 12);
  v89 = 0;
  v90 = 0;
  v88 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v88, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v91 = *(a2 + 48);
  v78 = *a1;
  v79 = *(a1 + 8);
  v80 = *(a1 + 12);
  v82 = 0;
  v83 = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v81 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v81, v6, v7, (v7 - v6) >> 2);
  v84 = *(a1 + 48);
  v8 = v85;
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v8 < v78)
  {
    v43 = *a3;
    v44 = *(a3 + 8);
    v45 = *(a3 + 12);
    v47 = 0;
    v48 = 0;
    v46 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 2);
    v49 = *(a3 + 48);
    v36 = *a2;
    v37 = *(a2 + 8);
    v38 = *(a2 + 12);
    v40 = 0;
    v41 = 0;
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v9, v10, (v10 - v9) >> 2);
    v42 = *(a2 + 48);
    v11 = v43;
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v11 >= v36)
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2);
      v29 = *a3;
      v30 = *(a3 + 8);
      v31 = *(a3 + 12);
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v32, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 2);
      v35 = *(a3 + 48);
      v24 = *a2;
      v26 = 0;
      v27 = 0;
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
      v25 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, v20, v21, (v21 - v20) >> 2);
      v28 = *(a2 + 48);
      v22 = v29;
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v22 >= v24)
      {
        return 1;
      }

      v12 = a2;
    }

    else
    {
      v12 = a1;
    }

    v19 = a3;
LABEL_30:
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v12, v19);
    return 1;
  }

  v71 = *a3;
  v72 = *(a3 + 8);
  v73 = *(a3 + 12);
  v75 = 0;
  v76 = 0;
  v74 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v74, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 2);
  v77 = *(a3 + 48);
  v64 = *a2;
  v65 = *(a2 + 8);
  v66 = *(a2 + 12);
  v68 = 0;
  v69 = 0;
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v67 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v67, v13, v14, (v14 - v13) >> 2);
  v70 = *(a2 + 48);
  v15 = v71;
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v15 < v64)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a2, a3);
    v57 = *a2;
    v58 = *(a2 + 8);
    v59 = *(a2 + 12);
    v61 = 0;
    v62 = 0;
    v60 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v60, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
    v63 = *(a2 + 48);
    v50 = *a1;
    v51 = *(a1 + 8);
    v52 = *(a1 + 12);
    v54 = 0;
    v55 = 0;
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v53 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v53, v16, v17, (v17 - v16) >> 2);
    v56 = *(a1 + 48);
    v18 = v57;
    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v18 >= v50)
    {
      return 1;
    }

    v12 = a1;
    v19 = a2;
    goto LABEL_30;
  }

  return 0;
}

void sub_1B5838BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (__p)
  {
    *v47 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1, a2, a3);
  v50 = *a4;
  v51 = *(a4 + 8);
  v52 = *(a4 + 12);
  v54 = 0;
  v55 = 0;
  v53 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v53, *(a4 + 24), *(a4 + 32), (*(a4 + 32) - *(a4 + 24)) >> 2);
  v56 = *(a4 + 48);
  v43 = *a3;
  v44 = *(a3 + 8);
  v45 = *(a3 + 12);
  v47 = 0;
  v48 = 0;
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v46 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, v8, v9, (v9 - v8) >> 2);
  v49 = *(a3 + 48);
  v10 = v50;
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v10 < v43)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a3, a4);
    v36 = *a3;
    v37 = *(a3 + 8);
    v38 = *(a3 + 12);
    v40 = 0;
    v41 = 0;
    v39 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 2);
    v42 = *(a3 + 48);
    v29 = *a2;
    v30 = *(a2 + 8);
    v31 = *(a2 + 12);
    v33 = 0;
    v34 = 0;
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v11, v12, (v12 - v11) >> 2);
    v35 = *(a2 + 48);
    v13 = v36;
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v13 < v29)
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a2, a3);
      v22 = *a2;
      v23 = *(a2 + 8);
      v24 = *(a2 + 12);
      v26 = 0;
      v27 = 0;
      v25 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
      v28 = *(a2 + 48);
      v17 = *a1;
      v19 = 0;
      v20 = 0;
      v14 = *(a1 + 24);
      v15 = *(a1 + 32);
      v18 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, v14, v15, (v15 - v14) >> 2);
      v21 = *(a1 + 48);
      v16 = v22;
      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v16 < v17)
      {
        std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2);
      }
    }
  }
}

void sub_1B5838EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    *v33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1, a2, a3, a4);
  v69 = *a5;
  v70 = *(a5 + 8);
  v71 = *(a5 + 12);
  v73 = 0;
  v74 = 0;
  v72 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v72, *(a5 + 24), *(a5 + 32), (*(a5 + 32) - *(a5 + 24)) >> 2);
  v75 = *(a5 + 48);
  v62 = *a4;
  v63 = *(a4 + 8);
  v64 = *(a4 + 12);
  v66 = 0;
  v67 = 0;
  v10 = *(a4 + 24);
  v11 = *(a4 + 32);
  v65 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v65, v10, v11, (v11 - v10) >> 2);
  v68 = *(a4 + 48);
  v12 = v69;
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v12 < v62)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a4, a5);
    v55 = *a4;
    v56 = *(a4 + 8);
    v57 = *(a4 + 12);
    v59 = 0;
    v60 = 0;
    v58 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v58, *(a4 + 24), *(a4 + 32), (*(a4 + 32) - *(a4 + 24)) >> 2);
    v61 = *(a4 + 48);
    v48 = *a3;
    v49 = *(a3 + 8);
    v50 = *(a3 + 12);
    v52 = 0;
    v53 = 0;
    v13 = *(a3 + 24);
    v14 = *(a3 + 32);
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13, v14, (v14 - v13) >> 2);
    v54 = *(a3 + 48);
    v15 = v55;
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v15 < v48)
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a3, a4);
      v41 = *a3;
      v42 = *(a3 + 8);
      v43 = *(a3 + 12);
      v45 = 0;
      v46 = 0;
      v44 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v44, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 2);
      v47 = *(a3 + 48);
      v34 = *a2;
      v35 = *(a2 + 8);
      v36 = *(a2 + 12);
      v38 = 0;
      v39 = 0;
      v16 = *(a2 + 24);
      v17 = *(a2 + 32);
      v37 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v37, v16, v17, (v17 - v16) >> 2);
      v40 = *(a2 + 48);
      v18 = v41;
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      if (v18 < v34)
      {
        std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a2, a3);
        v27 = *a2;
        v28 = *(a2 + 8);
        v29 = *(a2 + 12);
        v31 = 0;
        v32 = 0;
        v30 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
        v33 = *(a2 + 48);
        v22 = *a1;
        v24 = 0;
        v25 = 0;
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
        v23 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v23, v19, v20, (v20 - v19) >> 2);
        v26 = *(a1 + 48);
        v21 = v27;
        if (v23)
        {
          v24 = v23;
          operator delete(v23);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (v21 < v22)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2);
        }
      }
    }
  }
}