void sub_1B550BF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(***(a1 + 144) + 96))(**(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(***(a1 + 152) + 96))(**(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D05110;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D194A0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 112) = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  return a1;
}

void sub_1B550C67C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::InitBase(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1B550C88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D194A0;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(a1 + 16) = (*(**a4 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t *fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Matcher(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 144))(a2, a3);
  *a1 = v4;
  if (!v4)
  {
    operator new();
  }

  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D19398;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SequenceComposeFilter(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_1B550CDC8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D05110;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D194A0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

{
  *a1 = &unk_1F2D05110;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D194A0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

void sub_1B550D01C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
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

uint64_t fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>,int> const*>>(a1 + 24, v4, v5, (v5 - v4) >> 4);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t std::vector<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>,int> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B550D324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (*(a1 + 24) != a2 || *(a1 + 28) != a3 || *a4 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    v7 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2) == INFINITY && v6 == v7;
    *(a1 + 33) = v9;
    *(a1 + 34) = v7 == 0;
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
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

void sub_1B550D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B550D918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v24 = *a4;
        v25 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (DWORD1(v24) != -1)
          {
            if (v25 == -1)
            {
              v17 = v13[32];
              if (v17)
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v23 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v24))
              {
                v14 = 0;
              }

              else
              {
                v14 = -1;
              }

              v23 = v14;
              if (!DWORD1(v24))
              {
                goto LABEL_35;
              }
            }

LABEL_28:
            v19 = &v24;
            v20 = &v25;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v19, v20, &v23);
            goto LABEL_35;
          }

          if ((v13[33] & 1) == 0)
          {
            v23 = v13[34] ^ 1;
            goto LABEL_28;
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (DWORD1(v25) != -1)
          {
            if (v24 == -1)
            {
              v21 = v15[32];
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
                goto LABEL_35;
              }
            }

            else
            {
              if (DWORD1(v25))
              {
                v16 = 0;
              }

              else
              {
                v16 = -1;
              }

              v23 = v16;
              if (!DWORD1(v25))
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v19 = &v25;
            v20 = &v24;
            goto LABEL_34;
          }

          if ((v15[33] & 1) == 0)
          {
            v23 = v15[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D194D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
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

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
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

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D194D8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D194D8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void sub_1B550E354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComposeFstImpl<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D19570;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *(v8 + 120);
  *(a1 + 144) = v8 + 120;
  *(a1 + 152) = v8 + 200;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(****(a1 + 152) + 32))(***(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(****(a1 + 144) + 40))(***(a1 + 144), v11);
  v14 = (*(****(a1 + 152) + 40))(***(a1 + 152), v12);
  v15 = fst::ComposeProperties(v13, v14);
  v16 = *(*(a1 + 136) + 40);
  v17 = v15 | 4;
  if (v16 != 3)
  {
    v17 = v15;
  }

  v18 = v16 == 1;
  v19 = 0x3FFCCC300004;
  if (v18)
  {
    v19 = 0x3FFC330C0004;
  }

  *(a1 + 8) = v17 & v19 | *(a1 + 8) & 0xFFFFC0000000FFFFLL;
  return a1;
}

void sub_1B550EA40(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(****(a1 + 144) + 48))(***(a1 + 144)) & 1) != 0 && (*(****(a1 + 144) + 24))(***(a1 + 144), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v18, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ComposeFst: 1st argument requires matching but cannot.", 54);
  }

  else if (((*(****(a1 + 152) + 48))(***(a1 + 152)) & 1) != 0 && (*(****(a1 + 152) + 24))(***(a1 + 152), 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v18, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ComposeFst: 2nd argument requires matching but cannot.", 54);
  }

  else
  {
    v4 = (*(****(a1 + 144) + 24))(***(a1 + 144), 0);
    v5 = (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 1;
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4 == 1;
    if (v4 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8 || v5 == 0)
    {
      goto LABEL_36;
    }

    v9 = 1;
    if ((*(****(a1 + 144) + 24))(***(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(****(a1 + 152) + 24))(***(a1 + 152), 1))
    {
      v9 = 0;
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v18, __p);
    v12 = fst::cerr(v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  fst::LogMessage::~LogMessage(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 3;
LABEL_36:
  *(a1 + 184) = v9;
}

void sub_1B550EE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(****(a1 + 144) + 40))(***(a1 + 144), 0) & 4) != 0 || (v4 = (*(****(a1 + 152) + 40))(***(a1 + 152), 0), *(*(a1 + 136) + 40) == 3) || (v4 & 4) != 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 20 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v8 = *(v4 + 1);
  LODWORD(v4) = v4[4];
  v18 = v8;
  v19 = v4;
  fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v5, v6, &v18);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(a1, v5, v6))
  {
    v10 = a1[20];
    v9 = a1[21];
    v11 = a1[19];
    v12 = a1;
    v13 = a2;
    v14 = v6;
    v15 = v5;
    v16 = 1;
  }

  else
  {
    v9 = a1[20];
    v10 = a1[21];
    v11 = a1[18];
    v12 = a1;
    v13 = a2;
    v14 = v5;
    v15 = v6;
    v16 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(v12, v13, v9, v14, v10, v15, v11, v16);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(****(a1 + 144) + 24))(***(a1 + 144), 0) == a3)
  {
    (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    v4 = (*(*a1[21] + 24))(a1[21]);
    result = 0xFFFFFFFFLL;
    if (v4 != -1)
    {
      v5 = __PAIR64__(v4, v3);
      v6 = -1;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(a1[22], &v5, 1);
    }
  }

  return result;
}

float fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 20 * a2);
  v4 = *v3;
  result = (*(****(a1 + 144) + 96))(***(a1 + 144), *v3);
  v13 = result;
  *&v10 = result;
  v14 = 2139095040;
  if (result != INFINITY)
  {
    v6 = v3[1];
    result = (*(****(a1 + 152) + 96))(***(a1 + 152), v6, result, result);
    v12 = result;
    *&v10 = result;
    v14 = 2139095040;
    if (result != INFINITY)
    {
      v7 = *(a1 + 136);
      v8 = v3[4];
      v10 = *(v3 + 1);
      v11 = v8;
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v4, v6, &v10);
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(*(a1 + 136), &v13);
      result = NAN;
      if (v13 != -INFINITY)
      {
        result = NAN;
        if (v12 != -INFINITY)
        {
          result = INFINITY;
          if (v12 != INFINITY && v13 != INFINITY)
          {
            return v13 + v12;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B550F500(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AltSequenceComposeFilter(a1, a2, a3, a4, a5);
  *(a1 + 40) = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(*v6, *(a1 + 8));
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void sub_1B550F708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v19);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AltSequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(a1 + 16) = (*(**a5 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadCheck(_BYTE *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = (*(**a1 + 48))() & 0x30;
    a1[8] = v2 != 0;
    if (!v2)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v3 = fst::LogMessage::LogMessage(&v8, __p);
      v4 = fst::cerr(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "LookAheadMatcher: No look-ahead matcher defined", 47);
      fst::LogMessage::~LogMessage(&v8);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1[8];
}

void sub_1B550F9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1020C405F07FB98);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x1020C405F07FB98);
  }

  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MultiEpsMatcher(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    operator new();
  }

  *result = a5;
  *(result + 8) = a4;
  *(result + 12) = a6;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 16) = result + 24;
  *(result + 40) = -1;
  *(result + 48) = 0;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  *(result + 60) = v6;
  *(result + 64) = v7;
  *(result + 68) = 0xFFFFFFFF00000000;
  return result;
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      MEMORY[0x1B8C85350](v2, 0x1020C405F07FB98);
    }
  }

  std::__tree<int>::destroy(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D19570;
  v2 = a1[17];
  if (v2)
  {
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 200);
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 120);
    fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2 + 48);
    v3 = fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40F6F5CAE4);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B550FE94(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void sub_1B550FFD8(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void *fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::CompactHashBiTable(void *a1, void *a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2[6], a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>*,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>*>((a1 + 10), a2[10], a2[11], 0xCCCCCCCCCCCCCCCDLL * ((a2[11] - a2[10]) >> 2));
  for (i = a2[5]; i; i = *i)
  {
    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, i + 4);
  }

  return a1;
}

uint64_t std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>*,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B55102C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v7 = *a4;
  *(a1 + 96) = *(a4 + 2);
  *(a1 + 88) = v7;
  LODWORD(v7) = *a4;
  *(a1 + 84) = *(a4 + 4);
  *(a1 + 80) = v7;
  fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(a1, a2, a3, a4);
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = 112;
    if (*(a1 + 40) == 1)
    {
      v8 = 104;
      v9 = a2;
    }

    else
    {
      v9 = v4;
    }

    *(a1 + 280) = (*(**(a1 + v8) + 40))(*(a1 + v8), v9);
    v10 = *(a1 + 96);
    std::__tree<int>::destroy(a1 + 136, *(a1 + 144));
    *(a1 + 136) = a1 + 144;
    *(a1 + 144) = 0u;
    v11 = *(a1 + 224);
    *(a1 + 160) = -1;
    std::__tree<int>::destroy(a1 + 216, v11);
    *(a1 + 216) = a1 + 224;
    *(a1 + 224) = 0u;
    *(a1 + 240) = -1;
    if (v10 != -1)
    {
      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 120, v10);

      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 200, v10);
    }
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(****(a1 + 144) + 104))(***(a1 + 144));
  v8 = (*(****(a1 + 152) + 104))(***(a1 + 152), a3);
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

void sub_1B5510588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int a8)
{
  v12 = a4;
  (*(***a7 + 56))(**a7, a4);
  a7[18] = v12;
  LODWORD(v20) = a8 - 1;
  *(&v20 + 4) = (a8 << 31 >> 31);
  HIDWORD(v20) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(a1, a2, a7, &v20, a8);
  v19 = 0;
  (*(*a5 + 136))(a5, a6, v17);
  while (1)
  {
    if (!v17[0])
    {
      if (v19 >= v17[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v15 = (v17[1] + 16 * v19);
      goto LABEL_8;
    }

    if ((*(*v17[0] + 24))(v17[0]))
    {
      break;
    }

    if (!v17[0])
    {
      goto LABEL_7;
    }

    v15 = (*(*v17[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(a1, a2, a7, v15, a8);
    if (v17[0])
    {
      (*(*v17[0] + 40))(v17[0]);
    }

    else
    {
      ++v19;
    }
  }

  if (v17[0])
  {
    (*(*v17[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v18)
  {
    --*v18;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B55107CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddMultiEpsLabel(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 + 16;

    fst::CompactSet<int,-1>::Insert(v2, a2);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v7, __p);
    v4 = fst::cerr(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    fst::LogMessage::~LogMessage(&v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B55108BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 24) != a2 || *(a1 + 28) != a3 || *a4 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), a3);
    v7 = (*(**(a1 + 16) + 48))(*(a1 + 16), a3);
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a3) == INFINITY && v6 == v7;
    *(a1 + 33) = v9;
    *(a1 + 34) = v7 == 0;
  }
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(uint64_t a1, int a2, _BYTE *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(a3, *(a4 + v10));
  if (result && (a3[76] & 1) == 0)
  {
    do
    {
      v12 = (a3 + 60);
      if ((a3[56] & 1) == 0)
      {
        v12 = (*(***a3 + 80))(**a3);
      }

      v13 = *v12;
      v24 = *a4;
      v25 = v13;
      if (a5)
      {
        v14 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v24, &v25);
        v22 = v14;
        v23 = v15;
        if (v14 == 0xFF)
        {
          LODWORD(v27) = v14 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v15 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v24;
        v18 = &v25;
      }

      else
      {
        v19 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v25, &v24);
        v22 = v19;
        v23 = v20;
        if (v19 == 0xFF)
        {
          LODWORD(v27) = v19 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v20 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v25;
        v18 = &v24;
      }

      fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::AddArc(a1, a2, v17, v18, &v22);
LABEL_21:
      result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(a3);
    }

    while (a3[76] != 1);
  }

  return result;
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(_BYTE *a1, int a2)
{
  v3 = a1 + 24;
  *(a1 + 6) = a1 + 24;
  a1[56] = 0;
  if (a2 == -1)
  {
    if (a1[8])
    {
      v6 = *(a1 + 2);
      while (1)
      {
        *(a1 + 6) = v6;
        if (v6 == v3)
        {
          break;
        }

        v7 = (*(***a1 + 64))(**a1, *(v6 + 7));
        v8 = *(a1 + 6);
        if (v7)
        {
          if (v8 == v3)
          {
            break;
          }

          result = 1;
          goto LABEL_11;
        }

        v9 = v8[1];
        if (v9)
        {
          do
          {
            v6 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v6 = v8[2];
            v10 = *v6 == v8;
            v8 = v6;
          }

          while (!v10);
        }
      }
    }

    v4 = *(***a1 + 64);
    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = *(***a1 + 64);
LABEL_10:
    result = v4();
    goto LABEL_11;
  }

  if ((a1[8] & 2) == 0 || v3 == fst::CompactSet<int,-1>::Find((a1 + 16), a2))
  {
    v4 = *(***a1 + 64);
    goto LABEL_10;
  }

  result = 1;
  a1[56] = 1;
LABEL_11:
  a1[76] = result ^ 1;
  return result;
}

uint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = *(a1 + 96);
    if (v8 == -1)
    {
      v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
      v12 = v6;
      v13 = BYTE4(v6);
      if (v6 == 0xFF)
      {
        LODWORD(v15) = v6 >> 8;
        v14 = 2139095040;
        if (v15 == INFINITY)
        {
          v7 = 0;
          v6 = 0x7F800000FFLL;
          return v7 | v6 & 0xFFFFFFFFFFLL;
        }
      }

      if (*(a1 + 76) != 1)
      {
        goto LABEL_3;
      }

      if (*(a1 + 40) == 1)
      {
        v9 = v4;
        v10 = v3;
      }

      else
      {
        v9 = v3;
        v10 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::PushLabelFilterArc(a1, v9, v10, &v12);
    }

    else
    {
      if (*(a1 + 40) != 1)
      {
        a2 = a3;
        a3 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::PushedLabelFilterArc(a1, a2, a3, v8);
    }

    v7 = v6 & 0xFFFFFF0000000000;
    return v7 | v6 & 0xFFFFFFFFFFLL;
  }

  v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
LABEL_3:
  v7 = 0;
  return v7 | v6 & 0xFFFFFFFFFFLL;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::AddArc(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 12);
  LODWORD(v17) = a3[3];
  DWORD1(v17) = v7;
  *(&v17 + 1) = *a5;
  v18 = *(a5 + 8);
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = *(a3 + 2);
  v11 = NAN;
  if (v10 != -INFINITY)
  {
    v12 = *(a4 + 8);
    if (v12 != -INFINITY)
    {
      if (v12 == INFINITY || v10 == INFINITY)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 + v12;
      }
    }
  }

  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(*(a1 + 176), &v17, 1);
  *&v16 = __PAIR64__(v9, v8);
  *(&v16 + 1) = __PAIR64__(Id, LODWORD(v11));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v16);
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 1;
LABEL_19:
    *(v1 + 76) = v2;
  }

  else
  {
    (*(***result + 88))(**result);
    result = (*(***v1 + 72))(**v1);
    *(v1 + 76) = result;
    if (result)
    {
      v3 = v1 + 3;
      v4 = v1[6];
      if (v4 != v1 + 3)
      {
        v5 = v4[1];
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
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        while (1)
        {
          v1[6] = v6;
          if (v6 == v3)
          {
            goto LABEL_18;
          }

          result = (*(***v1 + 64))(**v1, *(v6 + 7));
          v8 = v1[6];
          if (result)
          {
            break;
          }

          v9 = v8[1];
          if (v9)
          {
            do
            {
              v6 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v6 = v8[2];
              v7 = *v6 == v8;
              v8 = v6;
            }

            while (!v7);
          }
        }

        if (v8 == v3)
        {
LABEL_18:
          result = (*(***v1 + 64))(**v1, 0xFFFFFFFFLL);
          v2 = result ^ 1;
          goto LABEL_19;
        }

        *(v1 + 76) = 0;
      }
    }
  }

  return result;
}

unint64_t fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
  if (v5 == 0xFF)
  {
    v7 = 2139095040;
    goto LABEL_9;
  }

  v6 = v5;
  if ((*(a1 + 72) & 0x40) == 0)
  {
    v7 = 0;
    return v6 | (v7 << 8);
  }

  v8 = 0.0;
  if (*(a1 + 76) == 1)
  {
    v9 = *(a1 + 8 * (*(a1 + 64) != 1) + 48);
    if (fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadCheck(v9))
    {
      v8 = *(*v9 + 8);
    }
  }

  v10 = *(a1 + 81);
  v7 = 2139095040;
  if (v8 == INFINITY)
  {
LABEL_9:
    v6 = -1;
    return v6 | (v7 << 8);
  }

  v12 = *(a3 + 8);
  v13 = NAN;
  if (v12 != -INFINITY && v8 != -INFINITY)
  {
    v14 = v12 == INFINITY || v8 == INFINITY;
    v15 = v8 + v12;
    if (v14)
    {
      v15 = INFINITY;
    }

    v16 = (LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    v13 = NAN;
    if (v15 != -INFINITY)
    {
      v17 = v15 - v10;
      if (v15 == INFINITY)
      {
        v17 = INFINITY;
      }

      if (!v16)
      {
        v13 = v17;
      }
    }
  }

  *(a3 + 8) = v13;
  v18 = floorf((v8 * 1024.0) + 0.5) * 0.00097656;
  if ((LODWORD(v8) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v18 = v8;
  }

  v7 = LODWORD(v18);
  return v6 | (v7 << 8);
}

uint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::PushedLabelFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x7F800000FFLL;
  v5 = *(a1 + 40);
  v6 = v5 != 1;
  v7 = v5 == 1;
  if (*(a3 + 4 * v6) == -1)
  {
    v9 = 4 * v7;
    v10 = *(a2 + v9);
    if (v10 == a4)
    {
      v4 = 0;
      *(a2 + v9) = 0;
    }

    else if (!v10)
    {
      if (*(a1 + 280) == 1)
      {
        return *(a1 + 88);
      }

      v13 = a1 + 48;
      v14 = **(a1 + 48 + 8 * (*(a1 + 64) != 1));
      (*(*v14 + 56))(v14, *(a2 + 12));
      v15 = *(v13 + 8 * (*(a1 + 64) != 1));
      if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadCheck(v15) || (*(**v15 + 120))(*v15, a4))
      {
        return *(a1 + 88);
      }
    }
  }

  return v4;
}

unint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::PushLabelFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a3 + 4 * (*(a1 + 40) == 1)))
  {
    return *a4 | (*(a4 + 4) << 32);
  }

  v9 = 4 * (*(a1 + 40) == 1);
  if (*(a2 + v9))
  {
    if ((*(a1 + 73) & 4) != 0)
    {
      return *a4 | (*(a4 + 4) << 32);
    }
  }

  v10 = *(a1 + 8 * (*(a1 + 64) != 1) + 48);
  if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadCheck(v10))
  {
    return *a4 | (*(a4 + 4) << 32);
  }

  v11 = *v10;
  v12 = *(*v10 + 24);
  if (v12 == -1)
  {
    return *a4 | (*(a4 + 4) << 32);
  }

  v13 = *(v11 + 12);
  v14 = *(v11 + 16);
  v15 = *(v11 + 20);
  if (*(a1 + 40) == 1)
  {
    v16 = *(v11 + 12);
  }

  else
  {
    v16 = *(v11 + 16);
  }

  *(a2 + v9) = v16;
  *a3 = v13;
  *(a3 + 4) = v14;
  v17 = *(a3 + 8);
  v18 = NAN;
  if (v17 != -INFINITY && v15 != -INFINITY)
  {
    v18 = INFINITY;
    v19 = v17 == INFINITY || v15 == INFINITY;
    v20 = v15 + v17;
    if (!v19)
    {
      v18 = v20;
    }
  }

  *(a3 + 8) = v18;
  *(a3 + 12) = v12;
  return *a4 | (*(a4 + 4) << 32);
}

uint64_t fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = a2;
  *(a1 + 76) = 0;
  if (*a3 == -1)
  {
    if ((*(a1 + 33) & 1) == 0)
    {
      v5 = (*(a1 + 34) & 1) == 0;
      goto LABEL_7;
    }

    return 255;
  }

  v4 = *(a2 + 4);
  if (v4 == -1)
  {
    v6 = *(a1 + 32);
    v7 = v6 == 1;
    if (v6 == 1)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;
    if (!v7)
    {
      goto LABEL_14;
    }

    return 255;
  }

  if (!v4)
  {
    return 255;
  }

  v5 = 0;
LABEL_7:
  v10 = v5;
LABEL_14:
  if (*(a1 + 40) != 1)
  {
    a2 = a3;
    a3 = v3;
  }

  return fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(a1, a2, a3, &v10);
}

uint64_t fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *(a1 + 72);
  if (*(a2 + 4 * (*(a1 + 40) == 1)))
  {
    if ((v7 & 0x100) == 0)
    {
      return *a4;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    return *a4;
  }

  *(a1 + 76) = 1;
  v8 = a1 + 48;
  v9 = **(a1 + 48 + 8 * (*(a1 + 64) != 1));
  (*(*v9 + 56))(v9, *(a2 + 12));
  v10 = *(a1 + 64);
  v11 = v10 == 1;
  v12 = v10 != 1;
  v13 = v11;
  v14 = *(v8 + 8 * v12);
  v15 = **(v8 + 8 * v13);
  v16 = (*(*v15 + 32))(v15);
  v17 = *(a3 + 12);
  if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadCheck(v14) || (*(**v14 + 128))(*v14, v16, v17))
  {
    return *a4;
  }

  return 255;
}

uint64_t fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(void *a1, __int128 *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 2;
  v12 = 0xCCCCCCCCCCCCCCCDLL * v11;
  v25 = -858993459 * v11;
  if (v9 >= v10)
  {
    if (v12 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v8) >> 2);
    v16 = 2 * v15;
    if (2 * v15 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    if (v15 >= 0x666666666666666)
    {
      v17 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>((a1 + 10), v17);
    }

    v18 = 4 * v11;
    v19 = *a2;
    *(v18 + 16) = *(a2 + 4);
    *v18 = v19;
    v14 = 4 * v11 + 20;
    v20 = a1[10];
    v21 = a1[11];
    v22 = 4 * v11 + v20 - v21;
    if (v20 != v21)
    {
      v23 = 4 * v11 + v20 - v21;
      do
      {
        v24 = *v20;
        *(v23 + 16) = *(v20 + 4);
        *v23 = v24;
        v23 += 20;
        v20 += 20;
      }

      while (v20 != v21);
      v20 = a1[10];
    }

    a1[10] = v22;
    a1[11] = v14;
    a1[12] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v13 = *a2;
    *(v9 + 16) = *(a2 + 4);
    *v9 = v13;
    v14 = v9 + 20;
  }

  a1[11] = v14;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v25);
  return v25;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComposeFstImpl<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D195E8;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *(v8 + 120);
  *(a1 + 144) = v8 + 120;
  *(a1 + 152) = v8 + 200;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(****(a1 + 152) + 32))(***(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(****(a1 + 144) + 40))(***(a1 + 144), v11);
  v14 = (*(****(a1 + 152) + 40))(***(a1 + 152), v12);
  v15 = fst::ComposeProperties(v13, v14);
  v16 = *(*(a1 + 136) + 40);
  v17 = v15 | 4;
  if (v16 != 3)
  {
    v17 = v15;
  }

  v18 = v16 == 1;
  v19 = 0x3FFCCC300004;
  if (v18)
  {
    v19 = 0x3FFC330C0004;
  }

  *(a1 + 8) = v17 & v19 | *(a1 + 8) & 0xFFFFC0000000FFFFLL;
  return a1;
}

void sub_1B5511B14(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(****(a1 + 144) + 40))(***(a1 + 144), 0) & 4) != 0 || (v4 = (*(****(a1 + 152) + 40))(***(a1 + 152), 0), *(*(a1 + 136) + 40) == 3) || (v4 & 4) != 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 20 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v8 = *(v4 + 1);
  LODWORD(v4) = v4[4];
  v18 = v8;
  v19 = v4;
  fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v5, v6, &v18);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(a1, v5, v6))
  {
    v10 = a1[20];
    v9 = a1[21];
    v11 = a1[19];
    v12 = a1;
    v13 = a2;
    v14 = v6;
    v15 = v5;
    v16 = 1;
  }

  else
  {
    v9 = a1[20];
    v10 = a1[21];
    v11 = a1[18];
    v12 = a1;
    v13 = a2;
    v14 = v5;
    v15 = v6;
    v16 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(v12, v13, v9, v14, v10, v15, v11, v16);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(****(a1 + 144) + 24))(***(a1 + 144), 0) == a3)
  {
    (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    v4 = (*(*a1[21] + 24))(a1[21]);
    result = 0xFFFFFFFFLL;
    if (v4 != -1)
    {
      v5 = __PAIR64__(v4, v3);
      v6 = -1;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(a1[22], &v5, 1);
    }
  }

  return result;
}

float fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 20 * a2);
  v4 = *v3;
  result = (*(****(a1 + 144) + 96))(***(a1 + 144), v4);
  v13 = result;
  *&v10 = result;
  v14 = 2139095040;
  if (result != INFINITY)
  {
    v6 = v3[1];
    result = (*(****(a1 + 152) + 96))(***(a1 + 152), v6, result, result);
    v12 = result;
    *&v10 = result;
    v14 = 2139095040;
    if (result != INFINITY)
    {
      v7 = *(a1 + 136);
      v8 = v3[4];
      v10 = *(v3 + 1);
      v11 = v8;
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v4, v6, &v10);
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(*(a1 + 136), &v13);
      result = NAN;
      if (v13 != -INFINITY)
      {
        result = NAN;
        if (v12 != -INFINITY)
        {
          result = INFINITY;
          if (v12 != INFINITY && v13 != INFINITY)
          {
            return v13 + v12;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B55121F4(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SequenceComposeFilter(a1, a2, a3, a4, a5);
  *(a1 + 40) = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(*v6, *(a1 + 8));
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void sub_1B55123FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v19);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(a1 + 16) = (*(**a4 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D195E8;
  v2 = a1[17];
  if (v2)
  {
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 200);
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 120);
    fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2 + 48);
    v3 = fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40F6F5CAE4);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5512748(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void sub_1B551288C(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v5 = a2;
  v7 = *a4;
  *(a1 + 96) = *(a4 + 2);
  *(a1 + 88) = v7;
  LODWORD(v7) = *a4;
  *(a1 + 84) = *(a4 + 4);
  *(a1 + 80) = v7;
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(a1, a2, a3, a4);
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = 112;
    if (*(a1 + 40) == 1)
    {
      v8 = 104;
      v9 = v5;
    }

    else
    {
      v9 = a3;
    }

    *(a1 + 280) = (*(**(a1 + v8) + 40))(*(a1 + v8), v9);
    v10 = *(a1 + 96);
    std::__tree<int>::destroy(a1 + 136, *(a1 + 144));
    *(a1 + 136) = a1 + 144;
    *(a1 + 144) = 0u;
    v11 = *(a1 + 224);
    *(a1 + 160) = -1;
    std::__tree<int>::destroy(a1 + 216, v11);
    *(a1 + 216) = a1 + 224;
    *(a1 + 224) = 0u;
    *(a1 + 240) = -1;
    if (v10 != -1)
    {
      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 120, v10);

      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 200, v10);
    }
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(****(a1 + 144) + 104))(***(a1 + 144));
  v8 = (*(****(a1 + 152) + 104))(***(a1 + 152), a3);
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

void sub_1B5512D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int a8)
{
  v12 = a4;
  (*(***a7 + 56))(**a7, a4);
  a7[18] = v12;
  LODWORD(v20) = a8 - 1;
  *(&v20 + 4) = (a8 << 31 >> 31);
  HIDWORD(v20) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(a1, a2, a7, &v20, a8);
  v19 = 0;
  (*(*a5 + 136))(a5, a6, v17);
  while (1)
  {
    if (!v17[0])
    {
      if (v19 >= v17[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v15 = (v17[1] + 16 * v19);
      goto LABEL_8;
    }

    if ((*(*v17[0] + 24))(v17[0]))
    {
      break;
    }

    if (!v17[0])
    {
      goto LABEL_7;
    }

    v15 = (*(*v17[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(a1, a2, a7, v15, a8);
    if (v17[0])
    {
      (*(*v17[0] + 40))(v17[0]);
    }

    else
    {
      ++v19;
    }
  }

  if (v17[0])
  {
    (*(*v17[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v18)
  {
    --*v18;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5512F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>(uint64_t a1, int a2, _BYTE *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Find(a3, *(a4 + v10));
  if (result && (a3[76] & 1) == 0)
  {
    do
    {
      v12 = (a3 + 60);
      if ((a3[56] & 1) == 0)
      {
        v12 = (*(***a3 + 80))(**a3);
      }

      v13 = *v12;
      v24 = *a4;
      v25 = v13;
      if (a5)
      {
        v14 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v24, &v25);
        v22 = v14;
        v23 = v15;
        if (v14 == 0xFF)
        {
          LODWORD(v27) = v14 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v15 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v24;
        v18 = &v25;
      }

      else
      {
        v19 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v25, &v24);
        v22 = v19;
        v23 = v20;
        if (v19 == 0xFF)
        {
          LODWORD(v27) = v19 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v20 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v25;
        v18 = &v24;
      }

      fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::LogWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::AddArc(a1, a2, v17, v18, &v22);
LABEL_21:
      result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Next(a3);
    }

    while (a3[76] != 1);
  }

  return result;
}

uint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = *(a1 + 96);
    if (v8 == -1)
    {
      v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
      v12 = v6;
      v13 = BYTE4(v6);
      if (v6 == 0xFF)
      {
        LODWORD(v15) = v6 >> 8;
        v14 = 2139095040;
        if (v15 == INFINITY)
        {
          v7 = 0;
          v6 = 0x7F800000FFLL;
          return v7 | v6 & 0xFFFFFFFFFFLL;
        }
      }

      if (*(a1 + 76) != 1)
      {
        goto LABEL_3;
      }

      if (*(a1 + 40) == 1)
      {
        v9 = v4;
        v10 = v3;
      }

      else
      {
        v9 = v3;
        v10 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::PushLabelFilterArc(a1, v9, v10, &v12);
    }

    else
    {
      if (*(a1 + 40) != 1)
      {
        a2 = a3;
        a3 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::PushedLabelFilterArc(a1, a2, a3, v8);
    }

    v7 = v6 & 0xFFFFFF0000000000;
    return v7 | v6 & 0xFFFFFFFFFFLL;
  }

  v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
LABEL_3:
  v7 = 0;
  return v7 | v6 & 0xFFFFFFFFFFLL;
}

unint64_t fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
  if (v5 == 0xFF)
  {
    v7 = 2139095040;
    goto LABEL_9;
  }

  v6 = v5;
  if ((*(a1 + 72) & 0x40) == 0)
  {
    v7 = 0;
    return v6 | (v7 << 8);
  }

  v8 = 0.0;
  if (*(a1 + 76) == 1)
  {
    v9 = *(a1 + 8 * (*(a1 + 64) != 1) + 48);
    if (fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::LookAheadCheck(v9))
    {
      v8 = *(*v9 + 8);
    }
  }

  v10 = *(a1 + 81);
  v7 = 2139095040;
  if (v8 == INFINITY)
  {
LABEL_9:
    v6 = -1;
    return v6 | (v7 << 8);
  }

  v12 = *(a3 + 8);
  v13 = NAN;
  if (v12 != -INFINITY && v8 != -INFINITY)
  {
    v14 = v12 == INFINITY || v8 == INFINITY;
    v15 = v8 + v12;
    if (v14)
    {
      v15 = INFINITY;
    }

    v16 = (LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    v13 = NAN;
    if (v15 != -INFINITY)
    {
      v17 = v15 - v10;
      if (v15 == INFINITY)
      {
        v17 = INFINITY;
      }

      if (!v16)
      {
        v13 = v17;
      }
    }
  }

  *(a3 + 8) = v13;
  v18 = floorf((v8 * 1024.0) + 0.5) * 0.00097656;
  if ((LODWORD(v8) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v18 = v8;
  }

  v7 = LODWORD(v18);
  return v6 | (v7 << 8);
}

uint64_t fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = a2;
  *(a1 + 76) = 0;
  v4 = *(a2 + 4);
  if (v4 == -1)
  {
    if (*(a1 + 33))
    {
      return 255;
    }

    v9 = *(a1 + 34) ^ 1;
  }

  else if (*a3 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 32))
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;
    if (v6)
    {
      return 255;
    }
  }

  else
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    v9 = v5;
    if (!v4)
    {
      return 255;
    }
  }

  if (*(a1 + 40) != 1)
  {
    a2 = a3;
    a3 = v3;
  }

  return fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(a1, a2, a3, &v9);
}

void *fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D191A8;
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
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

_DWORD *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
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

uint64_t fst::CacheStateIterator<fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
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
    --*(v19 + 52);
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

uint64_t *fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D19710;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B5513B38(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v8 = a1[20];
    v7 = a1[21];
    v9 = a1[19];
    v10 = a1;
    v11 = a2;
    v12 = v6;
    v13 = v5;
    v14 = 1;
  }

  else
  {
    v7 = a1[20];
    v8 = a1[21];
    v9 = a1[18];
    v10 = a1;
    v11 = a2;
    v12 = v5;
    v13 = v6;
    v14 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(v10, v11, v7, v12, v8, v13, v9, v14);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

float fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = (*(***(a1 + 144) + 96))(**(a1 + 144), *v3);
  v5 = v4;
  if (v4 == INFINITY)
  {
    return v4;
  }

  v7 = (*(***(a1 + 152) + 96))(**(a1 + 152), v3[1]);
  if (v7 == INFINITY)
  {
    return INFINITY;
  }

  v6 = NAN;
  if (v5 != -INFINITY && v7 != -INFINITY)
  {
    v6 = INFINITY;
    v8 = v7 == INFINITY || v5 == INFINITY;
    v9 = v5 + v7;
    if (!v8)
    {
      return v9;
    }
  }

  return v6;
}

void *fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::NullComposeFilter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  a1[1] = a5;
  a1[2] = (*(**a4 + 32))();
  a1[3] = (*(**a1[1] + 32))(*a1[1]);
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D19710;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x60C40FFD3A10ELL);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B55143E0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
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

void sub_1B5514640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5514870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v18 = *a4;
        v19 = v12;
        if (a5)
        {
          if (DWORD1(v18) == -1)
          {
            goto LABEL_19;
          }

          v13 = v19 == -1 ? -1 : 0;
          v17 = v13;
          if (v19 == -1)
          {
            goto LABEL_19;
          }

          v14 = &v18;
          v15 = &v19;
        }

        else
        {
          if (DWORD1(v19) == -1)
          {
            goto LABEL_19;
          }

          v16 = v18 == -1 ? -1 : 0;
          v17 = v16;
          if (v18 == -1)
          {
            goto LABEL_19;
          }

          v14 = &v19;
          v15 = &v18;
        }

        fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v14, v15, &v17);
LABEL_19:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D19788;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
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

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
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

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D19788;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D19788;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void sub_1B5515234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D19820;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B55158E4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v5 = (*(***(a1 + 144) + 96))(**(a1 + 144), *v3);
  v8 = v5;
  if (v5 != INFINITY)
  {
    v6 = v3[1];
    v8 = (*(***(a1 + 152) + 96))(**(a1 + 152), v6);
    if (v8 != INFINITY)
    {
      v7 = *(a1 + 136);
      LOBYTE(v8) = *(v3 + 8);
      fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v7, v4, v6, &v8);
    }
  }
}

uint64_t fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AltSequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(a1 + 16) = (*(**a5 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D19820;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B55161A4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
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

void sub_1B55163D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5516608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v26 = *a4;
        v27 = v12;
        if (a5)
        {
          v13 = *(a1 + 136);
          if (v27 == -1)
          {
            if ((v13[33] & 1) == 0)
            {
              v14 = (v13[34] & 1) == 0;
LABEL_16:
              v25 = v14;
LABEL_24:
              v20 = &v26;
              v21 = &v27;
              goto LABEL_30;
            }
          }

          else
          {
            if (DWORD1(v26) == -1)
            {
              v17 = v13[32];
              v18 = v17 == 1;
              if (v17 == 1)
              {
                v19 = -1;
              }

              else
              {
                v19 = 0;
              }

              v25 = v19;
              if (v18)
              {
                goto LABEL_31;
              }

              goto LABEL_24;
            }

            if (DWORD1(v26))
            {
              v14 = 0;
              goto LABEL_16;
            }
          }
        }

        else
        {
          v15 = *(a1 + 136);
          if (v26 == -1)
          {
            if ((v15[33] & 1) == 0)
            {
              v16 = (v15[34] & 1) == 0;
LABEL_19:
              v25 = v16;
LABEL_29:
              v20 = &v27;
              v21 = &v26;
LABEL_30:
              fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v20, v21, &v25);
            }
          }

          else
          {
            if (DWORD1(v27) == -1)
            {
              v22 = v15[32];
              v23 = v22 == 1;
              if (v22 == 1)
              {
                v24 = -1;
              }

              else
              {
                v24 = 0;
              }

              v25 = v24;
              if (v23)
              {
                goto LABEL_31;
              }

              goto LABEL_29;
            }

            if (DWORD1(v27))
            {
              v16 = 0;
              goto LABEL_19;
            }
          }
        }

LABEL_31:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D19898;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
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

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
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

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D19898;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D19898;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void sub_1B5517038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D19930;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B55176E8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(***(a1 + 144) + 96))(**(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(***(a1 + 152) + 96))(**(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MatchComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(a1 + 16) = (*(**a4 + 32))();
  *(a1 + 24) = (*(***(a1 + 8) + 32))(**(a1 + 8));
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D19930;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C4035244DBALL);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B5517FE0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetState(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) != a2 || *(a1 + 36) != a3 || *a4 != *(a1 + 40))
  {
    *(a1 + 32) = a2;
    *(a1 + 36) = a3;
    *(a1 + 40) = *a4;
    v7 = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    v8 = (*(**(a1 + 16) + 56))(*(a1 + 16), a2);
    v10 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2) == INFINITY && v7 == v8;
    *(a1 + 41) = v10;
    *(a1 + 43) = v8 == 0;
    v11 = (*(**(a1 + 24) + 40))(*(a1 + 24), a3);
    v12 = (*(**(a1 + 24) + 48))(*(a1 + 24), a3);
    v14 = (*(**(a1 + 24) + 32))(*(a1 + 24), a3) == INFINITY && v11 == v12;
    *(a1 + 42) = v14;
    *(a1 + 44) = v12 == 0;
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144));
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
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

void sub_1B5518430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  (*(**a7 + 56))(*a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, a7, v14, a8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5518660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, int a2, void *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = *(*(**a3 + 80))();
        v16 = *a4;
        v17 = v12;
        if (a5)
        {
          v15 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(a1 + 136), &v16, &v17);
          if (v15 != -1)
          {
            v13 = &v16;
            v14 = &v17;
LABEL_10:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v13, v14, &v15);
          }
        }

        else
        {
          v15 = fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FilterArc(*(a1 + 136), &v17, &v16);
          if (v15 != -1)
          {
            v13 = &v17;
            v14 = &v16;
            goto LABEL_10;
          }
        }

        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D199A8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
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

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 64) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
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

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
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

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D199A8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D199A8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Copy();
}

void sub_1B5519020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**a3 + 64))();
  if (result)
  {
    v8 = *(a1 + 28) == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = *(a1 + 28) == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = *(a1 + 28);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v12;
      v14 = v12[1];
      if (v11)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v13, v14, *v15, v15[1]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1 || ((*(*a1 + 280))(a1, 0), *a2 != 2))
  {
    (*(*a1 + 288))(a1, 0);
  }

  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 296))(a1, v6, &v12);
        while (!(*(*v12 + 24))(v12))
        {
          v7 = (*(*v12 + 32))(v12);
          v8 = *(v7 + 4 * (*a2 != 1));
          v9 = *(v7 + 8);
          v11[0] = v8 | (v8 << 32);
          v11[1] = v9;
          (*(*v12 + 88))(v12, v11);
          (*(*v12 + 40))(v12);
        }

        if (v12)
        {
          (*(*v12 + 8))();
        }

        (*(*a1 + 32))(a1, v6);
        (*(*a1 + 184))(a1, v6);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    v10 = fst::ProjectProperties(v5, *a2 == 1);
    return (*(*a1 + 192))(a1, v10, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B551970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55197FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(v3, a1);
}

void sub_1B5519A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a17;
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::~ImplToFst(&a20);
  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One(void)::one;
}

void *fst::ComputeTotalWeight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
    {
      v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    }

    else
    {
      v7 = (*a2 + 40 * (*(*a1 + 24))(a1));
    }

    *a4 = *v7;
    result = std::list<int>::list((a4 + 8), (v7 + 2));
    *(a4 + 32) = v7[8];
  }

  else
  {
    v8 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    *a4 = *v8;
    result = std::list<int>::list((a4 + 8), (v8 + 2));
    *(a4 + 32) = v8[8];
    v10 = *a2;
    if (a2[1] != *a2)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        (*(*a1 + 32))(&v21, a1, v12);
        fst::Times<int,(fst::StringType)1>((v10 + v11), &v21, &v30);
        v13 = *(v10 + v11 + 32);
        v14 = NAN;
        if (v13 != -INFINITY)
        {
          v14 = NAN;
          if (v23 != -INFINITY)
          {
            v14 = INFINITY;
            v15 = v23 == INFINITY || v13 == INFINITY;
            v16 = v13 + v23;
            if (!v15)
            {
              v14 = v16;
            }
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v24, &v30, v14);
        std::__list_imp<char *>::clear(v31);
        fst::Plus<int>(a4, v24, &v30);
        v17 = *(a4 + 32);
        v18 = v26;
        if (v17 != INFINITY)
        {
          if (v26 == INFINITY)
          {
            v18 = *(a4 + 32);
          }

          else if (v17 <= v26)
          {
            v20 = expf(-(v26 - v17));
            v18 = v17 - logf(v20 + 1.0);
          }

          else
          {
            v19 = expf(-(v17 - v26));
            v18 = v18 - logf(v19 + 1.0);
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v27, &v30, v18);
        std::__list_imp<char *>::clear(v31);
        *a4 = v27;
        if (&v27 != a4)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a4 + 8), v28[1], v28);
        }

        *(a4 + 32) = v29;
        std::__list_imp<char *>::clear(v28);
        std::__list_imp<char *>::clear(v25);
        result = std::__list_imp<char *>::clear(v22);
        ++v12;
        v10 = *a2;
        v11 += 40;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v12);
    }
  }

  return result;
}

void sub_1B5519E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear(va1);
  std::__list_imp<char *>::clear(va);
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::StringWeight<int,(fst::StringType)1>::One()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)1>::One(void)::one;
}

uint64_t fst::Reweight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(uint64_t *a1, void *a2, int a3)
{
  result = (*(*a1 + 160))(a1);
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v116, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v116, "ERROR");
    }

    v44 = fst::LogMessage::LogMessage(&v123, &v116);
    v45 = fst::cerr(v44);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Reweight: Reweighting to the initial state requires ", 52);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Weight to be left distributive: ", 32);
    v59 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Type();
    v60 = *(v59 + 23);
    if (v60 >= 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *v59;
    }

    if (v60 >= 0)
    {
      v62 = *(v59 + 23);
    }

    else
    {
      v62 = *(v59 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v61, v62);
    fst::LogMessage::~LogMessage(&v123);
    if (SHIBYTE(v118[0]) < 0)
    {
      operator delete(v116);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v130 = 0;
  (*(*a1 + 128))(a1, &v128);
  while (1)
  {
    if (v128)
    {
      if ((*(*v128 + 16))(v128))
      {
        break;
      }

      if (v128)
      {
        v7 = (*(*v128 + 24))(v128);
        goto LABEL_10;
      }
    }

    else if (v130 >= v129)
    {
      break;
    }

    v7 = v130;
LABEL_10:
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) == v7)
    {
      break;
    }

    v8 = v7;
    v9 = *a2 + 40 * v7;
    v123 = *v9;
    std::list<int>::list(&v124, v9 + 8);
    v127 = *(v9 + 32);
    v10 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    if (v123)
    {
      v12 = v126 + 1;
    }

    else
    {
      v12 = 0;
    }

    if (*v10)
    {
      v13 = *(v10 + 24) + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v12 != v13)
    {
      goto LABEL_32;
    }

    v14 = v125;
    v15 = (v10 + 16);
    v16 = v123 && v123 == *v10;
    v17 = !v16;
    v18 = 1;
    v19 = !v17;
    while (1)
    {
      v20 = *v15;
      if ((v18 & 1) != 0 && !v19)
      {
        break;
      }

      if (v14 == &v124)
      {
        goto LABEL_31;
      }

      if (*(v14 + 16) != *(v20 + 16))
      {
        goto LABEL_32;
      }

      v18 = 0;
      v14 = *(v14 + 8);
      v15 = (v20 + 8);
    }

    if (v123)
    {
      goto LABEL_32;
    }

LABEL_31:
    *&v116 = v127;
    LODWORD(v111) = *(v10 + 32);
    v11.n128_f32[0] = v127;
    if (v127 != *&v111)
    {
LABEL_32:
      (*(*a1 + 296))(a1, v8, &v122);
      while (!(*(*v122 + 24))(v122))
      {
        v21 = (*(*v122 + 32))(v122);
        v116 = *v21;
        LODWORD(v117) = *(v21 + 8);
        std::list<int>::list(v118, v21 + 16);
        v22 = *(v21 + 48);
        v120 = *(v21 + 40);
        v121 = v22;
        if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v22)
        {
          v23 = *a2 + 40 * v22;
          LODWORD(v111) = *v23;
          std::list<int>::list(&v112, v23 + 8);
          v115 = *(v23 + 32);
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
          if (v111)
          {
            v25 = v114 + 1;
          }

          else
          {
            v25 = 0;
          }

          if (*v24)
          {
            v26 = *(v24 + 24) + 1;
          }

          else
          {
            v26 = 0;
          }

          if (v25 != v26)
          {
            goto LABEL_50;
          }

          v27 = v113;
          v28 = (v24 + 16);
          for (i = 1; ; i = 0)
          {
            v30 = *v28;
            if (i)
            {
              if (!v111)
              {
                break;
              }

              if (v111 != *v24)
              {
                goto LABEL_50;
              }
            }

            if (v27 == &v112)
            {
              break;
            }

            if (*(v27 + 16) != *(v30 + 16))
            {
              goto LABEL_50;
            }

            v27 = *(v27 + 8);
            v28 = (v30 + 8);
          }

          v108 = v115;
          v105 = *(v24 + 32);
          if (v115 != v105)
          {
LABEL_50:
            if (a3 == 1)
            {
              fst::Times<int,(fst::StringType)1>(&v123, &v117, &v131);
              v31 = NAN;
              if (v127 != -INFINITY)
              {
                v31 = NAN;
                if (v120 != -INFINITY)
                {
                  v31 = INFINITY;
                  if (v120 != INFINITY && v127 != INFINITY)
                  {
                    v31 = v127 + v120;
                  }
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v105, &v131, v31);
              std::__list_imp<char *>::clear(v132);
              fst::DivideRight<int,(fst::StringType)1>(&v105, &v111, &v131);
              v33 = NAN;
              if (v107 != -INFINITY)
              {
                if ((LODWORD(v115) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                {
                  v33 = INFINITY;
                  if (v107 != INFINITY)
                  {
                    v33 = v107 - v115;
                  }
                }

                else
                {
                  v33 = NAN;
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v108, &v131, v33);
              std::__list_imp<char *>::clear(v132);
              *&v117 = v108;
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v118, v109[1], v109);
              v120 = v110;
              std::__list_imp<char *>::clear(v109);
              std::__list_imp<char *>::clear(v106);
            }

            (*(*v122 + 88))(v122, &v116);
          }

          std::__list_imp<char *>::clear(&v112);
        }

        std::__list_imp<char *>::clear(v118);
        (*(*v122 + 40))(v122);
      }

      if (v122)
      {
        (*(*v122 + 8))(v122);
      }
    }

    if (a3 == 1)
    {
      (*(*a1 + 32))(&v116, v11);
      fst::Times<int,(fst::StringType)1>(&v123, &v116, &v111);
      v34 = NAN;
      if (v127 != -INFINITY)
      {
        v34 = NAN;
        if (v119 != -INFINITY)
        {
          v34 = INFINITY;
          if (v119 != INFINITY && v127 != INFINITY)
          {
            v34 = v127 + v119;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v103, &v111, v34);
      std::__list_imp<char *>::clear(&v112);
      (*(*a1 + 184))(a1, v8, v103);
      std::__list_imp<char *>::clear(v104);
      std::__list_imp<char *>::clear(&v117);
    }

    std::__list_imp<char *>::clear(&v124);
    if (v128)
    {
      (*(*v128 + 32))(v128);
    }

    else
    {
      ++v130;
    }
  }

  v36 = a1;
  while (v128)
  {
    if ((*(*v128 + 16))(v128))
    {
      goto LABEL_100;
    }

    if (v128)
    {
      v37 = (*(*v128 + 24))(v128);
      goto LABEL_88;
    }

LABEL_87:
    v37 = v130;
LABEL_88:
    if (a3 == 1)
    {
      v38 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      (*(*a1 + 32))(&v116, a1, v37);
      fst::Times<int,(fst::StringType)1>(v38, &v116, &v123);
      v39 = *(v38 + 32);
      v40 = NAN;
      if (v39 != -INFINITY)
      {
        v40 = NAN;
        if (v119 != -INFINITY)
        {
          v40 = INFINITY;
          v41 = v119 == INFINITY || v39 == INFINITY;
          v42 = v39 + v119;
          if (!v41)
          {
            v40 = v42;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v101, &v123, v40);
      std::__list_imp<char *>::clear(&v124);
      (*(*a1 + 184))(a1, v37, v101);
      std::__list_imp<char *>::clear(v102);
      std::__list_imp<char *>::clear(&v117);
    }

    if (v128)
    {
      (*(*v128 + 32))(v128);
    }

    else
    {
      ++v130;
    }
  }

  if (v130 < v129)
  {
    goto LABEL_87;
  }

LABEL_100:
  if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) <= (*(*a1 + 24))(a1))
  {
    v43 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
  }

  else
  {
    v43 = *a2 + 40 * (*(*a1 + 24))(a1);
  }

  v123 = *v43;
  std::list<int>::list(&v124, v43 + 8);
  v127 = *(v43 + 32);
  v46 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  if (v123)
  {
    v48 = v126 + 1;
  }

  else
  {
    v48 = 0;
  }

  if (*v46)
  {
    v49 = *(v46 + 24) + 1;
  }

  else
  {
    v49 = 0;
  }

  if (v48 != v49)
  {
    goto LABEL_136;
  }

  v50 = v125;
  v51 = (v46 + 16);
  v52 = v123 && v123 == *v46;
  v53 = !v52;
  v54 = 1;
  v55 = !v53;
  while (1)
  {
    v56 = *v51;
    if ((v54 & 1) != 0 && !v55)
    {
      break;
    }

    if (v50 == &v124)
    {
      goto LABEL_135;
    }

    if (*(v50 + 16) != *(v56 + 16))
    {
      goto LABEL_136;
    }

    v54 = 0;
    v50 = *(v50 + 8);
    v51 = (v56 + 8);
  }

  if (v123)
  {
    goto LABEL_136;
  }

LABEL_135:
  *&v116 = v127;
  LODWORD(v111) = *(v46 + 32);
  v47.n128_f32[0] = v127;
  if (v127 != *&v111)
  {
LABEL_136:
    v63 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    if (v123)
    {
      v64 = v126 + 1;
    }

    else
    {
      v64 = 0;
    }

    if (*v63)
    {
      v65 = *(v63 + 24) + 1;
    }

    else
    {
      v65 = 0;
    }

    if (v64 != v65)
    {
      goto LABEL_157;
    }

    v66 = v125;
    v67 = (v63 + 16);
    v68 = v123 && v123 == *v63;
    v69 = !v68;
    v70 = 1;
    v71 = !v69;
    while (1)
    {
      v72 = *v67;
      if ((v70 & 1) != 0 && !v71)
      {
        break;
      }

      if (v66 == &v124)
      {
        goto LABEL_156;
      }

      if (*(v66 + 16) != *(v72 + 16))
      {
        goto LABEL_157;
      }

      v70 = 0;
      v66 = *(v66 + 8);
      v67 = (v72 + 8);
    }

    if (v123)
    {
      goto LABEL_157;
    }

LABEL_156:
    *&v116 = v127;
    LODWORD(v111) = *(v63 + 32);
    v47.n128_f32[0] = v127;
    if (v127 != *&v111)
    {
LABEL_157:
      v73 = (*(*a1 + 64))(a1, 0x2000000000, 1);
      v74 = *a1;
      if ((v73 & 0x2000000000) != 0)
      {
        v79 = (*(v74 + 24))(a1);
        (*(*a1 + 296))(a1, v79, &v131);
        while (!(*(*v131 + 24))(v131))
        {
          v80 = (*(*v131 + 32))(v131);
          v116 = *v80;
          LODWORD(v117) = *(v80 + 8);
          std::list<int>::list(v118, v80 + 16);
          v81 = *(v80 + 48);
          v120 = *(v80 + 40);
          v121 = v81;
          v82 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
          fst::DivideRight<int,(fst::StringType)1>(v82, &v123, &v105);
          v83 = *(v82 + 32);
          v84 = NAN;
          if (v83 != -INFINITY)
          {
            if ((LODWORD(v127) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              v84 = INFINITY;
              if (v83 != INFINITY)
              {
                v84 = v83 - v127;
              }
            }

            else
            {
              v84 = NAN;
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v108, &v105, v84);
          std::__list_imp<char *>::clear(v106);
          fst::Times<int,(fst::StringType)1>(&v108, &v117, &v105);
          v85 = NAN;
          if (v110 != -INFINITY)
          {
            v85 = NAN;
            if (v120 != -INFINITY)
            {
              v85 = INFINITY;
              if (v120 != INFINITY && v110 != INFINITY)
              {
                v85 = v110 + v120;
              }
            }
          }

          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v111, &v105, v85);
          std::__list_imp<char *>::clear(v106);
          LODWORD(v117) = v111;
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v118, v113, &v112);
          v120 = v115;
          std::__list_imp<char *>::clear(&v112);
          std::__list_imp<char *>::clear(v109);
          (*(*v131 + 88))(v131, &v116);
          std::__list_imp<char *>::clear(v118);
          (*(*v131 + 40))(v131);
        }

        if (v131)
        {
          (*(*v131 + 8))(v131);
        }

        v36 = a1;
        v87 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
        fst::DivideRight<int,(fst::StringType)1>(v87, &v123, &v111);
        v88 = *(v87 + 32);
        v89 = NAN;
        if (v88 != -INFINITY)
        {
          if ((LODWORD(v127) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v89 = INFINITY;
            if (v88 != INFINITY)
            {
              v89 = v88 - v127;
            }
          }

          else
          {
            v89 = NAN;
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v116, &v111, v89);
        std::__list_imp<char *>::clear(&v112);
        (*(*a1 + 32))(&v111, a1, v79);
        fst::Times<int,(fst::StringType)1>(&v116, &v111, &v108);
        v92 = NAN;
        if (v119 != -INFINITY)
        {
          v92 = NAN;
          if (v115 != -INFINITY)
          {
            v92 = INFINITY;
            if (v115 != INFINITY && v119 != INFINITY)
            {
              v92 = v119 + v115;
            }
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v99, &v108, v92);
        std::__list_imp<char *>::clear(v109);
        (*(*a1 + 184))(a1, v79, v99);
        std::__list_imp<char *>::clear(v100);
        std::__list_imp<char *>::clear(&v112);
        v91 = &v117;
      }

      else
      {
        v75 = (*(v74 + 200))(a1);
        v76 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
        fst::DivideRight<int,(fst::StringType)1>(v76, &v123, &v116);
        v77 = *(v76 + 32);
        v78 = NAN;
        if (v77 != -INFINITY)
        {
          if ((LODWORD(v127) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v78 = INFINITY;
            if (v77 != INFINITY)
            {
              v78 = v77 - v127;
            }
          }

          else
          {
            v78 = NAN;
          }
        }

        fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v111, &v116, v78);
        std::__list_imp<char *>::clear(&v117);
        v96 = v111;
        std::list<int>::list(v97, &v112);
        v98 = v115;
        v90 = (*(*a1 + 24))(a1);
        v116 = 0;
        LODWORD(v117) = v96;
        std::list<int>::list(v118, v97);
        v120 = v98;
        v121 = v90;
        std::__list_imp<char *>::clear(v97);
        (*(*a1 + 208))(a1, v75, &v116);
        (*(*a1 + 176))(a1, v75);
        std::__list_imp<char *>::clear(v118);
        v91 = &v112;
      }

      std::__list_imp<char *>::clear(v91);
    }
  }

  v94 = (*(*v36 + 64))(v36, 0x3FFFFFFF0007, 0, v47);
  v95 = fst::ReweightProperties(v94);
  (*(*v36 + 192))(v36, v95, 0x3FFFFFFF0007);
  std::__list_imp<char *>::clear(&v124);
  result = v128;
  if (v128)
  {
    return (*(*v128 + 8))(v128);
  }

  return result;
}

void sub_1B551B16C(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 184));
  if (*(v1 - 225) < 0)
  {
    operator delete(*(v1 - 248));
  }

  _Unwind_Resume(a1);
}

void *fst::RemoveWeight<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(uint64_t a1, uint64_t a2, int a3)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (*result)
  {
    v9 = result[3] + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 == v9)
  {
    v10 = (a2 + 16);
    v11 = result + 2;
    for (i = 1; ; i = 0)
    {
      v13 = *v10;
      v14 = *v11;
      if (i)
      {
        if (!v7)
        {
          break;
        }

        if (v7 != *result)
        {
          goto LABEL_16;
        }
      }

      if (v13 == a2 + 8)
      {
        break;
      }

      if (*(v13 + 16) != *(v14 + 16))
      {
        goto LABEL_16;
      }

      v10 = (v13 + 8);
      v11 = (v14 + 8);
    }

    LODWORD(v37) = *(a2 + 32);
    v34 = *(result + 8);
    if (*&v37 == v34)
    {
      return result;
    }
  }

LABEL_16:
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
  v15 = *a2;
  if (*a2)
  {
    v16 = *(a2 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (*result)
  {
    v17 = result[3] + 1;
  }

  else
  {
    v17 = 0;
  }

  if (v16 == v17)
  {
    v18 = (a2 + 16);
    v19 = result + 2;
    for (j = 1; ; j = 0)
    {
      v21 = *v18;
      v22 = *v19;
      if (j)
      {
        if (!v15)
        {
          break;
        }

        if (v15 != *result)
        {
          goto LABEL_31;
        }
      }

      if (v21 == a2 + 8)
      {
        break;
      }

      if (*(v21 + 16) != *(v22 + 16))
      {
        goto LABEL_31;
      }

      v18 = (v21 + 8);
      v19 = (v22 + 8);
    }

    LODWORD(v37) = *(a2 + 32);
    v34 = *(result + 8);
    if (*&v37 == v34)
    {
      return result;
    }
  }

LABEL_31:
  if (a3)
  {
    v48 = 0;
    (*(*a1 + 128))(a1, &v46);
    while (1)
    {
      result = v46;
      if (!v46)
      {
        break;
      }

      v23 = (*(*v46 + 16))(v46);
      result = v46;
      if (v23)
      {
        if (v46)
        {
          return (*(*v46 + 8))();
        }

        return result;
      }

      if (!v46)
      {
        goto LABEL_39;
      }

      v24 = (*(*v46 + 24))();
      if (v46)
      {
        v25 = (*(*v46 + 24))(v46);
      }

      else
      {
        v25 = v48;
      }

LABEL_40:
      (*(*a1 + 32))(&v37, a1, v25);
      fst::DivideRight<int,(fst::StringType)1>(&v37, a2, &v34);
      v26 = NAN;
      if (v40 != -INFINITY)
      {
        if ((*(a2 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v26 = INFINITY;
          if (v40 != INFINITY)
          {
            v26 = v40 - *(a2 + 32);
          }
        }

        else
        {
          v26 = NAN;
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v44, &v34, v26);
      std::__list_imp<char *>::clear(v35);
      (*(*a1 + 184))(a1, v24, v44);
      std::__list_imp<char *>::clear(v45);
      std::__list_imp<char *>::clear(&v38);
      if (v46)
      {
        (*(*v46 + 32))(v46);
      }

      else
      {
        ++v48;
      }
    }

    if (v48 >= v47)
    {
      return result;
    }

LABEL_39:
    v24 = v48;
    v25 = v48;
    goto LABEL_40;
  }

  v27 = (*(*a1 + 24))(a1);
  (*(*a1 + 296))(a1, v27, &v43);
  while (!(*(*v43 + 24))(v43))
  {
    v28 = (*(*v43 + 32))(v43);
    v37 = *v28;
    LODWORD(v38) = *(v28 + 8);
    std::list<int>::list(v39, v28 + 16);
    v29 = *(v28 + 48);
    v41 = *(v28 + 40);
    v42 = v29;
    fst::Divide<int>(&v38, a2, 0, &v46);
    v30 = NAN;
    if (v41 != -INFINITY)
    {
      if ((*(a2 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v30 = INFINITY;
        if (v41 != INFINITY)
        {
          v30 = v41 - *(a2 + 32);
        }
      }

      else
      {
        v30 = NAN;
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v34, &v46, v30);
    std::__list_imp<char *>::clear(&v47);
    *&v38 = v34;
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v39, v35[1], v35);
    v41 = v36;
    std::__list_imp<char *>::clear(v35);
    (*(*v43 + 88))(v43, &v37);
    std::__list_imp<char *>::clear(v39);
    (*(*v43 + 40))(v43);
  }

  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  (*(*a1 + 32))(&v37, a1, v27);
  fst::Divide<int>(&v37, a2, 0, &v34);
  v31 = NAN;
  if (v40 != -INFINITY)
  {
    if ((*(a2 + 32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v31 = INFINITY;
      if (v40 != INFINITY)
      {
        v31 = v40 - *(a2 + 32);
      }
    }

    else
    {
      v31 = NAN;
    }
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(v32, &v34, v31);
  std::__list_imp<char *>::clear(v35);
  (*(*a1 + 184))(a1, v27, v32);
  std::__list_imp<char *>::clear(v33);
  return std::__list_imp<char *>::clear(&v38);
}

void sub_1B551BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__list_imp<char *>::clear((v13 + 8));
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

void fst::ShortestDistance<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(v3, a1);
}

void sub_1B551BD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18)
{
  fst::AutoQueue<int>::~AutoQueue(&a18);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~ImplToFst(&a13);
  _Unwind_Resume(a1);
}

float fst::ComputeTotalWeight<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v6 = *a2;
    if (a2[1] == *a2)
    {
      return INFINITY;
    }

    v7 = 0;
    v8 = INFINITY;
    while (1)
    {
      (*(*a1 + 32))(a1, v7);
      v10 = *(v6 + 4 * v7);
      if (v10 == -INFINITY || v9 == -INFINITY)
      {
        v5 = NAN;
        if (v8 != INFINITY)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = v9 == INFINITY || v10 == INFINITY;
        v12 = v10 + v9;
        if (v11)
        {
          v5 = INFINITY;
        }

        else
        {
          v5 = v12;
        }

        if (v8 == INFINITY)
        {
          goto LABEL_21;
        }

        if (v5 != INFINITY)
        {
LABEL_18:
          if (v8 <= v5)
          {
            v14 = expf(-(v5 - v8));
            v5 = v8 - logf(v14 + 1.0);
          }

          else
          {
            v13 = expf(-(v8 - v5));
            v5 = v5 - logf(v13 + 1.0);
          }

          goto LABEL_21;
        }

        v5 = v8;
      }

LABEL_21:
      ++v7;
      v6 = *a2;
      v8 = v5;
      if (v7 >= (a2[1] - *a2) >> 2)
      {
        return v5;
      }
    }
  }

  if ((*(*a1 + 24))(a1) >= ((a2[1] - *a2) >> 2))
  {
    return INFINITY;
  }

  return *(*a2 + 4 * (*(*a1 + 24))(a1));
}

uint64_t fst::Reweight<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t *a1, void *a2, int a3)
{
  result = (*(*a1 + 160))(a1);
  if (!result)
  {
    return result;
  }

  v52 = 0;
  (*(*a1 + 128))(a1, &v50);
LABEL_3:
  if (v50)
  {
    if ((*(*v50 + 16))(v50))
    {
      goto LABEL_73;
    }

    if (v50)
    {
      v8 = (*(*v50 + 24))(v50);
      goto LABEL_9;
    }
  }

  else if (v52 >= v51)
  {
    goto LABEL_73;
  }

  v8 = v52;
LABEL_9:
  v9 = v8;
  if (v8 != (a2[1] - *a2) >> 2)
  {
    v10 = *(*a2 + 4 * v8);
    v48.n128_f32[0] = v10;
    LODWORD(v49) = 2139095040;
    v7.n128_f32[0] = v10;
    if (v10 == INFINITY)
    {
      goto LABEL_45;
    }

    (*(*a1 + 296))(a1, v8, &v49, v48.n128_f32[0]);
    while (1)
    {
      if ((*(*v49 + 24))(v49))
      {
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        if (a3)
        {
LABEL_45:
          if (a3 == 1)
          {
            v18.n128_u32[0] = (*(*a1 + 32))(a1, v9, v7);
            v19.n128_u32[0] = 2143289344;
            if (v10 != -INFINITY && v18.n128_f32[0] != -INFINITY)
            {
              v19.n128_u32[0] = 2139095040;
              v20 = v18.n128_f32[0] == INFINITY || v10 == INFINITY;
              v18.n128_f32[0] = v10 + v18.n128_f32[0];
              if (!v20)
              {
                v19.n128_f32[0] = v18.n128_f32[0];
              }
            }

            (*(*a1 + 184))(a1, v9, v19, v18);
          }
        }

        else
        {
          v21 = (*(*a1 + 32))(a1, v9);
          v22.n128_u32[0] = 2143289344;
          if (v21 != -INFINITY && (LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v22.n128_u32[0] = 2139095040;
            if (v21 != INFINITY)
            {
              v22.n128_f32[0] = v21 - v10;
            }
          }

          (*(*a1 + 184))(a1, v9, v22);
        }

        if (v50)
        {
          (*(*v50 + 32))(v50);
        }

        else
        {
          ++v52;
        }

        goto LABEL_3;
      }

      v11 = *(*(*v49 + 32))(v49);
      v48 = v11;
      if (v11.n128_i32[3] < ((a2[1] - *a2) >> 2))
      {
        v11.n128_u32[0] = *(*a2 + 4 * v48.n128_i32[3]);
        v54 = v11.n128_u32[0];
        v53 = 2139095040;
        v12.n128_u32[0] = v11.n128_u32[0];
        if (v11.n128_f32[0] != INFINITY)
        {
          break;
        }
      }

LABEL_41:
      (*(*v49 + 40))(v49, v11, v12);
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_40:
        v11.n128_f64[0] = (*(*v49 + 88))(v49, &v48);
        goto LABEL_41;
      }

      v13 = NAN;
      if (v10 != -INFINITY)
      {
        v13 = NAN;
        if (v48.n128_f32[2] != -INFINITY)
        {
          v14 = v48.n128_f32[2] == INFINITY || v10 == INFINITY;
          v15 = v10 + v48.n128_f32[2];
          if (v14)
          {
            v15 = INFINITY;
          }

          v13 = NAN;
          if (v15 != -INFINITY && (v11.n128_u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
          {
            v13 = INFINITY;
            if (v15 != INFINITY)
            {
              v13 = v15 - v11.n128_f32[0];
            }
          }
        }
      }
    }

    else
    {
      v13 = NAN;
      if (v48.n128_f32[2] != -INFINITY && v11.n128_f32[0] != -INFINITY)
      {
        v16 = v48.n128_f32[2] == INFINITY || v11.n128_f32[0] == INFINITY;
        v17 = v11.n128_f32[0] + v48.n128_f32[2];
        if (v16)
        {
          v17 = INFINITY;
        }

        v13 = NAN;
        if (v17 != -INFINITY && (LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v13 = INFINITY;
          if (v17 != INFINITY)
          {
            v13 = v17 - v10;
          }
        }
      }
    }

    v48.n128_f32[2] = v13;
    goto LABEL_40;
  }

  while (1)
  {
LABEL_73:
    if (!v50)
    {
      if (v52 >= v51)
      {
        break;
      }

      goto LABEL_65;
    }

    if ((*(*v50 + 16))(v50))
    {
      break;
    }

    if (v50)
    {
      v23 = (*(*v50 + 24))(v50);
      goto LABEL_66;
    }

LABEL_65:
    v23 = v52;
LABEL_66:
    if (a3 == 1)
    {
      v14 = (*(*a1 + 32))(a1, v23) == -INFINITY;
      v24.n128_u32[0] = 2139095040;
      if (v14)
      {
        v24.n128_f32[0] = NAN;
      }

      (*(*a1 + 184))(a1, v23, v24);
    }

    if (v50)
    {
      (*(*v50 + 32))(v50);
    }

    else
    {
      ++v52;
    }
  }

  if ((*(*a1 + 24))(a1) >= ((a2[1] - *a2) >> 2))
  {
    v26 = INFINITY;
  }

  else
  {
    v26 = *(*a2 + 4 * (*(*a1 + 24))(a1));
  }

  v48.n128_f32[0] = v26;
  LODWORD(v49) = 0;
  v25.n128_f32[0] = v26;
  if (v26 == 0.0)
  {
    goto LABEL_137;
  }

  v48.n128_f32[0] = v26;
  LODWORD(v49) = 2139095040;
  v25.n128_f32[0] = v26;
  if (v26 == INFINITY)
  {
    goto LABEL_137;
  }

  v27 = (*(*a1 + 64))(a1, 0x2000000000, 1, v26);
  v28 = *a1;
  if ((v27 & 0x2000000000) == 0)
  {
    v29 = (*(v28 + 200))(a1);
    if (a3)
    {
      if ((LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v26 = NAN;
      }

      else
      {
        v26 = 0.0 - v26;
      }
    }

    v30 = (*(*a1 + 24))(a1);
    v48.n128_u64[0] = 0;
    v48.n128_u64[1] = __PAIR64__(v30, LODWORD(v26));
    (*(*a1 + 208))(a1, v29, &v48);
    (*(*a1 + 176))(a1, v29);
    goto LABEL_137;
  }

  v31 = (*(v28 + 24))(a1);
  (*(*a1 + 296))(a1, v31, &v49);
  if ((LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v32 = NAN;
  }

  else
  {
    v32 = 0.0 - v26;
  }

  while (2)
  {
    if (!(*(*v49 + 24))(v49))
    {
      v48 = *(*(*v49 + 32))(v49);
      v33 = NAN;
      if (a3)
      {
        if (v32 != -INFINITY)
        {
          v33 = NAN;
          if (v48.n128_f32[2] != -INFINITY)
          {
            v33 = INFINITY;
            v34 = v48.n128_f32[2] == INFINITY || v32 == INFINITY;
            v35 = v32 + v48.n128_f32[2];
LABEL_103:
            if (!v34)
            {
              v33 = v35;
            }
          }
        }
      }

      else if (v26 != -INFINITY)
      {
        v33 = NAN;
        if (v48.n128_f32[2] != -INFINITY)
        {
          v33 = INFINITY;
          v34 = v48.n128_f32[2] == INFINITY || v26 == INFINITY;
          v35 = v48.n128_f32[2] + v26;
          goto LABEL_103;
        }
      }

      v48.n128_f32[2] = v33;
      (*(*v49 + 88))(v49, &v48);
      (*(*v49 + 40))(v49);
      continue;
    }

    break;
  }

  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v36 = *(*a1 + 32);
  if (a3)
  {
    v37.n128_f32[0] = v36(a1, v31);
    v38 = INFINITY;
    if (v37.n128_f32[0] != INFINITY && v32 != INFINITY)
    {
      v38 = v32 + v37.n128_f32[0];
    }

    v41 = v37.n128_f32[0] == -INFINITY || v32 == -INFINITY;
    v37.n128_u32[0] = 2143289344;
    if (!v41)
    {
      v37.n128_f32[0] = v38;
    }
  }

  else
  {
    v37.n128_f32[0] = v36(a1, v31);
    v42 = INFINITY;
    if (v37.n128_f32[0] != INFINITY && v26 != INFINITY)
    {
      v42 = v37.n128_f32[0] + v26;
    }

    v45 = v37.n128_f32[0] == -INFINITY || v26 == -INFINITY;
    v37.n128_u32[0] = 2143289344;
    if (!v45)
    {
      v37.n128_f32[0] = v42;
    }
  }

  (*(*a1 + 184))(a1, v31, v37);
LABEL_137:
  v46 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0, v25);
  v47 = fst::ReweightProperties(v46);
  (*(*a1 + 192))(a1, v47, 0x3FFFFFFF0007);
  result = v50;
  if (v50)
  {
    return (*(*v50 + 8))(v50);
  }

  return result;
}

void sub_1B551CB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveWeight<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t result, int a2, float a3)
{
  *&v16 = a3;
  LODWORD(v15) = 0;
  if (a3 == 0.0)
  {
    return result;
  }

  *&v16 = a3;
  LODWORD(v15) = 2139095040;
  if (a3 == INFINITY)
  {
    return result;
  }

  v4 = result;
  if (a2)
  {
    v17 = 0;
    (*(*result + 128))(result, &v16);
    while (1)
    {
      result = v16;
      if (!v16)
      {
        break;
      }

      v5 = (*(*v16 + 16))(v16);
      result = v16;
      if (v5)
      {
        if (v16)
        {
          return (*(*v16 + 8))();
        }

        return result;
      }

      if (!v16)
      {
        goto LABEL_11;
      }

      v6 = (*(*v16 + 24))();
      if (v16)
      {
        v7 = (*(*v16 + 24))(v16);
      }

      else
      {
        v7 = v17;
      }

LABEL_12:
      (*(*v4 + 32))(v4, v7);
      v9 = NAN;
      if (v8 != -INFINITY && (LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v9 = INFINITY;
        if (v8 != INFINITY)
        {
          v9 = v8 - a3;
        }
      }

      (*(*v4 + 184))(v4, v6, v9);
      if (v16)
      {
        (*(*v16 + 32))(v16);
      }

      else
      {
        ++v17;
      }
    }

    if (v17 >= SDWORD2(v16))
    {
      return result;
    }

LABEL_11:
    v6 = v17;
    v7 = v17;
    goto LABEL_12;
  }

  v10 = (*(*result + 24))(result);
  (*(*v4 + 296))(v4, v10, &v15);
  while (!(*(*v15 + 24))(v15))
  {
    v16 = *(*(*v15 + 32))(v15);
    v11 = NAN;
    if (*(&v16 + 2) != -INFINITY)
    {
      v12 = *(&v16 + 2) - a3;
      if (*(&v16 + 2) == INFINITY)
      {
        v12 = INFINITY;
      }

      if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v11 = v12;
      }
    }

    *(&v16 + 2) = v11;
    (*(*v15 + 88))(v15, &v16);
    (*(*v15 + 40))(v15);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v13 = (*(*v4 + 32))(v4, v10);
  v14.n128_u32[0] = 2143289344;
  if (v13 != -INFINITY && (LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v14.n128_u32[0] = 2139095040;
    if (v13 != INFINITY)
    {
      v14.n128_f32[0] = v13 - a3;
    }
  }

  return (*(*v4 + 184))(v4, v10, v14);
}

void sub_1B551D0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ShortestDistance<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, 29);
  a2[1] = *a2;
  fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2[1] = *a2;
    v5 = 2143289344;
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, &v5);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(v6);
}

void sub_1B551D1FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v52 = 0;
  v40 = v9;
  if (a3)
  {
LABEL_29:
    v10 = (*(*a2 + 200))(a2);
    v17 = 1;
    v18 = 1;
    goto LABEL_31;
  }

  LODWORD(v46) = 0;
  (*(*a1 + 128))(a1, &v44);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v44)
    {
      v11 = (*(*v44 + 16))(v44);
      v12 = v44;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v44)
      {
        v13 = (*(*v44 + 24))();
        goto LABEL_11;
      }
    }

    else if (v46 >= v45)
    {
      goto LABEL_26;
    }

    v13 = v46;
LABEL_11:
    v14 = (*(*a1 + 32))(a1, v13);
    *&v41 = v14;
    LODWORD(v49) = 2139095040;
    v15 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v16 = v13;
    }

    else
    {
      v16 = -1;
    }

    if (*&v41 == INFINITY)
    {
      v15 = 4;
    }

    v10 = v14 == INFINITY ? v10 : v16;
    if ((v15 | 4) != 4)
    {
      break;
    }

    if (v44)
    {
      (*(*v44 + 32))(v44);
    }

    else
    {
      LODWORD(v46) = v46 + 1;
    }
  }

  v12 = v44;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_29;
  }

  LODWORD(v44) = (*(*a1 + 32))(a1, v10);
  LODWORD(v41) = 0;
  if (*&v44 != 0.0)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v44 = &v49;
    v45 = 0;
    v46 = 0;
    v47 = &v52;
    fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, &v44);
  }

  v17 = 0;
  v18 = 0;
LABEL_31:
  LODWORD(v43) = 0;
  (*(*a1 + 128))(a1, &v41);
  while (2)
  {
    if (!v41)
    {
      if (v43 >= v42)
      {
        goto LABEL_81;
      }

      goto LABEL_37;
    }

    if (!(*(*v41 + 16))(v41))
    {
      if (v41)
      {
        v19 = (*(*v41 + 24))();
LABEL_38:
        v20 = v19 + v18;
        while ((*(*a2 + 160))(a2) <= v20)
        {
          (*(*a2 + 200))(a2);
        }

        if (v19 == v40)
        {
          (*(*a2 + 184))(a2, (v19 + v18), 0.0);
        }

        v21.n128_f32[0] = (*(*a1 + 32))(a1, v19);
        LODWORD(v44) = v21.n128_u32[0];
        LODWORD(v49) = 2139095040;
        v22.n128_u32[0] = v21.n128_u32[0];
        v23 = v17 ^ 1;
        if (v21.n128_f32[0] == INFINITY)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v44 = 0;
          LODWORD(v45) = v21.n128_u32[0];
          HIDWORD(v45) = v19 + v18;
          v21.n128_f64[0] = (*(*a2 + 208))(a2, 0, &v44);
        }

        v48 = 0;
        (*(*a1 + 136))(a1, v19, &v44, v21, v22);
LABEL_48:
        if (v44)
        {
          if ((*(*v44 + 24))(v44))
          {
            if (v44)
            {
              (*(*v44 + 8))();
              goto LABEL_76;
            }

LABEL_74:
            if (v47)
            {
              --*v47;
            }

LABEL_76:
            if (v41)
            {
              (*(*v41 + 32))(v41);
            }

            else
            {
              LODWORD(v43) = v43 + 1;
            }

            continue;
          }

          if (v44)
          {
            v24 = (*(*v44 + 32))();
LABEL_54:
            v25 = (*(v24 + 12) + v18);
            v26 = *(v24 + 8);
            if (v25 == v10)
            {
              v27 = v17;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              v28 = *(v24 + 8);
            }

            else
            {
              v29 = (*(*a1 + 32))(a1, v10);
              v28 = 2143289344;
              if (v29 != -INFINITY && v26 != -INFINITY)
              {
                v28 = 2139095040;
                v30 = v29 == INFINITY || v26 == INFINITY;
                v31 = v26 + v29;
                if (!v30)
                {
                  *&v28 = v31;
                }
              }
            }

            v49 = *v24;
            v50 = __PAIR64__(v20, v28);
            while (1)
            {
              v32 = (*(*a2 + 160))(a2);
              v33 = *a2;
              if (v32 > v25)
              {
                break;
              }

              (*(v33 + 200))(a2);
            }

            (*(v33 + 208))(a2, v25, &v49);
            if (v44)
            {
              (*(*v44 + 40))(v44);
            }

            else
            {
              ++v48;
            }

            goto LABEL_48;
          }
        }

        else if (v48 >= v46)
        {
          goto LABEL_74;
        }

        v24 = v45 + 16 * v48;
        goto LABEL_54;
      }

LABEL_37:
      v19 = v43;
      goto LABEL_38;
    }

    break;
  }

  if (v41)
  {
    (*(*v41 + 8))();
  }

LABEL_81:
  (*(*a2 + 176))(a2, v10);
  if (v10 == v40)
  {
    v34 = v17;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    (*(*a1 + 32))(a1, v40);
    (*(*a2 + 184))(a2, v40);
  }

  v35 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v36 = v52;
  v37 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v38 = fst::ReverseProperties(v36 | v35, v17);
  return (*(*a2 + 192))(a2, v37 | v38, 0x3FFFFFFF0007);
}

void sub_1B551DDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 136);
  if (v22)
  {
    *(v20 - 128) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ShortestDistance<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, 29);
  a2[1] = *a2;
  fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2[1] = *a2;
    v5 = 2143289344;
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, &v5);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(v6);
}

void sub_1B551DFA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_1B551E680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::NaturalLess<fst::LogWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v12 = *(a3 + 8) - *a3;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a3, 4 * v13);
  }

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v16 = v27;
      goto LABEL_12;
    }

    v15 = (*(*v25 + 16))(v25);
    result = v25;
    if (v15)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v16 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v16, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v17 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v17 = v22[1] + 16 * v24;
LABEL_19:
      v18 = *(*a2 + 4 * v16);
      if (v18 == *(*a2 + 4 * *(v17 + 12)))
      {
        v19 = *a3;
        if (!a4 || (v21 = 0, fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(a4, (v17 + 8), &v21)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v19[v18] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v19[v18] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_1B551EAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>();
}

void sub_1B551ECB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B551F4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

BOOL fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *a3;
  if (*a2 != INFINITY)
  {
    v5 = *a2;
    if (v4 != INFINITY)
    {
      if (v3 <= v4)
      {
        v7 = expf(-(v4 - v3));
        v5 = v3 - logf(v7 + 1.0);
      }

      else
      {
        v6 = expf(-(v3 - v4));
        v5 = v4 - logf(v6 + 1.0);
      }
    }
  }

  return v5 == v3 && v3 != v4;
}

void fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_100;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(&v51, __p);
    v5 = fst::cerr(v4);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Weight does not have the path property: ", 40);
    v42 = fst::LogWeightTpl<float>::Type();
    v43 = *(v42 + 23);
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = *(v42 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v44, v45);
    fst::LogMessage::~LogMessage(&v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_100:
    v46 = a1 + 116;
    goto LABEL_101;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v6 = a1[1];
  for (i = *v6; a2 >= ((v6[1] - *v6) >> 2); i = *v6)
  {
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v6, __p);
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), __p);
    v6 = a1[1];
  }

  if (*(a1 + 33) == 1)
  {
    v8 = a1[11];
    if (a2 >= ((a1[12] - v8) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v8 = a1[11];
      }

      while (a2 >= ((a1[12] - v8) >> 2));
      i = *a1[1];
    }

    *(v8 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v46 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_89;
    }

    v9 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v10 = a1[1];
      if (v9 < ((v10[1] - *v10) >> 2))
      {
        break;
      }

      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v10, __p);
      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), __p);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(__p[0]) = (*(**a1 + 32))(*a1, v9);
      v51 = 2139095040;
      if (*__p != INFINITY)
      {
LABEL_89:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_101:
        *v46 = 1;
        return;
      }
    }

    *(a1[8] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
    v11 = a1[5];
    v12 = *(v11 + 4 * v9);
    *(v11 + 4 * v9) = 2139095040;
    v13 = *a1;
    v50 = 0;
    (*(*v13 + 136))(v13, v9, __p);
    while (1)
    {
      if (__p[0])
      {
        if ((*(*__p[0] + 24))(__p[0]))
        {
          goto LABEL_81;
        }

        if (__p[0])
        {
          v14 = (*(*__p[0] + 32))(__p[0]);
          goto LABEL_32;
        }
      }

      else if (v50 >= v48)
      {
LABEL_81:
        v39 = 1;
        goto LABEL_83;
      }

      v14 = __p[1] + 16 * v50;
LABEL_32:
      v15 = a1[1];
      for (j = *(v14 + 3); j >= (v15[1] - *v15) >> 2; j = *(v14 + 3))
      {
        v51 = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v15, &v51);
        v51 = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v51);
        LOBYTE(v51) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v51);
        v15 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v17 = a1[11];
          LODWORD(j) = *(v14 + 3);
          if (j < ((a1[12] - v17) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v15 = a1[1];
        if (*(v17 + 4 * j) != *(a1 + 28))
        {
          *(*v15 + 4 * j) = 2139095040;
          *(a1[5] + 4 * *(v14 + 3)) = 2139095040;
          j = *(v14 + 3);
          *(a1[8] + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << j);
          *(a1[11] + 4 * j) = *(a1 + 28);
          v15 = a1[1];
          LODWORD(j) = *(v14 + 3);
        }
      }

      v18 = *v15;
      v19 = a1[5];
      v20 = NAN;
      if (v12 != -INFINITY)
      {
        v21 = *(v14 + 2);
        v20 = NAN;
        if (v21 != -INFINITY)
        {
          v22 = v21 == INFINITY || v12 == INFINITY;
          v23 = v12 + v21;
          if (v22)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v23;
          }
        }
      }

      v24 = j;
      v25 = *(v18 + 4 * j);
      if (v25 != INFINITY)
      {
        break;
      }

      v26 = *(a1 + 7);
      v27 = v20 > (v26 + INFINITY) || (v20 + v26) < INFINITY;
      v25 = v20;
      if (v27)
      {
        goto LABEL_66;
      }

LABEL_78:
      if (__p[0])
      {
        (*(*__p[0] + 40))(__p[0]);
      }

      else
      {
        ++v50;
      }
    }

    v28 = *(v18 + 4 * j);
    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v30 = expf(-(v20 - v25));
        v28 = v25 - logf(v30 + 1.0);
      }

      else
      {
        v29 = expf(-(v25 - v20));
        v28 = v20 - logf(v29 + 1.0);
      }
    }

    v31 = *(a1 + 7);
    if (v28 <= (v25 + v31) && v25 <= (v28 + v31))
    {
      goto LABEL_78;
    }

    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v34 = expf(-(v20 - v25));
        v25 = v25 - logf(v34 + 1.0);
      }

      else
      {
        v33 = expf(-(v25 - v20));
        v25 = v20 - logf(v33 + 1.0);
      }
    }

LABEL_66:
    *(v18 + 4 * v24) = v25;
    v35 = *(v19 + 4 * v24);
    if (v35 != INFINITY)
    {
      if (v20 == INFINITY)
      {
        v20 = *(v19 + 4 * v24);
      }

      else if (v35 <= v20)
      {
        v37 = expf(-(v20 - v35));
        v20 = v35 - logf(v37 + 1.0);
      }

      else
      {
        v36 = expf(-(v35 - v20));
        v20 = v20 - logf(v36 + 1.0);
      }
    }

    *(v19 + 4 * v24) = v20;
    if (*(v18 + 4 * v24) != -INFINITY && (v20 < -INFINITY || v20 > -INFINITY))
    {
      v38 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v14 + 3)))
      {
        (*(v38 + 40))();
      }

      else
      {
        (*(v38 + 24))();
        *(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v14 + 3);
      }

      goto LABEL_78;
    }

    v39 = 0;
    *v46 = 1;
LABEL_83:
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }

    else if (v49)
    {
      --*v49;
    }
  }

  while ((v39 & 1) != 0);
}

void sub_1B55200A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  fst::LogMessage::~LogMessage(&a20);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D19CD0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D19C20;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B5520C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D19C98;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D19CD0;
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

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5520F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5521038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::operator=(uint64_t a1)
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

void sub_1B5521140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D19CD0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D19C20;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a2);
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
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1)
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

void sub_1B552193C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>();
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(a1, a2, a3, 1);
  }
}

void sub_1B5521A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>(a1, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}

void sub_1B552227C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5522AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::InitVisit(uint64_t a1, uint64_t a2)
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

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
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
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D19E48;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D19E48;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}